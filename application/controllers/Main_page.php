<?php

class Main_page extends MY_Controller
{
    private $KEY = 'dhasdasdjasdhdsfjdsfujsadfsuyfsauidasd';
    public function __construct()
    {
        parent::__construct();

        App::get_ci()->load->library('JWT/JWT');
        App::get_ci()->load->model('Comment_model');
        App::get_ci()->load->model('User_model');
        App::get_ci()->load->model('Login_model');
        App::get_ci()->load->model('Post_model');

        if (is_prod())
        {
            die('In production it will be hard to debug! Run as development environment!');
        }
    }

    public function index()
    {
        $user = User_model::get_user();



        App::get_ci()->load->view('main_page', ['user' => User_model::preparation($user, 'default')]);
    }

    public function get_all_posts()
    {
        $posts =  Post_model::preparation(Post_model::get_all(), 'main_page');

        return $this->response_success(['posts' => $posts]);
    }

    public function get_post($post_id){ // or can be $this->input->post('news_id') , but better for GET REQUEST USE THIS

        $post_id = intval($post_id);

        if (empty($post_id)){
            return $this->response_error(CI_Core::RESPONSE_GENERIC_WRONG_PARAMS);
        }

        try
        {
            $post = new Post_model($post_id);
        } catch (EmeraldModelNoDataException $ex){
            return $this->response_error(CI_Core::RESPONSE_GENERIC_NO_DATA);
        }


        $posts =  Post_model::preparation($post, 'full_info');
        return $this->response_success(['post' => $posts]);
    }


    public function comment(){ // or can be App::get_ci()->input->post('news_id') , but better for GET REQUEST USE THIS ( tests )

        if(!CI_JWT::getUser()) {
           return $this->response_error(CI_Core::RESPONSE_GENERIC_WRONG_PARAMS);
        }

        $payload = json_decode(file_get_contents('php://input'),true);
        $payload['user_id'] = CI_JWT::getUser();

        $payload['parent_id'] = 0;

        $comment = Comment_model::create($payload);

        $payload['id'] = $comment;

        $user = User_model::get_user();

        $payload['userName'] = $user['personaname'];
        $payload['likes'] = 0;
        $payload['isLike'] = false;


        $data = new Comment_model($comment);


        return $this->response_success(['comment' => $payload]);
    }


    public function login()
    {

        $payload = json_decode(file_get_contents('php://input'),true);

        $query = App::get_ci()->s->from('user')->where(['email' => $payload['login']])->one();

        if(!$query) {
           return $this->response_error(CI_Core::RESPONSE_GENERIC_WRONG_PARAMS);
        }

        $token = CI_JWT::encode(['user_id' => $query['id']], $this->KEY);


        return $this->response_success(['token' => $token]);
    }


    public function logout()
    {
        Login_model::logout();
        redirect(site_url('/'));
    }

    public function add_money(){
        // todo: add money to user logic
        return $this->response_success(['amount' => rand(1,55)]);
    }

    public function buy_boosterpack(){
        // todo: add money to user logic
        return $this->response_success(['amount' => rand(1,55)]);
    }


    public function like(){

        if(!CI_JWT::getUser()) {

             return $this->response_error(CI_Core::RESPONSE_GENERIC_WRONG_PARAMS);

        }


        $create = Likes_model::create([
            'post_id' => $_GET['post_id'],
            'user_id' =>  1, //User_model::get_user()->id,
            'type' => 'post',
        ]);


        return $this->response_success(['type' => 200]); // Колво лайков под постом \ комментарием чтобы обновить
    }





    public function new_home() {



        App::get_ci()->load->view('default/main_page');

    }




}

<?php

/**
 * Created by PhpStorm.
 * User: mr.incognito
 * Date: 27.01.2020
 * Time: 10:10
 */
class Likes_model extends CI_Emerald_Model
{
    const CLASS_TABLE = 'likes';


    /** @var int */
    protected $user_id;
    /** @var int */
    protected $post_id;
    protected $created_at;
    /** @var string */
    protected $updated_at;
    protected $type;
    /**
     * @return int
     */


    public function get_type() {
        return $this->type;
    }

    public function set_type($type) {
        $this->type = $type;

        return $this->save('type', $type);
    }


    public function get_user_id(): int
    {
        return $this->user_id;
    }

    /**
     * @param int $user_id
     *
     * @return bool
     */
    public function set_user_id(int $user_id)
    {
        $this->user_id = $user_id;
        return $this->save('user_id', $user_id);
    }

    /**
     * @return int
     */


    /**
     * @param int $assing_id
     *
     * @return bool
     */



    /**
     * @return string
     */
    public function get_created_at(): string
    {
        return $this->created_at;
    }

    /**
     * @param string $time_created
     *
     * @return bool
     */
    public function set_created_at(string $time_created)
    {
        $this->created_at = $time_created;
        return $this->save('created_at', $time_created);
    }

    /**
     * @return string
     */
    public function get_updated_at(): string
    {
        return $this->updated_at;
    }

    /**
     * @param string $time_updated
     *
     * @return bool
     */
    public function set_updated_at(int $time_updated)
    {
        $this->updated_at = $time_updated;
        return $this->save('updated_at', $time_updated);
    }

    /**
     * @return User_model
     */
    public function get_user():User_model
    {
        if (empty($this->user))
        {
            try {
                $this->user = new User_model($this->get_user_id());
            } catch (Exception $exception)
            {
                $this->user = new User_model();
            }
        }
        return $this->user;
    }

    function __construct($id = NULL)
    {
        parent::__construct();

        App::get_ci()->load->model('User_model');


        $this->set_id($id);
    }

    public function reload(bool $for_update = FALSE)
    {
        parent::reload($for_update);

        return $this;
    }

    public static function create(array $data)
    {
        App::get_ci()->s->from(self::CLASS_TABLE)->insert($data)->execute();
        return new static(App::get_ci()->s->get_insert_id());
    }

    public function delete()
    {
        $this->is_loaded(TRUE);
        App::get_ci()->s->from(self::CLASS_TABLE)->where(['id' => $this->get_id()])->delete()->execute();
        return (App::get_ci()->s->get_affected_rows() > 0);
    }

    /**
     * @param int $assting_id
     * @return self[]
     * @throws Exception
     */


     public static function getByPostId($id, $type) {

        $result = App::get_ci()->s->from(self::CLASS_TABLE)->where(['post_id' => $id, 'type' => $type])->count();

        return $result;

     }

     public static function getByPostIdAndUser($id, $type, $user) {

        $result = App::get_ci()->s->from(self::CLASS_TABLE)->where(['post_id' => $id, 'type' => $type, 'user_id' => $user])->count();
        return ($result > 0);

     }


}

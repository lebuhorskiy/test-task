-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Квт 19 2020 р., 13:27
-- Версія сервера: 10.3.13-MariaDB
-- Версія PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `code`
--

-- --------------------------------------------------------

--
-- Структура таблиці `boosterpack`
--

CREATE TABLE `boosterpack` (
  `id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `bank` decimal(10,2) NOT NULL DEFAULT 0.00,
  `time_created` timestamp NULL DEFAULT current_timestamp(),
  `time_updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `boosterpack`
--

INSERT INTO `boosterpack` (`id`, `price`, `bank`, `time_created`, `time_updated`) VALUES
(1, '5.00', '0.00', '2020-03-30 00:17:28', '2020-04-05 08:43:54'),
(2, '20.00', '0.00', '2020-03-30 00:17:28', '2020-04-05 08:43:54'),
(3, '50.00', '0.00', '2020-03-30 00:17:28', '2020-04-05 08:43:54');

-- --------------------------------------------------------

--
-- Структура таблиці `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `assign_id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `time_created` timestamp NULL DEFAULT current_timestamp(),
  `time_updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `assign_id`, `text`, `time_created`, `time_updated`, `parent_id`) VALUES
(1, 1, 1, 'Ну чо ассигн проверим', '2020-03-27 21:39:44', '2020-04-05 08:43:54', 0),
(2, 1, 1, 'Второй коммент', '2020-03-27 21:39:55', '2020-04-05 08:43:54', 0),
(3, 2, 1, 'Второй коммент от второго человека', '2020-03-27 21:40:22', '2020-04-05 08:43:54', 0),
(4, 1, 1, 'sdfsdfsdfsdf', '2020-04-06 16:27:38', '2020-04-06 16:27:38', 0),
(5, 1, 1, 'sdfsdfsdfsdf', '2020-04-06 16:28:19', '2020-04-06 16:28:19', 0),
(6, 1, 1, 'sdfsdfsdfsdf', '2020-04-06 16:29:12', '2020-04-06 16:29:12', 0),
(7, 1, 1, 'sdfsdfsdfsdf', '2020-04-06 16:29:51', '2020-04-06 16:29:51', 0),
(8, 1, 1, 'sdfsdfsdfsdf', '2020-04-06 16:31:17', '2020-04-06 16:31:17', 0),
(9, 1, 1, 'asdasdasdsadasdasd', '2020-04-06 16:34:39', '2020-04-06 16:34:39', 0),
(10, 1, 1, 'asdasdasdsadasdasd', '2020-04-06 16:35:12', '2020-04-06 16:35:12', 0),
(11, 1, 1, 'asdasdasdsadasdasd', '2020-04-06 16:35:29', '2020-04-06 16:35:29', 0),
(12, 1, 1, 'asdasdasdsadasdasd', '2020-04-06 16:35:34', '2020-04-06 16:35:34', 0),
(13, 1, 1, 'asdasdasdsadasdasd', '2020-04-06 16:36:33', '2020-04-06 16:36:33', 0),
(14, 1, 1, 'asdasdasdsadasdasd', '2020-04-06 16:36:55', '2020-04-06 16:36:55', 0),
(15, 1, 1, 'asdasdasdsadasdasd', '2020-04-06 16:37:14', '2020-04-06 16:37:14', 0),
(16, 1, 1, 'asdasdasdsadasdasd', '2020-04-06 16:37:28', '2020-04-06 16:37:28', 0),
(17, 1, 1, 'asdasdasdsadasdasd', '2020-04-06 16:37:57', '2020-04-06 16:37:57', 0),
(18, 1, 1, 'asdasdasdsadasdasd', '2020-04-06 16:38:10', '2020-04-06 16:38:10', 0),
(19, 1, 1, 'cxv', '2020-04-06 16:39:50', '2020-04-06 16:39:50', 0),
(20, 1, 1, 'cxv', '2020-04-06 16:41:16', '2020-04-06 16:41:16', 0),
(21, 1, 1, 'cxv', '2020-04-06 16:42:35', '2020-04-06 16:42:35', 0),
(22, 1, 1, 'cxv', '2020-04-06 16:43:14', '2020-04-06 16:43:14', 0),
(23, 1, 1, 'cxv', '2020-04-06 16:43:40', '2020-04-06 16:43:40', 0),
(24, 1, 1, 'cxv', '2020-04-06 16:48:52', '2020-04-06 16:48:52', 0),
(25, 1, 1, 'sadasdasd', '2020-04-12 15:37:28', '2020-04-12 15:37:28', 0),
(26, 1, 1, 'sadasdasd', '2020-04-12 15:38:10', '2020-04-12 15:38:10', 0),
(27, 1, 1, 'asdasdasd', '2020-04-12 15:39:27', '2020-04-12 15:39:27', 0),
(28, 1, 1, 'asdasdasd', '2020-04-12 15:39:55', '2020-04-12 15:39:55', 0),
(29, 1, 1, 'asdasdasd', '2020-04-12 15:40:22', '2020-04-12 15:40:22', 0),
(30, 1, 1, 'asdasdasd', '2020-04-12 15:40:36', '2020-04-12 15:40:36', 0),
(31, 1, 1, 'asdasdasd', '2020-04-12 15:40:42', '2020-04-12 15:40:42', 0),
(32, 1, 1, 'asdasdasd', '2020-04-12 15:40:49', '2020-04-12 15:40:49', 0),
(33, 1, 1, 'asdasdasd', '2020-04-12 15:41:08', '2020-04-12 15:41:08', 0),
(34, 1, 1, 'asdasd', '2020-04-12 15:43:23', '2020-04-12 15:43:23', 0),
(35, 1, 1, 'asdasd', '2020-04-12 15:43:47', '2020-04-12 15:43:47', 0),
(36, 1, 1, 'asdasd', '2020-04-12 15:48:36', '2020-04-12 15:48:36', 0),
(37, 1, 1, 'asdasd', '2020-04-12 15:48:57', '2020-04-12 15:48:57', 0),
(38, 1, 1, 'asdasd', '2020-04-12 15:49:12', '2020-04-12 15:49:12', 0),
(39, 1, 1, 'asdasd', '2020-04-12 15:49:40', '2020-04-12 15:49:40', 0),
(40, 1, 1, 'asdasd', '2020-04-12 15:50:02', '2020-04-12 15:50:02', 0),
(41, 1, 1, 'asdasd', '2020-04-12 15:50:09', '2020-04-12 15:50:09', 0),
(42, 1, 1, 'asdasd', '2020-04-12 15:50:21', '2020-04-12 15:50:21', 0),
(43, 1, 1, 'cvbvbwaedsad', '2020-04-12 15:50:57', '2020-04-12 15:50:57', 0),
(44, 1, 1, 'asdasdasdasd', '2020-04-15 21:11:02', '2020-04-15 21:11:02', 0),
(45, 1, 1, 'asdasdasd', '2020-04-15 21:11:47', '2020-04-15 21:11:47', 0),
(46, 1, 1, '12123123123', '2020-04-15 21:22:20', '2020-04-15 21:22:20', 0),
(47, 1, 1, '123123123', '2020-04-15 21:24:06', '2020-04-15 21:24:06', 0),
(48, 1, 1, 'xc', '2020-04-15 21:24:10', '2020-04-15 21:24:10', 0),
(49, 1, 2, '1', '2020-04-15 21:24:48', '2020-04-15 21:24:48', 0),
(50, 1, 2, 'xcvxdvsdfsdf', '2020-04-15 21:24:53', '2020-04-15 21:24:53', 0),
(51, 1, 2, 'sad', '2020-04-15 21:25:02', '2020-04-15 21:25:02', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`, `type`) VALUES
(1, 1, 1, NULL, NULL, 'post'),
(2, 1, 2, NULL, NULL, 'post'),
(3, 1, 1, NULL, NULL, 'post'),
(4, 1, 1, NULL, NULL, 'post'),
(5, 1, 1, NULL, NULL, 'post'),
(6, 1, 2, NULL, NULL, 'post'),
(7, 1, 2, NULL, NULL, 'post'),
(8, 1, 1, NULL, NULL, 'post'),
(9, 1, 2, NULL, NULL, 'post'),
(10, 1, 2, NULL, NULL, 'post'),
(11, 1, 2, NULL, NULL, 'post'),
(12, 1, 2, NULL, NULL, 'post'),
(13, 1, 2, NULL, NULL, 'post'),
(14, 1, 2, NULL, NULL, 'post'),
(15, 1, 2, NULL, NULL, 'post'),
(16, 1, 1, NULL, NULL, 'post'),
(17, 1, 2, NULL, NULL, 'post'),
(18, 1, 1, NULL, NULL, 'post'),
(19, 1, 2, NULL, NULL, 'post'),
(20, 1, 2, NULL, NULL, 'post'),
(21, 1, 2, NULL, NULL, 'post'),
(22, 1, 2, NULL, NULL, 'post'),
(23, 1, 2, NULL, NULL, 'post'),
(24, 1, 2, NULL, NULL, 'post'),
(25, 1, 2, NULL, NULL, 'post'),
(26, 1, 2, NULL, NULL, 'post'),
(27, 1, 2, NULL, NULL, 'post'),
(28, 1, 2, NULL, NULL, 'post'),
(29, 1, 2, NULL, NULL, 'post'),
(30, 1, 2, NULL, NULL, 'post'),
(31, 1, 2, NULL, NULL, 'post'),
(32, 1, 2, NULL, NULL, 'post'),
(33, 1, 2, NULL, NULL, 'post'),
(34, 1, 2, NULL, NULL, 'post'),
(35, 1, 2, NULL, NULL, 'post'),
(36, 1, 2, NULL, NULL, 'post'),
(37, 1, 2, NULL, NULL, 'post'),
(38, 1, 2, NULL, NULL, 'post'),
(39, 1, 2, NULL, NULL, 'post'),
(40, 1, 1, NULL, NULL, 'post'),
(41, 1, 1, NULL, NULL, 'post'),
(42, 1, 1, NULL, NULL, 'post'),
(43, 1, 1, NULL, NULL, 'post'),
(44, 1, 1, NULL, NULL, 'post'),
(45, 1, 1, NULL, NULL, 'post'),
(46, 1, 1, NULL, NULL, 'post'),
(47, 1, 1, NULL, NULL, 'post'),
(48, 1, 1, NULL, NULL, 'post'),
(49, 1, 1, NULL, NULL, 'post'),
(50, 1, 1, NULL, NULL, 'post'),
(51, 1, 1, NULL, NULL, 'post'),
(52, 1, 1, NULL, NULL, 'post'),
(53, 1, 1, NULL, NULL, 'post'),
(54, 1, 1, NULL, NULL, 'post'),
(55, 1, 1, NULL, NULL, 'post'),
(56, 1, 1, NULL, NULL, 'post'),
(57, 1, 1, NULL, NULL, 'post'),
(58, 1, 1, NULL, NULL, 'post'),
(59, 1, 1, NULL, NULL, 'post'),
(60, 1, 1, NULL, NULL, 'post'),
(61, 1, 1, NULL, NULL, 'post'),
(62, 1, 1, NULL, NULL, 'post'),
(63, 1, 1, NULL, NULL, 'post'),
(64, 1, 1, NULL, NULL, 'post'),
(65, 1, 1, NULL, NULL, 'post'),
(66, 1, 1, NULL, NULL, 'post'),
(67, 1, 1, NULL, NULL, 'post'),
(68, 1, 1, NULL, NULL, 'post'),
(69, 1, 1, NULL, NULL, 'post'),
(70, 1, 1, NULL, NULL, 'post'),
(71, 1, 1, NULL, NULL, 'post'),
(72, 1, 1, NULL, NULL, 'post'),
(73, 1, 1, NULL, NULL, 'post'),
(74, 1, 1, NULL, NULL, 'post'),
(75, 1, 1, NULL, NULL, 'post'),
(76, 1, 1, NULL, NULL, 'post'),
(77, 1, 1, NULL, NULL, 'post'),
(78, 1, 1, NULL, NULL, 'post');

-- --------------------------------------------------------

--
-- Структура таблиці `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `img` varchar(1024) DEFAULT NULL,
  `time_created` timestamp NULL DEFAULT current_timestamp(),
  `time_updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `post`
--

INSERT INTO `post` (`id`, `user_id`, `text`, `img`, `time_created`, `time_updated`) VALUES
(1, 1, 'Тестовый постик 1', '/images/posts/1.png', '2018-08-30 13:31:14', '2020-04-05 08:43:54'),
(2, 1, 'Печальный пост', '/images/posts/2.png', '2018-10-11 01:33:27', '2020-04-05 08:43:54');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `personaname` varchar(50) NOT NULL DEFAULT '',
  `avatarfull` varchar(150) NOT NULL DEFAULT '',
  `rights` tinyint(4) NOT NULL DEFAULT 0,
  `wallet_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `wallet_total_refilled` decimal(10,2) NOT NULL DEFAULT 0.00,
  `wallet_total_withdrawn` decimal(10,2) NOT NULL DEFAULT 0.00,
  `time_created` datetime NOT NULL,
  `time_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `personaname`, `avatarfull`, `rights`, `wallet_balance`, `wallet_total_refilled`, `wallet_total_withdrawn`, `time_created`, `time_updated`) VALUES
(1, 'admin@niceadminmail.pl', '12qwaszx', 'AdminProGod', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/96/967871835afdb29f131325125d4395d55386c07a_full.jpg', 0, '0.00', '0.00', '0.00', '2019-07-26 01:53:54', '2020-04-05 10:08:58'),
(2, 'simpleuser@niceadminmail.pl', '12qwaszx', 'simpleuser', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/86/86a0c845038332896455a566a1f805660a13609b_full.jpg', 0, '0.00', '0.00', '0.00', '2019-07-26 01:53:54', '2020-04-05 10:22:45');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `boosterpack`
--
ALTER TABLE `boosterpack`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `time_updated` (`time_updated`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `boosterpack`
--
ALTER TABLE `boosterpack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблиці `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблиці `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

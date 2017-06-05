-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 05 2017 г., 17:41
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dayproject_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `article_id`, `name`, `title`, `short_description`, `description`, `attributes`, `img`, `imgs`, `files`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(43, 11, 0, '', 'Про нас@|;About us@|;', '@|;@|;', '<p>День, який випромінює світло і тепло. День, який приносить задоволення.</p>\r\n\r\n<p>Це все ДЕНЬ project - проект вашого простору, в якому хочеться</p>\r\n\r\n<p>прокидатися, працювати, відпочивати.</p>\r\n\r\n<p>Функціональне, комфортне, практичне рішення вашого інтер&#39;єру.</p>\r\n\r\n<p>Ми команда професіоналів, яка розуміє ваші потреби і втілює їх в життя.</p>@|;The day, which emits light and heat. The day is a pleasure.\r\nThis all day project - design your space in which you want\r\nwake up, work, relax.\r\nThe functional, comfortable, practical solutions for your interior.\r\nWe are a team of professionals that understands your needs and implements them in life.@|;', '', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:38:22', '2017-05-29 12:38:22'),
(44, 12, 0, '', 'Corea@|;Corea@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430":"upload\\/articles\\/44\\/img\\/44-5935429601c19.jpg"}', '', '[{"full":"upload\\/articles\\/44\\/full\\/project_1_1.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_1.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_2.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_2.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_3.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_3.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_4.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_4.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_5.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_5.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_6.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_6.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_7.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_7.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_8.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_8.jpg"}]', '', 0, '0000-00-00 00:00:00', 'META Title seo@|;@|;', 'META Description seo@|;@|;', 'META Keywords@|;@|;', 1, '2017-05-29 12:42:38', '2017-06-05 11:37:58'),
(45, 12, 0, '', 'Book@|;Book@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430":"upload\\/articles\\/45\\/img\\/45-593542c2702d9.jpg"}', '', '[{"full":"upload\\/articles\\/45\\/full\\/project_2_1.jpg","min":"upload\\/articles\\/45\\/min\\/project_2_1.jpg"},{"full":"upload\\/articles\\/45\\/full\\/project_2_10.jpg","min":"upload\\/articles\\/45\\/min\\/project_2_10.jpg"},{"full":"upload\\/articles\\/45\\/full\\/project_2_2.jpg","min":"upload\\/articles\\/45\\/min\\/project_2_2.jpg"},{"full":"upload\\/articles\\/45\\/full\\/project_2_3.jpg","min":"upload\\/articles\\/45\\/min\\/project_2_3.jpg"},{"full":"upload\\/articles\\/45\\/full\\/project_2_4.jpg","min":"upload\\/articles\\/45\\/min\\/project_2_4.jpg"},{"full":"upload\\/articles\\/45\\/full\\/project_2_5.jpg","min":"upload\\/articles\\/45\\/min\\/project_2_5.jpg"},{"full":"upload\\/articles\\/45\\/full\\/project_2_6.jpg","min":"upload\\/articles\\/45\\/min\\/project_2_6.jpg"},{"full":"upload\\/articles\\/45\\/full\\/project_2_7.jpg","min":"upload\\/articles\\/45\\/min\\/project_2_7.jpg"},{"full":"upload\\/articles\\/45\\/full\\/project_2_8.jpg","min":"upload\\/articles\\/45\\/min\\/project_2_8.jpg"},{"full":"upload\\/articles\\/45\\/full\\/project_2_9.jpg","min":"upload\\/articles\\/45\\/min\\/project_2_9.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:46:30', '2017-06-05 11:38:42'),
(46, 12, 0, '', 'Book@|;Book@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430":"upload\\/articles\\/46\\/img\\/46-593542f3a7c0c.jpg"}', '', '[{"full":"upload\\/articles\\/46\\/full\\/project_3_1.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_1.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_2.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_2.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_3.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_3.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_4.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_4.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_5.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_5.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_6.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_6.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_7.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_7.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:47:49', '2017-06-05 11:39:31'),
(47, 12, 0, '', 'Book@|;Book@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430":"upload\\/articles\\/47\\/img\\/47-5935434f078cd.jpg"}', '', '[{"full":"upload\\/articles\\/47\\/full\\/project_4_1.jpg","min":"upload\\/articles\\/47\\/min\\/project_4_1.jpg"},{"full":"upload\\/articles\\/47\\/full\\/project_4_2.jpg","min":"upload\\/articles\\/47\\/min\\/project_4_2.jpg"},{"full":"upload\\/articles\\/47\\/full\\/project_4_3.jpg","min":"upload\\/articles\\/47\\/min\\/project_4_3.jpg"},{"full":"upload\\/articles\\/47\\/full\\/project_4_4.jpg","min":"upload\\/articles\\/47\\/min\\/project_4_4.jpg"},{"full":"upload\\/articles\\/47\\/full\\/project_4_5.jpg","min":"upload\\/articles\\/47\\/min\\/project_4_5.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:49:01', '2017-06-05 11:41:03'),
(48, 13, 0, '', 'Towers@|;Towers@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u0430":"upload\\/articles\\/48\\/img\\/48-5935439cabd3e.jpg"}', '', '[{"full":"upload\\/articles\\/48\\/full\\/subject_1_1.jpg","min":"upload\\/articles\\/48\\/min\\/subject_1_1.jpg"},{"full":"upload\\/articles\\/48\\/full\\/subject_1_2.jpg","min":"upload\\/articles\\/48\\/min\\/subject_1_2.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:52:11', '2017-06-05 11:42:20'),
(49, 15, 0, '', 'Facebook@|;Facebook@|;', '@|;@|;', '@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/www.facebook.com\\/DAYprojectON\\/"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:57:22', '2017-06-05 11:36:09'),
(50, 15, 0, '', 'Instagram@|;Instagram@|;', '@|;@|;', '@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/www.instagram.com\\/_dayproject_\\/"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:58:26', '2017-06-05 11:36:24');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(11) NOT NULL,
  `article_parent` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `article_parent`, `link`, `title`, `img`, `short_description`, `description`, `imgs`, `fields`, `date`, `active`, `meta_title`, `meta_description`, `meta_keywords`, `priority`, `created_at`, `updated_at`) VALUES
(11, 0, 0, 'company', 'Про нас@|;About us@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","description","active","meta_title","meta_description","meta_keywords"],"attributes":{}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:25:28', '2017-05-31 21:08:47'),
(12, 0, 0, 'project', 'Проекти@|;Project@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","gallery","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка проекта":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:27:41', '2017-05-29 12:44:16'),
(13, 0, 0, 'subject', 'Предмети@|;Subjects@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","gallery","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка предмета":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:29:40', '2017-05-29 12:52:24'),
(14, 0, 0, 'contact', 'Контакти@|;Contacts@|;', '', '@|;@|;', '@|;@|;', '', '{"base":["title"],"attributes":{"Фон сторінки":{"type":"files","lang_active":false,"active":false}}}', '1970-01-01 01:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:31:32', '2017-05-29 12:31:32'),
(15, 0, 0, 'social', 'Соціальні мережі@|;Social networks@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","active"],"attributes":{"Ссилка":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:33:05', '2017-05-29 12:57:49');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `article_id` int(11) NOT NULL,
  `rate` double(8,2) NOT NULL,
  `user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_email` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `langs`
--

CREATE TABLE IF NOT EXISTS `langs` (
  `id` int(10) unsigned NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `langs`
--

INSERT INTO `langs` (`id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'ua', '2017-01-14 20:44:58', '2017-01-14 20:44:58'),
(2, 'en', '2017-01-14 20:44:58', '2017-01-14 20:44:58');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_14_124503_create_articles_table', 1),
('2016_09_14_124813_create_categories_table', 1),
('2016_09_14_124942_create_langs_table', 1),
('2016_10_06_124518_create_texts_table', 1),
('2016_11_04_094627_create_comments_table', 1),
('2016_12_26_140118_change_text_table_soft', 1),
('2017_01_02_155628_create_orders_table', 1),
('2017_02_06_120655_create_settings_table', 2),
('2017_02_13_144141_add_parent_id_categories', 3),
('2017_02_13_174128_add_article_id', 4),
('2017_02_13_174631_add_article_id', 5),
('2017_02_14_110847_add_article_parrent_category', 6),
('2017_02_14_111446_add_article_parrent_category', 7),
('2017_02_24_163342_add_field_img', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('webdesignstudio@gmail.com', 'fbde7c2090b1432792a7b0caee4dcfa185c155d6cc24beff39508ff5271224ba', '2017-02-06 14:40:36');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'config.email', 'Пошта для отримання повідомлень', 'webtestingstudio@gmail.com', '0000-00-00 00:00:00', '2017-04-03 20:48:45', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE IF NOT EXISTS `texts` (
  `id` int(10) unsigned NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `lang_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `page_id`, `name`, `type`, `title`, `description`, `priority`, `lang_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'address', 'input', 'Адрес', 'Київ, Україна@|;Kyiv, Ukraine@|;', 0, 1, '2017-04-21 15:09:24', '2017-05-29 12:01:48', NULL),
(2, 0, 'telephone', 'input', 'Телефон', '+38 (096) 598 76 07', 0, 0, '2017-04-21 15:11:31', '2017-05-29 11:58:21', NULL),
(6, 0, 'email', 'input', 'Email', 'dayprojecton@gmail.com', 0, 0, '2017-05-29 12:02:40', '2017-05-29 12:02:40', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'root', 'webtestingstudio@gmail.com', '$2y$10$6NO1CpFCQr/JpWLQzETEgeoERlyd4xT3BIDSM6SKULihbZFI61L/u', 'KVkwLnlCoSSPG5tgpSpucBOe2NkoUMqDlJ1luFNECAanjUKl5unN1MyEfPEr', '2017-04-03 21:35:00', '2017-04-20 13:25:27');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

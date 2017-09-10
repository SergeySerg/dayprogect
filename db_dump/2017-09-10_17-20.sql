-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 10 2017 г., 17:18
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `article_id`, `name`, `title`, `short_description`, `description`, `attributes`, `img`, `imgs`, `files`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(43, 11, 0, '', 'Про нас@|;О нас@|;', '@|;@|;', '<p>День, який випромінює світло і тепло. День, який приносить задоволення.</p>\r\n\r\n<p>Це все ДЕНЬ project - проект вашого простору, в якому хочеться</p>\r\n\r\n<p>прокидатися, працювати, відпочивати.</p>\r\n\r\n<p>Функціональне, комфортне, практичне рішення вашого інтер&#39;єру.</p>\r\n\r\n<p>Ми команда професіоналів, яка розуміє ваші потреби і втілює їх в життя.</p>@|;<p>День, который излучает свет и тепло. День, который приносит удовольствие.</p>\r\n\r\n<p>Это все ДЕНЬ project - проект вашего пространства, в котором хочется</p>\r\n\r\n<p>просыпаться, работать, отдыхать.</p>\r\n\r\n<p>Функциональное, комфортное, практичное решение вашего интерьера.</p>\r\n\r\n<p>Мы команда профессионалов, которая понимает ваши потребности и воплощает их в жизнь.</p>@|;', '', '', '[]', '', 0, '0000-00-00 00:00:00', 'ДЕНЬ project@|;О нас | День Project@|;', 'ДЕНЬ project - проект вашого простору, в якому хочеться  прокидатися, працювати, відпочивати.@|;ДЕНЬ project - проект вашего пространства, в котором хочется просыпаться, работать, отдыхать.@|;', 'дизайн интерьеров@|;Дизайн@|;', 1, '2017-05-29 12:38:22', '2017-09-04 17:35:45'),
(44, 12, 0, '', 'Corea@|;Corea@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430":"upload\\/articles\\/44\\/img\\/44-5935429601c19.jpg"}', '', '[{"full":"upload\\/articles\\/44\\/full\\/project_1_1.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_1.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_2.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_2.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_3.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_3.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_4.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_4.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_5.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_5.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_6.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_6.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_7.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_7.jpg"},{"full":"upload\\/articles\\/44\\/full\\/project_1_8.jpg","min":"upload\\/articles\\/44\\/min\\/project_1_8.jpg"}]', '', 0, '0000-00-00 00:00:00', 'META Title seo@|;@|;', 'META Description seo@|;@|;', 'META Keywords@|;@|;', 1, '2017-05-29 12:42:38', '2017-06-05 11:37:58'),
(45, 12, 0, '', 'Book@|;Book@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430":"upload\\/articles\\/45\\/img\\/45-59901fef54645.jpg"}', '', '[{"full":"upload\\/articles\\/45\\/full\\/12.jpg","min":"upload\\/articles\\/45\\/min\\/12.jpg"},{"full":"upload\\/articles\\/45\\/full\\/13.jpg","min":"upload\\/articles\\/45\\/min\\/13.jpg"},{"full":"upload\\/articles\\/45\\/full\\/14.jpg","min":"upload\\/articles\\/45\\/min\\/14.jpg"},{"full":"upload\\/articles\\/45\\/full\\/15.jpg","min":"upload\\/articles\\/45\\/min\\/15.jpg"},{"full":"upload\\/articles\\/45\\/full\\/16.jpg","min":"upload\\/articles\\/45\\/min\\/16.jpg"},{"full":"upload\\/articles\\/45\\/full\\/17.jpg","min":"upload\\/articles\\/45\\/min\\/17.jpg"},{"full":"upload\\/articles\\/45\\/full\\/18.jpg","min":"upload\\/articles\\/45\\/min\\/18.jpg"},{"full":"upload\\/articles\\/45\\/full\\/19.jpg","min":"upload\\/articles\\/45\\/min\\/19.jpg"},{"full":"upload\\/articles\\/45\\/full\\/20.jpg","min":"upload\\/articles\\/45\\/min\\/20.jpg"},{"full":"upload\\/articles\\/45\\/full\\/21.jpg","min":"upload\\/articles\\/45\\/min\\/21.jpg"},{"full":"upload\\/articles\\/45\\/full\\/22.jpg","min":"upload\\/articles\\/45\\/min\\/22.jpg"},{"full":"upload\\/articles\\/45\\/full\\/23.jpg","min":"upload\\/articles\\/45\\/min\\/23.jpg"},{"full":"upload\\/articles\\/45\\/full\\/24.jpg","min":"upload\\/articles\\/45\\/min\\/24.jpg"},{"full":"upload\\/articles\\/45\\/full\\/25.jpg","min":"upload\\/articles\\/45\\/min\\/25.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:46:30', '2017-08-13 09:46:23'),
(46, 12, 0, '', 'Hohotels@|;Hohotels@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430":"upload\\/articles\\/46\\/img\\/46-593542f3a7c0c.jpg"}', '', '[{"full":"upload\\/articles\\/46\\/full\\/project_3_1.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_1.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_2.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_2.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_3.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_3.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_4.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_4.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_5.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_5.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_6.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_6.jpg"},{"full":"upload\\/articles\\/46\\/full\\/project_3_7.jpg","min":"upload\\/articles\\/46\\/min\\/project_3_7.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:47:49', '2017-09-04 14:01:25'),
(47, 12, 0, '', 'Small family@|;Small family@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430":"upload\\/articles\\/47\\/img\\/47-5935434f078cd.jpg"}', '', '[{"full":"upload\\/articles\\/47\\/full\\/project_4_1.jpg","min":"upload\\/articles\\/47\\/min\\/project_4_1.jpg"},{"full":"upload\\/articles\\/47\\/full\\/project_4_2.jpg","min":"upload\\/articles\\/47\\/min\\/project_4_2.jpg"},{"full":"upload\\/articles\\/47\\/full\\/project_4_3.jpg","min":"upload\\/articles\\/47\\/min\\/project_4_3.jpg"},{"full":"upload\\/articles\\/47\\/full\\/project_4_4.jpg","min":"upload\\/articles\\/47\\/min\\/project_4_4.jpg"},{"full":"upload\\/articles\\/47\\/full\\/project_4_5.jpg","min":"upload\\/articles\\/47\\/min\\/project_4_5.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:49:01', '2017-09-04 14:00:53'),
(48, 13, 0, '', 'Дизайн однокімнатної квартири@|;Дизайн однокомнатной квартиры@|;', '@|;@|;', '<p>Як правило однокімнатні квартири мають невелику площу,тому при розробці дизайн-проекту 1к квартири перед нами постае основна задача:економне використання даної площі з максимальним її заповненням для задоволення потреб кліента. В першу чергу використовуеться розділення житлових зон. Для максимального використанняплощі здійснюеться демонтаж стін та залучення нефункціонального простору. Найкращім варіантом в розроблені проекту одно кімнатної квартири є обеднання балкону кухні та гостиної створити так звану квартиру-студію. Це дае нам можливість отримати вільний простір для розміщення спальні.</p>\r\n<p>Як правило однокімнатні квартири мають невелику площу,тому при розробці дизайн-проекту 1к квартири перед нами постае основна задача:економне використання даної площі з максимальним її заповненням для задоволення потреб кліента. В першу чергу використовуеться розділення житлових зон. Для максимального використанняплощі здійснюеться демонтаж стін та залучення нефункціонального простору. Найкращім варіантом в розроблені проекту одно кімнатної квартири є обеднання балкону кухні та гостиної створити так звану квартиру-студію. Це дае нам можливість отримати вільний простір для розміщення спальні.</p>\r\n<p>Як правило однокімнатні квартири мають невелику площу,тому при розробці дизайн-проекту 1к квартири перед нами постае основна задача:економне використання даної площі з максимальним її заповненням для задоволення потреб кліента. В першу чергу використовуеться розділення житлових зон. Для максимального використанняплощі здійснюеться демонтаж стін та залучення нефункціонального простору. Найкращім варіантом в розроблені проекту одно кімнатної квартири є обеднання балкону кухні та гостиної створити так звану квартиру-студію. Це дае нам можливість отримати вільний простір для розміщення спальні.</p>\r\n<p>Як правило однокімнатні квартири мають невелику площу,тому при розробці дизайн-проекту 1к квартири перед нами постае основна задача:економне використання даної площі з максимальним її заповненням для задоволення потреб кліента. В першу чергу використовуеться розділення житлових зон. Для максимального використанняплощі здійснюеться демонтаж стін та залучення нефункціонального простору. Найкращім варіантом в розроблені проекту одно кімнатної квартири є обеднання балкону кухні та гостиної створити так звану квартиру-студію. Це дае нам можливість отримати вільний простір для розміщення спальні.</p>@|;<p>Как правило однокомнатные квартиры имеют небольшую площадь, поэтому при<br />\r\nразработке дизайн-проекта 1к квартиры перед нами предстает основная<br />\r\nзадача: экономное использование данной площади с максимальным ее<br />\r\nзаполнением для удовлетворения потребностей клиента. В первую очередь<br />\r\nиспользуется разделение жилых зон. для максимального<br />\r\nвикористанняплощи осуществляется демонтаж стен и привлечения<br />\r\nнефункционального пространства.<br />\r\nЛучшим вариантом в разработанные проекта равно комнатной квартиры<br />\r\nесть обеднання балкона кухни и гостиной создать так называемую<br />\r\nквартиру-студию. Это дает нам возможность получить свободное пространство для<br />\r\nразмещение спальни.</p>@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u0430":"upload\\/articles\\/48\\/img\\/48-59ad9b6295f14.jpg"}', '', '[{"full":"upload\\/articles\\/48\\/full\\/project_3_1.jpg","min":"upload\\/articles\\/48\\/min\\/project_3_1.jpg"},{"full":"upload\\/articles\\/48\\/full\\/project_3_2.jpg","min":"upload\\/articles\\/48\\/min\\/project_3_2.jpg"},{"full":"upload\\/articles\\/48\\/full\\/project_3_3.jpg","min":"upload\\/articles\\/48\\/min\\/project_3_3.jpg"},{"full":"upload\\/articles\\/48\\/full\\/subject_1_1.jpg","min":"upload\\/articles\\/48\\/min\\/subject_1_1.jpg"},{"full":"upload\\/articles\\/48\\/full\\/subject_1_2.jpg","min":"upload\\/articles\\/48\\/min\\/subject_1_2.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:52:11', '2017-09-10 13:52:32'),
(49, 15, 0, '', 'Facebook@|;Facebook@|;', '@|;@|;', '@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/www.facebook.com\\/DAYprojectON\\/"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:57:22', '2017-06-05 11:36:09'),
(50, 15, 0, '', 'Instagram@|;Instagram@|;', '@|;@|;', '@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/www.instagram.com\\/_dayproject_\\/"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:58:26', '2017-06-05 11:36:24'),
(51, 13, 0, '', 'Дизайн двохкімнатної квартири@|;Дизайн двохкомнатной квартиры@|;', '@|;@|;', '<p>Як правило однокімнатні квартири мають невелику площу,тому при розробці дизайн-проекту 1к квартири перед нами постае основна задача:економне використання даної площі з максимальним її заповненням для задоволення потреб кліента. В першу чергу використовуеться розділення житлових зон. Для максимального використанняплощі здійснюеться демонтаж стін та залучення нефункціонального простору. Найкращім варіантом в розроблені проекту одно кімнатної квартири є обеднання балкону кухні та гостиної створити так звану квартиру-студію. Це дае нам можливість отримати вільний простір для розміщення спальні.</p>@|;<p>Як правило однокімнатні квартири мають невелику площу,тому при розробці дизайн-проекту 1к квартири перед нами постае основна задача:економне використання даної площі з максимальним її заповненням для задоволення потреб кліента. В першу чергу використовуеться розділення житлових зон. Для максимального використанняплощі здійснюеться демонтаж стін та залучення нефункціонального простору. Найкращім варіантом в розроблені проекту одно кімнатної квартири є обеднання балкону кухні та гостиної створити так звану квартиру-студію. Це дае нам можливість отримати вільний простір для розміщення спальні.</p>@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u0430":"upload\\/articles\\/51\\/img\\/51-59b19b63383a8.jpg"}', '', '[{"full":"upload\\/articles\\/51\\/full\\/project_3_5.jpg","min":"upload\\/articles\\/51\\/min\\/project_3_5.jpg"},{"full":"upload\\/articles\\/51\\/full\\/project_3_6.jpg","min":"upload\\/articles\\/51\\/min\\/project_3_6.jpg"},{"full":"upload\\/articles\\/51\\/full\\/project_3_7.jpg","min":"upload\\/articles\\/51\\/min\\/project_3_7.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-09-07 19:17:55', '2017-09-07 19:19:58'),
(52, 13, 0, '', 'Дизайн трьохкімнатної квартири@|;Дизайн трьохкомнатной квартиры@|;', '@|;@|;', '<p>Як правило однокімнатні квартири мають невелику площу,тому при розробці дизайн-проекту 1к квартири перед нами постае основна задача:економне використання даної площі з максимальним її заповненням для задоволення потреб кліента. В першу чергу використовуеться розділення житлових зон. Для максимального використанняплощі здійснюеться демонтаж стін та залучення нефункціонального простору. Найкращім варіантом в розроблені проекту одно кімнатної квартири є обеднання балкону кухні та гостиної створити так звану квартиру-студію. Це дае нам можливість отримати вільний простір для розміщення спальні.</p>@|;<p>Як правило однокімнатні квартири мають невелику площу,тому при розробці дизайн-проекту 1к квартири перед нами постае основна задача:економне використання даної площі з максимальним її заповненням для задоволення потреб кліента. В першу чергу використовуеться розділення житлових зон. Для максимального використанняплощі здійснюеться демонтаж стін та залучення нефункціонального простору. Найкращім варіантом в розроблені проекту одно кімнатної квартири є обеднання балкону кухні та гостиної створити так звану квартиру-студію. Це дае нам можливість отримати вільний простір для розміщення спальні.</p>@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u0430":"upload\\/articles\\/52\\/img\\/52-59b19c967e868.jpg"}', '', '[{"full":"upload\\/articles\\/52\\/full\\/project_1_2.jpg","min":"upload\\/articles\\/52\\/min\\/project_1_2.jpg"},{"full":"upload\\/articles\\/52\\/full\\/project_1_6.jpg","min":"upload\\/articles\\/52\\/min\\/project_1_6.jpg"},{"full":"upload\\/articles\\/52\\/full\\/project_1_7.jpg","min":"upload\\/articles\\/52\\/min\\/project_1_7.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-09-07 19:23:02', '2017-09-07 19:25:39'),
(53, 13, 0, '', 'Дизайн чотирьохкімнатної квартири@|;Дизайн чотирьохкомнатной квартиры@|;', '@|;@|;', '<p>Як правило однокімнатні квартири мають невелику площу,тому при розробці дизайн-проекту 1к квартири перед нами постае основна задача:економне використання даної площі з максимальним її заповненням для задоволення потреб кліента. В першу чергу використовуеться розділення житлових зон. Для максимального використанняплощі здійснюеться демонтаж стін та залучення нефункціонального простору. Найкращім варіантом в розроблені проекту одно кімнатної квартири є обеднання балкону кухні та гостиної створити так звану квартиру-студію. Це дае нам можливість отримати вільний простір для розміщення спальні.</p>@|;<p>Як правило однокімнатні квартири мають невелику площу,тому при розробці дизайн-проекту 1к квартири перед нами постае основна задача:економне використання даної площі з максимальним її заповненням для задоволення потреб кліента. В першу чергу використовуеться розділення житлових зон. Для максимального використанняплощі здійснюеться демонтаж стін та залучення нефункціонального простору. Найкращім варіантом в розроблені проекту одно кімнатної квартири є обеднання балкону кухні та гостиної створити так звану квартиру-студію. Це дае нам можливість отримати вільний простір для розміщення спальні.</p>@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u0440\\u0435\\u0434\\u043c\\u0435\\u0442\\u0430":"upload\\/articles\\/53\\/img\\/53-59b19d1c29a0f.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-09-07 19:25:16', '2017-09-07 19:25:16');

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
(12, 0, 0, 'project', 'Проекти@|;Project@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","gallery","active"],"attributes":{"Картинка проекта":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:27:41', '2017-06-05 21:36:47'),
(13, 0, 0, 'news', 'Новини@|;Новини@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","description","gallery","active"],"attributes":{"Картинка предмета":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:29:40', '2017-09-04 18:14:57'),
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
(2, 'ru', '2017-01-14 20:44:58', '2017-01-14 20:44:58');

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
(1, 'config.email', 'Пошта для отримання повідомлень', 'info@dayproject.com.ua	', '0000-00-00 00:00:00', '2017-06-05 20:31:45', NULL);

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
(1, 0, 'address', 'input', 'Адрес', 'Київ, Україна@|;Киев, Украина@|;', 0, 1, '2017-04-21 15:09:24', '2017-09-04 14:02:12', NULL),
(2, 0, 'telephone', 'input', 'Телефон', '+38 (096) 598 76 07 ', 0, 0, '2017-04-21 15:11:31', '2017-06-08 14:03:47', NULL),
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'root', 'webtestingstudio@gmail.com', '$2y$10$6NO1CpFCQr/JpWLQzETEgeoERlyd4xT3BIDSM6SKULihbZFI61L/u', 'em84KKyw00HjVi7i9UczP2cpoRptlPaJ9YMMWOirzvgKWrjz1ltgqQJZLtad', '2017-04-03 21:35:00', '2017-06-05 20:21:35'),
(3, 'info@dayproject.com.ua', 'info@dayproject.com.ua', '$2y$10$REVi/jO0TeaQEcNqys5gqegNXpAga7.6R30qdd607HuUPlem8C722', 'XKBc8TN8J9Au1ZAhjY46SbPMaep3WYArU01OVyybTQbBxWnZ7QdaJNMSXiNm', '2017-06-05 20:29:36', '2017-09-04 18:08:30');

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 15 déc. 2023 à 03:44
-- Version du serveur :  5.7.17
-- Version de PHP :  7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `simple_forum`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id_answer` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `content` text,
  `status` enum('pending','approved','rejected') DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `answers`
--

INSERT INTO `answers` (`id_answer`, `topic_id`, `author_id`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nok,  let us  see if its works ...', 'approved', '2023-11-30 13:49:27', '2023-12-01'),
(2, 6, 1, 'ok,  let us  see if its works ...\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'approved', '2023-11-30 13:57:49', '2023-12-01'),
(3, 6, 1, 'jst  a testta  a\r\nok, let us see if its works ... Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nok, let us see if its works ... Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'approved', '2023-11-30 13:58:07', '2023-12-01'),
(4, 6, 1, 'testtt\r\nok, let us see if its works ... Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.ok, let us see if its works ... Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.ok, let us see if its works ... Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'approved', '2023-11-30 13:59:31', '2023-12-01'),
(5, 1, 1, 'Hello,\r\n\r\nA customer wants to migrate to the digital space and he\'s considering Prestashop to power his platform.\r\n\r\nMost of the orders are currently manually handled via whatsapp.\r\n\r\nThe owner would like to keep a similar experience with the existing customer base but to automate the process.\r\n\r\nIs there a tool you know that could allow handling the order through whatsapp and then synchronize with the BO?\r\n\r\nThanks,', 'approved', '2023-12-03 02:04:46', '2023-12-03'),
(6, 4, 1, '<p>Hello,\r\n\r\nA customer wants to migrate to the digital space and he\'s considering Prestashop to power his platform.\r\n\r\nMost of the orders are currently manually handled via <strong>whatsapp.\r\n</strong>\r\nThe owner would like to keep a similar experience with the existing customer base but to automate the process.\r\n\r\nIs there a tool you know that could allow handling the order through whatsapp and then synchronize with the BO?\r\n\r\nThanks,</p>', 'approved', '2023-12-03 02:38:01', '2023-12-03'),
(7, 4, 1, '<p><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Yes, there are a few tools that can help you manage orders via<strong> WhatsApp </strong>and synchronize with your Back Office. One option is to use a <strong>WhatsApp Business API </strong>integration tool, which can connect your <strong>WhatsApp</strong> account to your PrestaShop store. This will allow you to receive orders, send notifications, and manage customer support directly from <strong>WhatsApp</strong>. Another option is to use a chatbots, which can be programmed to handle order processing and customer support tasks. Chatbots can be integrated with your WhatsApp account and your PrestaShop store</span><a href=\"https://pkbundle.com/jazz-lahore-offer/\" rel=\"external nofollow noopener\" target=\"_blank\" style=\"color: rgb( var(--theme-link) ); text-decoration-line: underline; background-color: rgb(255, 255, 255); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">,</a><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">&nbsp;so that you can automate the entire order process.</span><br></p>', 'approved', '2023-12-03 02:55:18', '2023-12-03'),
(8, 9, 1, '<p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Need the same,&nbsp;also looking for a solution for some time.</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><strong>Greetings</strong></p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Sebastian</p>', 'approved', '2023-12-03 03:36:54', '2023-12-03'),
(9, 9, 1, '<p><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">It must be a specific cart rule for a specific product. I don\'t think it\'s possible to create a global rule for it.</span><br></p>', 'approved', '2023-12-03 03:37:17', '2023-12-03'),
(10, 9, 1, '<p><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Hi, too specific to be managed with regular Prestashop cart rules&nbsp;</span><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">&nbsp;You certainly need a developpment.</span><br></p>', 'approved', '2023-12-03 03:37:51', '2023-12-03'),
(11, 9, 1, '<p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">I wrote a email to the developer but no answer yet.&nbsp;I think the module is not up to date. Reviews etc are from 2019.&nbsp;</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">But it sounds like the perfect modul for our cases.</p>', 'approved', '2023-12-03 03:38:32', '2023-12-03'),
(12, 10, 1, '<p><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Htmlbox module. Place your codes, scripts into header in that module and it should work just fine.</span><br></p>', 'approved', '2023-12-04 13:01:56', '2023-12-04'),
(13, 10, 1, '<p><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">You can use google tag manager to implement GTM, GA, Search Console, Ads, Meta Pixels.</span><br style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">You just need to copy the GTM scripts into the header.tpl or head.tpl file as per Google\'s instructions, in the header and body.</span><br></p>', 'approved', '2023-12-04 13:02:34', '2023-12-04'),
(14, 15, 2, '<p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">he standard way this works in Prestashop is that when you enter a company name it will assume that you are a business customer. In that case an extra field opens where you can enter a VAT number. When a VAT number is entered no VAT is charged.</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">That is how it works when selling from one EU country to another. I am not sure whether that also works from outside the EU. ok</p>', 'approved', '2023-12-05 12:44:19', '2023-12-05'),
(15, 10, 2, '<p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">So the checkout process needs to identify customer as either Business or Consumer - and register Business name in the case of Business customer.</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">How do we configure this in Prestashop?</p>', 'approved', '2023-12-05 13:09:50', '2023-12-05'),
(16, 15, 4, '<p>Hello&nbsp; I\'m&nbsp; <strong>Moctar&nbsp; </strong>and&nbsp; I\'m&nbsp; new here.&nbsp; <strong>edited</strong></p>', 'approved', '2023-12-08 00:37:26', '2023-12-08'),
(17, 16, 4, '<p><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Yes what a BULL have those guys done. No redirects or&nbsp; keep a few older pages, No plan in leaving functional pages online. Must have 1000 or more 404 by now.</span><br></p>', 'approved', '2023-12-08 01:51:52', '2023-12-08'),
(18, 16, 4, '<p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Hello,</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">On this link you can find all the PrestaShop version available until now, so you can download the version that you want&nbsp;:&nbsp;</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><a href=\"https://prestashop.com/versions/\" rel=\"external nofollow noopener\" target=\"_blank\" style=\"color: rgb( var(--theme-link) ); text-decoration-line: underline;\">https://prestashop.com/versions/</a></p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">I wish you a good day. ok</p>', 'approved', '2023-12-08 01:53:45', '2023-12-08'),
(19, 10, 4, '<p>ok&nbsp; good</p>', 'approved', '2023-12-08 02:00:31', '2023-12-08');

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id_author` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `description` text,
  `cover` text,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `authors`
--

INSERT INTO `authors` (`id_author`, `fullname`, `description`, `cover`, `username`, `email`, `password`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Ndiaga Ka', 'Web Developer with 10 +  years of experiance.', 'nka.jpg', 'ndiaga', 'kandiaga@yandex.ru', 'c06db68e819be6ec3d26c6038d8e8d1f', '2023-11-28 13:42:44', NULL, 'ok.jpg'),
(2, 'Moussa  Fall', NULL, NULL, 'moussa', 'moussa@yahoo.fr', '$2y$12$/Q7nEvPBFSJz89tMrZNnSeXJrSKqOeIb6MAYo2XjuV5zD41eeK2Ca', '2023-12-05 12:39:21', NULL, NULL),
(4, NULL, NULL, NULL, 'moctar', 'moctar@test.com', '$2y$12$s82S/Mv9FJNLdagLG9apou5Jn.XDgdi.9TjKi0mdgJSoN0D8Z1vP6', '2023-12-07 13:50:39', '2023-12-07', NULL),
(5, NULL, NULL, NULL, 'wade', 'wade@test.ru', '$2y$12$IA/lfk8UfWkcy2QTRKjqWO3tyACt/C9NaSxgmkeKD4EZmNalO.r/a', '2023-12-10 02:15:49', '2023-12-10', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_category`, `id_parent`, `title`, `description`, `updated_at`, `created_at`) VALUES
(1, 0, 'E-Commerce', 'test ok', '2023-11-29', '2023-11-29'),
(2, 0, 'Software', 'just a test', '2023-11-29', '2023-11-29'),
(3, 6, 'Looking for a module or a theme', 'Are you looking for something specific and can’t find it on the forum? Try describing your needs here!', '2023-12-02', '2023-11-29'),
(4, 18, 'General topics', 'Everything about your field of work – all that cannot go in another forum goes here.', '2023-12-02', '2023-11-29'),
(5, 13, 'PrestaShop Download', 'Questions and information about creating your own PrestaShop storefront.', '2023-12-02', '2023-11-29'),
(6, 13, 'PrestaShop Marketplace', 'Looking to customize even more your PrestaShop store? There is a module or a theme for that: head over to our marketplace', '2023-12-02', '2023-11-29'),
(7, 14, 'PrestaShop news and releases', 'News about PrestaShop and the release of our free open-source E-commerce software.', '2023-12-02', '2023-11-29'),
(8, 5, 'Installing PrestaShop for the first time', 'Questions and information about PrestaShop Download\'s installation and hosting issues. Remember: the last stable release of PrestaShop Download can be found at', '2023-12-02', '2023-12-02'),
(9, 5, 'Upgrading PrestaShop from a previous version', 'Questions and information about upgrading your current PrestaShop storefront. Remember: the last stable release of PrestaShop Download can be found at', '2023-12-02', '2023-12-02'),
(10, 5, 'Configuring and using PrestaShop', 'Questions and information about everyday configuration and use of your PrestaShop storefront. Remember: the last stable release of PrestaShop Download can be found at', '2023-12-02', '2023-12-02'),
(11, 6, 'Native Partners Modules (ebay, paypal, etc.)', 'Great indutry actors partnered up with PrestaShop. Their module is native in the software, exchange about them here.', '2023-12-02', '2023-12-02'),
(12, 6, 'Addons News', 'Addons customers and contributors, submit your suggestions and inquiries to the Addons marketplace team. This forum does not provide individual support: use the form “Contact the Developers” from the PrestaShop Addons page of your module or theme.', '2023-12-02', '2023-12-02'),
(13, 0, 'Community Help and Support', 'Ask the PrestaShop Community to help you… and help others setting up their PrestaShop storefront!', '2023-12-02', '2023-12-02'),
(14, 0, 'News and Announcements', 'News and Announcements', '2023-12-02', '2023-12-02'),
(15, 14, 'PrestaShop Beta', 'Discuss about upcoming versions of PrestaShop. Gather feedback, report issues, share and compare.', '2023-12-02', '2023-12-02'),
(16, 14, 'PrestaShop Blogs', 'React to our recent publications on PrestaShop blogs.', '2023-12-02', '2023-12-02'),
(17, 14, 'PrestaShop Meetups', 'News about official and community gathering, and a good place to start if you want to host one. New topics must be approuved by a moderator in order to avoid spam topics.', '2023-12-02', '2023-12-02'),
(18, 0, 'International community (English)', 'Topics and messages here are posted in English. To post in your native language, please use the appropriate PrestaShop community board.', '2023-12-02', '2023-12-02'),
(19, 18, 'PrestaShop Merchants', 'All things to boost your sales, showcase your work, or even find a freelancer.', '2023-12-02', '2023-12-02'),
(20, 18, 'PrestaShop Developers', 'Technical discussions about PrestaShop development, module and themes. Warning: experienced users ahead talking about serious stuff!', '2023-12-02', '2023-12-02'),
(21, 20, 'Core developers', 'Questions, informations and tutorial on Prestashop Core code and included modules.', '2023-12-02', '2023-12-02'),
(22, 20, 'Addons, modules and themes developers', 'Adapting a module or a theme, creating one from scratch? This is a good place to talk to other developers.', '2023-12-02', '2023-12-02'),
(23, 20, 'Bug reports', 'Discuss the possibility of a bug before posting it o', '2023-12-02', '2023-12-02'),
(24, 19, 'Online sales and SEO', 'Share marketing tips and tricks to improve the revenues from your online store.', '2023-12-02', '2023-12-02'),
(25, 19, 'Job Offers', 'Users may only post here if they have a Paid Job Offer. Find someone to work on your site or propose your services.', '2023-12-02', '2023-12-02'),
(26, 19, 'Feedback On My Store', 'A place to introduce your PrestaShop store and to ask for the community\'s opinion and feedback.', '2023-12-02', '2023-12-02');

-- --------------------------------------------------------

--
-- Structure de la table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id_page` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `author_id_author` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `followers`
--

INSERT INTO `followers` (`id`, `follower_id`, `author_id_author`, `created_at`, `updated_at`) VALUES
(1, 4, 2, '2023-12-10 04:08:55', '2023-12-10 04:08:55'),
(2, 4, 1, '2023-12-10 04:09:13', '2023-12-10 04:09:13'),
(20, 5, 4, '2023-12-14 05:13:09', '2023-12-14 05:13:09'),
(21, 5, 1, '2023-12-14 05:13:33', '2023-12-14 05:13:33'),
(23, 5, 2, '2023-12-14 05:14:13', '2023-12-14 05:14:13'),
(24, 4, 5, '2023-12-14 22:29:20', '2023-12-14 22:29:20');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_28_013433_create_tasks_table', 1),
(6, '2023_11_28_032113_add_fields_to_tasks_table', 2),
(7, '2023_11_28_033820_add_image_to_tasks_table', 3),
(8, '2023_12_06_130536_create_cms_pages_table', 4),
(9, '2023_12_06_132931_create_roles_table', 5),
(10, '2023_12_06_133300_create_role_user_table', 5),
(11, '2023_12_10_002333_create_profile_views_table', 6),
(12, '2023_12_10_011927_create_profile_visitors_table', 7),
(13, '2023_12_10_031209_create_followers_table', 8),
(14, '2023_12_10_040057_create_followers_table', 9),
(15, '2023_12_14_023356_create_temporary_files_table', 10);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `profile_views`
--

CREATE TABLE `profile_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id_author` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profile_views`
--

INSERT INTO `profile_views` (`id`, `author_id_author`, `session_id`, `viewed_at`, `created_at`, `updated_at`) VALUES
(8, 4, 'bwalx4yGInEaYs5nvedy1nIDstV9oYFSKuACMJlf', '2023-12-10 01:12:14', '2023-12-10 01:12:14', '2023-12-10 01:12:14'),
(9, 1, 'bwalx4yGInEaYs5nvedy1nIDstV9oYFSKuACMJlf', '2023-12-10 01:12:45', '2023-12-10 01:12:45', '2023-12-10 01:12:45'),
(10, 1, 'uTfPeWWbNJAaRQk5V4x2BMMDdSPcqbl2tPKRyfJv', '2023-12-10 01:14:28', '2023-12-10 01:14:28', '2023-12-10 01:14:28'),
(11, 4, 'uTfPeWWbNJAaRQk5V4x2BMMDdSPcqbl2tPKRyfJv', '2023-12-10 01:14:53', '2023-12-10 01:14:53', '2023-12-10 01:14:53'),
(12, 4, 'THwssjnwEZ0Uo7fur76XfYLQTe3UkggylFjiizNk', '2023-12-10 01:53:37', '2023-12-10 01:53:37', '2023-12-10 01:53:37'),
(13, 2, 'THwssjnwEZ0Uo7fur76XfYLQTe3UkggylFjiizNk', '2023-12-10 02:02:04', '2023-12-10 02:02:04', '2023-12-10 02:02:04'),
(14, 1, 'THwssjnwEZ0Uo7fur76XfYLQTe3UkggylFjiizNk', '2023-12-10 02:12:50', '2023-12-10 02:12:50', '2023-12-10 02:12:50'),
(15, 5, 'uWLFVqJFTZ7HRJ6vHYgDGMTEEOV8RbfC5LdK3nSV', '2023-12-10 02:16:06', '2023-12-10 02:16:06', '2023-12-10 02:16:06'),
(16, 4, 'uWLFVqJFTZ7HRJ6vHYgDGMTEEOV8RbfC5LdK3nSV', '2023-12-10 02:16:19', '2023-12-10 02:16:19', '2023-12-10 02:16:19'),
(17, 2, 'uWLFVqJFTZ7HRJ6vHYgDGMTEEOV8RbfC5LdK3nSV', '2023-12-10 02:16:36', '2023-12-10 02:16:36', '2023-12-10 02:16:36'),
(18, 1, 'uWLFVqJFTZ7HRJ6vHYgDGMTEEOV8RbfC5LdK3nSV', '2023-12-10 02:16:44', '2023-12-10 02:16:44', '2023-12-10 02:16:44'),
(19, 5, 'T6aoDcuXUUPBSIj0X3d7rquI9exXjiuMna8Z2WlV', '2023-12-10 03:19:08', '2023-12-10 03:19:08', '2023-12-10 03:19:08'),
(20, 4, 'T6aoDcuXUUPBSIj0X3d7rquI9exXjiuMna8Z2WlV', '2023-12-10 03:19:17', '2023-12-10 03:19:17', '2023-12-10 03:19:17'),
(21, 4, 'F7wwBrYalmBMKDkBkdWaRtxJG06jcTp0oXmRqV2O', '2023-12-10 03:32:12', '2023-12-10 03:32:12', '2023-12-10 03:32:12'),
(22, 1, 'F7wwBrYalmBMKDkBkdWaRtxJG06jcTp0oXmRqV2O', '2023-12-10 03:32:19', '2023-12-10 03:32:19', '2023-12-10 03:32:19'),
(23, 2, 'F7wwBrYalmBMKDkBkdWaRtxJG06jcTp0oXmRqV2O', '2023-12-10 03:45:59', '2023-12-10 03:45:59', '2023-12-10 03:45:59'),
(24, 5, 'fqXmwHLNZEgCEbqsPyfTxfJUsvhYozhJ1twQCvEX', '2023-12-10 04:11:57', '2023-12-10 04:11:57', '2023-12-10 04:11:57'),
(25, 4, 'fqXmwHLNZEgCEbqsPyfTxfJUsvhYozhJ1twQCvEX', '2023-12-10 04:12:09', '2023-12-10 04:12:09', '2023-12-10 04:12:09'),
(26, 2, 'fqXmwHLNZEgCEbqsPyfTxfJUsvhYozhJ1twQCvEX', '2023-12-10 04:12:15', '2023-12-10 04:12:15', '2023-12-10 04:12:15'),
(27, 1, 'fqXmwHLNZEgCEbqsPyfTxfJUsvhYozhJ1twQCvEX', '2023-12-10 04:12:20', '2023-12-10 04:12:20', '2023-12-10 04:12:20'),
(28, 5, 'GLIGRgrII41vP80onY3nq6wJYuMU2m4w6nSTIQbv', '2023-12-10 04:38:07', '2023-12-10 04:38:07', '2023-12-10 04:38:07'),
(29, 4, 'GLIGRgrII41vP80onY3nq6wJYuMU2m4w6nSTIQbv', '2023-12-10 04:41:49', '2023-12-10 04:41:49', '2023-12-10 04:41:49'),
(30, 1, 'GLIGRgrII41vP80onY3nq6wJYuMU2m4w6nSTIQbv', '2023-12-10 04:43:22', '2023-12-10 04:43:22', '2023-12-10 04:43:22'),
(31, 2, 'GLIGRgrII41vP80onY3nq6wJYuMU2m4w6nSTIQbv', '2023-12-10 04:51:34', '2023-12-10 04:51:34', '2023-12-10 04:51:34'),
(32, 4, 'MATmgWeWTslLtROrGV0bT7POAbzIT5vYjkq0VFkk', '2023-12-10 16:04:27', '2023-12-10 16:04:27', '2023-12-10 16:04:27'),
(33, 1, 'MATmgWeWTslLtROrGV0bT7POAbzIT5vYjkq0VFkk', '2023-12-10 16:06:25', '2023-12-10 16:06:25', '2023-12-10 16:06:25'),
(34, 1, 'BdqGZXvUxQ1oDcnCGtfJIVMeUQoHBukt4uFbCJEl', '2023-12-11 00:58:25', '2023-12-11 00:58:25', '2023-12-11 00:58:25'),
(35, 4, 'cIcKtbHcvs5QUSU0BKAF1wFdG4CCOyXCLBSV2hEr', '2023-12-13 08:08:52', '2023-12-13 08:08:52', '2023-12-13 08:08:52'),
(36, 4, 'h4G1TXrsJBUhYrZSN08secfVEbXQOA8yBP4SVqsy', '2023-12-13 08:10:15', '2023-12-13 08:10:15', '2023-12-13 08:10:15'),
(37, 1, 'h4G1TXrsJBUhYrZSN08secfVEbXQOA8yBP4SVqsy', '2023-12-13 08:10:32', '2023-12-13 08:10:32', '2023-12-13 08:10:32'),
(38, 4, 'DHjrhCZLWCtSobqTvBVZKtxnxr3XM4tMWveTHTmQ', '2023-12-13 23:57:06', '2023-12-13 23:57:06', '2023-12-13 23:57:06'),
(39, 5, 'SfCAZ40ZMN7Yn5n1GtGfbsqB7JLoT6UTKwRkJntZ', '2023-12-14 00:20:39', '2023-12-14 00:20:39', '2023-12-14 00:20:39'),
(40, 4, 'SfCAZ40ZMN7Yn5n1GtGfbsqB7JLoT6UTKwRkJntZ', '2023-12-14 00:20:47', '2023-12-14 00:20:47', '2023-12-14 00:20:47'),
(41, 1, 'SfCAZ40ZMN7Yn5n1GtGfbsqB7JLoT6UTKwRkJntZ', '2023-12-14 04:53:12', '2023-12-14 04:53:12', '2023-12-14 04:53:12'),
(42, 2, 'SfCAZ40ZMN7Yn5n1GtGfbsqB7JLoT6UTKwRkJntZ', '2023-12-14 05:00:12', '2023-12-14 05:00:12', '2023-12-14 05:00:12'),
(43, 4, 'PV0CpBEE6YOwKaJb0JM6bcCsyxO1XiXQXinwocBA', '2023-12-14 22:26:30', '2023-12-14 22:26:30', '2023-12-14 22:26:30'),
(44, 4, '0mJjLnCJpCqMSyPF57gkyWST8Ai4C68WiKpNjWxo', '2023-12-14 22:28:49', '2023-12-14 22:28:49', '2023-12-14 22:28:49'),
(45, 1, '0mJjLnCJpCqMSyPF57gkyWST8Ai4C68WiKpNjWxo', '2023-12-14 22:28:59', '2023-12-14 22:28:59', '2023-12-14 22:28:59'),
(46, 5, '0mJjLnCJpCqMSyPF57gkyWST8Ai4C68WiKpNjWxo', '2023-12-14 22:29:10', '2023-12-14 22:29:10', '2023-12-14 22:29:10'),
(47, 4, 'RdD7WPCSZZwa2IUC60A6iTqQ5xjDHAfSgLylxAKL', '2023-12-14 23:42:12', '2023-12-14 23:42:12', '2023-12-14 23:42:12'),
(48, 1, 'RdD7WPCSZZwa2IUC60A6iTqQ5xjDHAfSgLylxAKL', '2023-12-14 23:42:24', '2023-12-14 23:42:24', '2023-12-14 23:42:24');

-- --------------------------------------------------------

--
-- Structure de la table `profile_visitors`
--

CREATE TABLE `profile_visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED NOT NULL,
  `author_id_author` int(11) NOT NULL,
  `viewed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profile_visitors`
--

INSERT INTO `profile_visitors` (`id`, `visitor_id`, `author_id_author`, `viewed_at`, `created_at`, `updated_at`) VALUES
(1, 4, 2, '2023-12-10 02:08:25', '2023-12-10 02:08:25', '2023-12-10 02:08:25'),
(2, 4, 2, '2023-12-10 02:10:42', '2023-12-10 02:10:42', '2023-12-10 02:10:42'),
(3, 4, 2, '2023-12-10 02:11:53', '2023-12-10 02:11:53', '2023-12-10 02:11:53'),
(4, 4, 2, '2023-12-10 02:12:25', '2023-12-10 02:12:25', '2023-12-10 02:12:25'),
(5, 4, 1, '2023-12-10 02:12:50', '2023-12-10 02:12:50', '2023-12-10 02:12:50'),
(6, 4, 2, '2023-12-10 02:13:04', '2023-12-10 02:13:04', '2023-12-10 02:13:04'),
(7, 5, 4, '2023-12-10 02:16:19', '2023-12-10 02:16:19', '2023-12-10 02:16:19'),
(8, 5, 2, '2023-12-10 02:16:36', '2023-12-10 02:16:36', '2023-12-10 02:16:36'),
(9, 5, 1, '2023-12-10 02:16:44', '2023-12-10 02:16:44', '2023-12-10 02:16:44'),
(10, 5, 4, '2023-12-10 02:16:54', '2023-12-10 02:16:54', '2023-12-10 02:16:54'),
(11, 5, 4, '2023-12-10 02:27:54', '2023-12-10 02:27:54', '2023-12-10 02:27:54'),
(12, 5, 4, '2023-12-10 02:28:13', '2023-12-10 02:28:13', '2023-12-10 02:28:13'),
(13, 5, 4, '2023-12-10 03:19:17', '2023-12-10 03:19:17', '2023-12-10 03:19:17'),
(14, 5, 4, '2023-12-10 03:20:32', '2023-12-10 03:20:32', '2023-12-10 03:20:32'),
(15, 5, 4, '2023-12-10 03:31:25', '2023-12-10 03:31:25', '2023-12-10 03:31:25'),
(16, 4, 1, '2023-12-10 03:32:19', '2023-12-10 03:32:19', '2023-12-10 03:32:19'),
(17, 4, 4, '2023-12-10 03:32:39', '2023-12-10 03:32:39', '2023-12-10 03:32:39'),
(18, 4, 4, '2023-12-10 03:35:20', '2023-12-10 03:35:20', '2023-12-10 03:35:20'),
(19, 4, 4, '2023-12-10 03:37:26', '2023-12-10 03:37:26', '2023-12-10 03:37:26'),
(20, 4, 4, '2023-12-10 03:37:35', '2023-12-10 03:37:35', '2023-12-10 03:37:35'),
(21, 4, 4, '2023-12-10 03:45:03', '2023-12-10 03:45:03', '2023-12-10 03:45:03'),
(22, 4, 1, '2023-12-10 03:45:42', '2023-12-10 03:45:42', '2023-12-10 03:45:42'),
(23, 4, 4, '2023-12-10 03:45:55', '2023-12-10 03:45:55', '2023-12-10 03:45:55'),
(24, 4, 2, '2023-12-10 03:46:00', '2023-12-10 03:46:00', '2023-12-10 03:46:00'),
(25, 4, 2, '2023-12-10 03:47:05', '2023-12-10 03:47:05', '2023-12-10 03:47:05'),
(26, 4, 2, '2023-12-10 03:50:48', '2023-12-10 03:50:48', '2023-12-10 03:50:48'),
(27, 4, 4, '2023-12-10 03:51:30', '2023-12-10 03:51:30', '2023-12-10 03:51:30'),
(28, 4, 4, '2023-12-10 03:52:14', '2023-12-10 03:52:14', '2023-12-10 03:52:14'),
(29, 4, 4, '2023-12-10 04:06:32', '2023-12-10 04:06:32', '2023-12-10 04:06:32'),
(30, 4, 4, '2023-12-10 04:08:41', '2023-12-10 04:08:41', '2023-12-10 04:08:41'),
(31, 4, 2, '2023-12-10 04:08:55', '2023-12-10 04:08:55', '2023-12-10 04:08:55'),
(32, 4, 2, '2023-12-10 04:09:07', '2023-12-10 04:09:07', '2023-12-10 04:09:07'),
(33, 4, 1, '2023-12-10 04:09:13', '2023-12-10 04:09:13', '2023-12-10 04:09:13'),
(34, 4, 1, '2023-12-10 04:09:16', '2023-12-10 04:09:16', '2023-12-10 04:09:16'),
(35, 4, 2, '2023-12-10 04:09:23', '2023-12-10 04:09:23', '2023-12-10 04:09:23'),
(36, 4, 2, '2023-12-10 04:09:26', '2023-12-10 04:09:26', '2023-12-10 04:09:26'),
(37, 4, 1, '2023-12-10 04:09:33', '2023-12-10 04:09:33', '2023-12-10 04:09:33'),
(38, 4, 1, '2023-12-10 04:09:36', '2023-12-10 04:09:36', '2023-12-10 04:09:36'),
(39, 4, 1, '2023-12-10 04:09:57', '2023-12-10 04:09:57', '2023-12-10 04:09:57'),
(40, 4, 2, '2023-12-10 04:11:04', '2023-12-10 04:11:04', '2023-12-10 04:11:04'),
(41, 5, 4, '2023-12-10 04:12:09', '2023-12-10 04:12:09', '2023-12-10 04:12:09'),
(42, 5, 2, '2023-12-10 04:12:15', '2023-12-10 04:12:15', '2023-12-10 04:12:15'),
(43, 5, 1, '2023-12-10 04:12:20', '2023-12-10 04:12:20', '2023-12-10 04:12:20'),
(44, 5, 4, '2023-12-10 04:41:49', '2023-12-10 04:41:49', '2023-12-10 04:41:49'),
(45, 5, 4, '2023-12-10 04:42:13', '2023-12-10 04:42:13', '2023-12-10 04:42:13'),
(46, 5, 1, '2023-12-10 04:43:22', '2023-12-10 04:43:22', '2023-12-10 04:43:22'),
(47, 5, 1, '2023-12-10 04:45:37', '2023-12-10 04:45:37', '2023-12-10 04:45:37'),
(48, 5, 1, '2023-12-10 04:47:22', '2023-12-10 04:47:22', '2023-12-10 04:47:22'),
(49, 5, 4, '2023-12-10 04:47:42', '2023-12-10 04:47:42', '2023-12-10 04:47:42'),
(50, 5, 4, '2023-12-10 04:51:13', '2023-12-10 04:51:13', '2023-12-10 04:51:13'),
(51, 5, 2, '2023-12-10 04:51:34', '2023-12-10 04:51:34', '2023-12-10 04:51:34'),
(52, 5, 1, '2023-12-10 04:51:52', '2023-12-10 04:51:52', '2023-12-10 04:51:52'),
(53, 4, 1, '2023-12-13 08:10:32', '2023-12-13 08:10:32', '2023-12-13 08:10:32'),
(54, 4, 4, '2023-12-13 23:58:20', '2023-12-13 23:58:20', '2023-12-13 23:58:20'),
(55, 4, 4, '2023-12-14 00:08:32', '2023-12-14 00:08:32', '2023-12-14 00:08:32'),
(56, 5, 4, '2023-12-14 00:20:47', '2023-12-14 00:20:47', '2023-12-14 00:20:47'),
(57, 5, 4, '2023-12-14 00:22:29', '2023-12-14 00:22:29', '2023-12-14 00:22:29'),
(58, 5, 4, '2023-12-14 00:24:40', '2023-12-14 00:24:40', '2023-12-14 00:24:40'),
(59, 5, 4, '2023-12-14 00:26:54', '2023-12-14 00:26:54', '2023-12-14 00:26:54'),
(60, 5, 4, '2023-12-14 00:27:58', '2023-12-14 00:27:58', '2023-12-14 00:27:58'),
(61, 5, 4, '2023-12-14 00:28:52', '2023-12-14 00:28:52', '2023-12-14 00:28:52'),
(62, 5, 4, '2023-12-14 00:29:23', '2023-12-14 00:29:23', '2023-12-14 00:29:23'),
(63, 5, 4, '2023-12-14 00:30:15', '2023-12-14 00:30:15', '2023-12-14 00:30:15'),
(64, 5, 4, '2023-12-14 00:32:02', '2023-12-14 00:32:02', '2023-12-14 00:32:02'),
(65, 5, 4, '2023-12-14 00:33:26', '2023-12-14 00:33:26', '2023-12-14 00:33:26'),
(66, 5, 4, '2023-12-14 00:35:44', '2023-12-14 00:35:44', '2023-12-14 00:35:44'),
(67, 5, 4, '2023-12-14 00:36:19', '2023-12-14 00:36:19', '2023-12-14 00:36:19'),
(68, 5, 4, '2023-12-14 00:36:33', '2023-12-14 00:36:33', '2023-12-14 00:36:33'),
(69, 5, 4, '2023-12-14 01:04:05', '2023-12-14 01:04:05', '2023-12-14 01:04:05'),
(70, 5, 4, '2023-12-14 01:04:09', '2023-12-14 01:04:09', '2023-12-14 01:04:09'),
(71, 5, 4, '2023-12-14 01:04:52', '2023-12-14 01:04:52', '2023-12-14 01:04:52'),
(72, 5, 4, '2023-12-14 01:05:08', '2023-12-14 01:05:08', '2023-12-14 01:05:08'),
(73, 5, 4, '2023-12-14 01:06:10', '2023-12-14 01:06:10', '2023-12-14 01:06:10'),
(74, 5, 4, '2023-12-14 01:06:19', '2023-12-14 01:06:19', '2023-12-14 01:06:19'),
(75, 5, 4, '2023-12-14 01:10:12', '2023-12-14 01:10:12', '2023-12-14 01:10:12'),
(76, 5, 4, '2023-12-14 01:10:19', '2023-12-14 01:10:19', '2023-12-14 01:10:19'),
(77, 5, 4, '2023-12-14 01:11:24', '2023-12-14 01:11:24', '2023-12-14 01:11:24'),
(78, 5, 4, '2023-12-14 01:11:39', '2023-12-14 01:11:39', '2023-12-14 01:11:39'),
(79, 5, 4, '2023-12-14 01:14:13', '2023-12-14 01:14:13', '2023-12-14 01:14:13'),
(80, 5, 4, '2023-12-14 01:17:11', '2023-12-14 01:17:11', '2023-12-14 01:17:11'),
(81, 5, 4, '2023-12-14 01:19:06', '2023-12-14 01:19:06', '2023-12-14 01:19:06'),
(82, 5, 4, '2023-12-14 01:19:40', '2023-12-14 01:19:40', '2023-12-14 01:19:40'),
(83, 5, 4, '2023-12-14 01:21:36', '2023-12-14 01:21:36', '2023-12-14 01:21:36'),
(84, 5, 4, '2023-12-14 01:25:21', '2023-12-14 01:25:21', '2023-12-14 01:25:21'),
(85, 5, 4, '2023-12-14 01:30:56', '2023-12-14 01:30:56', '2023-12-14 01:30:56'),
(86, 5, 4, '2023-12-14 01:32:19', '2023-12-14 01:32:19', '2023-12-14 01:32:19'),
(87, 5, 4, '2023-12-14 01:32:20', '2023-12-14 01:32:20', '2023-12-14 01:32:20'),
(88, 5, 4, '2023-12-14 01:32:51', '2023-12-14 01:32:51', '2023-12-14 01:32:51'),
(89, 5, 4, '2023-12-14 03:15:36', '2023-12-14 03:15:36', '2023-12-14 03:15:36'),
(90, 5, 4, '2023-12-14 03:23:52', '2023-12-14 03:23:52', '2023-12-14 03:23:52'),
(91, 5, 4, '2023-12-14 03:24:36', '2023-12-14 03:24:36', '2023-12-14 03:24:36'),
(92, 5, 4, '2023-12-14 03:26:03', '2023-12-14 03:26:03', '2023-12-14 03:26:03'),
(93, 5, 4, '2023-12-14 03:27:04', '2023-12-14 03:27:04', '2023-12-14 03:27:04'),
(94, 5, 4, '2023-12-14 03:28:06', '2023-12-14 03:28:06', '2023-12-14 03:28:06'),
(95, 5, 4, '2023-12-14 03:33:00', '2023-12-14 03:33:00', '2023-12-14 03:33:00'),
(96, 5, 4, '2023-12-14 03:41:22', '2023-12-14 03:41:22', '2023-12-14 03:41:22'),
(97, 5, 4, '2023-12-14 03:42:43', '2023-12-14 03:42:43', '2023-12-14 03:42:43'),
(98, 5, 4, '2023-12-14 03:42:56', '2023-12-14 03:42:56', '2023-12-14 03:42:56'),
(99, 5, 4, '2023-12-14 03:45:28', '2023-12-14 03:45:28', '2023-12-14 03:45:28'),
(100, 5, 4, '2023-12-14 03:45:39', '2023-12-14 03:45:39', '2023-12-14 03:45:39'),
(101, 5, 4, '2023-12-14 03:48:17', '2023-12-14 03:48:17', '2023-12-14 03:48:17'),
(102, 5, 4, '2023-12-14 03:48:29', '2023-12-14 03:48:29', '2023-12-14 03:48:29'),
(103, 5, 4, '2023-12-14 03:58:28', '2023-12-14 03:58:28', '2023-12-14 03:58:28'),
(104, 5, 4, '2023-12-14 03:58:43', '2023-12-14 03:58:43', '2023-12-14 03:58:43'),
(105, 5, 4, '2023-12-14 03:58:49', '2023-12-14 03:58:49', '2023-12-14 03:58:49'),
(106, 5, 4, '2023-12-14 03:59:28', '2023-12-14 03:59:28', '2023-12-14 03:59:28'),
(107, 5, 4, '2023-12-14 03:59:40', '2023-12-14 03:59:40', '2023-12-14 03:59:40'),
(108, 5, 4, '2023-12-14 03:59:45', '2023-12-14 03:59:45', '2023-12-14 03:59:45'),
(109, 5, 4, '2023-12-14 04:04:22', '2023-12-14 04:04:22', '2023-12-14 04:04:22'),
(110, 5, 4, '2023-12-14 04:04:48', '2023-12-14 04:04:48', '2023-12-14 04:04:48'),
(111, 5, 4, '2023-12-14 04:06:19', '2023-12-14 04:06:19', '2023-12-14 04:06:19'),
(112, 5, 4, '2023-12-14 04:09:13', '2023-12-14 04:09:13', '2023-12-14 04:09:13'),
(113, 5, 4, '2023-12-14 04:09:32', '2023-12-14 04:09:32', '2023-12-14 04:09:32'),
(114, 5, 4, '2023-12-14 04:10:00', '2023-12-14 04:10:00', '2023-12-14 04:10:00'),
(115, 5, 4, '2023-12-14 04:10:25', '2023-12-14 04:10:25', '2023-12-14 04:10:25'),
(116, 5, 4, '2023-12-14 04:10:40', '2023-12-14 04:10:40', '2023-12-14 04:10:40'),
(117, 5, 4, '2023-12-14 04:12:42', '2023-12-14 04:12:42', '2023-12-14 04:12:42'),
(118, 5, 4, '2023-12-14 04:13:44', '2023-12-14 04:13:44', '2023-12-14 04:13:44'),
(119, 5, 4, '2023-12-14 04:14:36', '2023-12-14 04:14:36', '2023-12-14 04:14:36'),
(120, 5, 4, '2023-12-14 04:16:01', '2023-12-14 04:16:01', '2023-12-14 04:16:01'),
(121, 5, 4, '2023-12-14 04:17:09', '2023-12-14 04:17:09', '2023-12-14 04:17:09'),
(122, 5, 4, '2023-12-14 04:17:40', '2023-12-14 04:17:40', '2023-12-14 04:17:40'),
(123, 5, 4, '2023-12-14 04:18:50', '2023-12-14 04:18:50', '2023-12-14 04:18:50'),
(124, 5, 4, '2023-12-14 04:19:06', '2023-12-14 04:19:06', '2023-12-14 04:19:06'),
(125, 5, 4, '2023-12-14 04:20:08', '2023-12-14 04:20:08', '2023-12-14 04:20:08'),
(126, 5, 4, '2023-12-14 04:21:35', '2023-12-14 04:21:35', '2023-12-14 04:21:35'),
(127, 5, 4, '2023-12-14 04:21:52', '2023-12-14 04:21:52', '2023-12-14 04:21:52'),
(128, 5, 4, '2023-12-14 04:22:18', '2023-12-14 04:22:18', '2023-12-14 04:22:18'),
(129, 5, 4, '2023-12-14 04:23:20', '2023-12-14 04:23:20', '2023-12-14 04:23:20'),
(130, 5, 4, '2023-12-14 04:24:47', '2023-12-14 04:24:47', '2023-12-14 04:24:47'),
(131, 5, 4, '2023-12-14 04:27:34', '2023-12-14 04:27:34', '2023-12-14 04:27:34'),
(132, 5, 4, '2023-12-14 04:28:11', '2023-12-14 04:28:11', '2023-12-14 04:28:11'),
(133, 5, 4, '2023-12-14 04:28:28', '2023-12-14 04:28:28', '2023-12-14 04:28:28'),
(134, 5, 4, '2023-12-14 04:28:55', '2023-12-14 04:28:55', '2023-12-14 04:28:55'),
(135, 5, 4, '2023-12-14 04:29:28', '2023-12-14 04:29:28', '2023-12-14 04:29:28'),
(136, 5, 4, '2023-12-14 04:30:27', '2023-12-14 04:30:27', '2023-12-14 04:30:27'),
(137, 5, 4, '2023-12-14 04:30:48', '2023-12-14 04:30:48', '2023-12-14 04:30:48'),
(138, 5, 4, '2023-12-14 04:31:05', '2023-12-14 04:31:05', '2023-12-14 04:31:05'),
(139, 5, 4, '2023-12-14 04:34:20', '2023-12-14 04:34:20', '2023-12-14 04:34:20'),
(140, 5, 4, '2023-12-14 04:34:57', '2023-12-14 04:34:57', '2023-12-14 04:34:57'),
(141, 5, 4, '2023-12-14 04:35:50', '2023-12-14 04:35:50', '2023-12-14 04:35:50'),
(142, 5, 4, '2023-12-14 04:35:52', '2023-12-14 04:35:52', '2023-12-14 04:35:52'),
(143, 5, 4, '2023-12-14 04:36:38', '2023-12-14 04:36:38', '2023-12-14 04:36:38'),
(144, 5, 4, '2023-12-14 04:39:31', '2023-12-14 04:39:31', '2023-12-14 04:39:31'),
(145, 5, 4, '2023-12-14 04:40:04', '2023-12-14 04:40:04', '2023-12-14 04:40:04'),
(146, 5, 4, '2023-12-14 04:40:36', '2023-12-14 04:40:36', '2023-12-14 04:40:36'),
(147, 5, 4, '2023-12-14 04:41:28', '2023-12-14 04:41:28', '2023-12-14 04:41:28'),
(148, 5, 4, '2023-12-14 04:45:53', '2023-12-14 04:45:53', '2023-12-14 04:45:53'),
(149, 5, 4, '2023-12-14 04:49:40', '2023-12-14 04:49:40', '2023-12-14 04:49:40'),
(150, 5, 4, '2023-12-14 04:49:47', '2023-12-14 04:49:47', '2023-12-14 04:49:47'),
(151, 5, 4, '2023-12-14 04:49:50', '2023-12-14 04:49:50', '2023-12-14 04:49:50'),
(152, 5, 4, '2023-12-14 04:49:53', '2023-12-14 04:49:53', '2023-12-14 04:49:53'),
(153, 5, 4, '2023-12-14 04:50:58', '2023-12-14 04:50:58', '2023-12-14 04:50:58'),
(154, 5, 4, '2023-12-14 04:51:24', '2023-12-14 04:51:24', '2023-12-14 04:51:24'),
(155, 5, 4, '2023-12-14 04:51:44', '2023-12-14 04:51:44', '2023-12-14 04:51:44'),
(156, 5, 4, '2023-12-14 04:52:11', '2023-12-14 04:52:11', '2023-12-14 04:52:11'),
(157, 5, 4, '2023-12-14 04:52:15', '2023-12-14 04:52:15', '2023-12-14 04:52:15'),
(158, 5, 4, '2023-12-14 04:52:48', '2023-12-14 04:52:48', '2023-12-14 04:52:48'),
(159, 5, 4, '2023-12-14 04:52:51', '2023-12-14 04:52:51', '2023-12-14 04:52:51'),
(160, 5, 1, '2023-12-14 04:53:12', '2023-12-14 04:53:12', '2023-12-14 04:53:12'),
(161, 5, 1, '2023-12-14 04:59:26', '2023-12-14 04:59:26', '2023-12-14 04:59:26'),
(162, 5, 1, '2023-12-14 04:59:48', '2023-12-14 04:59:48', '2023-12-14 04:59:48'),
(163, 5, 1, '2023-12-14 05:00:01', '2023-12-14 05:00:01', '2023-12-14 05:00:01'),
(164, 5, 2, '2023-12-14 05:00:12', '2023-12-14 05:00:12', '2023-12-14 05:00:12'),
(165, 5, 2, '2023-12-14 05:00:19', '2023-12-14 05:00:19', '2023-12-14 05:00:19'),
(166, 5, 2, '2023-12-14 05:00:28', '2023-12-14 05:00:28', '2023-12-14 05:00:28'),
(167, 5, 2, '2023-12-14 05:01:24', '2023-12-14 05:01:24', '2023-12-14 05:01:24'),
(168, 5, 2, '2023-12-14 05:01:29', '2023-12-14 05:01:29', '2023-12-14 05:01:29'),
(169, 5, 2, '2023-12-14 05:02:31', '2023-12-14 05:02:31', '2023-12-14 05:02:31'),
(170, 5, 2, '2023-12-14 05:02:58', '2023-12-14 05:02:58', '2023-12-14 05:02:58'),
(171, 5, 4, '2023-12-14 05:03:07', '2023-12-14 05:03:07', '2023-12-14 05:03:07'),
(172, 5, 4, '2023-12-14 05:04:59', '2023-12-14 05:04:59', '2023-12-14 05:04:59'),
(173, 5, 4, '2023-12-14 05:05:19', '2023-12-14 05:05:19', '2023-12-14 05:05:19'),
(174, 5, 4, '2023-12-14 05:09:39', '2023-12-14 05:09:39', '2023-12-14 05:09:39'),
(175, 5, 4, '2023-12-14 05:10:07', '2023-12-14 05:10:07', '2023-12-14 05:10:07'),
(176, 5, 4, '2023-12-14 05:12:02', '2023-12-14 05:12:02', '2023-12-14 05:12:02'),
(177, 5, 4, '2023-12-14 05:12:34', '2023-12-14 05:12:34', '2023-12-14 05:12:34'),
(178, 5, 4, '2023-12-14 05:12:57', '2023-12-14 05:12:57', '2023-12-14 05:12:57'),
(179, 5, 4, '2023-12-14 05:13:09', '2023-12-14 05:13:09', '2023-12-14 05:13:09'),
(180, 5, 1, '2023-12-14 05:13:27', '2023-12-14 05:13:27', '2023-12-14 05:13:27'),
(181, 5, 1, '2023-12-14 05:13:33', '2023-12-14 05:13:33', '2023-12-14 05:13:33'),
(182, 5, 2, '2023-12-14 05:13:44', '2023-12-14 05:13:44', '2023-12-14 05:13:44'),
(183, 5, 2, '2023-12-14 05:13:50', '2023-12-14 05:13:50', '2023-12-14 05:13:50'),
(184, 5, 2, '2023-12-14 05:14:06', '2023-12-14 05:14:06', '2023-12-14 05:14:06'),
(185, 5, 2, '2023-12-14 05:14:13', '2023-12-14 05:14:13', '2023-12-14 05:14:13'),
(186, 4, 1, '2023-12-14 22:28:59', '2023-12-14 22:28:59', '2023-12-14 22:28:59'),
(187, 4, 5, '2023-12-14 22:29:10', '2023-12-14 22:29:10', '2023-12-14 22:29:10'),
(188, 4, 5, '2023-12-14 22:29:20', '2023-12-14 22:29:20', '2023-12-14 22:29:20'),
(189, 4, 5, '2023-12-14 22:54:41', '2023-12-14 22:54:41', '2023-12-14 22:54:41'),
(190, 4, 5, '2023-12-14 22:55:04', '2023-12-14 22:55:04', '2023-12-14 22:55:04'),
(191, 4, 5, '2023-12-14 22:55:38', '2023-12-14 22:55:38', '2023-12-14 22:55:38'),
(192, 4, 5, '2023-12-14 22:57:15', '2023-12-14 22:57:15', '2023-12-14 22:57:15'),
(193, 4, 5, '2023-12-14 22:57:47', '2023-12-14 22:57:47', '2023-12-14 22:57:47'),
(194, 4, 4, '2023-12-14 23:17:27', '2023-12-14 23:17:27', '2023-12-14 23:17:27'),
(195, 4, 1, '2023-12-14 23:42:24', '2023-12-14 23:42:24', '2023-12-14 23:42:24');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-12-06 00:00:00', '2023-12-06 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-12-06 00:00:00', '2023-12-06 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `created_at`, `updated_at`, `price`, `image`) VALUES
(1, 'test', 'just  a test', '2023-11-28 00:00:00', '2023-11-28 00:00:00', 0.00, NULL),
(2, 'Step 1', 'nitially, we should execute the root URL of the application.', '2023-11-28 02:52:20', '2023-11-28 02:52:20', 0.00, NULL),
(3, 'Category Listing', 'Category Listing ok', '2023-11-28 03:28:54', '2023-11-29 12:28:57', 25.09, NULL),
(4, 'PrestaShop Events Calendar', 'PrestaShop Events Calendar', '2023-11-28 03:29:40', '2023-11-28 03:29:40', 40.00, NULL),
(5, 'PrestaShop Module : Customer Address related emails', 'Add an email to each address created by the customer.\r\n\r\nSend PDF invoices to a different email address.\r\nGive the possibility to your customers to associate an email to each created address, delivery or invoice addresses\r\nand decide witch adress should receive an email during an order creation.\r\n\r\nYour customers can :\r\nadd new email to an address ;\r\nedit an existing email ;\r\ndelete an associated email;\r\n\r\nPrestaShop Version 1.7 and 8\r\n\r\nCompatible Browsers : Google Chrome, Firefox, Yandex Br.,\r\nFiles Included : JavaScrip,PHP, CSS\r\nSoftware Version : 1.7 and 8', '2023-11-28 03:30:36', '2023-11-28 03:30:36', 59.00, NULL),
(6, 'PrestaShop Module : Product Sales Period', 'If you put on sale a product with start date of sale and end of sale this module is for you.\r\n\r\nFeatures :\r\nAdd the product start selling date;\r\nAdd the product end selling date;\r\nAdd an email for each product;\r\nAt the end date of sale the product will be disabled;\r\n And 7 days before the end of the sale an email alert will be send to the seller and the webmaster with messages like :\r\n (Be careful your product will be disabled in 7 days .\r\nThis module can be used in a Drop Shipping context or for a Market Place Website.\r\n\r\nCompatible Browsers : Google Chrome, Firefox, Yandex Br.,\r\nFiles Included : JavaScrip,PHP, CSS\r\nSoftware Version : 1.6; 1.7 and 8', '2023-11-28 03:31:26', '2023-11-28 03:31:26', 25.00, NULL),
(7, 'PrestaShop Module : PrestaShop Employee Task, to do list', 'Organize your work by creating a To Do list from the BO and assign them to an employee.\r\n\r\nOrganize your work by creating a To Do list from the BO and assign them to an employee.\r\nCreate a List of tasks for your team.\r\nFeatures\r\nCreate Task Statuses like:\r\n  To Do\r\n  Work in Progress\r\n  Admin Reviewing\r\n  Done( Finished)\r\nYou can create as many status as you want.\r\nCreate a new Task\r\nEdit Task\r\nUpdate Task Status\r\nAssign a Task to an employee.\r\n Only Super Amin can create a new Task.\r\nOther Employees can only preview there own tasks( Tasks that were assigned to them). They can not see other tasks that are not assigned to them.\r\nThey can change the Task status : Mark as Finished etc.\r\nPrestaShop Version : 1.6 ; 1.7 and 8\r\nCompatible Browsers : Google Chrome, Firefox, Yandex Br.,\r\nFiles Included : JavaScrip,PHP, CSS\r\nSoftware Version : 1.6; 1.7 and 8', '2023-11-28 03:34:46', '2023-11-28 03:34:46', 29.00, NULL),
(8, 'PrestaShop Module : Order Alert by category', 'Associated any category to an email in order to notify the product owner about new orders.\r\n\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nAssociated any category to an email in order to notify the product owner about new orders.\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nhow it works ?\r\n- For this module, if you configure a different email for each category of items, during a sales order: the supplier will receive an order notification email according to its category.\r\n- There may be several items included in an order, which belong to different categories. As a result, the suppliers (configured for each category) will each receive an email.\r\n- Suppliers will receive the same email with the invoice that concerns only their items (linked to a category that they lead).\r\nPrestaShop Version : 1.6 ; 1.7 and 8.', '2023-11-28 03:43:58', '2023-11-28 03:43:58', 19.00, 'images/R7vPvo2KB3fyTUlLVzjEHL2AmmGixQthleJgiePO.png'),
(9, 'PrestaShop Module : Order Alert by category', 'Associated any category to an email in order to notify the product owner about new orders.\r\n\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nAssociated any category to an email in order to notify the product owner about new orders.\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nhow it works ?\r\n- For this module, if you configure a different email for each category of items, during a sales order: the supplier will receive an order notification email according to its category.\r\n- There may be several items included in an order, which belong to different categories. As a result, the suppliers (configured for each category) will each receive an email.\r\n- Suppliers will receive the same email with the invoice that concerns only their items (linked to a category that they lead).\r\nPrestaShop Version : 1.6 ; 1.7 and 8.', '2023-11-28 03:48:42', '2023-11-28 03:48:42', 19.00, 'images/9b1aIHE3olJArXfVFPW75Nsz9w3R4VkJYbd8yNlh.png'),
(10, 'PrestaShop Module : Order Alert by category', 'Associated any category to an email in order to notify the product owner about new orders.\r\n\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nAssociated any category to an email in order to notify the product owner about new orders.\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nhow it works ?\r\n- For this module, if you configure a different email for each category of items, during a sales order: the supplier will receive an order notification email according to its category.\r\n- There may be several items included in an order, which belong to different categories. As a result, the suppliers (configured for each category) will each receive an email.\r\n- Suppliers will receive the same email with the invoice that concerns only their items (linked to a category that they lead).\r\nPrestaShop Version : 1.6 ; 1.7 and 8.', '2023-11-28 03:49:02', '2023-11-28 03:49:02', 19.00, 'images/d2PpottjgJumPGtZ7AH4j3T2SVdh79jtE5ck0CvO.png'),
(11, 'PrestaShop Module : Order Alert by category', 'Associated any category to an email in order to notify the product owner about new orders.\r\n\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nAssociated any category to an email in order to notify the product owner about new orders.\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nhow it works ?\r\n- For this module, if you configure a different email for each category of items, during a sales order: the supplier will receive an order notification email according to its category.\r\n- There may be several items included in an order, which belong to different categories. As a result, the suppliers (configured for each category) will each receive an email.\r\n- Suppliers will receive the same email with the invoice that concerns only their items (linked to a category that they lead).\r\nPrestaShop Version : 1.6 ; 1.7 and 8.', '2023-11-28 03:49:45', '2023-11-28 03:49:45', 19.00, 'images/c1qc4WjmhwpK3B4EBDEyl58793H0NvTCZjDjzDFl.png'),
(12, 'PrestaShop Module : Order Alert by categor', 'Associated any category to an email in order to notify the product owner about new orders.\r\n\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nAssociated any category to an email in order to notify the product owner about new orders.\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nhow it works ?\r\n- For this module, if you configure a different email for each category of items, during a sales order: the supplier will receive an order notification email according to its category.\r\n- There may be several items included in an order, which belong to different categories. As a result, the suppliers (configured for each category) will each receive an email.\r\n- Suppliers will receive the same email with the invoice that concerns only their items (linked to a category that they lead).\r\nPrestaShop Version : 1.6 ; 1.7 and 8.', '2023-11-28 03:51:52', '2023-11-28 03:51:52', 19.00, 'images/dlO5IpBYqu8zL39comyNht26d3VeDeXIAn1igvgA.png'),
(13, 'PrestaShop Module : Order Alert by categor', 'Associated any category to an email in order to notify the product owner about new orders.\r\n\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nAssociated any category to an email in order to notify the product owner about new orders.\r\nThis is very usefull for B2B shops or collaborative e-commerce websites.\r\nhow it works ?\r\n- For this module, if you configure a different email for each category of items, during a sales order: the supplier will receive an order notification email according to its category.\r\n- There may be several items included in an order, which belong to different categories. As a result, the suppliers (configured for each category) will each receive an email.\r\n- Suppliers will receive the same email with the invoice that concerns only their items (linked to a category that they lead).\r\nPrestaShop Version : 1.6 ; 1.7 and 8.', '2023-11-28 03:53:00', '2023-11-28 03:53:00', 19.00, 'images/sAudHUfw9y9EZs9wtsfm3EQy1WRRjULTIFi2ACID.png'),
(14, 'PrestaShop Module : Order Alert by categor', 'PrestaShop Module : Order Alert by categor', '2023-11-28 03:53:28', '2023-11-28 03:53:28', 25.00, 'images/u3vtcOFtF8vkivcplPueMbRiYtFtORUmU9ECJcNB.png'),
(15, 'PrestaShop Module : Order Alert by categor', 'PrestaShop Module : Order Alert by categor', '2023-11-28 03:56:13', '2023-11-28 03:56:13', 25.00, 'images/5vF9jycVJSSPwAwSshNnWSwrlYLkX1xdCJYkpJVw.png'),
(16, 'PrestaShop Module : Customer VIP Group', 'This module allows you to automatically change a customer group based on amount spend in a given periode of time.\r\n\r\nChange customer group based on amount spent in year, month , etc.\r\nFeatures:\r\nYou can add any periode of time you want to consider a customer as a VIP.\r\nYou can also add any amount spend by the customer to be considered as a VIP.\r\nThe periode of time and the amount are customizable in the module\'s admin page.\r\nYou have also the list of all VIP Customers in the module admin page.\r\nYou have the possibility to remove a customer from the VIP list at any time.\r\nYou can also just change the customer group from VIP to a another group from the module admin page.\r\n\r\nPrestaShop Version : 1.6 ; 1.7 and 8\r\n\r\nCompatible Browsers : Google Chrome, Firefox, Yandex Br.,\r\nFiles Included : JavaScrip,PHP, CSS\r\nSoftware Version : 1.7 and 8', '2023-11-28 03:59:50', '2023-11-28 03:59:50', 39.00, 'images/b8qRUQmGk8css8zI2Xbs7fKKmsrNqkg7uq34l1Bg.png'),
(17, 'test', 'test', '2023-11-28 14:05:46', '2023-11-28 14:05:46', 19.00, 'images/24CnPzO6jBD2xtVKbYc2Jtn8ENc9RbDUG1iyjtyF.png');

-- --------------------------------------------------------

--
-- Structure de la table `temporary_files`
--

CREATE TABLE `temporary_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `topics`
--

CREATE TABLE `topics` (
  `id_topic` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `topics`
--

INSERT INTO `topics` (`id_topic`, `author_id`, `category_id`, `title`, `description`, `updated_at`, `created_at`) VALUES
(1, 1, 7, 'Maintenance the forum, Monday 9th of September 2019', 'Dear Community,\r\n\r\nThis morning, Monday 9th of September 2019, the forum has been unavailable during one hour, from 10:30am to 11:30am, Paris timezone. This upgrade was prepared and testing on an iso preproduction infrastructure in order to make it as smooth as possible.\r\n\r\nWhat has been done:\r\n\r\nUpgrade to version 4.4.6 of Invision,\r\nInstallation of the Auto Welcome module in order to improve the on-boarding of new members\r\nInstallation of the New topic information module in order to add guidance and tips to write better topics\r\nTests that everything is fine\r\nThe deployment of the new modules is still in work in progress and will also come with a new member group, \"New-Members\'\", that will ease spam and troll filtering. It has been asked by forum moderators.\r\n\r\nIf you would encounter any issue after this big maintenance, please write an answer to this topic or send me a private message via the forum.', '2023-11-29 13:48:25', '2023-11-29'),
(2, 1, 7, 'Maintenance extension for PrestaShop 1.6', 'Hello everyone,\r\nIt’s been a while since we’ve shared any updates concerning PrestaShop 1.6. To make up for it, here is the latest information to help you transition to PrestaShop 1.7.\r\n\r\n \r\n\r\nWhen does maintenance for the 1.6 version end?\r\n\r\n \r\n\r\nInitially, maintenance for the 1.6 version was planned to expire in October 2018. For various reasons, we have decided to extend this maintenance period until 30 June 2019.\r\n\r\nFirst and foremost, the community is at the heart of our projects: we consider all feedback and suggestions for improvement in order to help PrestaShop grow together. We heard you. Based on your input, we have decided to extend maintenance for the 1.6 version.\r\n\r\nThis maintenance work will consist mainly of fixing critical bugs or security vulnerabilities. Tweaks to improve service or reports on minor bugs will thus no longer be processed.\r\n\r\nWith new features reserved for the 1.7 open-source project, the 1.6 stores can add new features through the Addons Marketplace .\r\n\r\nWe understand that many of you in our community are anxiously waiting for certain features included in 1.6 to be added to 1.7 before making the switch. We are currently focusing our efforts on making such changes in the upcoming 1.7.5 and 1.7.6 versions.\r\n\r\nThis extension enables our users to focus on their year-end sales activity and to prepare to make their transition under the best possible conditions.\r\n\r\nFinally, we are counting on the PrestaShop community to help us develop the open-source project .\r\n\r\n \r\n\r\nWhy should you launch your e-commerce project on, or transfer your shop to, PrestaShop 1.7?\r\n\r\n \r\n\r\nThe 1.7 version of PrestaShop introduces functional and technical changes with a strong focus on the user experience.\r\n\r\nThis new user-centric version primarily features a more efficient Front Office and includes new child themes that provide more flexibility in terms of long-term theme customization. It also offers improvements with regard to creating product pages and order tunnels. Furthermore, the Back Office has been optimized for mobile devices.\r\n\r\nThe version includes major technical advancements that go beyond performance improvements, including directly integrated automated tests, and of course, code migration to the Symfony framework, opening up new opportunities for developers and integration specialists.\r\n\r\nWith more than 50,000 stores already active on PrestaShop 1.7, we are actively working with the community to offer you even greater performance and even more comprehensive features. Feel free to use our Feedback tool to tell us about your priorities so that we can better tailor the product to meet your needs.\r\n\r\nTo recap, maintenance for PrestaShop 1.6 will end 30 June 2019. Start preparing today for your store’s transition to PrestaShop 1.7.\r\n\r\n \r\n\r\nThe PrestaShop Team', '2023-11-29 13:52:39', '2023-11-29'),
(3, 1, 7, 'Maintenance of the forums', 'Dear PrestaShop forums members,\r\n\r\nOn Tuesday morning, the forums will be in maintenance, and so, it might  be very slow or not available during a moment.\r\n\r\nOn the schedule:\r\n\r\nUpgrade to the latest version of the forum engine, Invision Community, from version 4.2.9 to 4.3.6\r\nBack to default theme, with just a few colors changes and the logo in order to match the current prestashop.com website; default Invision Community theme will also be available; the aim is to provide the best user experience with the forums\r\nThe theme is compatible with mobile devices\r\nMore account settings will be editable, including the email; it was asked for a long time ago\r\nThe upgrade come with new features with the forums engine, including a new rules editor; this will help to fight spam\r\nPlease have a look at the screenshots below, taken on our integration and testing server:', '2023-11-29 13:53:58', '2023-11-29'),
(4, 1, 6, 'Cannot log in to Addons Marketplace', 'When I try to log in with my account, I enter my username and password, but it returns to the login page.\r\n\r\nI also tried using the account password instead of Google, but it still doesn\'t work', '2023-11-29 13:55:14', '2023-11-29'),
(5, 1, 6, 'PayPal Payment Processing Issues in PrestaShop', 'PayPal Payment Processing Issues in PrestaShop', '2023-11-29 13:58:05', '2023-11-29'),
(6, 1, 5, 'create prestashop website then put it instead of running woocommerce site', 'I need to create a website on prestashop for a client then put it on the domain and hosting of an already running woocommerce site.\r\n\r\nI haven\'t started yet working on the prestashop website I have some questions about what is the best way to go:\r\n\r\n1-  should I build my prestashop on a local hosting or on another webhosting \r\n\r\n2- is there a recommended version of prestashop to use\r\n\r\n3- do I need tools to migrate my prestashop to the new domain name and hosting (ionos)', '2023-11-29 13:59:45', '2023-11-29'),
(7, 1, 5, 'New installtion error', 'Hi,\r\n\r\nI am doing a brand new installation with new database and getting the following error.\r\n\r\nAn error occurred during installation...\r\n\r\nYou can use the links on the left column to go back to the previous steps, or restart the installation process by clicking here.\r\n\r\n1: \"An exception occurred while executing \'INSERT INTO `ps_link_block_shop` (`id_link_block`, `id_shop`, `position`) VALUES\\n (1, 1, 0),\\n (2, 1, 1);\':\\n\\nSQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'1-1\' for key \'PRIMARY\'\"\r\n\r\nThanks', '2023-11-29 14:00:18', '2023-11-29'),
(8, 1, 5, 'Difficulty Downloading Older PrestaShop Versions', 'I\'m currently facing challenges in locating and downloading older versions of PrestaShop for a specific project. I would appreciate guidance and information from Milestone Gold Mastercard experienced users. If you have insights into where I can download older PrestaShop versions or if there are any Finance\'s Purchase considerations I need to be aware of Real-Time Transactions, for this your assistance would be highly valuable. MyMilestoneCard', '2023-11-29 14:00:51', '2023-11-29'),
(9, 1, 3, 'Looking for a Solution on excluding certain products if a specific other product is already in the cart', '<p>Hello there,\r\n\r\nwe are using prestashop for almost 2 years now and we come across a little bit of an \"interesting\" problem.\r\n\r\nWe sell folders of subject rules in our shop which get updated now and then. These updates usually don\'t contain the full folder but a number of chapters within, which we also sell as a seperate product.\r\n\r\nIs it somehow possible to prevent people to put in the full folder (which contains the updated chapters) and the individual chapter (seperate product) into their carts?\r\n\r\n<strong>Example</strong>:\r\n\r\nProduct A (full folder)\r\nProduct B (individual Chapter update)\r\nIf Product A is in cart then Product B cannot be put into the cart. Preferably with a popup of some sort that tells the customer, that tells him/her, why he can\'t place the product in the cart.\r\nIf Product B is in cart and the customer wants to put in Product A, then Product B will be removed, as it is no longer needed. Preferably with a popup of some sort that tells the customer, why Product B has been removed.\r\n\r\nWe often have people purchasing both products, leading to massive inconvinience to cancel the orders to correct them.\r\n\r\nLooking forward to your response.\r\n\r\nIFBS</p>', '2023-12-03 03:57:08', '2023-12-03'),
(10, 1, 24, 'Google and Meta SEO in Prestashop', '<p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Hi all,</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">the SEO managers of a site I created need to have tracking with various services, Google and Meta:</p><ul style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li>Google Tag Manager;</li><li>Google Search Console;</li><li>Google Ads;</li><li>Google Analytics;</li><li>Pixel Meta;</li><li>API Conversions.</li></ul><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">I wanted to know if any of you had to solve the same problem, if there is a single module capable of connecting without having to work on the code, or more modules (if necessary, you could point them out to me).</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Or is it better to implement these services into the code directly?</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Thank you.</p>', '2023-12-04 12:53:36', '2023-12-04'),
(11, 1, 10, 'Back Office access denied', '<p><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Hi all, as per title, I can\'t access the back office (prestashop is 1.7.8.5) After deleting the cookies and cache folders I activated debugging and I have a series of errors:</span><br></p>', '2023-12-04 12:56:32', '2023-12-04'),
(12, 1, 10, 'Back Office access denied', '<p><span style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Hi all, as per title, I can\'t access the back office (prestashop is 1.7.8.5) After deleting the cookies and cache folders I activated debugging and I have a series of errors:</span><br></p>', '2023-12-04 13:00:44', '2023-12-04'),
(15, 2, 4, 'How do I distinguish between Business and Consumer customers?', '<p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">We are selling from outside EU to EU customers by using the EU IOSS system which in short means:</p><ul style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li>We charge VAT from customer and forwards to customs in EU country</li><li>Shipment is electronically coded with an IOSS-number, telling Customs officer that VAT is already paid, ensuring simplified customs processing (no customs fee nor VAT is charged when goods arrive in destination country).</li><li>The system only applies for B2C sales up to a maximum value of 150 EUR.</li></ul><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">For Business customers, we shall not charge VAT, they will be charged VAT and customs fee when goods arrive.</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">So the checkout process needs to identify customer as either Business or Consumer - and register Business name in the case of Business customer.</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">How do we configure this in Prestashop?</p>', '2023-12-05 12:40:44', '2023-12-05'),
(16, 4, 8, 'Where to download older prestashop versions ?', '<p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Hi,</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">The prestashop website changed, I can\'t find the page that lets us download older versions.</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Any help is welcome.</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">&nbsp;</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Thanks</p>', '2023-12-08 01:48:40', '2023-12-08'),
(17, 4, 4, 'Is it possible to upgrade from 1.7.x.x to 8.1.2 ?', '<p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Hello after 2 3 days on trying to update my prestashop from&nbsp;1.7.7.0 to 8.1.2 I post on this forum because it seems impossible...</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">Even with a fresh 1.7.7.0 it fails.</p><p style=\"color: rgb(53, 60, 65); font-family: Inter, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\">So very simple question : is it possible ?</p>', '2023-12-08 03:51:13', '2023-12-08');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ndiaga', 'kandiaga@yandex.ru', NULL, '$2y$12$RDHlzSzHKWM7NkWSNu5xU.3fy/uKZRfgmsSTM1qmne7wUoilG9Gz2', NULL, '2023-12-04 15:52:57', '2023-12-04 15:52:57'),
(2, 'moussa', 'moussa@yahoo.fr', NULL, '$2y$12$/Q7nEvPBFSJz89tMrZNnSeXJrSKqOeIb6MAYo2XjuV5zD41eeK2Ca', NULL, '2023-12-05 12:03:00', '2023-12-05 12:03:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id_answer`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id_author`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Index pour la table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id_page`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `followers_follower_id_author_id_author_unique` (`follower_id`,`author_id_author`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `profile_views`
--
ALTER TABLE `profile_views`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `profile_visitors`
--
ALTER TABLE `profile_visitors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `temporary_files`
--
ALTER TABLE `temporary_files`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id_topic`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`author_id`) USING BTREE;

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id_answer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id_page` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `profile_views`
--
ALTER TABLE `profile_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `profile_visitors`
--
ALTER TABLE `profile_visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `temporary_files`
--
ALTER TABLE `temporary_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `topics`
--
ALTER TABLE `topics`
  MODIFY `id_topic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id_topic`),
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id_author`);

--
-- Contraintes pour la table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id_category`),
  ADD CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id_author`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

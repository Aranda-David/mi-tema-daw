-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-03-2026 a las 10:45:40
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practicas.db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://es.wordpress.org/', '', '2026-03-03 13:38:37', '2026-03-03 12:38:37', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita en el escritorio la pantalla de comentarios.\nLos avatares de los comentaristas provienen de <a href=\"https://es.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1773139118;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1773146318;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1773146334;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1773146336;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1773149917;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1773151717;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1773153517;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1773157653;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1773225696;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1773232718;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/proyecto-daw', 'on'),
(3, 'home', 'http://localhost/proyecto-daw', 'on'),
(4, 'blogname', 'Practicas', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'david.arandalegal@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j \\d\\e F \\d\\e Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:122:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:22:\"index.php/proyectos/?$\";s:29:\"index.php?post_type=proyectos\";s:52:\"index.php/proyectos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=proyectos&feed=$matches[1]\";s:47:\"index.php/proyectos/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=proyectos&feed=$matches[1]\";s:39:\"index.php/proyectos/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=proyectos&paged=$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"index.php/proyectos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"index.php/proyectos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"index.php/proyectos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"index.php/proyectos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"index.php/proyectos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"index.php/proyectos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"index.php/proyectos/([^/]+)/embed/?$\";s:42:\"index.php?proyectos=$matches[1]&embed=true\";s:40:\"index.php/proyectos/([^/]+)/trackback/?$\";s:36:\"index.php?proyectos=$matches[1]&tb=1\";s:60:\"index.php/proyectos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?proyectos=$matches[1]&feed=$matches[2]\";s:55:\"index.php/proyectos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?proyectos=$matches[1]&feed=$matches[2]\";s:48:\"index.php/proyectos/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?proyectos=$matches[1]&paged=$matches[2]\";s:55:\"index.php/proyectos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?proyectos=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/proyectos/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?proyectos=$matches[1]&page=$matches[2]\";s:36:\"index.php/proyectos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"index.php/proyectos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"index.php/proyectos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"index.php/proyectos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"index.php/proyectos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"index.php/proyectos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"index.php/tipo-proyecto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?tipo_proyecto=$matches[1]&feed=$matches[2]\";s:59:\"index.php/tipo-proyecto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?tipo_proyecto=$matches[1]&feed=$matches[2]\";s:40:\"index.php/tipo-proyecto/([^/]+)/embed/?$\";s:46:\"index.php?tipo_proyecto=$matches[1]&embed=true\";s:52:\"index.php/tipo-proyecto/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?tipo_proyecto=$matches[1]&paged=$matches[2]\";s:34:\"index.php/tipo-proyecto/([^/]+)/?$\";s:35:\"index.php?tipo_proyecto=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:4:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'mi-tema-daw', 'on'),
(42, 'stylesheet', 'mi-tema-daw', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60717', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', 'Europe/Madrid', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1788093517', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '60717', 'on'),
(103, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(104, 'fresh_site', '0', 'off'),
(105, 'WPLANG', 'es_ES', 'auto'),
(106, 'user_count', '1', 'off'),
(107, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(123, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.9.1\";s:5:\"files\";a:584:{i:0;s:27:\"accordion-heading/style.css\";i:1;s:31:\"accordion-heading/style.min.css\";i:2;s:31:\"accordion-heading/style-rtl.css\";i:3;s:35:\"accordion-heading/style-rtl.min.css\";i:4;s:24:\"accordion-item/style.css\";i:5;s:28:\"accordion-item/style.min.css\";i:6;s:28:\"accordion-item/style-rtl.css\";i:7;s:32:\"accordion-item/style-rtl.min.css\";i:8;s:25:\"accordion-panel/style.css\";i:9;s:29:\"accordion-panel/style.min.css\";i:10;s:29:\"accordion-panel/style-rtl.css\";i:11;s:33:\"accordion-panel/style-rtl.min.css\";i:12;s:19:\"accordion/style.css\";i:13;s:23:\"accordion/style.min.css\";i:14;s:23:\"accordion/style-rtl.css\";i:15;s:27:\"accordion/style-rtl.min.css\";i:16;s:19:\"archives/editor.css\";i:17;s:23:\"archives/editor.min.css\";i:18;s:23:\"archives/editor-rtl.css\";i:19;s:27:\"archives/editor-rtl.min.css\";i:20;s:18:\"archives/style.css\";i:21;s:22:\"archives/style.min.css\";i:22;s:22:\"archives/style-rtl.css\";i:23;s:26:\"archives/style-rtl.min.css\";i:24;s:16:\"audio/editor.css\";i:25;s:20:\"audio/editor.min.css\";i:26;s:20:\"audio/editor-rtl.css\";i:27;s:24:\"audio/editor-rtl.min.css\";i:28;s:15:\"audio/style.css\";i:29;s:19:\"audio/style.min.css\";i:30;s:19:\"audio/style-rtl.css\";i:31;s:23:\"audio/style-rtl.min.css\";i:32;s:15:\"audio/theme.css\";i:33;s:19:\"audio/theme.min.css\";i:34;s:19:\"audio/theme-rtl.css\";i:35;s:23:\"audio/theme-rtl.min.css\";i:36;s:17:\"avatar/editor.css\";i:37;s:21:\"avatar/editor.min.css\";i:38;s:21:\"avatar/editor-rtl.css\";i:39;s:25:\"avatar/editor-rtl.min.css\";i:40;s:16:\"avatar/style.css\";i:41;s:20:\"avatar/style.min.css\";i:42;s:20:\"avatar/style-rtl.css\";i:43;s:24:\"avatar/style-rtl.min.css\";i:44;s:17:\"button/editor.css\";i:45;s:21:\"button/editor.min.css\";i:46;s:21:\"button/editor-rtl.css\";i:47;s:25:\"button/editor-rtl.min.css\";i:48;s:18:\"buttons/editor.css\";i:49;s:22:\"buttons/editor.min.css\";i:50;s:22:\"buttons/editor-rtl.css\";i:51;s:26:\"buttons/editor-rtl.min.css\";i:52;s:17:\"buttons/style.css\";i:53;s:21:\"buttons/style.min.css\";i:54;s:21:\"buttons/style-rtl.css\";i:55;s:25:\"buttons/style-rtl.min.css\";i:56;s:16:\"button/style.css\";i:57;s:20:\"button/style.min.css\";i:58;s:20:\"button/style-rtl.css\";i:59;s:24:\"button/style-rtl.min.css\";i:60;s:18:\"calendar/style.css\";i:61;s:22:\"calendar/style.min.css\";i:62;s:22:\"calendar/style-rtl.css\";i:63;s:26:\"calendar/style-rtl.min.css\";i:64;s:21:\"categories/editor.css\";i:65;s:25:\"categories/editor.min.css\";i:66;s:25:\"categories/editor-rtl.css\";i:67;s:29:\"categories/editor-rtl.min.css\";i:68;s:20:\"categories/style.css\";i:69;s:24:\"categories/style.min.css\";i:70;s:24:\"categories/style-rtl.css\";i:71;s:28:\"categories/style-rtl.min.css\";i:72;s:15:\"code/editor.css\";i:73;s:19:\"code/editor.min.css\";i:74;s:19:\"code/editor-rtl.css\";i:75;s:23:\"code/editor-rtl.min.css\";i:76;s:14:\"code/style.css\";i:77;s:18:\"code/style.min.css\";i:78;s:18:\"code/style-rtl.css\";i:79;s:22:\"code/style-rtl.min.css\";i:80;s:14:\"code/theme.css\";i:81;s:18:\"code/theme.min.css\";i:82;s:18:\"code/theme-rtl.css\";i:83;s:22:\"code/theme-rtl.min.css\";i:84;s:18:\"columns/editor.css\";i:85;s:22:\"columns/editor.min.css\";i:86;s:22:\"columns/editor-rtl.css\";i:87;s:26:\"columns/editor-rtl.min.css\";i:88;s:17:\"columns/style.css\";i:89;s:21:\"columns/style.min.css\";i:90;s:21:\"columns/style-rtl.css\";i:91;s:25:\"columns/style-rtl.min.css\";i:92;s:29:\"comment-author-name/style.css\";i:93;s:33:\"comment-author-name/style.min.css\";i:94;s:33:\"comment-author-name/style-rtl.css\";i:95;s:37:\"comment-author-name/style-rtl.min.css\";i:96;s:25:\"comment-content/style.css\";i:97;s:29:\"comment-content/style.min.css\";i:98;s:29:\"comment-content/style-rtl.css\";i:99;s:33:\"comment-content/style-rtl.min.css\";i:100;s:22:\"comment-date/style.css\";i:101;s:26:\"comment-date/style.min.css\";i:102;s:26:\"comment-date/style-rtl.css\";i:103;s:30:\"comment-date/style-rtl.min.css\";i:104;s:27:\"comment-edit-link/style.css\";i:105;s:31:\"comment-edit-link/style.min.css\";i:106;s:31:\"comment-edit-link/style-rtl.css\";i:107;s:35:\"comment-edit-link/style-rtl.min.css\";i:108;s:28:\"comment-reply-link/style.css\";i:109;s:32:\"comment-reply-link/style.min.css\";i:110;s:32:\"comment-reply-link/style-rtl.css\";i:111;s:36:\"comment-reply-link/style-rtl.min.css\";i:112;s:19:\"comments/editor.css\";i:113;s:23:\"comments/editor.min.css\";i:114;s:23:\"comments/editor-rtl.css\";i:115;s:27:\"comments/editor-rtl.min.css\";i:116;s:30:\"comments-pagination/editor.css\";i:117;s:34:\"comments-pagination/editor.min.css\";i:118;s:34:\"comments-pagination/editor-rtl.css\";i:119;s:38:\"comments-pagination/editor-rtl.min.css\";i:120;s:38:\"comments-pagination-numbers/editor.css\";i:121;s:42:\"comments-pagination-numbers/editor.min.css\";i:122;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:123;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:124;s:29:\"comments-pagination/style.css\";i:125;s:33:\"comments-pagination/style.min.css\";i:126;s:33:\"comments-pagination/style-rtl.css\";i:127;s:37:\"comments-pagination/style-rtl.min.css\";i:128;s:18:\"comments/style.css\";i:129;s:22:\"comments/style.min.css\";i:130;s:22:\"comments/style-rtl.css\";i:131;s:26:\"comments/style-rtl.min.css\";i:132;s:25:\"comments-title/editor.css\";i:133;s:29:\"comments-title/editor.min.css\";i:134;s:29:\"comments-title/editor-rtl.css\";i:135;s:33:\"comments-title/editor-rtl.min.css\";i:136;s:26:\"comment-template/style.css\";i:137;s:30:\"comment-template/style.min.css\";i:138;s:30:\"comment-template/style-rtl.css\";i:139;s:34:\"comment-template/style-rtl.min.css\";i:140;s:16:\"cover/editor.css\";i:141;s:20:\"cover/editor.min.css\";i:142;s:20:\"cover/editor-rtl.css\";i:143;s:24:\"cover/editor-rtl.min.css\";i:144;s:15:\"cover/style.css\";i:145;s:19:\"cover/style.min.css\";i:146;s:19:\"cover/style-rtl.css\";i:147;s:23:\"cover/style-rtl.min.css\";i:148;s:18:\"details/editor.css\";i:149;s:22:\"details/editor.min.css\";i:150;s:22:\"details/editor-rtl.css\";i:151;s:26:\"details/editor-rtl.min.css\";i:152;s:17:\"details/style.css\";i:153;s:21:\"details/style.min.css\";i:154;s:21:\"details/style-rtl.css\";i:155;s:25:\"details/style-rtl.min.css\";i:156;s:16:\"embed/editor.css\";i:157;s:20:\"embed/editor.min.css\";i:158;s:20:\"embed/editor-rtl.css\";i:159;s:24:\"embed/editor-rtl.min.css\";i:160;s:15:\"embed/style.css\";i:161;s:19:\"embed/style.min.css\";i:162;s:19:\"embed/style-rtl.css\";i:163;s:23:\"embed/style-rtl.min.css\";i:164;s:15:\"embed/theme.css\";i:165;s:19:\"embed/theme.min.css\";i:166;s:19:\"embed/theme-rtl.css\";i:167;s:23:\"embed/theme-rtl.min.css\";i:168;s:15:\"file/editor.css\";i:169;s:19:\"file/editor.min.css\";i:170;s:19:\"file/editor-rtl.css\";i:171;s:23:\"file/editor-rtl.min.css\";i:172;s:14:\"file/style.css\";i:173;s:18:\"file/style.min.css\";i:174;s:18:\"file/style-rtl.css\";i:175;s:22:\"file/style-rtl.min.css\";i:176;s:19:\"footnotes/style.css\";i:177;s:23:\"footnotes/style.min.css\";i:178;s:23:\"footnotes/style-rtl.css\";i:179;s:27:\"footnotes/style-rtl.min.css\";i:180;s:19:\"freeform/editor.css\";i:181;s:23:\"freeform/editor.min.css\";i:182;s:23:\"freeform/editor-rtl.css\";i:183;s:27:\"freeform/editor-rtl.min.css\";i:184;s:18:\"gallery/editor.css\";i:185;s:22:\"gallery/editor.min.css\";i:186;s:22:\"gallery/editor-rtl.css\";i:187;s:26:\"gallery/editor-rtl.min.css\";i:188;s:17:\"gallery/style.css\";i:189;s:21:\"gallery/style.min.css\";i:190;s:21:\"gallery/style-rtl.css\";i:191;s:25:\"gallery/style-rtl.min.css\";i:192;s:17:\"gallery/theme.css\";i:193;s:21:\"gallery/theme.min.css\";i:194;s:21:\"gallery/theme-rtl.css\";i:195;s:25:\"gallery/theme-rtl.min.css\";i:196;s:16:\"group/editor.css\";i:197;s:20:\"group/editor.min.css\";i:198;s:20:\"group/editor-rtl.css\";i:199;s:24:\"group/editor-rtl.min.css\";i:200;s:15:\"group/style.css\";i:201;s:19:\"group/style.min.css\";i:202;s:19:\"group/style-rtl.css\";i:203;s:23:\"group/style-rtl.min.css\";i:204;s:15:\"group/theme.css\";i:205;s:19:\"group/theme.min.css\";i:206;s:19:\"group/theme-rtl.css\";i:207;s:23:\"group/theme-rtl.min.css\";i:208;s:17:\"heading/style.css\";i:209;s:21:\"heading/style.min.css\";i:210;s:21:\"heading/style-rtl.css\";i:211;s:25:\"heading/style-rtl.min.css\";i:212;s:15:\"html/editor.css\";i:213;s:19:\"html/editor.min.css\";i:214;s:19:\"html/editor-rtl.css\";i:215;s:23:\"html/editor-rtl.min.css\";i:216;s:16:\"image/editor.css\";i:217;s:20:\"image/editor.min.css\";i:218;s:20:\"image/editor-rtl.css\";i:219;s:24:\"image/editor-rtl.min.css\";i:220;s:15:\"image/style.css\";i:221;s:19:\"image/style.min.css\";i:222;s:19:\"image/style-rtl.css\";i:223;s:23:\"image/style-rtl.min.css\";i:224;s:15:\"image/theme.css\";i:225;s:19:\"image/theme.min.css\";i:226;s:19:\"image/theme-rtl.css\";i:227;s:23:\"image/theme-rtl.min.css\";i:228;s:25:\"latest-comments/style.css\";i:229;s:29:\"latest-comments/style.min.css\";i:230;s:29:\"latest-comments/style-rtl.css\";i:231;s:33:\"latest-comments/style-rtl.min.css\";i:232;s:23:\"latest-posts/editor.css\";i:233;s:27:\"latest-posts/editor.min.css\";i:234;s:27:\"latest-posts/editor-rtl.css\";i:235;s:31:\"latest-posts/editor-rtl.min.css\";i:236;s:22:\"latest-posts/style.css\";i:237;s:26:\"latest-posts/style.min.css\";i:238;s:26:\"latest-posts/style-rtl.css\";i:239;s:30:\"latest-posts/style-rtl.min.css\";i:240;s:14:\"list/style.css\";i:241;s:18:\"list/style.min.css\";i:242;s:18:\"list/style-rtl.css\";i:243;s:22:\"list/style-rtl.min.css\";i:244;s:18:\"loginout/style.css\";i:245;s:22:\"loginout/style.min.css\";i:246;s:22:\"loginout/style-rtl.css\";i:247;s:26:\"loginout/style-rtl.min.css\";i:248;s:15:\"math/editor.css\";i:249;s:19:\"math/editor.min.css\";i:250;s:19:\"math/editor-rtl.css\";i:251;s:23:\"math/editor-rtl.min.css\";i:252;s:14:\"math/style.css\";i:253;s:18:\"math/style.min.css\";i:254;s:18:\"math/style-rtl.css\";i:255;s:22:\"math/style-rtl.min.css\";i:256;s:21:\"media-text/editor.css\";i:257;s:25:\"media-text/editor.min.css\";i:258;s:25:\"media-text/editor-rtl.css\";i:259;s:29:\"media-text/editor-rtl.min.css\";i:260;s:20:\"media-text/style.css\";i:261;s:24:\"media-text/style.min.css\";i:262;s:24:\"media-text/style-rtl.css\";i:263;s:28:\"media-text/style-rtl.min.css\";i:264;s:15:\"more/editor.css\";i:265;s:19:\"more/editor.min.css\";i:266;s:19:\"more/editor-rtl.css\";i:267;s:23:\"more/editor-rtl.min.css\";i:268;s:21:\"navigation/editor.css\";i:269;s:25:\"navigation/editor.min.css\";i:270;s:25:\"navigation/editor-rtl.css\";i:271;s:29:\"navigation/editor-rtl.min.css\";i:272;s:26:\"navigation-link/editor.css\";i:273;s:30:\"navigation-link/editor.min.css\";i:274;s:30:\"navigation-link/editor-rtl.css\";i:275;s:34:\"navigation-link/editor-rtl.min.css\";i:276;s:25:\"navigation-link/style.css\";i:277;s:29:\"navigation-link/style.min.css\";i:278;s:29:\"navigation-link/style-rtl.css\";i:279;s:33:\"navigation-link/style-rtl.min.css\";i:280;s:20:\"navigation/style.css\";i:281;s:24:\"navigation/style.min.css\";i:282;s:24:\"navigation/style-rtl.css\";i:283;s:28:\"navigation/style-rtl.min.css\";i:284;s:29:\"navigation-submenu/editor.css\";i:285;s:33:\"navigation-submenu/editor.min.css\";i:286;s:33:\"navigation-submenu/editor-rtl.css\";i:287;s:37:\"navigation-submenu/editor-rtl.min.css\";i:288;s:19:\"nextpage/editor.css\";i:289;s:23:\"nextpage/editor.min.css\";i:290;s:23:\"nextpage/editor-rtl.css\";i:291;s:27:\"nextpage/editor-rtl.min.css\";i:292;s:20:\"page-list/editor.css\";i:293;s:24:\"page-list/editor.min.css\";i:294;s:24:\"page-list/editor-rtl.css\";i:295;s:28:\"page-list/editor-rtl.min.css\";i:296;s:19:\"page-list/style.css\";i:297;s:23:\"page-list/style.min.css\";i:298;s:23:\"page-list/style-rtl.css\";i:299;s:27:\"page-list/style-rtl.min.css\";i:300;s:20:\"paragraph/editor.css\";i:301;s:24:\"paragraph/editor.min.css\";i:302;s:24:\"paragraph/editor-rtl.css\";i:303;s:28:\"paragraph/editor-rtl.min.css\";i:304;s:19:\"paragraph/style.css\";i:305;s:23:\"paragraph/style.min.css\";i:306;s:23:\"paragraph/style-rtl.css\";i:307;s:27:\"paragraph/style-rtl.min.css\";i:308;s:31:\"post-author-biography/style.css\";i:309;s:35:\"post-author-biography/style.min.css\";i:310;s:35:\"post-author-biography/style-rtl.css\";i:311;s:39:\"post-author-biography/style-rtl.min.css\";i:312;s:26:\"post-author-name/style.css\";i:313;s:30:\"post-author-name/style.min.css\";i:314;s:30:\"post-author-name/style-rtl.css\";i:315;s:34:\"post-author-name/style-rtl.min.css\";i:316;s:21:\"post-author/style.css\";i:317;s:25:\"post-author/style.min.css\";i:318;s:25:\"post-author/style-rtl.css\";i:319;s:29:\"post-author/style-rtl.min.css\";i:320;s:29:\"post-comments-count/style.css\";i:321;s:33:\"post-comments-count/style.min.css\";i:322;s:33:\"post-comments-count/style-rtl.css\";i:323;s:37:\"post-comments-count/style-rtl.min.css\";i:324;s:29:\"post-comments-form/editor.css\";i:325;s:33:\"post-comments-form/editor.min.css\";i:326;s:33:\"post-comments-form/editor-rtl.css\";i:327;s:37:\"post-comments-form/editor-rtl.min.css\";i:328;s:28:\"post-comments-form/style.css\";i:329;s:32:\"post-comments-form/style.min.css\";i:330;s:32:\"post-comments-form/style-rtl.css\";i:331;s:36:\"post-comments-form/style-rtl.min.css\";i:332;s:28:\"post-comments-link/style.css\";i:333;s:32:\"post-comments-link/style.min.css\";i:334;s:32:\"post-comments-link/style-rtl.css\";i:335;s:36:\"post-comments-link/style-rtl.min.css\";i:336;s:22:\"post-content/style.css\";i:337;s:26:\"post-content/style.min.css\";i:338;s:26:\"post-content/style-rtl.css\";i:339;s:30:\"post-content/style-rtl.min.css\";i:340;s:19:\"post-date/style.css\";i:341;s:23:\"post-date/style.min.css\";i:342;s:23:\"post-date/style-rtl.css\";i:343;s:27:\"post-date/style-rtl.min.css\";i:344;s:23:\"post-excerpt/editor.css\";i:345;s:27:\"post-excerpt/editor.min.css\";i:346;s:27:\"post-excerpt/editor-rtl.css\";i:347;s:31:\"post-excerpt/editor-rtl.min.css\";i:348;s:22:\"post-excerpt/style.css\";i:349;s:26:\"post-excerpt/style.min.css\";i:350;s:26:\"post-excerpt/style-rtl.css\";i:351;s:30:\"post-excerpt/style-rtl.min.css\";i:352;s:30:\"post-featured-image/editor.css\";i:353;s:34:\"post-featured-image/editor.min.css\";i:354;s:34:\"post-featured-image/editor-rtl.css\";i:355;s:38:\"post-featured-image/editor-rtl.min.css\";i:356;s:29:\"post-featured-image/style.css\";i:357;s:33:\"post-featured-image/style.min.css\";i:358;s:33:\"post-featured-image/style-rtl.css\";i:359;s:37:\"post-featured-image/style-rtl.min.css\";i:360;s:30:\"post-navigation-link/style.css\";i:361;s:34:\"post-navigation-link/style.min.css\";i:362;s:34:\"post-navigation-link/style-rtl.css\";i:363;s:38:\"post-navigation-link/style-rtl.min.css\";i:364;s:23:\"post-template/style.css\";i:365;s:27:\"post-template/style.min.css\";i:366;s:27:\"post-template/style-rtl.css\";i:367;s:31:\"post-template/style-rtl.min.css\";i:368;s:20:\"post-terms/style.css\";i:369;s:24:\"post-terms/style.min.css\";i:370;s:24:\"post-terms/style-rtl.css\";i:371;s:28:\"post-terms/style-rtl.min.css\";i:372;s:27:\"post-time-to-read/style.css\";i:373;s:31:\"post-time-to-read/style.min.css\";i:374;s:31:\"post-time-to-read/style-rtl.css\";i:375;s:35:\"post-time-to-read/style-rtl.min.css\";i:376;s:20:\"post-title/style.css\";i:377;s:24:\"post-title/style.min.css\";i:378;s:24:\"post-title/style-rtl.css\";i:379;s:28:\"post-title/style-rtl.min.css\";i:380;s:22:\"preformatted/style.css\";i:381;s:26:\"preformatted/style.min.css\";i:382;s:26:\"preformatted/style-rtl.css\";i:383;s:30:\"preformatted/style-rtl.min.css\";i:384;s:20:\"pullquote/editor.css\";i:385;s:24:\"pullquote/editor.min.css\";i:386;s:24:\"pullquote/editor-rtl.css\";i:387;s:28:\"pullquote/editor-rtl.min.css\";i:388;s:19:\"pullquote/style.css\";i:389;s:23:\"pullquote/style.min.css\";i:390;s:23:\"pullquote/style-rtl.css\";i:391;s:27:\"pullquote/style-rtl.min.css\";i:392;s:19:\"pullquote/theme.css\";i:393;s:23:\"pullquote/theme.min.css\";i:394;s:23:\"pullquote/theme-rtl.css\";i:395;s:27:\"pullquote/theme-rtl.min.css\";i:396;s:16:\"query/editor.css\";i:397;s:20:\"query/editor.min.css\";i:398;s:20:\"query/editor-rtl.css\";i:399;s:24:\"query/editor-rtl.min.css\";i:400;s:27:\"query-pagination/editor.css\";i:401;s:31:\"query-pagination/editor.min.css\";i:402;s:31:\"query-pagination/editor-rtl.css\";i:403;s:35:\"query-pagination/editor-rtl.min.css\";i:404;s:35:\"query-pagination-numbers/editor.css\";i:405;s:39:\"query-pagination-numbers/editor.min.css\";i:406;s:39:\"query-pagination-numbers/editor-rtl.css\";i:407;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:408;s:26:\"query-pagination/style.css\";i:409;s:30:\"query-pagination/style.min.css\";i:410;s:30:\"query-pagination/style-rtl.css\";i:411;s:34:\"query-pagination/style-rtl.min.css\";i:412;s:21:\"query-title/style.css\";i:413;s:25:\"query-title/style.min.css\";i:414;s:25:\"query-title/style-rtl.css\";i:415;s:29:\"query-title/style-rtl.min.css\";i:416;s:21:\"query-total/style.css\";i:417;s:25:\"query-total/style.min.css\";i:418;s:25:\"query-total/style-rtl.css\";i:419;s:29:\"query-total/style-rtl.min.css\";i:420;s:15:\"quote/style.css\";i:421;s:19:\"quote/style.min.css\";i:422;s:19:\"quote/style-rtl.css\";i:423;s:23:\"quote/style-rtl.min.css\";i:424;s:15:\"quote/theme.css\";i:425;s:19:\"quote/theme.min.css\";i:426;s:19:\"quote/theme-rtl.css\";i:427;s:23:\"quote/theme-rtl.min.css\";i:428;s:19:\"read-more/style.css\";i:429;s:23:\"read-more/style.min.css\";i:430;s:23:\"read-more/style-rtl.css\";i:431;s:27:\"read-more/style-rtl.min.css\";i:432;s:14:\"rss/editor.css\";i:433;s:18:\"rss/editor.min.css\";i:434;s:18:\"rss/editor-rtl.css\";i:435;s:22:\"rss/editor-rtl.min.css\";i:436;s:13:\"rss/style.css\";i:437;s:17:\"rss/style.min.css\";i:438;s:17:\"rss/style-rtl.css\";i:439;s:21:\"rss/style-rtl.min.css\";i:440;s:17:\"search/editor.css\";i:441;s:21:\"search/editor.min.css\";i:442;s:21:\"search/editor-rtl.css\";i:443;s:25:\"search/editor-rtl.min.css\";i:444;s:16:\"search/style.css\";i:445;s:20:\"search/style.min.css\";i:446;s:20:\"search/style-rtl.css\";i:447;s:24:\"search/style-rtl.min.css\";i:448;s:16:\"search/theme.css\";i:449;s:20:\"search/theme.min.css\";i:450;s:20:\"search/theme-rtl.css\";i:451;s:24:\"search/theme-rtl.min.css\";i:452;s:20:\"separator/editor.css\";i:453;s:24:\"separator/editor.min.css\";i:454;s:24:\"separator/editor-rtl.css\";i:455;s:28:\"separator/editor-rtl.min.css\";i:456;s:19:\"separator/style.css\";i:457;s:23:\"separator/style.min.css\";i:458;s:23:\"separator/style-rtl.css\";i:459;s:27:\"separator/style-rtl.min.css\";i:460;s:19:\"separator/theme.css\";i:461;s:23:\"separator/theme.min.css\";i:462;s:23:\"separator/theme-rtl.css\";i:463;s:27:\"separator/theme-rtl.min.css\";i:464;s:20:\"shortcode/editor.css\";i:465;s:24:\"shortcode/editor.min.css\";i:466;s:24:\"shortcode/editor-rtl.css\";i:467;s:28:\"shortcode/editor-rtl.min.css\";i:468;s:20:\"site-logo/editor.css\";i:469;s:24:\"site-logo/editor.min.css\";i:470;s:24:\"site-logo/editor-rtl.css\";i:471;s:28:\"site-logo/editor-rtl.min.css\";i:472;s:19:\"site-logo/style.css\";i:473;s:23:\"site-logo/style.min.css\";i:474;s:23:\"site-logo/style-rtl.css\";i:475;s:27:\"site-logo/style-rtl.min.css\";i:476;s:23:\"site-tagline/editor.css\";i:477;s:27:\"site-tagline/editor.min.css\";i:478;s:27:\"site-tagline/editor-rtl.css\";i:479;s:31:\"site-tagline/editor-rtl.min.css\";i:480;s:22:\"site-tagline/style.css\";i:481;s:26:\"site-tagline/style.min.css\";i:482;s:26:\"site-tagline/style-rtl.css\";i:483;s:30:\"site-tagline/style-rtl.min.css\";i:484;s:21:\"site-title/editor.css\";i:485;s:25:\"site-title/editor.min.css\";i:486;s:25:\"site-title/editor-rtl.css\";i:487;s:29:\"site-title/editor-rtl.min.css\";i:488;s:20:\"site-title/style.css\";i:489;s:24:\"site-title/style.min.css\";i:490;s:24:\"site-title/style-rtl.css\";i:491;s:28:\"site-title/style-rtl.min.css\";i:492;s:22:\"social-link/editor.css\";i:493;s:26:\"social-link/editor.min.css\";i:494;s:26:\"social-link/editor-rtl.css\";i:495;s:30:\"social-link/editor-rtl.min.css\";i:496;s:23:\"social-links/editor.css\";i:497;s:27:\"social-links/editor.min.css\";i:498;s:27:\"social-links/editor-rtl.css\";i:499;s:31:\"social-links/editor-rtl.min.css\";i:500;s:22:\"social-links/style.css\";i:501;s:26:\"social-links/style.min.css\";i:502;s:26:\"social-links/style-rtl.css\";i:503;s:30:\"social-links/style-rtl.min.css\";i:504;s:17:\"spacer/editor.css\";i:505;s:21:\"spacer/editor.min.css\";i:506;s:21:\"spacer/editor-rtl.css\";i:507;s:25:\"spacer/editor-rtl.min.css\";i:508;s:16:\"spacer/style.css\";i:509;s:20:\"spacer/style.min.css\";i:510;s:20:\"spacer/style-rtl.css\";i:511;s:24:\"spacer/style-rtl.min.css\";i:512;s:16:\"table/editor.css\";i:513;s:20:\"table/editor.min.css\";i:514;s:20:\"table/editor-rtl.css\";i:515;s:24:\"table/editor-rtl.min.css\";i:516;s:15:\"table/style.css\";i:517;s:19:\"table/style.min.css\";i:518;s:19:\"table/style-rtl.css\";i:519;s:23:\"table/style-rtl.min.css\";i:520;s:15:\"table/theme.css\";i:521;s:19:\"table/theme.min.css\";i:522;s:19:\"table/theme-rtl.css\";i:523;s:23:\"table/theme-rtl.min.css\";i:524;s:20:\"tag-cloud/editor.css\";i:525;s:24:\"tag-cloud/editor.min.css\";i:526;s:24:\"tag-cloud/editor-rtl.css\";i:527;s:28:\"tag-cloud/editor-rtl.min.css\";i:528;s:19:\"tag-cloud/style.css\";i:529;s:23:\"tag-cloud/style.min.css\";i:530;s:23:\"tag-cloud/style-rtl.css\";i:531;s:27:\"tag-cloud/style-rtl.min.css\";i:532;s:24:\"template-part/editor.css\";i:533;s:28:\"template-part/editor.min.css\";i:534;s:28:\"template-part/editor-rtl.css\";i:535;s:32:\"template-part/editor-rtl.min.css\";i:536;s:23:\"template-part/theme.css\";i:537;s:27:\"template-part/theme.min.css\";i:538;s:27:\"template-part/theme-rtl.css\";i:539;s:31:\"template-part/theme-rtl.min.css\";i:540;s:20:\"term-count/style.css\";i:541;s:24:\"term-count/style.min.css\";i:542;s:24:\"term-count/style-rtl.css\";i:543;s:28:\"term-count/style-rtl.min.css\";i:544;s:26:\"term-description/style.css\";i:545;s:30:\"term-description/style.min.css\";i:546;s:30:\"term-description/style-rtl.css\";i:547;s:34:\"term-description/style-rtl.min.css\";i:548;s:19:\"term-name/style.css\";i:549;s:23:\"term-name/style.min.css\";i:550;s:23:\"term-name/style-rtl.css\";i:551;s:27:\"term-name/style-rtl.min.css\";i:552;s:24:\"term-template/editor.css\";i:553;s:28:\"term-template/editor.min.css\";i:554;s:28:\"term-template/editor-rtl.css\";i:555;s:32:\"term-template/editor-rtl.min.css\";i:556;s:23:\"term-template/style.css\";i:557;s:27:\"term-template/style.min.css\";i:558;s:27:\"term-template/style-rtl.css\";i:559;s:31:\"term-template/style-rtl.min.css\";i:560;s:23:\"text-columns/editor.css\";i:561;s:27:\"text-columns/editor.min.css\";i:562;s:27:\"text-columns/editor-rtl.css\";i:563;s:31:\"text-columns/editor-rtl.min.css\";i:564;s:22:\"text-columns/style.css\";i:565;s:26:\"text-columns/style.min.css\";i:566;s:26:\"text-columns/style-rtl.css\";i:567;s:30:\"text-columns/style-rtl.min.css\";i:568;s:15:\"verse/style.css\";i:569;s:19:\"verse/style.min.css\";i:570;s:19:\"verse/style-rtl.css\";i:571;s:23:\"verse/style-rtl.min.css\";i:572;s:16:\"video/editor.css\";i:573;s:20:\"video/editor.min.css\";i:574;s:20:\"video/editor-rtl.css\";i:575;s:24:\"video/editor-rtl.min.css\";i:576;s:15:\"video/style.css\";i:577;s:19:\"video/style.min.css\";i:578;s:19:\"video/style-rtl.css\";i:579;s:23:\"video/style-rtl.min.css\";i:580;s:15:\"video/theme.css\";i:581;s:19:\"video/theme.min.css\";i:582;s:19:\"video/theme-rtl.css\";i:583;s:23:\"video/theme-rtl.min.css\";}}', 'on');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(126, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1772549418;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(127, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"e6d0d097fa71e03c12289db6df63064a\";s:6:\"blocks\";a:6:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:18:\"core/term-template\";s:120:\":where(.wp-block-term-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-term-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(129, 'recovery_keys', 'a:0:{}', 'off'),
(137, '_site_transient_timeout_browser_8fa126f95381452152fa779954b535d7', '1773146336', 'off'),
(138, '_site_transient_browser_8fa126f95381452152fa779954b535d7', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"144.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(139, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1773146336', 'off'),
(140, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(142, 'can_compress_scripts', '1', 'on'),
(157, 'finished_updating_comment_type', '1', 'auto'),
(162, 'dismissed_update_core', 'a:1:{s:11:\"6.9.1|es_ES\";b:1;}', 'off'),
(165, 'theme_mods_mi-tema-daw', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu-principal\";i:2;s:11:\"menu-footer\";i:3;}}', 'on'),
(180, 'current_theme', '', 'auto'),
(181, 'theme_switched', '', 'auto'),
(221, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(222, 'recently_activated', 'a:0:{}', 'off'),
(232, 'acf_first_activated_version', '6.7.1', 'on'),
(233, 'acf_site_health', '{\"version\":\"6.7.1\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.9.1\",\"mysql_version\":\"10.4.28-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"\",\"version\":\"\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.7.1\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[],\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1772620896,\"last_updated\":1772621329,\"event_first_created_field_group\":1772621329}', 'off'),
(235, 'acf_version', '6.7.1', 'auto'),
(237, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(238, 'auto_update_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:31:\"query-monitor/query-monitor.php\";}', 'off'),
(247, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(268, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(269, 'category_children', 'a:0:{}', 'auto'),
(273, '_transient_health-check-site-status-result', '{\"good\":\"17\",\"recommended\":\"7\",\"critical\":\"1\",\"0\":\"NaN\"}', 'on'),
(286, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"6.1.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1772630302;s:7:\"version\";s:5:\"6.1.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(335, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.9.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.9.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.9.1\";s:7:\"version\";s:5:\"6.9.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1773135673;s:15:\"version_checked\";s:5:\"6.9.1\";s:12:\"translations\";a:0:{}}', 'off'),
(336, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1773135673;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.7.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3374528\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3374528\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:6:\"3.20.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/query-monitor.3.20.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2994095\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2994095\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2870124\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.1\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.7.1\";s:19:\"akismet/akismet.php\";s:3:\"5.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"6.1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"query-monitor/query-monitor.php\";s:6:\"3.20.2\";}}', 'off'),
(337, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1773135673;s:7:\"checked\";a:5:{s:11:\"mi-tema-daw\";s:0:\"\";s:16:\"twentytwentyfive\";s:3:\"1.4\";s:16:\"twentytwentyfour\";s:3:\"1.4\";s:17:\"twentytwentythree\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"2.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.4.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.4.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.2.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(361, 'tipo_proyecto_children', 'a:0:{}', 'auto'),
(413, '_site_transient_timeout_wp_theme_files_patterns-1d5d42a55e75ea6405572d23fe5e58cb', '1773137472', 'off'),
(414, '_site_transient_wp_theme_files_patterns-1d5d42a55e75ea6405572d23fe5e58cb', 'a:2:{s:7:\"version\";s:0:\"\";s:8:\"patterns\";a:0:{}}', 'off'),
(417, '_site_transient_timeout_theme_roots', '1773137473', 'off'),
(418, '_site_transient_theme_roots', 'a:5:{s:11:\"mi-tema-daw\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_last', '1'),
(4, 6, '_edit_lock', '1772706617:1'),
(5, 2, '_edit_lock', '1772704914:1'),
(6, 10, '_edit_lock', '1772705039:1'),
(7, 10, '_edit_last', '1'),
(8, 10, 'titulo_hero', 'David Aranda'),
(9, 10, '_titulo_hero', 'field_69a80cfbf4705'),
(10, 10, 'enlace_agencia', 'https://www.animocreations.com/'),
(11, 10, '_enlace_agencia', 'field_69a80d34f4706'),
(12, 10, 'imagen_del_hero', '13'),
(13, 10, '_imagen_del_hero', 'field_69a80da4f4707'),
(14, 11, 'titulo_hero', ''),
(15, 11, '_titulo_hero', 'field_69a80cfbf4705'),
(16, 11, 'enlace_agencia', ''),
(17, 11, '_enlace_agencia', 'field_69a80d34f4706'),
(18, 11, 'imagen_del_hero', ''),
(19, 11, '_imagen_del_hero', 'field_69a80da4f4707'),
(22, 13, '_wp_attached_file', '2026/03/design-scaled.jpg'),
(23, 13, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:25:\"2026/03/design-scaled.jpg\";s:8:\"filesize\";i:427272;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"design-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18375;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"design-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112657;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"design-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9040;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"design-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73785;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"design-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:203949;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"design-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:310125;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:19:\"Wavebreak Media LTD\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:61:\"digital composite of business graphics with office background\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:61:\"digital composite of business graphics with office background\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:61:{i:0;s:3:\"Job\";i:1;s:6:\"Career\";i:2;s:10:\"Profession\";i:3;s:12:\"Professional\";i:4;s:10:\"Occupation\";i:5;s:13:\"Businesswoman\";i:6;s:8:\"Business\";i:7;s:6:\"Office\";i:8;s:9:\"Workplace\";i:9;s:7:\"Part Of\";i:10;s:7:\"Holding\";i:11;s:7:\"Cropped\";i:12;s:4:\"Hand\";i:13;s:6:\"Finger\";i:14;s:7:\"Writing\";i:15;s:5:\"Table\";i:16;s:7:\"Working\";i:17;s:9:\"Corporate\";i:18;s:4:\"Desk\";i:19;s:3:\"Pen\";i:20;s:5:\"Blank\";i:21;s:8:\"Computer\";i:22;s:5:\"Using\";i:23;s:6:\"Typing\";i:24;s:8:\"Keyboard\";i:25;s:10:\"Technology\";i:26;s:2:\"Pc\";i:27;s:9:\"Clipboard\";i:28;s:5:\"Paper\";i:29;s:6:\"Wooden\";i:30;s:4:\"Wood\";i:31;s:3:\"Cup\";i:32;s:6:\"Coffee\";i:33;s:3:\"Mug\";i:34;s:3:\"Hot\";i:35;s:8:\"Beverage\";i:36;s:5:\"Black\";i:37;s:11:\"Eye Glasses\";i:38;s:7:\"Reading\";i:39;s:7:\"Glasses\";i:40;s:8:\"Eye Wear\";i:41;s:5:\"Diary\";i:42;s:6:\"Agenda\";i:43;s:7:\"Planner\";i:44;s:9:\"Organizer\";i:45;s:10:\"Organizing\";i:46;s:8:\"Planning\";i:47;s:7:\"Digital\";i:48;s:19:\"Digitally Generated\";i:49;s:16:\"Computer Graphic\";i:50;s:6:\"Doodle\";i:51;s:10:\"Hand Drawn\";i:52;s:7:\"Drawing\";i:53;s:10:\"Light Bulb\";i:54;s:4:\"Idea\";i:55;s:10:\"Innovation\";i:56;s:8:\"Innovate\";i:57;s:8:\"Creative\";i:58;s:8:\"Solution\";i:59;s:7:\"Concept\";i:60;s:11:\"Inspiration\";}}s:14:\"original_image\";s:10:\"design.jpg\";}'),
(25, 10, 'footnotes', ''),
(27, 14, 'footnotes', ''),
(29, 14, 'titulo_hero', 'David Aranda'),
(30, 14, '_titulo_hero', 'field_69a80cfbf4705'),
(31, 14, 'enlace_agencia', 'https://www.animocreations.com/'),
(32, 14, '_enlace_agencia', 'field_69a80d34f4706'),
(33, 14, 'imagen_del_hero', '13'),
(34, 14, '_imagen_del_hero', 'field_69a80da4f4707'),
(35, 15, '_edit_lock', '1772627031:1'),
(36, 16, '_wp_attached_file', '2026/03/design2-scaled.jpg'),
(37, 16, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:26:\"2026/03/design2-scaled.jpg\";s:8:\"filesize\";i:425803;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"design2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17695;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"design2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:111468;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"design2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8626;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"design2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72611;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"design2-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:200520;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:21:\"design2-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:305966;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:19:\"Wavebreak Media LTD\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:61:\"digital composite of business graphics with office background\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:61:\"digital composite of business graphics with office background\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:61:{i:0;s:3:\"Job\";i:1;s:6:\"Career\";i:2;s:10:\"Profession\";i:3;s:12:\"Professional\";i:4;s:10:\"Occupation\";i:5;s:13:\"Businesswoman\";i:6;s:8:\"Business\";i:7;s:6:\"Office\";i:8;s:9:\"Workplace\";i:9;s:7:\"Part Of\";i:10;s:7:\"Holding\";i:11;s:7:\"Cropped\";i:12;s:4:\"Hand\";i:13;s:6:\"Finger\";i:14;s:7:\"Writing\";i:15;s:5:\"Table\";i:16;s:7:\"Working\";i:17;s:9:\"Corporate\";i:18;s:4:\"Desk\";i:19;s:3:\"Pen\";i:20;s:5:\"Blank\";i:21;s:8:\"Computer\";i:22;s:5:\"Using\";i:23;s:6:\"Typing\";i:24;s:8:\"Keyboard\";i:25;s:10:\"Technology\";i:26;s:2:\"Pc\";i:27;s:9:\"Clipboard\";i:28;s:5:\"Paper\";i:29;s:6:\"Wooden\";i:30;s:4:\"Wood\";i:31;s:3:\"Cup\";i:32;s:6:\"Coffee\";i:33;s:3:\"Mug\";i:34;s:3:\"Hot\";i:35;s:8:\"Beverage\";i:36;s:5:\"Black\";i:37;s:11:\"Eye Glasses\";i:38;s:7:\"Reading\";i:39;s:7:\"Glasses\";i:40;s:8:\"Eye Wear\";i:41;s:5:\"Diary\";i:42;s:6:\"Agenda\";i:43;s:7:\"Planner\";i:44;s:9:\"Organizer\";i:45;s:10:\"Organizing\";i:46;s:8:\"Planning\";i:47;s:7:\"Digital\";i:48;s:19:\"Digitally Generated\";i:49;s:16:\"Computer Graphic\";i:50;s:6:\"Doodle\";i:51;s:10:\"Hand Drawn\";i:52;s:7:\"Drawing\";i:53;s:10:\"Light Bulb\";i:54;s:4:\"Idea\";i:55;s:10:\"Innovation\";i:56;s:8:\"Innovate\";i:57;s:8:\"Creative\";i:58;s:8:\"Solution\";i:59;s:7:\"Concept\";i:60;s:11:\"Inspiration\";}}s:14:\"original_image\";s:11:\"design2.jpg\";}'),
(40, 15, '_thumbnail_id', '16'),
(41, 18, '_edit_last', '1'),
(42, 18, '_edit_lock', '1772713259:1'),
(46, 15, 'footnotes', ''),
(48, 21, 'footnotes', ''),
(50, 15, '_edit_last', '1'),
(53, 15, 'software', 'Visual Studio Code, SASS, PHP & WordPress'),
(54, 15, '_software', 'field_69a81e771d8fd'),
(55, 15, 'tipo_de_trabajo', 'Diseño & Desarrollo Web'),
(56, 15, '_tipo_de_trabajo', 'field_69a81ea91d8fe'),
(57, 21, 'software', 'S Code, SASS, PHP & WordPress'),
(58, 21, '_software', 'field_69a81e771d8fd'),
(59, 21, 'tipo_de_trabajo', 'Diseño & Desarrollo Web'),
(60, 21, '_tipo_de_trabajo', 'field_69a81ea91d8fe'),
(65, 22, 'footnotes', ''),
(69, 22, 'software', 'Visual Studio Code, SASS, PHP & WordPress'),
(70, 22, '_software', 'field_69a81e771d8fd'),
(71, 22, 'tipo_de_trabajo', 'Diseño & Desarrollo Web'),
(72, 22, '_tipo_de_trabajo', 'field_69a81ea91d8fe'),
(77, 24, 'footnotes', ''),
(80, 24, 'software', 'Visual Studio Code, SASS, PHP & WordPress'),
(81, 24, '_software', 'field_69a81e771d8fd'),
(82, 24, 'tipo_de_trabajo', 'Diseño & Desarrollo Web'),
(83, 24, '_tipo_de_trabajo', 'field_69a81ea91d8fe'),
(88, 25, '_menu_item_type', 'custom'),
(89, 25, '_menu_item_menu_item_parent', '0'),
(90, 25, '_menu_item_object_id', '25'),
(91, 25, '_menu_item_object', 'custom'),
(92, 25, '_menu_item_target', ''),
(93, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 25, '_menu_item_xfn', ''),
(95, 25, '_menu_item_url', 'http://localhost/proyecto-daw/#proyectos'),
(97, 26, '_menu_item_type', 'custom'),
(98, 26, '_menu_item_menu_item_parent', '0'),
(99, 26, '_menu_item_object_id', '26'),
(100, 26, '_menu_item_object', 'custom'),
(101, 26, '_menu_item_target', ''),
(102, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 26, '_menu_item_xfn', ''),
(104, 26, '_menu_item_url', 'http://localhost/proyecto-daw/#servicios'),
(106, 27, '_menu_item_type', 'custom'),
(107, 27, '_menu_item_menu_item_parent', '0'),
(108, 27, '_menu_item_object_id', '27'),
(109, 27, '_menu_item_object', 'custom'),
(110, 27, '_menu_item_target', ''),
(111, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 27, '_menu_item_xfn', ''),
(113, 27, '_menu_item_url', 'http://localhost/proyecto-daw/#proyectos'),
(115, 28, '_menu_item_type', 'custom'),
(116, 28, '_menu_item_menu_item_parent', '0'),
(117, 28, '_menu_item_object_id', '28'),
(118, 28, '_menu_item_object', 'custom'),
(119, 28, '_menu_item_target', ''),
(120, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 28, '_menu_item_xfn', ''),
(122, 28, '_menu_item_url', 'http://localhost/proyecto-daw/#servicios'),
(124, 29, '_form', '<div class=\"row\">\n    <div class=\"col-md-6 mb-3\">\n        <label class=\"form-label text-dark fw-bold\">Nombre</label>\n        [text* your-name class:form-control placeholder \"Ej: Juan Pérez\"]\n    </div>\n    <div class=\"col-md-6 mb-3\">\n        <label class=\"form-label text-dark fw-bold\">Email</label>\n        [email* your-email class:form-control placeholder \"tu@email.com\"]\n    </div>\n</div>\n\n<div class=\"mb-3\">\n    <label class=\"form-label text-dark fw-bold\">Asunto</label>\n    [text your-subject class:form-control placeholder \"¿En qué puedo ayudarte?\"]\n</div>\n\n<div class=\"mb-3\">\n    <label class=\"form-label text-dark fw-bold\">Mensaje</label>\n    [textarea your-message class:form-control rows:5 placeholder \"Cuéntame tu idea...\"]\n</div>\n\n<div class=\"d-grid\">\n    [submit class:btn class:btn-primary class:btn-lg \"Enviar Mensaje\"]\n</div>'),
(125, 29, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"[_site_title] «[your-subject]»\";s:6:\"sender\";s:43:\"[_site_title] <david.arandalegal@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:195:\"De: [your-name] [your-email]\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEsto es un aviso de que se ha enviado un formulario de contacto en tu web ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(126, 29, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"[_site_title] «[your-subject]»\";s:6:\"sender\";s:43:\"[_site_title] <david.arandalegal@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:268:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste correo electrónico es un acuse de recibo del envío de tu formulario de contacto en tu web ([_site_title] [_site_url]) en la que se usó tu dirección de correo electrónico. Si no eres tú, por favor, ignora este mensaje.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(127, 29, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:94:\"Ha ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:79:\"Uno o más campos tienen un error. Por favor, revísalos e inténtalo de nuevo.\";s:4:\"spam\";s:94:\"Ha ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:30:\"Por favor, rellena este campo.\";s:16:\"invalid_too_long\";s:45:\"Este campo tiene una entrada demasiado larga.\";s:17:\"invalid_too_short\";s:45:\"Este campo tiene una entrada demasiado corta.\";s:13:\"upload_failed\";s:53:\"Ha ocurrido un error desconocido al subir el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tienes permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:38:\"El archivo subido es demasiado grande.\";s:23:\"upload_failed_php_error\";s:41:\"Ha ocurrido un error al subir el archivo.\";s:12:\"invalid_date\";s:57:\"Por favor, introduce una fecha con el formato YYYY-MM-DD.\";s:14:\"date_too_early\";s:46:\"Este campo tiene una fecha demasiado temprana.\";s:13:\"date_too_late\";s:45:\"Este campo tiene una fecha demasiado tardía.\";s:14:\"invalid_number\";s:32:\"Por favor, introduce un número.\";s:16:\"number_too_small\";s:47:\"Este campo tiene un número demasiado pequeño.\";s:16:\"number_too_large\";s:45:\"Este campo tiene un número demasiado grande.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:13:\"invalid_email\";s:59:\"Por favor, introduce una dirección de correo electrónico.\";s:11:\"invalid_url\";s:29:\"Por favor, introduce una URL.\";s:11:\"invalid_tel\";s:45:\"Por favor, introduce un número de teléfono.\";}'),
(128, 29, '_additional_settings', ''),
(129, 29, '_locale', 'es_ES'),
(130, 29, '_hash', 'ddd71f70b630809fa48d1ec4d74e99868f02cc4c5a0b7c512c3ebd56fac5e992'),
(131, 30, '_edit_lock', '1772633371:1'),
(132, 30, '_edit_last', '1'),
(133, 30, 'titulo_hero', ''),
(134, 30, '_titulo_hero', 'field_69a80cfbf4705'),
(135, 30, 'enlace_agencia', ''),
(136, 30, '_enlace_agencia', 'field_69a80d34f4706'),
(137, 30, 'imagen_del_hero', ''),
(138, 30, '_imagen_del_hero', 'field_69a80da4f4707'),
(139, 31, 'titulo_hero', ''),
(140, 31, '_titulo_hero', 'field_69a80cfbf4705'),
(141, 31, 'enlace_agencia', ''),
(142, 31, '_enlace_agencia', 'field_69a80d34f4706'),
(143, 31, 'imagen_del_hero', ''),
(144, 31, '_imagen_del_hero', 'field_69a80da4f4707'),
(145, 32, '_menu_item_type', 'post_type'),
(146, 32, '_menu_item_menu_item_parent', '0'),
(147, 32, '_menu_item_object_id', '30'),
(148, 32, '_menu_item_object', 'page'),
(149, 32, '_menu_item_target', ''),
(150, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 32, '_menu_item_xfn', ''),
(152, 32, '_menu_item_url', ''),
(162, 34, '_edit_lock', '1772712272:1'),
(163, 35, '_edit_lock', '1772718609:1'),
(164, 35, '_edit_last', '1'),
(165, 35, 'software', 'Sass, Css, Wordpress, PHP'),
(166, 35, '_software', 'field_69a81e771d8fd'),
(167, 35, 'tipo_de_trabajo', 'Desarrollo Web'),
(168, 35, '_tipo_de_trabajo', 'field_69a81ea91d8fe'),
(169, 35, 'rol_en_el_proyecto', 'Desarrollador'),
(170, 35, '_rol_en_el_proyecto', 'field_69a97200f9c6e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2026-03-03 13:38:37', '2026-03-03 12:38:37', '<!-- wp:paragraph -->\n<p>Te damos la bienvenida a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2026-03-03 13:38:37', '2026-03-03 12:38:37', '', 0, 'http://localhost/proyecto-daw/?p=1', 0, 'post', '', 1),
(2, 1, '2026-03-03 13:38:37', '2026-03-03 12:38:37', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>¡Hola! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/proyecto-daw/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2026-03-03 13:38:37', '2026-03-03 12:38:37', '', 0, 'http://localhost/proyecto-daw/?page_id=2', 0, 'page', '', 0),
(3, 1, '2026-03-03 13:38:37', '2026-03-03 12:38:37', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quiénes somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://localhost/proyecto-daw.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentarios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Medios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenido incrustado de otros sitios web</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Con quién compartimos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cuánto tiempo conservamos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qué derechos tienes sobre tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dónde se envían tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2026-03-03 13:38:37', '2026-03-03 12:38:37', '', 0, 'http://localhost/proyecto-daw/?page_id=3', 0, 'page', '', 0),
(4, 0, '2026-03-03 13:38:38', '2026-03-03 12:38:38', '<!-- wp:page-list /-->', 'Navegación', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2026-03-03 13:38:38', '2026-03-03 12:38:38', '', 0, 'http://localhost/proyecto-daw/index.php/2026/03/03/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2026-03-03 13:38:56', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-03-03 13:38:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/proyecto-daw/?p=5', 0, 'post', '', 0),
(6, 1, '2026-03-04 11:48:49', '2026-03-04 10:48:49', 'a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}', 'Sección Hero', 'seccion-hero', 'publish', 'closed', 'closed', '', 'group_69a80cfab86de', '', '', '2026-03-04 11:48:49', '2026-03-04 10:48:49', '', 0, 'http://localhost/proyecto-daw/?post_type=acf-field-group&#038;p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2026-03-04 11:48:49', '2026-03-04 10:48:49', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Título Hero', 'titulo_hero', 'publish', 'closed', 'closed', '', 'field_69a80cfbf4705', '', '', '2026-03-04 11:48:49', '2026-03-04 10:48:49', '', 6, 'http://localhost/proyecto-daw/?post_type=acf-field&p=7', 0, 'acf-field', '', 0),
(8, 1, '2026-03-04 11:48:49', '2026-03-04 10:48:49', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Enlace Agencia', 'enlace_agencia', 'publish', 'closed', 'closed', '', 'field_69a80d34f4706', '', '', '2026-03-04 11:48:49', '2026-03-04 10:48:49', '', 6, 'http://localhost/proyecto-daw/?post_type=acf-field&p=8', 1, 'acf-field', '', 0),
(9, 1, '2026-03-04 11:48:49', '2026-03-04 10:48:49', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Imagen del Hero', 'imagen_del_hero', 'publish', 'closed', 'closed', '', 'field_69a80da4f4707', '', '', '2026-03-04 11:48:49', '2026-03-04 10:48:49', '', 6, 'http://localhost/proyecto-daw/?post_type=acf-field&p=9', 2, 'acf-field', '', 0),
(10, 1, '2026-03-04 11:50:40', '2026-03-04 10:50:40', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2026-03-05 11:03:39', '2026-03-05 10:03:39', '', 0, 'http://localhost/proyecto-daw/?page_id=10', 0, 'page', '', 0),
(11, 1, '2026-03-04 11:50:40', '2026-03-04 10:50:40', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-03-04 11:50:40', '2026-03-04 10:50:40', '', 10, 'http://localhost/proyecto-daw/?p=11', 0, 'revision', '', 0),
(13, 1, '2026-03-04 11:53:22', '2026-03-04 10:53:22', '', 'digital composite of business graphics with office background', 'digital composite of business graphics with office background', 'inherit', 'open', 'closed', '', 'digital-composite-of-business-graphics-with-office-background', '', '', '2026-03-04 11:53:22', '2026-03-04 10:53:22', '', 10, 'http://localhost/proyecto-daw/wp-content/uploads/2026/03/design.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2026-03-04 11:53:53', '2026-03-04 10:53:53', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-03-04 11:53:53', '2026-03-04 10:53:53', '', 10, 'http://localhost/proyecto-daw/?p=14', 0, 'revision', '', 0),
(15, 1, '2026-03-04 12:36:08', '2026-03-04 11:36:08', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">\"En este proyecto, transformamos una maqueta estática de HTML y CSS en un <strong>ecosistema dinámico de WordPress</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">El reto principal fue crear un diseño fresco y actualizado mientras se integraban herramientas avanzadas como <strong>ACF (Advanced Custom Fields)</strong> para que el cliente pueda gestionar el contenido sin tocar una sola línea de código. Se implementó una arquitectura de plantillas limpia, separando la lógica en <code>header.php</code>, <code>footer.php</code> y <code>single.php</code>, y optimizando el rendimiento mediante el uso de un <strong>The Loop</strong> personalizado.\"</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->', 'Desarrollo Web - ANIMO Diseño y Comunicación.', '', 'publish', 'open', 'open', '', 'prueba', '', '', '2026-03-04 13:14:09', '2026-03-04 12:14:09', '', 0, 'http://localhost/proyecto-daw/?p=15', 0, 'post', '', 0),
(16, 1, '2026-03-04 12:35:48', '2026-03-04 11:35:48', '', 'digital composite of business graphics with office background', 'digital composite of business graphics with office background', 'inherit', 'open', 'closed', '', 'digital-composite-of-business-graphics-with-office-background-2', '', '', '2026-03-04 12:35:48', '2026-03-04 11:35:48', '', 15, 'http://localhost/proyecto-daw/wp-content/uploads/2026/03/design2.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2026-03-04 12:36:08', '2026-03-04 11:36:08', '<!-- wp:paragraph -->\n<p>Esto es una prueba de la función The_loop.</p>\n<!-- /wp:paragraph -->', 'Prueba', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-03-04 12:36:08', '2026-03-04 11:36:08', '', 15, 'http://localhost/proyecto-daw/?p=17', 0, 'revision', '', 0),
(18, 1, '2026-03-04 13:00:26', '2026-03-04 12:00:26', 'a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"proyectos\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}', 'Detalles del Proyecto', 'detalles-del-proyecto', 'publish', 'closed', 'closed', '', 'group_69a81e77678ca', '', '', '2026-03-05 13:08:35', '2026-03-05 12:08:35', '', 0, 'http://localhost/proyecto-daw/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2026-03-04 13:00:26', '2026-03-04 12:00:26', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Software', 'software', 'publish', 'closed', 'closed', '', 'field_69a81e771d8fd', '', '', '2026-03-04 13:00:26', '2026-03-04 12:00:26', '', 18, 'http://localhost/proyecto-daw/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2026-03-04 13:00:26', '2026-03-04 12:00:26', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Tipo de Trabajo', 'tipo_de_trabajo', 'publish', 'closed', 'closed', '', 'field_69a81ea91d8fe', '', '', '2026-03-04 13:00:26', '2026-03-04 12:00:26', '', 18, 'http://localhost/proyecto-daw/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2026-03-04 13:09:17', '2026-03-04 12:09:17', '<!-- wp:paragraph -->\n<p>Esto es una prueba de la función The_loop.</p>\n<!-- /wp:paragraph -->', 'Prueba', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-03-04 13:09:17', '2026-03-04 12:09:17', '', 15, 'http://localhost/proyecto-daw/?p=21', 0, 'revision', '', 0),
(22, 1, '2026-03-04 13:09:57', '2026-03-04 12:09:57', '<!-- wp:paragraph -->\n<p>Esto es una prueba de la función The_loop.</p>\n<!-- /wp:paragraph -->', 'Prueba', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-03-04 13:09:57', '2026-03-04 12:09:57', '', 15, 'http://localhost/proyecto-daw/?p=22', 0, 'revision', '', 0),
(24, 1, '2026-03-04 13:13:58', '2026-03-04 12:13:58', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">\"En este proyecto, transformamos una maqueta estática de HTML y CSS en un <strong>ecosistema dinámico de WordPress</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">El reto principal fue crear un diseño fresco y actualizado mientras se integraban herramientas avanzadas como <strong>ACF (Advanced Custom Fields)</strong> para que el cliente pueda gestionar el contenido sin tocar una sola línea de código. Se implementó una arquitectura de plantillas limpia, separando la lógica en <code>header.php</code>, <code>footer.php</code> y <code>single.php</code>, y optimizando el rendimiento mediante el uso de un <strong>The Loop</strong> personalizado.\"</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->', 'Desarrollo Web - ANIMO Diseño y Comunicación.', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-03-04 13:13:58', '2026-03-04 12:13:58', '', 15, 'http://localhost/proyecto-daw/?p=24', 0, 'revision', '', 0),
(25, 1, '2026-03-04 14:49:41', '2026-03-04 12:28:29', '', 'Mis Proyectos', '', 'publish', 'closed', 'closed', '', 'mis-proyectos', '', '', '2026-03-04 14:49:41', '2026-03-04 13:49:41', '', 0, 'http://localhost/proyecto-daw/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2026-03-04 14:49:41', '2026-03-04 12:28:29', '', 'Qué hacemos', '', 'publish', 'closed', 'closed', '', 'que-hacemos', '', '', '2026-03-04 14:49:41', '2026-03-04 13:49:41', '', 0, 'http://localhost/proyecto-daw/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2026-03-04 13:42:40', '2026-03-04 12:42:40', '', 'Mis Proyectos', '', 'publish', 'closed', 'closed', '', 'mis-proyectos-2', '', '', '2026-03-04 13:42:40', '2026-03-04 12:42:40', '', 0, 'http://localhost/proyecto-daw/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2026-03-04 13:42:40', '2026-03-04 12:42:40', '', 'Qué hacemos', '', 'publish', 'closed', 'closed', '', 'que-hacemos-2', '', '', '2026-03-04 13:42:40', '2026-03-04 12:42:40', '', 0, 'http://localhost/proyecto-daw/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2026-03-04 14:18:22', '2026-03-04 13:18:22', '<div class=\"row\">\r\n    <div class=\"col-md-6 mb-3\">\r\n        <label class=\"form-label text-dark fw-bold\">Nombre</label>\r\n        [text* your-name class:form-control placeholder \"Ej: Juan Pérez\"]\r\n    </div>\r\n    <div class=\"col-md-6 mb-3\">\r\n        <label class=\"form-label text-dark fw-bold\">Email</label>\r\n        [email* your-email class:form-control placeholder \"tu@email.com\"]\r\n    </div>\r\n</div>\r\n\r\n<div class=\"mb-3\">\r\n    <label class=\"form-label text-dark fw-bold\">Asunto</label>\r\n    [text your-subject class:form-control placeholder \"¿En qué puedo ayudarte?\"]\r\n</div>\r\n\r\n<div class=\"mb-3\">\r\n    <label class=\"form-label text-dark fw-bold\">Mensaje</label>\r\n    [textarea your-message class:form-control rows:5 placeholder \"Cuéntame tu idea...\"]\r\n</div>\r\n\r\n<div class=\"d-grid\">\r\n    [submit class:btn class:btn-primary class:btn-lg \"Enviar Mensaje\"]\r\n</div>\n1\n[_site_title] «[your-subject]»\n[_site_title] <david.arandalegal@gmail.com>\n[_site_admin_email]\nDe: [your-name] [your-email]\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEsto es un aviso de que se ha enviado un formulario de contacto en tu web ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n1\n1\n\n[_site_title] «[your-subject]»\n[_site_title] <david.arandalegal@gmail.com>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste correo electrónico es un acuse de recibo del envío de tu formulario de contacto en tu web ([_site_title] [_site_url]) en la que se usó tu dirección de correo electrónico. Si no eres tú, por favor, ignora este mensaje.\nReply-To: [_site_admin_email]\n\n1\n1\nGracias por tu mensaje. Ha sido enviado.\nHa ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor, revísalos e inténtalo de nuevo.\nHa ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nPor favor, rellena este campo.\nEste campo tiene una entrada demasiado larga.\nEste campo tiene una entrada demasiado corta.\nHa ocurrido un error desconocido al subir el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo subido es demasiado grande.\nHa ocurrido un error al subir el archivo.\nPor favor, introduce una fecha con el formato YYYY-MM-DD.\nEste campo tiene una fecha demasiado temprana.\nEste campo tiene una fecha demasiado tardía.\nPor favor, introduce un número.\nEste campo tiene un número demasiado pequeño.\nEste campo tiene un número demasiado grande.\nLa respuesta al cuestionario no es correcta.\nPor favor, introduce una dirección de correo electrónico.\nPor favor, introduce una URL.\nPor favor, introduce un número de teléfono.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2026-03-04 15:01:12', '2026-03-04 14:01:12', '', 0, 'http://localhost/proyecto-daw/?post_type=wpcf7_contact_form&#038;p=29', 0, 'wpcf7_contact_form', '', 0),
(30, 1, '2026-03-04 14:25:29', '2026-03-04 13:25:29', '<!-- wp:shortcode -->\n[contact-form-7 id=\"ddd71f7\" title=\"Formulario de contacto 1\"]\n<!-- /wp:shortcode -->', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2026-03-04 15:05:46', '2026-03-04 14:05:46', '', 0, 'http://localhost/proyecto-daw/?page_id=30', 0, 'page', '', 0),
(31, 1, '2026-03-04 14:25:29', '2026-03-04 13:25:29', '<!-- wp:shortcode -->\n[contact-form-7 id=\"ddd71f7\" title=\"Formulario de contacto 1\"]\n<!-- /wp:shortcode -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2026-03-04 14:25:29', '2026-03-04 13:25:29', '', 30, 'http://localhost/proyecto-daw/?p=31', 0, 'revision', '', 0),
(32, 1, '2026-03-04 14:49:41', '2026-03-04 13:49:41', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2026-03-04 14:49:41', '2026-03-04 13:49:41', '', 0, 'http://localhost/proyecto-daw/?p=32', 3, 'nav_menu_item', '', 0),
(34, 1, '2026-03-05 13:02:46', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-03-05 13:02:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/proyecto-daw/?post_type=proyectos&p=34', 0, 'proyectos', '', 0),
(35, 1, '2026-03-05 13:05:12', '2026-03-05 12:05:12', '<!-- wp:paragraph -->\n<p>\"Este proyecto consistió en la creación de un sistema de componentes reutilizables mediante <strong>SASS</strong> y <strong>Custom Properties (CSS Variables)</strong>. El objetivo fue unificar la identidad visual de la agencia, asegurando que todos los desarrollos sigan una jerarquía visual limpia y cumplan con los estándares de rendimiento que medimos con <strong>Query Monitor</strong>.\"</p>\n<!-- /wp:paragraph -->', 'Ecosistema Digital - UI Kit', '', 'publish', 'closed', 'closed', '', 'ecosistema-digital-animo-ui-kit', '', '', '2026-03-05 14:47:37', '2026-03-05 13:47:37', '', 0, 'http://localhost/proyecto-daw/?post_type=proyectos&#038;p=35', 0, 'proyectos', '', 0),
(36, 1, '2026-03-05 13:07:59', '2026-03-05 12:07:59', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Rol en el proyecto', 'rol_en_el_proyecto', 'publish', 'closed', 'closed', '', 'field_69a97200f9c6e', '', '', '2026-03-05 13:07:59', '2026-03-05 12:07:59', '', 18, 'http://localhost/proyecto-daw/?post_type=acf-field&p=36', 2, 'acf-field', '', 0),
(39, 1, '2026-03-05 14:22:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-03-05 14:22:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/proyecto-daw/?post_type=acf-taxonomy&p=39', 0, 'acf-taxonomy', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menú Principal', 'menu-principal', 0),
(3, 'Menú al Pie', 'menu-al-pie', 0),
(4, 'Desarrollo Web', 'desarrollo-web', 0),
(5, 'Diseño Web', 'diseno-web', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 1, 0),
(25, 2, 0),
(26, 2, 0),
(27, 3, 0),
(28, 3, 0),
(32, 2, 0),
(35, 4, 0),
(35, 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'tipo_proyecto', '', 0, 1),
(5, 5, 'tipo_proyecto', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:19:\"metaBoxesMainIsOpen\";b:1;}s:9:\"_modified\";s:24:\"2026-03-05T13:47:35.778Z\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1772621628'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '2'),
(26, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"6.1\";}'),
(27, 1, 'session_tokens', 'a:1:{s:64:\"9ff5660f8d9631b70515e7ed4a5141f2ea4abda545d5885fb23cc8eadd269019\";a:4:{s:10:\"expiration\";i:1772875596;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:144.0) Gecko/20100101 Firefox/144.0\";s:5:\"login\";i:1772702796;}}'),
(28, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(29, 1, 'acf_user_settings', 'a:2:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;}'),
(30, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(31, 1, 'closedpostboxes_acf-taxonomy', 'a:0:{}'),
(32, 1, 'metaboxhidden_acf-taxonomy', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$wp$2y$10$S3JmF51Inkr7M/EE8fv5RuXoMg/BBs7hNyh63I5kJT0D8nMOseuG6', 'root', 'david.arandalegal@gmail.com', 'http://localhost/proyecto-daw', '2026-03-03 12:38:37', '', 0, 'root');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `type_status_author` (`post_type`,`post_status`,`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

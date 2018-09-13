-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2018 at 12:41 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charm`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-08 16:07:40', '2018-09-08 16:07:40', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://charm-theme.local', 'yes'),
(2, 'home', 'http://charm-theme.local', 'yes'),
(3, 'blogname', 'charm', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dinhnv@vnext.com.vn', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:33:\"duplicate-post/duplicate-post.php\";i:3;s:21:\"tlp-team/tlp-team.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:62:\"/var/www/biznext/charm-theme/wp-content/themes/charm/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'charm', 'yes'),
(41, 'stylesheet', 'charm', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:12:\"SOURCE SMART\";s:4:\"text\";s:386:\" <div class=\"catego_ul\">\r\n  <div class=\"span_login\">\r\n <img class=\"img-responsive\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/03/inforgraphic-email-header.png\">\r\n                                      Sign up to Source Smart on how to hire online and receive a FREE infographic on the Top 10 Keys Skills You Can Outsource To Grow Your Business Today!\r\n </div>  \r\n </div>  \";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:14:\"STAY CONNECTED\";s:4:\"text\";s:397:\"<ul class=\"fb_ul\">\r\n                                    <li><a href=\"\"><i class=\"fa fa-facebook-square\" aria-hidden=\"true\"></i></a></li>\r\n                                    <li><a href=\"\"><i class=\"fa fa-youtube\" aria-hidden=\"true\"></i></a></li>\r\n                                    <li><a href=\"\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a></li>\r\n                                </ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '57', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', '', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:15:\"primary-sidebar\";a:4:{i:0;s:15:\"search_widget-2\";i:1;s:6:\"text-2\";i:2;s:6:\"text-3\";i:3;s:17:\"themecharm_tabs-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1536822462;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1536825288;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536854862;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536854867;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536856346;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(119, '_site_transient_timeout_browser_01fe6d96f512df15cc1b10345d6b37d9', '1537027673', 'no'),
(120, '_site_transient_browser_01fe6d96f512df15cc1b10345d6b37d9', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(136, 'new_admin_email', 'dinhnv@vnext.com.vn', 'yes'),
(142, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536427161;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(146, 'current_theme', 'Charm', 'yes'),
(147, 'theme_mods_charm', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:6:{s:6:\"header\";i:0;s:6:\"footer\";i:0;s:12:\"primary_menu\";i:2;s:29:\"charm_outsourcing_menu_footer\";i:3;s:16:\"main_menu_footer\";i:5;s:18:\"topics_menu_footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(165, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(168, 'recently_activated', 'a:1:{s:20:\"team-members/tmm.php\";i:1536647886;}', 'yes'),
(179, 'tlp_team_installed_version', '2.3', 'yes'),
(180, 'tlp_team_settings', 'a:5:{s:13:\"primary_color\";s:7:\"#0367bf\";s:11:\"feature_img\";a:2:{s:5:\"width\";i:400;s:6:\"height\";i:400;}s:4:\"slug\";s:4:\"team\";s:16:\"link_detail_page\";s:3:\"yes\";s:10:\"custom_css\";N;}', 'yes'),
(181, 'widget_widget_tlpteam', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(182, 'theme_options', 'a:6:{s:26:\"top_bar_right_social_icons\";a:8:{s:8:\"facebook\";s:41:\"https://www.facebook.com/charmoutsourcing\";s:7:\"youtube\";s:41:\"https://www.facebook.com/charmoutsourcing\";s:9:\"instagram\";s:41:\"https://www.facebook.com/charmoutsourcing\";s:8:\"linkedin\";s:41:\"https://www.facebook.com/charmoutsourcing\";s:7:\"twitter\";s:41:\"https://www.facebook.com/charmoutsourcing\";s:5:\"skype\";s:41:\"https://www.facebook.com/charmoutsourcing\";s:9:\"pinterest\";s:41:\"https://www.facebook.com/charmoutsourcing\";s:5:\"vimeo\";s:41:\"https://www.facebook.com/charmoutsourcing\";}s:16:\"banner_on_top_id\";s:3:\"117\";s:13:\"banner_on_top\";s:59:\"http://charm-theme.local/wp-content/uploads/2018/09/f11.jpg\";s:18:\"text_banner_on_top\";s:105:\"FIND OUT HOW SMART BUSINESS PEOPLE ARE MAKING MORE MONEY THAN EVER...ALL WHILE SPENDING LESS TIME WORKING\";s:22:\"text_btn_banner_on_top\";s:27:\"Start outsourcing smart now\";s:22:\"link_btn_banner_on_top\";s:28:\"https://charmoutsourcing.com\";}', 'yes'),
(193, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1536491876;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(197, '_site_transient_timeout_browser_613782f5eec3022d3655b0953c1749a9', '1537152232', 'no'),
(198, '_site_transient_browser_613782f5eec3022d3655b0953c1749a9', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"69.0.3497.81\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(216, 'widget_search_widget', 'a:2:{i:2;a:1:{s:5:\"title\";s:14:\"Search Sidebar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(217, 'widget_themepixels_tabs', 'a:2:{i:2;a:14:{s:19:\"enable_recent_posts\";s:2:\"on\";s:19:\"recent_posts_cat_id\";s:1:\"0\";s:17:\"recent_post_count\";s:1:\"5\";s:28:\"enable_recent_post_thumbnail\";s:2:\"on\";s:23:\"enable_recent_post_meta\";s:2:\"on\";s:20:\"enable_popular_posts\";s:2:\"on\";s:20:\"popular_posts_cat_id\";s:1:\"0\";s:23:\"poular_posts_time_range\";s:1:\"0\";s:18:\"popular_post_count\";s:1:\"5\";s:29:\"enable_popular_post_thumbnail\";s:2:\"on\";s:24:\"enable_popular_post_meta\";s:2:\"on\";s:22:\"enable_recent_comments\";s:2:\"on\";s:27:\"show_recent_comments_avatar\";s:2:\"on\";s:21:\"recent_comments_count\";s:1:\"5\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(218, 'widget_themecharm_tabs', 'a:2:{i:2;a:14:{s:19:\"enable_recent_posts\";s:2:\"on\";s:19:\"recent_posts_cat_id\";s:1:\"0\";s:17:\"recent_post_count\";s:1:\"5\";s:28:\"enable_recent_post_thumbnail\";s:2:\"on\";s:23:\"enable_recent_post_meta\";s:2:\"on\";s:20:\"enable_popular_posts\";s:2:\"on\";s:20:\"popular_posts_cat_id\";s:1:\"0\";s:23:\"poular_posts_time_range\";s:1:\"0\";s:18:\"popular_post_count\";s:1:\"5\";s:29:\"enable_popular_post_thumbnail\";s:2:\"on\";s:24:\"enable_popular_post_meta\";s:2:\"on\";s:22:\"enable_recent_comments\";s:2:\"on\";s:27:\"show_recent_comments_avatar\";s:2:\"on\";s:21:\"recent_comments_count\";s:1:\"5\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(221, 'category_children', 'a:0:{}', 'yes'),
(238, 'duplicate_post_copytitle', '1', 'yes'),
(239, 'duplicate_post_copydate', '', 'yes'),
(240, 'duplicate_post_copystatus', '', 'yes'),
(241, 'duplicate_post_copyslug', '', 'yes'),
(242, 'duplicate_post_copyexcerpt', '1', 'yes'),
(243, 'duplicate_post_copycontent', '1', 'yes'),
(244, 'duplicate_post_copythumbnail', '1', 'yes'),
(245, 'duplicate_post_copytemplate', '1', 'yes'),
(246, 'duplicate_post_copyformat', '1', 'yes'),
(247, 'duplicate_post_copyauthor', '', 'yes'),
(248, 'duplicate_post_copypassword', '', 'yes'),
(249, 'duplicate_post_copyattachments', '', 'yes'),
(250, 'duplicate_post_copychildren', '', 'yes'),
(251, 'duplicate_post_copycomments', '', 'yes'),
(252, 'duplicate_post_copymenuorder', '1', 'yes'),
(253, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(254, 'duplicate_post_blacklist', '', 'yes'),
(255, 'duplicate_post_types_enabled', 'a:5:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:11:\"testimonial\";i:3;s:13:\"charm_package\";i:4;s:7:\"service\";}', 'yes'),
(256, 'duplicate_post_show_row', '1', 'yes'),
(257, 'duplicate_post_show_adminbar', '1', 'yes'),
(258, 'duplicate_post_show_submitbox', '1', 'yes'),
(259, 'duplicate_post_show_bulkactions', '1', 'yes'),
(260, 'duplicate_post_version', '3.2.2', 'yes'),
(261, 'duplicate_post_show_notice', '1', 'no'),
(262, 'duplicate_post_title_prefix', '', 'yes'),
(263, 'duplicate_post_title_suffix', '', 'yes'),
(264, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(265, 'duplicate_post_roles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}', 'yes'),
(276, 'wpseo', 'a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"8.1.2\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1536597145;}', 'yes'),
(277, 'wpseo_titles', 'a:97:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:10:\"title-team\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-team\";s:0:\"\";s:12:\"noindex-team\";b:0;s:13:\"showdate-team\";b:0;s:23:\"display-metabox-pt-team\";b:1;s:17:\"title-testimonial\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:20:\"metadesc-testimonial\";s:0:\"\";s:19:\"noindex-testimonial\";b:0;s:20:\"showdate-testimonial\";b:0;s:30:\"display-metabox-pt-testimonial\";b:1;s:19:\"title-charm_package\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:22:\"metadesc-charm_package\";s:0:\"\";s:21:\"noindex-charm_package\";b:0;s:22:\"showdate-charm_package\";b:0;s:32:\"display-metabox-pt-charm_package\";b:1;s:13:\"title-service\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-service\";s:0:\"\";s:15:\"noindex-service\";b:0;s:16:\"showdate-service\";b:0;s:26:\"display-metabox-pt-service\";b:1;s:27:\"title-ptarchive-testimonial\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:30:\"metadesc-ptarchive-testimonial\";s:0:\"\";s:29:\"bctitle-ptarchive-testimonial\";s:0:\"\";s:29:\"noindex-ptarchive-testimonial\";b:0;s:29:\"title-ptarchive-charm_package\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:32:\"metadesc-ptarchive-charm_package\";s:0:\"\";s:31:\"bctitle-ptarchive-charm_package\";s:0:\"\";s:31:\"noindex-ptarchive-charm_package\";b:0;s:23:\"title-ptarchive-service\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-service\";s:0:\"\";s:25:\"bctitle-ptarchive-service\";s:0:\"\";s:25:\"noindex-ptarchive-service\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;}', 'yes'),
(278, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(279, 'wpseo_flush_rewrite', '1', 'yes'),
(280, '_transient_timeout_wpseo_link_table_inaccessible', '1568133146', 'no'),
(281, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(282, '_transient_timeout_wpseo_meta_table_inaccessible', '1568133146', 'no'),
(283, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(284, 'rewrite_rules', '', 'yes'),
(294, 'wpseo_sitemap_1_cache_validator', '2U7dl', 'no'),
(295, 'wpseo_sitemap_page_cache_validator', '2U7eh', 'no'),
(336, '_transient_timeout_wpseo-statistics-totals', '1536809678', 'no'),
(337, '_transient_wpseo-statistics-totals', 'a:1:{i:1;a:2:{s:6:\"scores\";a:1:{i:0;a:4:{s:8:\"seo_rank\";s:2:\"na\";s:5:\"label\";s:46:\"Posts <strong>without</strong> a focus keyword\";s:5:\"count\";s:1:\"7\";s:4:\"link\";s:101:\"http://charm-theme.local/wp-admin/edit.php?post_status=publish&#038;post_type=post&#038;seo_filter=na\";}}s:8:\"division\";a:5:{s:3:\"bad\";i:0;s:2:\"ok\";i:0;s:4:\"good\";i:0;s:2:\"na\";i:1;s:7:\"noindex\";i:0;}}}', 'no'),
(366, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1536812231;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-11 09:51:37\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(367, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1536812340;s:7:\"checked\";a:6:{s:5:\"charm\";s:3:\"1.5\";s:9:\"smartblog\";s:3:\"2.0\";s:9:\"truvatour\";s:5:\"1.1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(368, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1536812239;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.4\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.2\";s:9:\"hello.php\";s:3:\"1.7\";s:21:\"tlp-team/tlp-team.php\";s:3:\"2.3\";s:20:\"team-members/tmm.php\";s:5:\"4.1.1\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"8.1.2\";}s:8:\"response\";a:1:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:3:\"8.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wordpress-seo.8.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:13:\"wordpress-seo\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"7.6.1\";s:7:\"updated\";s:19:\"2018-05-24 05:27:35\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/plugin/wordpress-seo/7.6.1/vi.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"tlp-team/tlp-team.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/tlp-team\";s:4:\"slug\";s:8:\"tlp-team\";s:6:\"plugin\";s:21:\"tlp-team/tlp-team.php\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/tlp-team/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/tlp-team.2.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/tlp-team/assets/icon-128x128.png?rev=1780510\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/tlp-team/assets/banner-1544x500.png?rev=1926626\";s:2:\"1x\";s:63:\"https://ps.w.org/tlp-team/assets/banner-772x250.png?rev=1926626\";}s:11:\"banners_rtl\";a:0:{}}s:20:\"team-members/tmm.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/team-members\";s:4:\"slug\";s:12:\"team-members\";s:6:\"plugin\";s:20:\"team-members/tmm.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/team-members/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/team-members.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/team-members/assets/icon-256x256.png?rev=1849322\";s:2:\"1x\";s:65:\"https://ps.w.org/team-members/assets/icon-128x128.png?rev=1849322\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/team-members/assets/banner-772x250.png?rev=1849322\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(370, 'auto_updater.lock', '1536812236', 'no'),
(371, '_site_transient_timeout_theme_roots', '1536814138', 'no'),
(372, '_site_transient_theme_roots', 'a:7:{s:5:\"charm\";s:7:\"/themes\";s:14:\"charm_html/css\";s:7:\"/themes\";s:9:\"smartblog\";s:7:\"/themes\";s:9:\"truvatour\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1536471961:1'),
(36, 10, '_menu_item_type', 'custom'),
(37, 10, '_menu_item_menu_item_parent', '0'),
(38, 10, '_menu_item_object_id', '10'),
(39, 10, '_menu_item_object', 'custom'),
(40, 10, '_menu_item_target', ''),
(41, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 10, '_menu_item_xfn', ''),
(43, 10, '_menu_item_url', 'http://bbnerds.com/charm/service.php'),
(44, 11, '_menu_item_type', 'custom'),
(45, 11, '_menu_item_menu_item_parent', '0'),
(46, 11, '_menu_item_object_id', '11'),
(47, 11, '_menu_item_object', 'custom'),
(48, 11, '_menu_item_target', ''),
(49, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 11, '_menu_item_xfn', ''),
(51, 11, '_menu_item_url', 'http://bbnerds.com/charm/service.php'),
(52, 12, '_menu_item_type', 'custom'),
(53, 12, '_menu_item_menu_item_parent', '0'),
(54, 12, '_menu_item_object_id', '12'),
(55, 12, '_menu_item_object', 'custom'),
(56, 12, '_menu_item_target', ''),
(57, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 12, '_menu_item_xfn', ''),
(59, 12, '_menu_item_url', 'http://bbnerds.com/charm/service.php'),
(60, 5, '_wp_trash_meta_status', 'publish'),
(61, 5, '_wp_trash_meta_time', '1536471999'),
(62, 13, '_edit_last', '1'),
(63, 13, '_edit_lock', '1536575377:1'),
(64, 13, '_tmm_head', 'a:1:{i:0;a:15:{s:14:\"_tmm_firstname\";s:4:\"dinh\";s:13:\"_tmm_lastname\";s:1:\"1\";s:8:\"_tmm_job\";s:1:\"2\";s:9:\"_tmm_desc\";s:0:\"\";s:10:\"_tmm_photo\";s:0:\"\";s:14:\"_tmm_photo_url\";s:0:\"\";s:13:\"_tmm_sc_type1\";s:9:\"pinterest\";s:14:\"_tmm_sc_title1\";s:0:\"\";s:12:\"_tmm_sc_url1\";s:0:\"\";s:13:\"_tmm_sc_type2\";s:4:\"nada\";s:14:\"_tmm_sc_title2\";s:0:\"\";s:12:\"_tmm_sc_url2\";s:0:\"\";s:13:\"_tmm_sc_type3\";s:4:\"nada\";s:14:\"_tmm_sc_title3\";s:0:\"\";s:12:\"_tmm_sc_url3\";s:0:\"\";}}'),
(65, 13, '_tmm_color', '#333333'),
(66, 13, '_tmm_columns', '3'),
(67, 13, '_tmm_bio_alignment', 'center'),
(68, 13, '_tmm_original_font', 'no'),
(69, 13, '_tmm_piclink_beh', 'new'),
(70, 14, '_edit_last', '1'),
(71, 14, '_edit_lock', '1536575217:1'),
(72, 14, 'short_bio', ''),
(73, 14, 'email', ''),
(74, 14, 'designation', ''),
(75, 14, 'web_url', ''),
(76, 14, 'telephone', ''),
(77, 14, 'location', ''),
(78, 14, 'social', 's:6:\"a:0:{}\";'),
(79, 15, '_edit_last', '1'),
(80, 15, 'short_bio', ''),
(81, 15, 'email', ''),
(82, 15, 'designation', ''),
(83, 15, 'web_url', ''),
(84, 15, 'telephone', ''),
(85, 15, 'location', ''),
(86, 15, 'social', 's:6:\"a:0:{}\";'),
(87, 15, '_edit_lock', '1536648073:1'),
(88, 16, '_edit_last', '1'),
(89, 16, 'short_bio', ''),
(90, 16, 'email', ''),
(91, 16, 'designation', 'CEO & Developers'),
(92, 16, 'web_url', ''),
(93, 16, 'telephone', '+1 323-913-4688'),
(94, 16, 'location', ''),
(95, 16, 'social', 's:6:\"a:0:{}\";'),
(96, 16, '_edit_lock', '1536647936:1'),
(97, 17, '_edit_last', '1'),
(98, 17, '_edit_lock', '1536647018:1'),
(99, 27, '_menu_item_type', 'post_type'),
(100, 27, '_menu_item_menu_item_parent', '0'),
(101, 27, '_menu_item_object_id', '17'),
(102, 27, '_menu_item_object', 'page'),
(103, 27, '_menu_item_target', ''),
(104, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 27, '_menu_item_xfn', ''),
(106, 27, '_menu_item_url', ''),
(108, 28, '_menu_item_type', 'custom'),
(109, 28, '_menu_item_menu_item_parent', '0'),
(110, 28, '_menu_item_object_id', '28'),
(111, 28, '_menu_item_object', 'custom'),
(112, 28, '_menu_item_target', ''),
(113, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 28, '_menu_item_xfn', ''),
(115, 28, '_menu_item_url', 'http://charm-theme.local/'),
(117, 29, '_edit_last', '1'),
(118, 29, '_edit_lock', '1536490302:1'),
(119, 31, '_edit_last', '1'),
(120, 31, '_edit_lock', '1536646986:1'),
(121, 33, '_menu_item_type', 'post_type'),
(122, 33, '_menu_item_menu_item_parent', '0'),
(123, 33, '_menu_item_object_id', '29'),
(124, 33, '_menu_item_object', 'page'),
(125, 33, '_menu_item_target', ''),
(126, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 33, '_menu_item_xfn', ''),
(128, 33, '_menu_item_url', ''),
(130, 34, '_menu_item_type', 'post_type'),
(131, 34, '_menu_item_menu_item_parent', '0'),
(132, 34, '_menu_item_object_id', '29'),
(133, 34, '_menu_item_object', 'page'),
(134, 34, '_menu_item_target', ''),
(135, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 34, '_menu_item_xfn', ''),
(137, 34, '_menu_item_url', ''),
(139, 35, '_menu_item_type', 'post_type'),
(140, 35, '_menu_item_menu_item_parent', '0'),
(141, 35, '_menu_item_object_id', '31'),
(142, 35, '_menu_item_object', 'page'),
(143, 35, '_menu_item_target', ''),
(144, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 35, '_menu_item_xfn', ''),
(146, 35, '_menu_item_url', ''),
(148, 36, '_menu_item_type', 'post_type'),
(149, 36, '_menu_item_menu_item_parent', '0'),
(150, 36, '_menu_item_object_id', '29'),
(151, 36, '_menu_item_object', 'page'),
(152, 36, '_menu_item_target', ''),
(153, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 36, '_menu_item_xfn', ''),
(155, 36, '_menu_item_url', ''),
(157, 37, '_menu_item_type', 'post_type'),
(158, 37, '_menu_item_menu_item_parent', '0'),
(159, 37, '_menu_item_object_id', '29'),
(160, 37, '_menu_item_object', 'page'),
(161, 37, '_menu_item_target', ''),
(162, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 37, '_menu_item_xfn', ''),
(164, 37, '_menu_item_url', ''),
(166, 38, '_menu_item_type', 'post_type'),
(167, 38, '_menu_item_menu_item_parent', '0'),
(168, 38, '_menu_item_object_id', '31'),
(169, 38, '_menu_item_object', 'page'),
(170, 38, '_menu_item_target', ''),
(171, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 38, '_menu_item_xfn', ''),
(173, 38, '_menu_item_url', ''),
(175, 39, '_menu_item_type', 'custom'),
(176, 39, '_menu_item_menu_item_parent', '0'),
(177, 39, '_menu_item_object_id', '39'),
(178, 39, '_menu_item_object', 'custom'),
(179, 39, '_menu_item_target', ''),
(180, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 39, '_menu_item_xfn', ''),
(182, 39, '_menu_item_url', 'http://charm-theme.local/'),
(193, 41, '_menu_item_type', 'post_type'),
(194, 41, '_menu_item_menu_item_parent', '0'),
(195, 41, '_menu_item_object_id', '17'),
(196, 41, '_menu_item_object', 'page'),
(197, 41, '_menu_item_target', ''),
(198, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 41, '_menu_item_xfn', ''),
(200, 41, '_menu_item_url', ''),
(202, 42, '_menu_item_type', 'custom'),
(203, 42, '_menu_item_menu_item_parent', '0'),
(204, 42, '_menu_item_object_id', '42'),
(205, 42, '_menu_item_object', 'custom'),
(206, 42, '_menu_item_target', ''),
(207, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 42, '_menu_item_xfn', ''),
(209, 42, '_menu_item_url', 'http://charm-theme.local'),
(211, 43, '_menu_item_type', 'post_type'),
(212, 43, '_menu_item_menu_item_parent', '0'),
(213, 43, '_menu_item_object_id', '31'),
(214, 43, '_menu_item_object', 'page'),
(215, 43, '_menu_item_target', ''),
(216, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 43, '_menu_item_xfn', ''),
(218, 43, '_menu_item_url', ''),
(220, 45, '_form', '<div class=\"form_contact\">\n    <div class=\"row\">\n        <div class=\"col-md-6\">\n            <div class=\"form-group\">\n                <label>First name*</label>[text* first-name class:form-control placeholder \"First name\"]\n            </div>\n       </div>\n        <div class=\"col-md-6\">\n            <div class=\"form-group\">\n                <label>Email*</label>[email* email class:form-control placeholder \"Email\"]\n            </div>\n       </div>\n        <div class=\"col-md-6\">\n            <div class=\"form-group\">\n                <label>Skype id*</label>\n                [text* skype class:form-control placeholder \"Skype id\"]\n            </div>\n       </div>\n        <div class=\"col-md-6\">\n            <div class=\"form-group\">\n                <label>Company name*</label>\n                [text* company_name class:form-control placeholder \"Company name\"]\n            </div>\n       </div>\n        <div class=\"col-md-6\">\n            <div class=\"form-group\">\n                <label>Mobile*</label>\n                [text* number class:form-control placeholder \"Mobile\"]\n            </div>\n       </div>\n       <div class=\"col-md-6\">\n           <div class=\"form-group group_li\">\n                <!-- <label>TIMEZONE FOR COMMUNICATION (WHAT IS YOUR PREFERRED TIMEZONE OF COMMUNICATION)</label> -->\n                <label>Timezone for communication (that us your preferred timezone of communication)</label>\n                [radio timezone default:1 \"GMT\"] [radio timezone default:0 \"EST\"] [radio timezone default:0 \"PST \"] <label class=\"other_lb\">[radio timezone  default:0 \"OTHER\"]</label>\n                <input id=\"\" placeholder=\"Please leave your TIMEZONE here \" class=\"form-control input_other_lb\" name=\"name\" type=\"text\" title=\"\" disabled>\n           </div>\n      </div>\n      <div class=\"col-md-12\">\n          <div class=\"form-group\">\n               <!-- <label>WHAT TASK WOULD YOU LIKE TO OUTSOURCE (IF YOU ARE NOT SURE WE WILL DISCUSS THIS IN THE CONSULTATION)</label> -->\n               <label>What task would you like to outsource (If you are not sure we will discuss this in the consultation)</label>\n               [textarea* content class:form-control id:t_content placeholder \"Messsage\"]\n         </div>\n     </div>\n     <div class=\"col-md-12\">\n            <div class=\"form-group\">\n                 [submit class:btn class:btn class:bnt_a_contact class:btn-default \"GETTING STARTED\"]\n           </div>\n      </div> \n   </div>\n</div>'),
(221, 45, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:22:\"charm \"[your-subject]\"\";s:6:\"sender\";s:41:\"[your-name] <wordpress@charm-theme.local>\";s:9:\"recipient\";s:19:\"dinhnv@vnext.com.vn\";s:4:\"body\";s:168:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on charm (http://charm-theme.local)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(222, 45, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"charm \"[your-subject]\"\";s:6:\"sender\";s:35:\"charm <wordpress@charm-theme.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:110:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on charm (http://charm-theme.local)\";s:18:\"additional_headers\";s:29:\"Reply-To: dinhnv@vnext.com.vn\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(223, 45, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(224, 45, '_additional_settings', ''),
(225, 45, '_locale', 'en_US'),
(238, 45, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(239, 31, '_wp_page_template', 'template-has-sidebar.php'),
(240, 1, '_edit_lock', '1536574602:1'),
(241, 51, '_wp_attached_file', '2018/09/a.jpg'),
(242, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2166;s:6:\"height\";i:1626;s:4:\"file\";s:13:\"2018/09/a.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"a-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"a-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"a-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"team-thumb\";a:4:{s:4:\"file\";s:13:\"a-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 1, '_edit_last', '1'),
(244, 1, '_thumbnail_id', '51'),
(247, 55, '_wp_attached_file', '2018/09/21.png'),
(248, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:14:\"2018/09/21.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"21-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"21-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"21-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"team-thumb\";a:4:{s:4:\"file\";s:14:\"21-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(249, 54, '_edit_last', '1'),
(250, 54, '_thumbnail_id', '55'),
(253, 54, '_edit_lock', '1536593485:1'),
(254, 57, '_edit_last', '1'),
(255, 57, '_wp_page_template', 'default'),
(256, 57, '_edit_lock', '1536651025:1'),
(257, 59, '_wp_trash_meta_status', 'publish'),
(258, 59, '_wp_trash_meta_time', '1536564637'),
(259, 15, '_thumbnail_id', '55'),
(260, 79, '_edit_last', '1'),
(261, 79, '_edit_lock', '1536572440:1'),
(262, 80, '_wp_attached_file', '2018/09/21.jpg'),
(263, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:189;s:6:\"height\";i:188;s:4:\"file\";s:14:\"2018/09/21.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 79, '_thumbnail_id', '80'),
(265, 83, '_edit_last', '1'),
(266, 83, '_edit_lock', '1536570689:1'),
(267, 83, '_thumbnail_id', '55'),
(268, 85, '_edit_last', '1'),
(269, 85, '_thumbnail_id', '80'),
(270, 85, '_edit_lock', '1536570701:1'),
(271, 87, '_edit_last', '1'),
(272, 87, '_edit_lock', '1536571071:1'),
(273, 87, '_thumbnail_id', '51'),
(274, 89, '_edit_last', '1'),
(275, 89, '_edit_lock', '1536571085:1'),
(276, 89, '_thumbnail_id', '80'),
(277, 91, '_edit_last', '1'),
(278, 91, '_edit_lock', '1536646234:1'),
(279, 91, '_thumbnail_id', '51'),
(280, 99, '_link_download', 'adadada'),
(281, 99, '_edit_last', '1'),
(282, 99, '_edit_lock', '1536646258:1'),
(283, 100, '_link_download', ''),
(284, 101, '_link_download', ''),
(285, 99, '_location', 'home'),
(286, 102, '_location', ''),
(287, 103, '_location', ''),
(288, 99, '_thumbnail_id', '55'),
(289, 99, '_icon_package', 'fa-line-chart'),
(290, 105, '_location', 'home'),
(291, 105, '_icon_package', ''),
(292, 105, '_link_download', 'adadada'),
(293, 105, '_location', 'home'),
(294, 105, '_thumbnail_id', '55'),
(295, 105, '_icon_package', ''),
(296, 105, '_dp_original', '99'),
(297, 105, '_edit_last', '1'),
(298, 105, '_edit_lock', '1536587014:1'),
(299, 106, '_location', 'service'),
(300, 106, '_icon_package', ''),
(301, 106, '_link_download', 'adadada'),
(302, 106, '_location', 'service'),
(303, 106, '_thumbnail_id', '55'),
(304, 106, '_icon_package', ''),
(305, 106, '_dp_original', '99'),
(306, 106, '_edit_last', '1'),
(307, 106, '_edit_lock', '1536587019:1'),
(308, 57, '_location', ''),
(309, 57, '_icon_package', ''),
(310, 109, '_location', 'home'),
(311, 109, '_icon_package', 'fa-laptop'),
(312, 109, '_location', 'home'),
(313, 109, '_location', 'home'),
(314, 109, '_icon_package', 'fa-laptop'),
(315, 109, '_icon_package', 'fa-laptop'),
(316, 109, '_link_download', 'adadada'),
(317, 109, '_thumbnail_id', '55'),
(319, 109, '_dp_original', '106'),
(320, 109, '_edit_lock', '1536646358:1'),
(321, 109, '_edit_last', '1'),
(322, 112, '_location', ''),
(323, 112, '_icon_package', ''),
(324, 112, '_edit_last', '1'),
(325, 112, '_edit_lock', '1536646737:1'),
(326, 112, '_wp_page_template', 'default'),
(327, 114, '_location', ''),
(328, 114, '_icon_package', ''),
(329, 114, '_menu_item_type', 'post_type'),
(330, 114, '_menu_item_menu_item_parent', '0'),
(331, 114, '_menu_item_object_id', '112'),
(332, 114, '_menu_item_object', 'page'),
(333, 114, '_menu_item_target', ''),
(334, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(335, 114, '_menu_item_xfn', ''),
(336, 114, '_menu_item_url', ''),
(338, 39, '_location', ''),
(339, 39, '_icon_package', ''),
(340, 41, '_location', ''),
(341, 41, '_icon_package', ''),
(342, 42, '_location', ''),
(343, 42, '_icon_package', ''),
(344, 43, '_location', ''),
(345, 43, '_icon_package', ''),
(346, 115, '_location', ''),
(347, 115, '_icon_package', ''),
(348, 115, '_menu_item_type', 'post_type'),
(349, 115, '_menu_item_menu_item_parent', '0'),
(350, 115, '_menu_item_object_id', '112'),
(351, 115, '_menu_item_object', 'page'),
(352, 115, '_menu_item_target', ''),
(353, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(354, 115, '_menu_item_xfn', ''),
(355, 115, '_menu_item_url', ''),
(357, 28, '_location', ''),
(358, 28, '_icon_package', ''),
(359, 27, '_location', ''),
(360, 27, '_icon_package', ''),
(363, 10, '_location', ''),
(364, 10, '_icon_package', ''),
(365, 11, '_location', ''),
(366, 11, '_icon_package', ''),
(367, 12, '_location', ''),
(368, 12, '_icon_package', ''),
(369, 116, '_location', ''),
(370, 116, '_icon_package', ''),
(371, 116, '_edit_last', '1'),
(372, 116, '_edit_lock', '1536587758:1'),
(373, 117, '_wp_attached_file', '2018/09/f11.jpg'),
(374, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:417;s:4:\"file\";s:15:\"2018/09/f11.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"f11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"f11-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"team-thumb\";a:4:{s:4:\"file\";s:15:\"f11-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(375, 116, '_thumbnail_id', '117'),
(376, 119, '_location', ''),
(377, 119, '_icon_package', ''),
(378, 119, '_location', ''),
(379, 119, '_icon_package', ''),
(380, 119, '_thumbnail_id', '117'),
(381, 119, '_dp_original', '116'),
(382, 120, '_location', ''),
(383, 120, '_icon_package', ''),
(384, 120, '_location', ''),
(385, 120, '_location', ''),
(386, 120, '_icon_package', ''),
(387, 120, '_icon_package', ''),
(388, 120, '_thumbnail_id', '117'),
(390, 120, '_dp_original', '119'),
(391, 121, '_location', ''),
(392, 121, '_icon_package', ''),
(393, 121, '_location', ''),
(394, 121, '_location', ''),
(395, 121, '_icon_package', ''),
(396, 121, '_icon_package', ''),
(397, 121, '_thumbnail_id', '117'),
(399, 121, '_dp_original', '119'),
(400, 119, '_edit_last', '1'),
(401, 119, '_edit_lock', '1536588058:1'),
(402, 120, '_edit_last', '1'),
(403, 120, '_edit_lock', '1536588065:1'),
(404, 121, '_edit_last', '1'),
(405, 121, '_edit_lock', '1536588070:1'),
(406, 127, '_location', ''),
(407, 127, '_icon_package', ''),
(408, 127, '_location', ''),
(409, 127, '_location', ''),
(410, 127, '_location', ''),
(411, 127, '_icon_package', ''),
(412, 127, '_icon_package', ''),
(413, 127, '_icon_package', ''),
(414, 127, '_thumbnail_id', '117'),
(416, 127, '_dp_original', '121'),
(417, 128, '_location', ''),
(418, 128, '_icon_package', ''),
(419, 128, '_location', ''),
(420, 128, '_location', ''),
(421, 128, '_location', ''),
(422, 128, '_location', ''),
(423, 128, '_icon_package', ''),
(424, 128, '_icon_package', ''),
(425, 128, '_icon_package', ''),
(426, 128, '_icon_package', ''),
(427, 128, '_thumbnail_id', '117'),
(429, 128, '_dp_original', '127'),
(430, 129, '_location', ''),
(431, 129, '_icon_package', ''),
(432, 129, '_location', ''),
(433, 129, '_location', ''),
(434, 129, '_location', ''),
(435, 129, '_location', ''),
(436, 129, '_location', ''),
(437, 129, '_icon_package', ''),
(438, 129, '_icon_package', ''),
(439, 129, '_icon_package', ''),
(440, 129, '_icon_package', ''),
(441, 129, '_icon_package', ''),
(442, 129, '_thumbnail_id', '117'),
(444, 129, '_dp_original', '128'),
(445, 130, '_location', ''),
(446, 130, '_icon_package', ''),
(447, 130, '_location', ''),
(448, 130, '_location', ''),
(449, 130, '_location', ''),
(450, 130, '_location', ''),
(451, 130, '_location', ''),
(452, 130, '_location', ''),
(453, 130, '_icon_package', ''),
(454, 130, '_icon_package', ''),
(455, 130, '_icon_package', ''),
(456, 130, '_icon_package', ''),
(457, 130, '_icon_package', ''),
(458, 130, '_icon_package', ''),
(459, 130, '_thumbnail_id', '117'),
(461, 130, '_dp_original', '129'),
(462, 131, '_location', ''),
(463, 131, '_icon_package', ''),
(464, 131, '_location', ''),
(465, 131, '_location', ''),
(466, 131, '_location', ''),
(467, 131, '_location', ''),
(468, 131, '_location', ''),
(469, 131, '_location', ''),
(470, 131, '_location', ''),
(471, 131, '_icon_package', ''),
(472, 131, '_icon_package', ''),
(473, 131, '_icon_package', ''),
(474, 131, '_icon_package', ''),
(475, 131, '_icon_package', ''),
(476, 131, '_icon_package', ''),
(477, 131, '_icon_package', ''),
(478, 131, '_thumbnail_id', '117'),
(480, 131, '_dp_original', '130'),
(481, 132, '_location', ''),
(482, 132, '_icon_package', ''),
(483, 132, '_location', ''),
(484, 132, '_location', ''),
(485, 132, '_location', ''),
(486, 132, '_location', ''),
(487, 132, '_location', ''),
(488, 132, '_location', ''),
(489, 132, '_location', ''),
(490, 132, '_location', ''),
(491, 132, '_icon_package', ''),
(492, 132, '_icon_package', ''),
(493, 132, '_icon_package', ''),
(494, 132, '_icon_package', ''),
(495, 132, '_icon_package', ''),
(496, 132, '_icon_package', ''),
(497, 132, '_icon_package', ''),
(498, 132, '_icon_package', ''),
(499, 132, '_thumbnail_id', '117'),
(501, 132, '_dp_original', '131'),
(502, 127, '_edit_last', '1'),
(503, 127, '_edit_lock', '1536588928:1'),
(504, 128, '_edit_last', '1'),
(505, 128, '_edit_lock', '1536588933:1'),
(506, 129, '_edit_last', '1'),
(507, 129, '_edit_lock', '1536588937:1'),
(508, 130, '_edit_last', '1'),
(509, 130, '_edit_lock', '1536588941:1'),
(510, 131, '_edit_last', '1'),
(511, 131, '_edit_lock', '1536588944:1'),
(512, 132, '_edit_last', '1'),
(513, 132, '_edit_lock', '1536646250:1'),
(514, 147, '_location', ''),
(515, 147, '_icon_package', ''),
(516, 147, '_edit_last', '1'),
(517, 147, '_edit_lock', '1536646926:1'),
(518, 147, '_wp_page_template', 'template-has-sidebar.php'),
(519, 149, '_location', ''),
(520, 149, '_icon_package', ''),
(521, 149, '_menu_item_type', 'post_type'),
(522, 149, '_menu_item_menu_item_parent', '0'),
(523, 149, '_menu_item_object_id', '147'),
(524, 149, '_menu_item_object', 'page'),
(525, 149, '_menu_item_target', ''),
(526, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(527, 149, '_menu_item_xfn', ''),
(528, 149, '_menu_item_url', ''),
(530, 150, '_wp_trash_meta_status', 'publish'),
(531, 150, '_wp_trash_meta_time', '1536591294'),
(532, 150, '_location', ''),
(533, 150, '_icon_package', ''),
(534, 151, '_wp_trash_meta_status', 'publish'),
(535, 151, '_wp_trash_meta_time', '1536591316'),
(536, 151, '_location', ''),
(537, 151, '_icon_package', ''),
(540, 54, '_location', ''),
(541, 54, '_icon_package', ''),
(542, 54, 'post_views_count', '35'),
(543, 1, 'post_views_count', '0'),
(544, 153, '_location', ''),
(545, 153, '_icon_package', ''),
(546, 153, '_thumbnail_id', '55'),
(549, 153, '_location', ''),
(550, 153, '_icon_package', ''),
(551, 153, 'post_views_count', '36'),
(552, 153, '_dp_original', '54'),
(553, 154, '_location', ''),
(554, 154, '_icon_package', ''),
(555, 154, '_location', ''),
(556, 154, '_location', ''),
(557, 154, '_icon_package', ''),
(558, 154, '_icon_package', ''),
(559, 154, '_thumbnail_id', '55'),
(562, 154, 'post_views_count', '29'),
(564, 154, '_dp_original', '153'),
(565, 155, '_location', ''),
(566, 155, '_icon_package', ''),
(567, 155, '_location', ''),
(568, 155, '_location', ''),
(569, 155, '_location', ''),
(570, 155, '_icon_package', ''),
(571, 155, '_icon_package', ''),
(572, 155, '_icon_package', ''),
(573, 155, '_thumbnail_id', '55'),
(576, 155, 'post_views_count', '29'),
(578, 155, '_dp_original', '154'),
(579, 156, '_location', ''),
(580, 156, '_icon_package', ''),
(581, 156, '_location', ''),
(582, 156, '_location', ''),
(583, 156, '_location', ''),
(584, 156, '_location', ''),
(585, 156, '_icon_package', ''),
(586, 156, '_icon_package', ''),
(587, 156, '_icon_package', ''),
(588, 156, '_icon_package', ''),
(589, 156, '_thumbnail_id', '55'),
(592, 156, 'post_views_count', '29'),
(594, 156, '_dp_original', '155'),
(595, 157, '_location', ''),
(596, 157, '_icon_package', ''),
(597, 157, '_location', ''),
(598, 157, '_location', ''),
(599, 157, '_location', ''),
(600, 157, '_location', ''),
(601, 157, '_location', ''),
(602, 157, '_icon_package', ''),
(603, 157, '_icon_package', ''),
(604, 157, '_icon_package', ''),
(605, 157, '_icon_package', ''),
(606, 157, '_icon_package', ''),
(607, 157, '_thumbnail_id', '55'),
(610, 157, 'post_views_count', '29'),
(612, 157, '_dp_original', '156'),
(613, 157, '_edit_last', '1'),
(616, 157, '_edit_lock', '1536596383:1'),
(617, 156, '_edit_last', '1'),
(620, 156, '_edit_lock', '1536596389:1'),
(621, 155, '_edit_last', '1'),
(624, 155, '_edit_lock', '1536596396:1'),
(625, 154, '_edit_last', '1'),
(628, 154, '_edit_lock', '1536596403:1'),
(629, 153, '_edit_last', '1'),
(632, 153, '_edit_lock', '1536596408:1'),
(633, 112, '_yoast_wpseo_content_score', '30'),
(634, 57, '_yoast_wpseo_content_score', '30');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-08 16:07:40', '2018-09-08 16:07:40', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2018-09-10 06:42:00', '2018-09-10 06:42:00', '', 0, 'http://charm-theme.local/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-08 16:07:40', '2018-09-08 16:07:40', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://charm-theme.local/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2018-09-08 16:07:40', '2018-09-08 16:07:40', '', 0, 'http://charm-theme.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-08 16:07:40', '2018-09-08 16:07:40', '<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: http://charm-theme.local.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2018-09-08 16:07:40', '2018-09-08 16:07:40', '', 0, 'http://charm-theme.local/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-09-08 16:07:53', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-08 16:07:53', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?p=4', 0, 'post', '', 0),
(5, 1, '2018-09-09 05:46:39', '2018-09-09 05:46:39', '{\n    \"nav_menu[-8996914376804710000]\": {\n        \"value\": {\n            \"name\": \"Main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-09 05:45:23\"\n    },\n    \"nav_menu_item[-7983097737387200000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://bbnerds.com/charm/service.php\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -8996914376804710000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-09 05:45:33\"\n    },\n    \"nav_menu_item[-5916937175761861000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Service\",\n            \"url\": \"http://bbnerds.com/charm/service.php\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Service\",\n            \"nav_menu_term_id\": -8996914376804710000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-09 05:46:01\"\n    },\n    \"nav_menu_item[-4964032490210386000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Team\",\n            \"url\": \"http://bbnerds.com/charm/service.php\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Team\",\n            \"nav_menu_term_id\": -8996914376804710000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-09 05:46:01\"\n    },\n    \"nav_menu_item[-2284300116472144000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Blog\",\n            \"url\": \"http://bbnerds.com/charm/service.php\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -8996914376804710000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-09 05:46:01\"\n    },\n    \"nav_menu_item[-4576215474055031000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"custom\",\n            \"title\": \"Training\",\n            \"url\": \"http://bbnerds.com/charm/service.php\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Training\",\n            \"nav_menu_term_id\": -8996914376804710000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-09 05:46:39\"\n    },\n    \"nav_menu_item[-8558250316898490000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"custom\",\n            \"title\": \"Member\",\n            \"url\": \"http://bbnerds.com/charm/service.php\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Member\",\n            \"nav_menu_term_id\": -8996914376804710000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-09 05:46:39\"\n    },\n    \"nav_menu_item[-4951757324536322000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"custom\",\n            \"title\": \"Contact Us\",\n            \"url\": \"http://bbnerds.com/charm/service.php\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact Us\",\n            \"nav_menu_term_id\": -8996914376804710000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-09 05:46:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1933421e-9d1a-4181-a414-faa6ab2c09df', '', '', '2018-09-09 05:46:39', '2018-09-09 05:46:39', '', 0, 'http://charm-theme.local/?p=5', 0, 'customize_changeset', '', 0),
(10, 1, '2018-09-09 05:46:39', '2018-09-09 05:46:39', '', 'Training', '', 'publish', 'closed', 'closed', '', 'training', '', '', '2018-09-10 14:53:40', '2018-09-10 14:53:40', '', 0, 'http://charm-theme.local/?p=10', 5, 'nav_menu_item', '', 0),
(11, 1, '2018-09-09 05:46:39', '2018-09-09 05:46:39', '', 'Member', '', 'publish', 'closed', 'closed', '', 'member', '', '', '2018-09-10 14:53:40', '2018-09-10 14:53:40', '', 0, 'http://charm-theme.local/?p=11', 6, 'nav_menu_item', '', 0),
(12, 1, '2018-09-09 05:46:39', '2018-09-09 05:46:39', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-09-10 14:53:40', '2018-09-10 14:53:40', '', 0, 'http://charm-theme.local/?p=12', 7, 'nav_menu_item', '', 0),
(13, 1, '2018-09-09 08:11:21', '2018-09-09 08:11:21', '', 'tem', '', 'publish', 'closed', 'closed', '', 'tem', '', '', '2018-09-09 08:11:21', '2018-09-09 08:11:21', '', 0, 'http://charm-theme.local/?post_type=tmm&#038;p=13', 0, 'tmm', '', 0),
(14, 1, '2018-09-09 08:42:53', '2018-09-09 08:42:53', '', 'team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2018-09-09 08:42:53', '2018-09-09 08:42:53', '', 0, 'http://charm-theme.local/?post_type=team&#038;p=14', 0, 'team', '', 0),
(15, 1, '2018-09-09 08:43:03', '2018-09-09 08:43:03', '', 'tem2', '', 'publish', 'closed', 'closed', '', 'tem2', '', '', '2018-09-10 08:30:27', '2018-09-10 08:30:27', '', 0, 'http://charm-theme.local/?post_type=team&#038;p=15', 0, 'team', '', 0),
(16, 1, '2018-09-09 08:43:12', '2018-09-09 08:43:12', 'CEO &amp; Developers', 'team3', '', 'publish', 'closed', 'closed', '', 'team3', '', '', '2018-09-09 09:58:47', '2018-09-09 09:58:47', '', 0, 'http://charm-theme.local/?post_type=team&#038;p=16', 0, 'team', '', 0),
(17, 1, '2018-09-09 08:44:27', '2018-09-09 08:44:27', '[charmteam layout=\"4\" col=\"4\" member=\"18\"]', 'TEAM', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2018-09-09 10:03:41', '2018-09-09 10:03:41', '', 0, 'http://charm-theme.local/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-09-09 08:44:27', '2018-09-09 08:44:27', '&amp;nbsp;\r\n\r\n[tlpteam layout=\"4\" col=\"4\" member=\"18\"]\r\n\r\n&amp;nbsp;', 'TEAM', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-09 08:44:27', '2018-09-09 08:44:27', '', 17, 'http://charm-theme.local/?p=18', 0, 'revision', '', 0),
(19, 1, '2018-09-09 08:44:49', '2018-09-09 08:44:49', '&amp;nbsp;\r\n\r\n[tlpteam layout=\"4\" col=\"4\" member=\"1\"]\r\n\r\n&amp;nbsp;', 'TEAM', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-09 08:44:49', '2018-09-09 08:44:49', '', 17, 'http://charm-theme.local/?p=19', 0, 'revision', '', 0),
(20, 1, '2018-09-09 09:04:02', '2018-09-09 09:04:02', '[tlpteam layout=\"1\"]', 'TEAM', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-09 09:04:02', '2018-09-09 09:04:02', '', 17, 'http://charm-theme.local/?p=20', 0, 'revision', '', 0),
(21, 1, '2018-09-09 09:09:05', '2018-09-09 09:09:05', '&amp;nbsp;\r\n\r\n[tlpteam layout=\"4\" col=\"4\" member=\"18\"]\r\n\r\n&amp;nbsp;', 'TEAM', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-09 09:09:05', '2018-09-09 09:09:05', '', 17, 'http://charm-theme.local/?p=21', 0, 'revision', '', 0),
(22, 1, '2018-09-09 09:27:19', '2018-09-09 09:27:19', '&amp;nbsp;\r\n\r\n[tlpteam layout=\"4\" col=\"4\" member=\"18\"]\r\n\r\n&amp;nbsp;\r\n\r\n&nbsp;\r\n\r\n111111', 'TEAM', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-09 09:27:19', '2018-09-09 09:27:19', '', 17, 'http://charm-theme.local/?p=22', 0, 'revision', '', 0),
(23, 1, '2018-09-09 09:28:00', '2018-09-09 09:28:00', '&nbsp;\r\n\r\n[tlpteam layout=\"4\" col=\"4\" member=\"18\"]\r\n\r\n&nbsp;', 'TEAM', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-09 09:28:00', '2018-09-09 09:28:00', '', 17, 'http://charm-theme.local/?p=23', 0, 'revision', '', 0),
(24, 1, '2018-09-09 09:44:12', '2018-09-09 09:44:12', '&nbsp;\r\n\r\n[charmteam layout=\"4\" col=\"4\" member=\"18\"]\r\n\r\n&nbsp;', 'TEAM', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-09 09:44:12', '2018-09-09 09:44:12', '', 17, 'http://charm-theme.local/?p=24', 0, 'revision', '', 0),
(25, 1, '2018-09-09 09:58:27', '2018-09-09 09:58:27', 'CEO &amp; Developers', 'team3', '', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2018-09-09 09:58:27', '2018-09-09 09:58:27', '', 16, 'http://charm-theme.local/?p=25', 0, 'revision', '', 0),
(26, 1, '2018-09-09 10:03:41', '2018-09-09 10:03:41', '[charmteam layout=\"4\" col=\"4\" member=\"18\"]', 'TEAM', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-09 10:03:41', '2018-09-09 10:03:41', '', 17, 'http://charm-theme.local/?p=26', 0, 'revision', '', 0),
(27, 1, '2018-09-09 10:08:24', '2018-09-09 10:08:24', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-09-10 14:53:40', '2018-09-10 14:53:40', '', 0, 'http://charm-theme.local/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2018-09-09 10:08:24', '2018-09-09 10:08:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2018-09-10 14:53:40', '2018-09-10 14:53:40', '', 0, 'http://charm-theme.local/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2018-09-09 10:54:04', '2018-09-09 10:54:04', '', 'Terms Anf Conditions', '', 'publish', 'closed', 'closed', '', 'terms-anf-conditions', '', '', '2018-09-09 10:54:04', '2018-09-09 10:54:04', '', 0, 'http://charm-theme.local/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-09-09 10:54:04', '2018-09-09 10:54:04', '', 'Terms Anf Conditions', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-09-09 10:54:04', '2018-09-09 10:54:04', '', 29, 'http://charm-theme.local/?p=30', 0, 'revision', '', 0),
(31, 1, '2018-09-09 10:54:12', '2018-09-09 10:54:12', '<div class=\"contact_page\">\r\n<h2 class=\"h2_title_contact font_gothic_bold\">BOOK YOUR CONSULTATION</h2>\r\n<div class=\"slogan_contact font_gothic_r\">\r\n<ul>\r\n 	<li>What if there was a better way to run your business?</li>\r\n 	<li>A better way to have your life back and have more free time, while your profits skyrocket ?</li>\r\n 	<li>You can even make money on holidays because now you will have an efficient Virtual Freelance Team that will run your business for you.\r\n</ul>\r\n</div>\r\n[contact-form-7 id=\"45\" title=\"Contact form 1\"]</li>\r\n\r\n</div>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-09-10 04:02:06', '2018-09-10 04:02:06', '', 0, 'http://charm-theme.local/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-09-09 10:54:12', '2018-09-09 10:54:12', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-09-09 10:54:12', '2018-09-09 10:54:12', '', 31, 'http://charm-theme.local/?p=32', 0, 'revision', '', 0),
(33, 1, '2018-09-09 10:54:27', '2018-09-09 10:54:27', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2018-09-09 10:54:27', '2018-09-09 10:54:27', '', 0, 'http://charm-theme.local/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-09-09 10:54:28', '2018-09-09 10:54:28', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-09-09 10:54:28', '2018-09-09 10:54:28', '', 0, 'http://charm-theme.local/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2018-09-09 10:54:28', '2018-09-09 10:54:28', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-09-09 10:54:28', '2018-09-09 10:54:28', '', 0, 'http://charm-theme.local/?p=35', 3, 'nav_menu_item', '', 0),
(36, 1, '2018-09-09 10:55:16', '2018-09-09 10:55:16', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2018-09-09 10:55:16', '2018-09-09 10:55:16', '', 0, 'http://charm-theme.local/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2018-09-09 10:55:16', '2018-09-09 10:55:16', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-09-09 10:55:16', '2018-09-09 10:55:16', '', 0, 'http://charm-theme.local/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2018-09-09 10:55:16', '2018-09-09 10:55:16', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-09-09 10:55:16', '2018-09-09 10:55:16', '', 0, 'http://charm-theme.local/?p=38', 3, 'nav_menu_item', '', 0),
(39, 1, '2018-09-09 10:56:24', '2018-09-09 10:56:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-10 13:52:37', '2018-09-10 13:52:37', '', 0, 'http://charm-theme.local/?p=39', 1, 'nav_menu_item', '', 0),
(41, 1, '2018-09-09 10:56:24', '2018-09-09 10:56:24', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2018-09-10 13:52:37', '2018-09-10 13:52:37', '', 0, 'http://charm-theme.local/?p=41', 3, 'nav_menu_item', '', 0),
(42, 1, '2018-09-09 10:56:24', '2018-09-09 10:56:24', '', 'Sign In', '', 'publish', 'closed', 'closed', '', 'sign-in', '', '', '2018-09-10 13:52:37', '2018-09-10 13:52:37', '', 0, 'http://charm-theme.local/?p=42', 4, 'nav_menu_item', '', 0),
(43, 1, '2018-09-09 10:56:24', '2018-09-09 10:56:24', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-09-10 13:52:37', '2018-09-10 13:52:37', '', 0, 'http://charm-theme.local/?p=43', 5, 'nav_menu_item', '', 0),
(44, 1, '2018-09-09 11:14:34', '2018-09-09 11:14:34', '<h2 class=\"h2_title_contact font_gothic_bold\">BOOK YOUR CONSULTATION</h2>\r\n<div class=\"slogan_contact font_gothic_r\">\r\n<ul>\r\n 	<li>What if there was a better way to run your business?</li>\r\n 	<li>A better way to have your life back and have more free time, while your profits skyrocket ?</li>\r\n 	<li>You can even make money on holidays because now you will have an efficient Virtual Freelance Team that will run your business for you.</li>\r\n</ul>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-09-09 11:14:34', '2018-09-09 11:14:34', '', 31, 'http://charm-theme.local/?p=44', 0, 'revision', '', 0),
(45, 1, '2018-09-09 11:17:56', '2018-09-09 11:17:56', '<div class=\"form_contact\">\r\n    <div class=\"row\">\r\n        <div class=\"col-md-6\">\r\n            <div class=\"form-group\">\r\n                <label>First name*</label>[text* first-name class:form-control placeholder \"First name\"]\r\n            </div>\r\n       </div>\r\n        <div class=\"col-md-6\">\r\n            <div class=\"form-group\">\r\n                <label>Email*</label>[email* email class:form-control placeholder \"Email\"]\r\n            </div>\r\n       </div>\r\n        <div class=\"col-md-6\">\r\n            <div class=\"form-group\">\r\n                <label>Skype id*</label>\r\n                [text* skype class:form-control placeholder \"Skype id\"]\r\n            </div>\r\n       </div>\r\n        <div class=\"col-md-6\">\r\n            <div class=\"form-group\">\r\n                <label>Company name*</label>\r\n                [text* company_name class:form-control placeholder \"Company name\"]\r\n            </div>\r\n       </div>\r\n        <div class=\"col-md-6\">\r\n            <div class=\"form-group\">\r\n                <label>Mobile*</label>\r\n                [text* number class:form-control placeholder \"Mobile\"]\r\n            </div>\r\n       </div>\r\n       <div class=\"col-md-6\">\r\n           <div class=\"form-group group_li\">\r\n                <!-- <label>TIMEZONE FOR COMMUNICATION (WHAT IS YOUR PREFERRED TIMEZONE OF COMMUNICATION)</label> -->\r\n                <label>Timezone for communication (that us your preferred timezone of communication)</label>\r\n                [radio timezone default:1 \"GMT\"] [radio timezone default:0 \"EST\"] [radio timezone default:0 \"PST \"] <label class=\"other_lb\">[radio timezone  default:0 \"OTHER\"]</label>\r\n                <input id=\"\" placeholder=\"Please leave your TIMEZONE here \" class=\"form-control input_other_lb\" name=\"name\" type=\"text\" title=\"\" disabled>\r\n           </div>\r\n      </div>\r\n      <div class=\"col-md-12\">\r\n          <div class=\"form-group\">\r\n               <!-- <label>WHAT TASK WOULD YOU LIKE TO OUTSOURCE (IF YOU ARE NOT SURE WE WILL DISCUSS THIS IN THE CONSULTATION)</label> -->\r\n               <label>What task would you like to outsource (If you are not sure we will discuss this in the consultation)</label>\r\n               [textarea* content class:form-control id:t_content placeholder \"Messsage\"]\r\n         </div>\r\n     </div>\r\n     <div class=\"col-md-12\">\r\n            <div class=\"form-group\">\r\n                 [submit class:btn class:btn class:bnt_a_contact class:btn-default \"GETTING STARTED\"]\r\n           </div>\r\n      </div> \r\n   </div>\r\n</div>\n1\ncharm \"[your-subject]\"\n[your-name] <wordpress@charm-theme.local>\ndinhnv@vnext.com.vn\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on charm (http://charm-theme.local)\nReply-To: [your-email]\n\n\n\n\ncharm \"[your-subject]\"\ncharm <wordpress@charm-theme.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on charm (http://charm-theme.local)\nReply-To: dinhnv@vnext.com.vn\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-09-10 03:32:52', '2018-09-10 03:32:52', '', 0, 'http://charm-theme.local/?post_type=wpcf7_contact_form&#038;p=45', 0, 'wpcf7_contact_form', '', 0),
(46, 1, '2018-09-10 02:53:17', '2018-09-10 02:53:17', '<h2 class=\"h2_title_contact font_gothic_bold\">BOOK YOUR CONSULTATION</h2>\r\n<div class=\"slogan_contact font_gothic_r\">\r\n<ul>\r\n 	<li>What if there was a better way to run your business?</li>\r\n 	<li>A better way to have your life back and have more free time, while your profits skyrocket ?</li>\r\n 	<li>You can even make money on holidays because now you will have an efficient Virtual Freelance Team that will run your business for you.\r\n[contact-form-7 id=\"45\" title=\"Contact form 1\"]</li>\r\n</ul>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-09-10 02:53:17', '2018-09-10 02:53:17', '', 31, 'http://charm-theme.local/?p=46', 0, 'revision', '', 0),
(47, 1, '2018-09-10 03:24:36', '2018-09-10 03:24:36', '<div class=\"contact_page\">\r\n<h2 class=\"h2_title_contact font_gothic_bold\">BOOK YOUR CONSULTATION</h2>\r\n<div class=\"slogan_contact font_gothic_r\">\r\n<ul>\r\n 	<li>What if there was a better way to run your business?</li>\r\n 	<li>A better way to have your life back and have more free time, while your profits skyrocket ?</li>\r\n 	<li>You can even make money on holidays because now you will have an efficient Virtual Freelance Team that will run your business for you.\r\n</ul>\r\n</div>\r\n[contact-form-7 id=\"45\" title=\"Contact form 1\"]</li>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-09-10 03:24:36', '2018-09-10 03:24:36', '', 31, 'http://charm-theme.local/?p=47', 0, 'revision', '', 0),
(48, 1, '2018-09-10 03:40:26', '2018-09-10 03:40:26', '<div class=\"contact_page new_page\">\r\n<h2 class=\"h2_title_contact font_gothic_bold\">BOOK YOUR CONSULTATION</h2>\r\n<div class=\"slogan_contact font_gothic_r\">\r\n<ul>\r\n 	<li>What if there was a better way to run your business?</li>\r\n 	<li>A better way to have your life back and have more free time, while your profits skyrocket ?</li>\r\n 	<li>You can even make money on holidays because now you will have an efficient Virtual Freelance Team that will run your business for you.\r\n</ul>\r\n</div>\r\n[contact-form-7 id=\"45\" title=\"Contact form 1\"]</li>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-09-10 03:40:26', '2018-09-10 03:40:26', '', 31, 'http://charm-theme.local/?p=48', 0, 'revision', '', 0),
(49, 1, '2018-09-10 04:02:06', '2018-09-10 04:02:06', '<div class=\"contact_page\">\r\n<h2 class=\"h2_title_contact font_gothic_bold\">BOOK YOUR CONSULTATION</h2>\r\n<div class=\"slogan_contact font_gothic_r\">\r\n<ul>\r\n 	<li>What if there was a better way to run your business?</li>\r\n 	<li>A better way to have your life back and have more free time, while your profits skyrocket ?</li>\r\n 	<li>You can even make money on holidays because now you will have an efficient Virtual Freelance Team that will run your business for you.\r\n</ul>\r\n</div>\r\n[contact-form-7 id=\"45\" title=\"Contact form 1\"]</li>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-09-10 04:02:06', '2018-09-10 04:02:06', '', 31, 'http://charm-theme.local/?p=49', 0, 'revision', '', 0),
(50, 1, '2018-09-10 06:38:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 06:38:30', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?p=50', 0, 'post', '', 0),
(51, 1, '2018-09-10 06:38:55', '2018-09-10 06:38:55', '', 'a', '', 'inherit', 'open', 'closed', '', 'a', '', '', '2018-09-10 06:38:55', '2018-09-10 06:38:55', '', 1, 'http://charm-theme.local/wp-content/uploads/2018/09/a.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-09-10 06:39:41', '2018-09-10 06:39:41', 'Chúc mừng đến với WordPr<img class=\"alignnone size-medium wp-image-51\" src=\"http://charm-theme.local/wp-content/uploads/2018/09/a-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />ess. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-09-10 06:39:41', '2018-09-10 06:39:41', '', 1, 'http://charm-theme.local/?p=52', 0, 'revision', '', 0),
(53, 1, '2018-09-10 06:42:00', '2018-09-10 06:42:00', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-10 06:42:00', '2018-09-10 06:42:00', '', 1, 'http://charm-theme.local/?p=53', 0, 'revision', '', 0),
(54, 1, '2018-09-10 06:53:50', '2018-09-10 06:53:50', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'publish', 'open', 'open', '', 'top-tips-on-how-to-make-outsourcing-pay', '', '', '2018-09-10 15:21:02', '2018-09-10 15:21:02', '', 0, 'http://charm-theme.local/?p=54', 0, 'post', '', 0),
(55, 1, '2018-09-10 06:53:46', '2018-09-10 06:53:46', '', '2[1]', '', 'inherit', 'open', 'closed', '', '21', '', '', '2018-09-10 06:53:46', '2018-09-10 06:53:46', '', 54, 'http://charm-theme.local/wp-content/uploads/2018/09/21.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2018-09-10 06:53:50', '2018-09-10 06:53:50', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-09-10 06:53:50', '2018-09-10 06:53:50', '', 54, 'http://charm-theme.local/?p=56', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(57, 1, '2018-09-10 07:21:04', '2018-09-10 07:21:04', '[package number=\"5\" location=\"home\"]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"left\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" icon1=\"fa-university\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" icon2=\"fa-university\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" icon3=\"fa-university\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" icon4=\"fa-university\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]\r\n\r\n[testimonial number=\"5\" title=\"See The Testimonials\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-11 07:19:11', '2018-09-11 07:19:11', '', 0, 'http://charm-theme.local/?page_id=57', 0, 'page', '', 0),
(58, 1, '2018-09-10 07:21:04', '2018-09-10 07:21:04', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 07:21:04', '2018-09-10 07:21:04', '', 57, 'http://charm-theme.local/?p=58', 0, 'revision', '', 0),
(59, 1, '2018-09-10 07:30:36', '2018-09-10 07:30:36', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 07:30:36\"\n    },\n    \"page_on_front\": {\n        \"value\": \"57\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 07:30:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f38a6864-e736-446a-b83d-b0ab7afc3fa8', '', '', '2018-09-10 07:30:36', '2018-09-10 07:30:36', '', 0, 'http://charm-theme.local/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2018-09-11 07:18:51', '2018-09-11 07:18:51', '[package number=\"5\" location=\"home\"]\n\n[charm_video title=\"Growing\n\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"left\"]\n\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\n\n[service_home_page title=\"LOREM IPSUM\" icon1=\"fa-university\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" icon2=\"fa-university\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]\n\n[testimonial number=\"5\" title=\"See The Testimonials\"]\n\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-autosave-v1', '', '', '2018-09-11 07:18:51', '2018-09-11 07:18:51', '', 57, 'http://charm-theme.local/?p=60', 0, 'revision', '', 0),
(61, 1, '2018-09-10 07:35:44', '2018-09-10 07:35:44', '[contact_us_shortcode title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 07:35:44', '2018-09-10 07:35:44', '', 57, 'http://charm-theme.local/?p=61', 0, 'revision', '', 0),
(62, 1, '2018-09-10 07:37:05', '2018-09-10 07:37:05', '[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 07:37:05', '2018-09-10 07:37:05', '', 57, 'http://charm-theme.local/?p=62', 0, 'revision', '', 0),
(63, 1, '2018-09-10 07:38:49', '2018-09-10 07:38:49', '[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 07:38:49', '2018-09-10 07:38:49', '', 57, 'http://charm-theme.local/?p=63', 0, 'revision', '', 0),
(64, 1, '2018-09-10 07:53:54', '2018-09-10 07:53:54', '[charm_video title=\"Growing &lt;br&gt; your dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 07:53:54', '2018-09-10 07:53:54', '', 57, 'http://charm-theme.local/?p=64', 0, 'revision', '', 0),
(65, 1, '2018-09-10 07:55:31', '2018-09-10 07:55:31', '[charm_video title=\"Growing your dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 07:55:31', '2018-09-10 07:55:31', '', 57, 'http://charm-theme.local/?p=65', 0, 'revision', '', 0),
(66, 1, '2018-09-10 07:56:06', '2018-09-10 07:56:06', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 07:56:06', '2018-09-10 07:56:06', '', 57, 'http://charm-theme.local/?p=66', 0, 'revision', '', 0),
(67, 1, '2018-09-10 08:04:51', '2018-09-10 08:04:51', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatVideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:04:51', '2018-09-10 08:04:51', '', 57, 'http://charm-theme.local/?p=67', 0, 'revision', '', 0),
(68, 1, '2018-09-10 08:09:13', '2018-09-10 08:09:13', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\"float_video=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:09:13', '2018-09-10 08:09:13', '', 57, 'http://charm-theme.local/?p=68', 0, 'revision', '', 0),
(69, 1, '2018-09-10 08:09:48', '2018-09-10 08:09:48', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\"floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:09:48', '2018-09-10 08:09:48', '', 57, 'http://charm-theme.local/?p=69', 0, 'revision', '', 0),
(70, 1, '2018-09-10 08:10:29', '2018-09-10 08:10:29', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:10:29', '2018-09-10 08:10:29', '', 57, 'http://charm-theme.local/?p=70', 0, 'revision', '', 0),
(71, 1, '2018-09-10 08:20:15', '2018-09-10 08:20:15', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"left\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:20:15', '2018-09-10 08:20:15', '', 57, 'http://charm-theme.local/?p=71', 0, 'revision', '', 0),
(72, 1, '2018-09-10 08:27:25', '2018-09-10 08:27:25', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:27:25', '2018-09-10 08:27:25', '', 57, 'http://charm-theme.local/?p=72', 0, 'revision', '', 0),
(73, 1, '2018-09-10 08:45:42', '2018-09-10 08:45:42', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\"\r\n\r\ntitleService1=\"LOREM IPSUM\" desService1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"\r\n\r\ntitleService2=\"LOREM IPSUM\" desService2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"\r\n\r\ntitleService3=\"LOREM IPSUM\" desService3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"\r\n\r\ntitleService4=\"LOREM IPSUM\" desService4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"\r\n\r\nimage=\"\" ]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:45:42', '2018-09-10 08:45:42', '', 57, 'http://charm-theme.local/?p=73', 0, 'revision', '', 0),
(74, 1, '2018-09-10 08:47:39', '2018-09-10 08:47:39', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\"\r\n\r\ntitle_service1=\"LOREM IPSUM\" des_service1\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"\r\n\r\ntitle_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"\r\n\r\ntitle_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"\r\n\r\ntitle_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"\r\n\r\nimage=\"\" ]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:47:39', '2018-09-10 08:47:39', '', 57, 'http://charm-theme.local/?p=74', 0, 'revision', '', 0),
(75, 1, '2018-09-10 08:49:46', '2018-09-10 08:49:46', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" title_service1=\"LOREM IPSUM\" des_service1\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:49:46', '2018-09-10 08:49:46', '', 57, 'http://charm-theme.local/?p=75', 0, 'revision', '', 0),
(76, 1, '2018-09-10 08:51:07', '2018-09-10 08:51:07', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:51:07', '2018-09-10 08:51:07', '', 57, 'http://charm-theme.local/?p=76', 0, 'revision', '', 0),
(77, 1, '2018-09-10 08:51:54', '2018-09-10 08:51:54', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" a=[ada, ada] title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:51:54', '2018-09-10 08:51:54', '', 57, 'http://charm-theme.local/?p=77', 0, 'revision', '', 0),
(78, 1, '2018-09-10 08:54:05', '2018-09-10 08:54:05', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 08:54:05', '2018-09-10 08:54:05', '', 57, 'http://charm-theme.local/?p=78', 0, 'revision', '', 0),
(79, 1, '2018-09-10 09:03:59', '2018-09-10 09:03:59', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'publish', 'open', 'open', '', 'tasnim-akter', '', '', '2018-09-10 09:03:59', '2018-09-10 09:03:59', '', 0, 'http://charm-theme.local/?post_type=testimonial&#038;p=79', 0, 'testimonial', '', 0),
(80, 1, '2018-09-10 09:03:56', '2018-09-10 09:03:56', '', '2[1]', '', 'inherit', 'open', 'closed', '', '21-2', '', '', '2018-09-10 09:03:56', '2018-09-10 09:03:56', '', 79, 'http://charm-theme.local/wp-content/uploads/2018/09/21.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-09-10 09:03:59', '2018-09-10 09:03:59', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-09-10 09:03:59', '2018-09-10 09:03:59', '', 79, 'http://charm-theme.local/?p=81', 0, 'revision', '', 0),
(82, 1, '2018-09-10 09:12:44', '2018-09-10 09:12:44', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[testimonial number=\"5\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 09:12:44', '2018-09-10 09:12:44', '', 57, 'http://charm-theme.local/?p=82', 0, 'revision', '', 0),
(83, 1, '2018-09-10 09:13:50', '2018-09-10 09:13:50', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'publish', 'open', 'open', '', 'tasnim-akter-2', '', '', '2018-09-10 09:13:50', '2018-09-10 09:13:50', '', 0, 'http://charm-theme.local/?post_type=testimonial&#038;p=83', 0, 'testimonial', '', 0),
(84, 1, '2018-09-10 09:13:50', '2018-09-10 09:13:50', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-09-10 09:13:50', '2018-09-10 09:13:50', '', 83, 'http://charm-theme.local/?p=84', 0, 'revision', '', 0),
(85, 1, '2018-09-10 09:14:04', '2018-09-10 09:14:04', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'publish', 'open', 'open', '', 'tasnim-akter-3', '', '', '2018-09-10 09:14:04', '2018-09-10 09:14:04', '', 0, 'http://charm-theme.local/?post_type=testimonial&#038;p=85', 0, 'testimonial', '', 0),
(86, 1, '2018-09-10 09:14:04', '2018-09-10 09:14:04', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-09-10 09:14:04', '2018-09-10 09:14:04', '', 85, 'http://charm-theme.local/?p=86', 0, 'revision', '', 0),
(87, 1, '2018-09-10 09:20:11', '2018-09-10 09:20:11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'publish', 'open', 'open', '', 'tasnim-akter-4', '', '', '2018-09-10 09:20:11', '2018-09-10 09:20:11', '', 0, 'http://charm-theme.local/?post_type=testimonial&#038;p=87', 0, 'testimonial', '', 0),
(88, 1, '2018-09-10 09:20:11', '2018-09-10 09:20:11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-09-10 09:20:11', '2018-09-10 09:20:11', '', 87, 'http://charm-theme.local/?p=88', 0, 'revision', '', 0),
(89, 1, '2018-09-10 09:20:28', '2018-09-10 09:20:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'publish', 'open', 'open', '', 'tasnim-akter-5', '', '', '2018-09-10 09:20:28', '2018-09-10 09:20:28', '', 0, 'http://charm-theme.local/?post_type=testimonial&#038;p=89', 0, 'testimonial', '', 0),
(90, 1, '2018-09-10 09:20:28', '2018-09-10 09:20:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-10 09:20:28', '2018-09-10 09:20:28', '', 89, 'http://charm-theme.local/?p=90', 0, 'revision', '', 0),
(91, 1, '2018-09-10 09:20:46', '2018-09-10 09:20:46', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'publish', 'open', 'open', '', 'tasnim-akter-6', '', '', '2018-09-10 09:20:46', '2018-09-10 09:20:46', '', 0, 'http://charm-theme.local/?post_type=testimonial&#038;p=91', 0, 'testimonial', '', 0),
(92, 1, '2018-09-10 09:20:46', '2018-09-10 09:20:46', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'Tasnim Akter', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-09-10 09:20:46', '2018-09-10 09:20:46', '', 91, 'http://charm-theme.local/?p=92', 0, 'revision', '', 0),
(93, 1, '2018-09-10 09:43:30', '2018-09-10 09:43:30', '[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[testimonial number=\"5\" title=\"See The Testimonials\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 09:43:30', '2018-09-10 09:43:30', '', 57, 'http://charm-theme.local/?p=93', 0, 'revision', '', 0),
(94, 1, '2018-09-10 09:56:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 09:56:58', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?post_type=charm_package&p=94', 0, 'charm_package', '', 0),
(95, 1, '2018-09-10 10:00:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 10:00:46', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?post_type=charm_package&p=95', 0, 'charm_package', '', 0),
(96, 1, '2018-09-10 10:02:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 10:02:48', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?post_type=charm_package&p=96', 0, 'charm_package', '', 0),
(97, 1, '2018-09-10 10:10:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 10:10:12', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?post_type=charm_package&p=97', 0, 'charm_package', '', 0),
(98, 1, '2018-09-10 10:10:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-10 10:10:32', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?post_type=charm_package&p=98', 0, 'charm_package', '', 0),
(99, 1, '2018-09-10 10:14:48', '2018-09-10 10:14:48', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy', 'Planning for the future', '', 'publish', 'closed', 'closed', '', 'aaaaaaaaaaaaa', '', '', '2018-09-10 13:04:16', '2018-09-10 13:04:16', '', 0, 'http://charm-theme.local/?post_type=charm_package&#038;p=99', 0, 'charm_package', '', 0),
(100, 1, '2018-09-10 10:18:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-10 10:18:57', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?post_type=charm_package&p=100', 0, 'charm_package', '', 0),
(101, 1, '2018-09-10 10:18:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-10 10:18:58', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?post_type=charm_package&p=101', 0, 'charm_package', '', 0),
(102, 1, '2018-09-10 10:29:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-10 10:29:08', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?post_type=charm_package&p=102', 0, 'charm_package', '', 0),
(103, 1, '2018-09-10 10:29:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-10 10:29:29', '0000-00-00 00:00:00', '', 0, 'http://charm-theme.local/?post_type=tmm&p=103', 0, 'tmm', '', 0),
(104, 1, '2018-09-10 12:59:42', '2018-09-10 12:59:42', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy', 'Planning for the future', '', 'inherit', 'closed', 'closed', '', '99-autosave-v1', '', '', '2018-09-10 12:59:42', '2018-09-10 12:59:42', '', 99, 'http://charm-theme.local/?p=104', 0, 'revision', '', 0),
(105, 1, '2018-09-10 13:06:17', '2018-09-10 13:06:17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy', 'Planning for the future', '', 'publish', 'closed', 'closed', '', 'planning-for-the-future', '', '', '2018-09-10 13:45:26', '2018-09-10 13:45:26', '', 0, 'http://charm-theme.local/?post_type=charm_package&#038;p=105', 0, 'charm_package', '', 0),
(106, 1, '2018-09-10 13:06:40', '2018-09-10 13:06:40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy', 'Planning for the future', '', 'publish', 'closed', 'closed', '', 'planning-for-the-future-2', '', '', '2018-09-10 13:45:31', '2018-09-10 13:45:31', '', 0, 'http://charm-theme.local/?post_type=charm_package&#038;p=106', 0, 'charm_package', '', 0),
(107, 1, '2018-09-10 13:15:16', '2018-09-10 13:15:16', '[service number=\"5\"]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[testimonial number=\"5\" title=\"See The Testimonials\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 13:15:16', '2018-09-10 13:15:16', '', 57, 'http://charm-theme.local/?p=107', 0, 'revision', '', 0),
(108, 1, '2018-09-10 13:41:26', '2018-09-10 13:41:26', '[service]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[testimonial number=\"5\" title=\"See The Testimonials\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 13:41:26', '2018-09-10 13:41:26', '', 57, 'http://charm-theme.local/?p=108', 0, 'revision', '', 0),
(109, 1, '2018-09-10 13:46:35', '2018-09-10 13:46:35', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy', 'Planning for the future', '', 'publish', 'closed', 'closed', '', 'planning-for-the-future-3', '', '', '2018-09-10 13:46:35', '2018-09-10 13:46:35', '', 0, 'http://charm-theme.local/?post_type=charm_package&#038;p=109', 0, 'charm_package', '', 0),
(110, 1, '2018-09-10 13:47:57', '2018-09-10 13:47:57', '[service number=\"5\" location=\"home\"]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"left\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]\r\n\r\n[testimonial number=\"5\" title=\"See The Testimonials\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n&nbsp;', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 13:47:57', '2018-09-10 13:47:57', '', 57, 'http://charm-theme.local/?p=110', 0, 'revision', '', 0),
(111, 1, '2018-09-10 13:49:12', '2018-09-10 13:49:12', '[service number=\"5\" location=\"home\"]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"left\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]\r\n\r\n[testimonial number=\"5\" title=\"See The Testimonials\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 13:49:12', '2018-09-10 13:49:12', '', 57, 'http://charm-theme.local/?p=111', 0, 'revision', '', 0),
(112, 1, '2018-09-10 13:51:17', '2018-09-10 13:51:17', '[service number=5]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[package number=\"5\" location=\"service\" title=\"LOREM IPSUM\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[how_we_work title=\"HOW WE WORK\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title1=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items1=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money1=\"$59\" time1=\"Mo\" title2=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items2=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money2=\"$59\" time2=\"Mo\" title3=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items3=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money3=\"$59\" time3=\"Mo\" ]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'Service', '', 'publish', 'closed', 'closed', '', 'service', '', '', '2018-09-11 02:08:17', '2018-09-11 02:08:17', '', 0, 'http://charm-theme.local/?page_id=112', 0, 'page', '', 0),
(113, 1, '2018-09-10 13:51:17', '2018-09-10 13:51:17', '', 'Service', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-10 13:51:17', '2018-09-10 13:51:17', '', 112, 'http://charm-theme.local/?p=113', 0, 'revision', '', 0),
(114, 1, '2018-09-10 13:51:43', '2018-09-10 13:51:43', '', 'SERVICE', '', 'publish', 'closed', 'closed', '', 'service-3', '', '', '2018-09-10 13:52:37', '2018-09-10 13:52:37', '', 0, 'http://charm-theme.local/?p=114', 2, 'nav_menu_item', '', 0),
(115, 1, '2018-09-10 13:53:03', '2018-09-10 13:53:03', '', 'SERVICE', '', 'publish', 'closed', 'closed', '', 'service-2', '', '', '2018-09-10 14:53:40', '2018-09-10 14:53:40', '', 0, 'http://charm-theme.local/?p=115', 2, 'nav_menu_item', '', 0),
(116, 1, '2018-09-10 13:57:56', '2018-09-10 13:57:56', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'publish', 'open', 'open', '', 'lorem-ipsum', '', '', '2018-09-10 13:57:56', '2018-09-10 13:57:56', '', 0, 'http://charm-theme.local/?post_type=service&#038;p=116', 0, 'service', '', 0),
(117, 1, '2018-09-10 13:56:15', '2018-09-10 13:56:15', '', 'f1[1]', '', 'inherit', 'open', 'closed', '', 'f11', '', '', '2018-09-10 13:56:15', '2018-09-10 13:56:15', '', 116, 'http://charm-theme.local/wp-content/uploads/2018/09/f11.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2018-09-10 13:57:56', '2018-09-10 13:57:56', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-09-10 13:57:56', '2018-09-10 13:57:56', '', 116, 'http://charm-theme.local/?p=118', 0, 'revision', '', 0),
(119, 1, '2018-09-10 14:00:45', '2018-09-10 14:00:45', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'publish', 'open', 'open', '', 'lorem-ipsum-2', '', '', '2018-09-10 14:00:58', '2018-09-10 14:00:58', '', 0, 'http://charm-theme.local/?post_type=service&#038;p=119', 0, 'service', '', 0),
(120, 1, '2018-09-10 14:00:49', '2018-09-10 14:00:49', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'publish', 'open', 'open', '', 'lorem-ipsum-3', '', '', '2018-09-10 14:01:05', '2018-09-10 14:01:05', '', 0, 'http://charm-theme.local/?post_type=service&#038;p=120', 0, 'service', '', 0),
(121, 1, '2018-09-10 14:00:52', '2018-09-10 14:00:52', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'publish', 'open', 'open', '', 'lorem-ipsum-4', '', '', '2018-09-10 14:01:10', '2018-09-10 14:01:10', '', 0, 'http://charm-theme.local/?post_type=service&#038;p=121', 0, 'service', '', 0),
(122, 1, '2018-09-10 14:00:58', '2018-09-10 14:00:58', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-09-10 14:00:58', '2018-09-10 14:00:58', '', 119, 'http://charm-theme.local/?p=122', 0, 'revision', '', 0),
(123, 1, '2018-09-10 14:01:05', '2018-09-10 14:01:05', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2018-09-10 14:01:05', '2018-09-10 14:01:05', '', 120, 'http://charm-theme.local/?p=123', 0, 'revision', '', 0),
(124, 1, '2018-09-10 14:01:10', '2018-09-10 14:01:10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-09-10 14:01:10', '2018-09-10 14:01:10', '', 121, 'http://charm-theme.local/?p=124', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(125, 1, '2018-09-10 14:04:58', '2018-09-10 14:04:58', '[package number=\"5\" location=\"home\"]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"left\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]\r\n\r\n[testimonial number=\"5\" title=\"See The Testimonials\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-10 14:04:58', '2018-09-10 14:04:58', '', 57, 'http://charm-theme.local/?p=125', 0, 'revision', '', 0),
(126, 1, '2018-09-10 14:14:26', '2018-09-10 14:14:26', '[service ]', 'Service', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-10 14:14:26', '2018-09-10 14:14:26', '', 112, 'http://charm-theme.local/?p=126', 0, 'revision', '', 0),
(127, 1, '2018-09-10 14:15:05', '2018-09-10 14:15:05', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'publish', 'open', 'open', '', 'lorem-ipsum-5', '', '', '2018-09-10 14:15:28', '2018-09-10 14:15:28', '', 0, 'http://charm-theme.local/?post_type=service&#038;p=127', 0, 'service', '', 0),
(128, 1, '2018-09-10 14:15:08', '2018-09-10 14:15:08', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'publish', 'open', 'open', '', 'lorem-ipsum-6', '', '', '2018-09-10 14:15:33', '2018-09-10 14:15:33', '', 0, 'http://charm-theme.local/?post_type=service&#038;p=128', 0, 'service', '', 0),
(129, 1, '2018-09-10 14:15:10', '2018-09-10 14:15:10', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'publish', 'open', 'open', '', 'lorem-ipsum-7', '', '', '2018-09-10 14:15:37', '2018-09-10 14:15:37', '', 0, 'http://charm-theme.local/?post_type=service&#038;p=129', 0, 'service', '', 0),
(130, 1, '2018-09-10 14:15:14', '2018-09-10 14:15:14', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'publish', 'open', 'open', '', 'lorem-ipsum-8', '', '', '2018-09-10 14:15:41', '2018-09-10 14:15:41', '', 0, 'http://charm-theme.local/?post_type=service&#038;p=130', 0, 'service', '', 0),
(131, 1, '2018-09-10 14:15:16', '2018-09-10 14:15:16', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'publish', 'open', 'open', '', 'lorem-ipsum-9', '', '', '2018-09-10 14:15:44', '2018-09-10 14:15:44', '', 0, 'http://charm-theme.local/?post_type=service&#038;p=131', 0, 'service', '', 0),
(132, 1, '2018-09-10 14:15:18', '2018-09-10 14:15:18', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'publish', 'open', 'open', '', 'lorem-ipsum-10', '', '', '2018-09-10 14:15:48', '2018-09-10 14:15:48', '', 0, 'http://charm-theme.local/?post_type=service&#038;p=132', 0, 'service', '', 0),
(133, 1, '2018-09-10 14:15:28', '2018-09-10 14:15:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-09-10 14:15:28', '2018-09-10 14:15:28', '', 127, 'http://charm-theme.local/?p=133', 0, 'revision', '', 0),
(134, 1, '2018-09-10 14:15:33', '2018-09-10 14:15:33', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-09-10 14:15:33', '2018-09-10 14:15:33', '', 128, 'http://charm-theme.local/?p=134', 0, 'revision', '', 0),
(135, 1, '2018-09-10 14:15:37', '2018-09-10 14:15:37', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-09-10 14:15:37', '2018-09-10 14:15:37', '', 129, 'http://charm-theme.local/?p=135', 0, 'revision', '', 0),
(136, 1, '2018-09-10 14:15:41', '2018-09-10 14:15:41', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2018-09-10 14:15:41', '2018-09-10 14:15:41', '', 130, 'http://charm-theme.local/?p=136', 0, 'revision', '', 0),
(137, 1, '2018-09-10 14:15:44', '2018-09-10 14:15:44', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2018-09-10 14:15:44', '2018-09-10 14:15:44', '', 131, 'http://charm-theme.local/?p=137', 0, 'revision', '', 0),
(138, 1, '2018-09-10 14:15:48', '2018-09-10 14:15:48', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum', 'LOREM IPSUM', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2018-09-10 14:15:48', '2018-09-10 14:15:48', '', 132, 'http://charm-theme.local/?p=138', 0, 'revision', '', 0),
(139, 1, '2018-09-10 14:16:13', '2018-09-10 14:16:13', '[service number=5]', 'Service', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-10 14:16:13', '2018-09-10 14:16:13', '', 112, 'http://charm-theme.local/?p=139', 0, 'revision', '', 0),
(140, 1, '2018-09-10 14:16:46', '2018-09-10 14:16:46', '[service number=5]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]', 'Service', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-10 14:16:46', '2018-09-10 14:16:46', '', 112, 'http://charm-theme.local/?p=140', 0, 'revision', '', 0),
(141, 1, '2018-09-10 14:17:32', '2018-09-10 14:17:32', '[service number=5]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[package number=\"5\" location=\"service\"]', 'Service', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-10 14:17:32', '2018-09-10 14:17:32', '', 112, 'http://charm-theme.local/?p=141', 0, 'revision', '', 0),
(142, 1, '2018-09-10 14:20:07', '2018-09-10 14:20:07', '[service number=5]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[package number=\"5\" location=\"service\" title=\"LOREM IPSUM\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"]', 'Service', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-10 14:20:07', '2018-09-10 14:20:07', '', 112, 'http://charm-theme.local/?p=142', 0, 'revision', '', 0),
(143, 1, '2018-09-10 14:22:21', '2018-09-10 14:22:21', '[service number=5]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[package number=\"5\" location=\"service\" title=\"LOREM IPSUM\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'Service', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-10 14:22:21', '2018-09-10 14:22:21', '', 112, 'http://charm-theme.local/?p=143', 0, 'revision', '', 0),
(144, 1, '2018-09-11 02:08:11', '2018-09-11 02:08:11', '[service number=5]\n\n[charm_video title=\"Growing\n\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\n\n[package number=\"5\" location=\"service\" title=\"LOREM IPSUM\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"]\n\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\n\n[how_we_work title=\"HOW WE WORK\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title1=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items1=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money1=\"$59\" time1=\"Mo\"\n\ntitle2=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items2=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money2=\"$59\" time2=\"Mo\"\n\ntitle3=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items3=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money3=\"$59\" time3=\"Mo\" ]\n\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'Service', '', 'inherit', 'closed', 'closed', '', '112-autosave-v1', '', '', '2018-09-11 02:08:11', '2018-09-11 02:08:11', '', 112, 'http://charm-theme.local/?p=144', 0, 'revision', '', 0),
(145, 1, '2018-09-10 14:42:28', '2018-09-10 14:42:28', '[service number=5]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[package number=\"5\" location=\"service\" title=\"LOREM IPSUM\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[how_we_work title=\"HOW WE WORK\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"\r\n\r\ntitle1=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items1=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money1=\"$59\" time1=\"Mo\"\r\n\r\ntitle2=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items2=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money2=\"$59\" time2=\"Mo\"\r\n\r\ntitle3=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items3=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money3=\"$59\" time3=\"Mo\" ]', 'Service', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-10 14:42:28', '2018-09-10 14:42:28', '', 112, 'http://charm-theme.local/?p=145', 0, 'revision', '', 0),
(146, 1, '2018-09-10 14:48:55', '2018-09-10 14:48:55', '[service number=5]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[package number=\"5\" location=\"service\" title=\"LOREM IPSUM\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[how_we_work title=\"HOW WE WORK\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"\r\n\r\ntitle1=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items1=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money1=\"$59\" time1=\"Mo\"\r\n\r\ntitle2=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items2=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money2=\"$59\" time2=\"Mo\"\r\n\r\ntitle3=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items3=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money3=\"$59\" time3=\"Mo\" ]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'Service', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-10 14:48:55', '2018-09-10 14:48:55', '', 112, 'http://charm-theme.local/?p=146', 0, 'revision', '', 0),
(147, 1, '2018-09-10 14:53:08', '2018-09-10 14:53:08', '[blog number=5]', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-09-10 15:05:42', '2018-09-10 15:05:42', '', 0, 'http://charm-theme.local/?page_id=147', 0, 'page', '', 0),
(148, 1, '2018-09-10 14:53:08', '2018-09-10 14:53:08', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2018-09-10 14:53:08', '2018-09-10 14:53:08', '', 147, 'http://charm-theme.local/?p=148', 0, 'revision', '', 0),
(149, 1, '2018-09-10 14:53:40', '2018-09-10 14:53:40', '', 'BLOG', '', 'publish', 'closed', 'closed', '', 'blog-2', '', '', '2018-09-10 14:53:40', '2018-09-10 14:53:40', '', 0, 'http://charm-theme.local/?p=149', 4, 'nav_menu_item', '', 0),
(150, 1, '2018-09-10 14:54:54', '2018-09-10 14:54:54', '{\n    \"page_for_posts\": {\n        \"value\": \"147\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 14:54:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8f547997-b9c2-45d9-9f8e-b5f5e90a8817', '', '', '2018-09-10 14:54:54', '2018-09-10 14:54:54', '', 0, 'http://charm-theme.local/?p=150', 0, 'customize_changeset', '', 0),
(151, 1, '2018-09-10 14:55:16', '2018-09-10 14:55:16', '{\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-10 14:55:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '75163a23-572b-4cb7-9cad-15a3174ff6d9', '', '', '2018-09-10 14:55:16', '2018-09-10 14:55:16', '', 0, 'http://charm-theme.local/?p=151', 0, 'customize_changeset', '', 0),
(152, 1, '2018-09-10 15:05:42', '2018-09-10 15:05:42', '[blog number=5]', 'Blog', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2018-09-10 15:05:42', '2018-09-10 15:05:42', '', 147, 'http://charm-theme.local/?p=152', 0, 'revision', '', 0),
(153, 1, '2018-09-10 16:19:18', '2018-09-10 16:19:18', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'publish', 'open', 'open', '', 'top-tips-on-how-to-make-outsourcing-pay-6', '', '', '2018-09-10 16:20:08', '2018-09-10 16:20:08', '', 0, 'http://charm-theme.local/?p=153', 0, 'post', '', 0),
(154, 1, '2018-09-10 16:19:23', '2018-09-10 16:19:23', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'publish', 'open', 'open', '', 'top-tips-on-how-to-make-outsourcing-pay-5', '', '', '2018-09-10 16:20:03', '2018-09-10 16:20:03', '', 0, 'http://charm-theme.local/?p=154', 0, 'post', '', 0),
(155, 1, '2018-09-10 16:19:27', '2018-09-10 16:19:27', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'publish', 'open', 'open', '', 'top-tips-on-how-to-make-outsourcing-pay-4', '', '', '2018-09-10 16:19:56', '2018-09-10 16:19:56', '', 0, 'http://charm-theme.local/?p=155', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(156, 1, '2018-09-10 16:19:31', '2018-09-10 16:19:31', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'publish', 'open', 'open', '', 'top-tips-on-how-to-make-outsourcing-pay-3', '', '', '2018-09-10 16:19:49', '2018-09-10 16:19:49', '', 0, 'http://charm-theme.local/?p=156', 0, 'post', '', 0),
(157, 1, '2018-09-10 16:19:36', '2018-09-10 16:19:36', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'publish', 'open', 'open', '', 'top-tips-on-how-to-make-outsourcing-pay-2', '', '', '2018-09-10 16:19:43', '2018-09-10 16:19:43', '', 0, 'http://charm-theme.local/?p=157', 0, 'post', '', 0),
(158, 1, '2018-09-10 16:19:43', '2018-09-10 16:19:43', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2018-09-10 16:19:43', '2018-09-10 16:19:43', '', 157, 'http://charm-theme.local/?p=158', 0, 'revision', '', 0),
(159, 1, '2018-09-10 16:19:49', '2018-09-10 16:19:49', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2018-09-10 16:19:49', '2018-09-10 16:19:49', '', 156, 'http://charm-theme.local/?p=159', 0, 'revision', '', 0),
(160, 1, '2018-09-10 16:19:56', '2018-09-10 16:19:56', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2018-09-10 16:19:56', '2018-09-10 16:19:56', '', 155, 'http://charm-theme.local/?p=160', 0, 'revision', '', 0),
(161, 1, '2018-09-10 16:20:03', '2018-09-10 16:20:03', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2018-09-10 16:20:03', '2018-09-10 16:20:03', '', 154, 'http://charm-theme.local/?p=161', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(162, 1, '2018-09-10 16:20:08', '2018-09-10 16:20:08', 'You finally had the guts to start your own business. You are now living the dream of being your own boss. You work your own hours and most importantly, you do a job that you love.\r\n\r\nHowever, things aren’t as exciting as they used to be when you started out. The dream has now turned into a nightmare.<img class=\"alignright wp-image-2156 \" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/confussed-300x300.jpg\" alt=\"Stressed?\" width=\"271\" height=\"271\" />\r\n\r\nYou find yourself working all the time. You are slowly feeling overwhelmed from all the long hours you put in. You can’t even remember how a weekend off looked like. A vacation? Oh, my that’s a pipe dream!\r\n\r\nGod forbid if you get sick and have to take a couple of days off. Who will do all the important stuff, which is basically EVERYTHING?\r\n\r\nYou had goals of growing your business in under a year but you’re still struggling and your profits are stagnating.\r\n\r\nThe good news is that things are quickly changing. The way people do business is also changing. It’s totally possible to scale your business and double your profits while still enjoying your life away from your business.\r\n\r\n<strong>How is that possible?</strong>\r\n\r\nThe secret is outsourcing.\r\n\r\nThere are so many benefits of outsourcing. More personal freedom, increased profits, peace of mind knowing you have a well-oiled machine running and so much more.\r\n\r\nBut I’m sure you’re more interested in how this will translate into more money for your business. How does hiring people, I know you’re thinking that’s an extra expense, and working less really mean more money for you?\r\n\r\nSo let’s cut straight to how to actually do it.\r\n\r\n<strong>Lower Your Labor Costs</strong>\r\n\r\nYou are at a point in your business where you admit that you need help. You are ready to hire more staff to help you grow your business because even though you’re a ninja business owner, you can’t do it all by yourself.\r\n\r\nBut before you hire full-time employees, consider outsourcing instead.\r\n\r\nBoth small and large businesses are saving a lot of money by outsourcing their staff. Hiring freelance talent is way cheaper than hiring full-time staff. You also get to hire people to work on you on a need basis.\r\n\r\nResearch shows that<a href=\"https://due.com/blog/saving-considerable-money-on-labor-costs/\" target=\"_blank\" rel=\"noopener\"> a company stands to save about 60% in operational costs</a> when using freelancers.\r\n\r\n<strong>Get More Done</strong>\r\n\r\nIf you\'re a sole business owner, you\'re obviously doing all the work by yourself. Naturally, you can only do so much alone. Let\'s imagine that you\'re selling a product online. Currently, you\'ve managed to make three sales a day.\r\n\r\nYou have to think about new product ideas, update your website, send out emails, post new content on social media, go out and meet customers, address customer concerns and so much more. How much time do you really have to actually market your products?\r\n\r\nNow imagine if you outsource your marketing tasks to an experienced freelance copywriter. Their only job is to market your products online. They have the time and the expertise. You give them a target of 6 products per day and they hit and surpass this target.\r\n\r\nNow you\'re making more than double the sales you did when you were working alone. This for just an extra few dollars to pay the copywriter. Freelance copywriters are cheaper to hire than a full-time digital marketing specialist.\r\n\r\nOn average, a digital marketing specialist earns a salary up to $150,000 per year. This is without adding employee benefits. A freelance copywriter will charge about $30 to $50 per hour and receives no benefits.\r\n\r\n<strong>Diversify Your Business</strong>\r\n\r\nWorking by yourself means that you can only do what you’re good at. This limits the kind of business that you can run. In most cases, your ideas remain just that, ideas.\r\n\r\nOutsourcing, however, allows you to hire people who will execute your business ideas allowing you to diversify your income sources. Outsource tasks that you are not very good at and get the job done in a much shorter time and at a reasonable price.\r\n\r\nFor instance, if you’re a business coach and you realize that after taking your coaching program your customers are interested in getting a business website right away. You are not a web design expert so how would you take advantage of this great business opportunity to make more money?\r\n\r\nJoin our <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> where we have an entire team that can handle this for you. We will take over the web design task at a very affordable rate that you can add your percentage onto your rate. Now you can offer a premium coaching service without any headache.\r\n\r\nRemember, the aim of outsourcing is to make more money, save time, and acquire skills and labor that are not available within your business.\r\n\r\n<strong>Lower Your Business Risks</strong>\r\n\r\nTo make more money, you need to be brave and take certain risks. Try out new things and see how they work out. You may succeed, or you may fail. To lower the risk of failing, outsource such projects.\r\n\r\nYou can try to outsource projects on your own and risk failing or get very stressed trying to find the right freelancers for your business or you can let us handle this for you leaving you free to focus on sales.\r\n\r\nFor example, you need regular blog posts and social media content but you don’t like writing. Trying to find writers is not what interests you, in fact, you would rather rip your hair out.\r\n\r\nSo join our team where we have experienced writers ready to work with you saving you time, money and headache.\r\n\r\n<strong>Start Your Own Agency</strong>\r\n\r\nWondering how to start your own agency without going broke?\r\n\r\nYou can spend months searching for talent online on different platforms, going through hundreds of applicants, interviewing them, giving them trial tasks and hoping you make a good hire.\r\n\r\nOr you can use our team that is already trained and highly experienced led by a project manager, Charmaine Thring with over 20 years experience outsourcing any task you can think of.\r\n\r\n<span style=\"color: #000000;\"><img class=\"wp-image-2165 alignleft\" src=\"https://charmoutsourcing.com/wp-content/uploads/2018/07/outsource-300x234.jpg\" alt=\"\" width=\"363\" height=\"284\" /></span>\r\n\r\nThe team also includes project managers, a sales team, customer support agents, social media managers, copywriters, accountants etc., who cover all the timezones in the world.\r\n\r\n<span style=\"color: #000000;\"> </span>A dedicated team that is highly experienced will help you make money even when you’re away from the business. The best part is that this team will not cost you more than just their salaries.\r\n\r\nYou don’t have to worry about renting office space, buying furniture and stationery, Internet or other overheads. You don’t have to worry about paying for employee insurance, time off, contributing for retirement funds etc. Money for such costs will go to your profits.\r\n\r\nOutsourcing is brilliant and the possibilities are endless. There are no limits on how much your business can grow by using freelancers. Only the sky is your limit.\r\n\r\nSign up for the <a href=\"https://go.charmoutsourcing.com/sales-membership-outsourcing2\" target=\"_blank\" rel=\"noopener\">Ultimate Outsourcing System</a> and learn the fundamentals of what tasks you can outsource and who you can outsource them to. Understand how to create systems and processes for you freelancers to follow allowing you to scale and grow your business in record time!', 'Top Tips on How to Make Outsourcing Pay.', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2018-09-10 16:20:08', '2018-09-10 16:20:08', '', 153, 'http://charm-theme.local/?p=162', 0, 'revision', '', 0),
(163, 1, '2018-09-11 02:08:17', '2018-09-11 02:08:17', '[service number=5]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"right\"]\r\n\r\n[package number=\"5\" location=\"service\" title=\"LOREM IPSUM\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[how_we_work title=\"HOW WE WORK\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum , Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" title1=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items1=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money1=\"$59\" time1=\"Mo\" title2=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items2=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money2=\"$59\" time2=\"Mo\" title3=\"VIRTUAL TEAM MEMBERSVIRTUAL TEAM MEMBERS\" items3=\"Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text/#Lorem Ipsum is simply dummy text\" money3=\"$59\" time3=\"Mo\" ]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'Service', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-11 02:08:17', '2018-09-11 02:08:17', '', 112, 'http://charm-theme.local/?p=163', 0, 'revision', '', 0),
(164, 1, '2018-09-11 07:19:11', '2018-09-11 07:19:11', '[package number=\"5\" location=\"home\"]\r\n\r\n[charm_video title=\"Growing\r\n\r\nyour dream\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum,\" url=\"https://www.youtube.com/embed/zpOULjyy-n8?rel=0\" floatvideo=\"left\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]\r\n\r\n[service_home_page title=\"LOREM IPSUM\" icon1=\"fa-university\" title_service1=\"LOREM IPSUM\" des_service1=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" icon2=\"fa-university\" title_service2=\"LOREM IPSUM\" des_service3=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" icon3=\"fa-university\" title_service3=\"LOREM IPSUM\" des_service2=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" icon4=\"fa-university\" title_service4=\"LOREM IPSUM\" des_service4=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy Lorem Ipsum\" image=\"\" ]\r\n\r\n[testimonial number=\"5\" title=\"See The Testimonials\"]\r\n\r\n[contact_us title=\"Please feel free to contact us ...\" description=\"Lorem Ipsum is simply dummy text of the printing and typesetting industry\" labelBtn=\"Contact us\" linkContact=\"http://charm-theme.local/?page_id=31\"]', 'HOME', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-09-11 07:19:11', '2018-09-11 07:19:11', '', 57, 'http://charm-theme.local/?p=164', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'Main', 'main', 0),
(3, 'Charm outsourcing', 'charm-outsourcing', 0),
(4, 'Topics', 'topics', 0),
(5, 'MAIN MENU', 'main-menu', 0),
(6, 'abc', 'abc', 0),
(7, 'aadad', 'aadad', 0),
(8, 'dada', 'dada', 0),
(9, 'adad', 'adad', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(27, 2, 0),
(28, 2, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(36, 4, 0),
(37, 4, 0),
(38, 4, 0),
(39, 5, 0),
(41, 5, 0),
(42, 5, 0),
(43, 5, 0),
(54, 1, 0),
(54, 6, 0),
(54, 7, 0),
(54, 8, 0),
(54, 9, 0),
(114, 5, 0),
(115, 2, 0),
(149, 2, 0),
(153, 1, 0),
(153, 6, 0),
(153, 7, 0),
(153, 8, 0),
(153, 9, 0),
(154, 1, 0),
(154, 6, 0),
(154, 7, 0),
(154, 8, 0),
(154, 9, 0),
(155, 1, 0),
(155, 6, 0),
(155, 7, 0),
(155, 8, 0),
(155, 9, 0),
(156, 1, 0),
(156, 6, 0),
(156, 7, 0),
(156, 8, 0),
(156, 9, 0),
(157, 1, 0),
(157, 6, 0),
(157, 7, 0),
(157, 8, 0),
(157, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 7),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 3),
(5, 5, 'nav_menu', '', 0, 5),
(6, 6, 'post_tag', '', 0, 6),
(7, 7, 'post_tag', '', 0, 6),
(8, 8, 'post_tag', '', 0, 6),
(9, 9, 'post_tag', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"04950ec469f1802cb44625b9a5c5f11d231a0e6250153775ce041217ab5e7129\";a:4:{s:10:\"expiration\";i:1537757030;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36\";s:5:\"login\";i:1536547430;}s:64:\"2b66c33387cd0417a9f696ef620eb3f8e9f60b6fc1c390d1f7559aac78cc8db0\";a:4:{s:10:\"expiration\";i:1536769145;s:2:\"ip\";s:12:\"192.168.50.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536596345;}s:64:\"06a3a14d173086154db8677997e079a8159b63c915d250c8aa7a480f1367fdc2\";a:4:{s:10:\"expiration\";i:1536804240;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36\";s:5:\"login\";i:1536631440;}s:64:\"7845b826dab53c44e677be1e642f513cbc971c709910cf53407ed4d3f3510608\";a:4:{s:10:\"expiration\";i:1536804250;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36\";s:5:\"login\";i:1536631450;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'nav_menu_recently_edited', '3'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'wp_user-settings', 'hidetb=0&editor=html&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1536650258'),
(24, 1, 'closedpostboxes_post', 'a:1:{i:0;s:11:\"categorydiv\";}'),
(25, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(26, 1, 'closedpostboxes_charm_package', 'a:0:{}'),
(27, 1, 'metaboxhidden_charm_package', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'meta-box-order_charm_package', 'a:3:{s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:21:\"location,icon_package\";}'),
(29, 1, 'screen_layout_charm_package', '2'),
(31, 1, 'closedpostboxes_service', 'a:3:{i:0;s:10:\"wpseo_meta\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";}'),
(32, 1, 'metaboxhidden_service', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(33, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:167:\"Don\'t miss your crawl errors: <a href=\"http://charm-theme.local/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:302:\"You do not have your postname in the URL of your posts and pages, it is highly recommended that you do. Consider setting your permalink structure to <strong>/%postname%/</strong>.<br/>You can fix this on the <a href=\"http://charm-theme.local/wp-admin/options-permalink.php\">Permalink settings page</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:30:\"wpseo-dismiss-permalink-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bb1EAJgIKGEEIpLG01fRMakWyY.ktR1', 'admin', 'dinhnv@vnext.com.vn', '', '2018-09-08 16:07:40', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(1, '', 112, 0, 'internal'),
(2, 'http://charm-theme.local/?charm_package=planning-for-the-future-2', 112, 57, 'internal'),
(3, 'http://charm-theme.local/?page_id=31', 112, 31, 'internal'),
(4, 'http://charm-theme.local/?page_id=31', 112, 31, 'internal'),
(5, '', 57, 0, 'internal'),
(6, 'http://charm-theme.local/?charm_package=planning-for-the-future-3', 57, 57, 'internal'),
(7, '', 57, 0, 'internal'),
(8, 'http://charm-theme.local/?charm_package=planning-for-the-future', 57, 57, 'internal'),
(9, '', 57, 0, 'internal'),
(10, 'http://charm-theme.local/?charm_package=aaaaaaaaaaaaa', 57, 57, 'internal'),
(11, 'http://charm-theme.local/?page_id=31', 57, 31, 'internal'),
(12, 'http://charm-theme.local/?page_id=31', 57, 31, 'internal');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(31, NULL, 4),
(57, 8, 4),
(112, 4, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

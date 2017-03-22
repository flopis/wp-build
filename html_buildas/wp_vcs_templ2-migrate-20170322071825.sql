# WordPress MySQL database migration
#
# Generated: Wednesday 22. March 2017 07:18 UTC
# Hostname: localhost
# Database: `wp_vcs_templ2`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress komentatorius', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-03-03 13:20:12', '2017-03-03 15:20:12', 'Sveiki, čia komentaras.\nJei norite pradėti moderuoti, taisyti ir trinti komentarus, aplankykite Komentarų langą valdymo skyde.\nKomentatorių atvaizdai pateikiami iš <a href="https://gravatar.com">Gravatar</a> sistemos.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/vcs-2/vaidas-vaznys', 'yes'),
(2, 'home', 'http://localhost/vcs-2/vaidas-vaznys', 'yes'),
(3, 'blogname', '*Mintis', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vaidas.vazny@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y F j', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'Y F j - G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:93:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=48&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:3;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:4;s:17:"sumome/sumome.php";i:5;s:27:"updraftplus/updraftplus.php";i:6;s:24:"wordpress-seo/wp-seo.php";i:7;s:31:"wp-migrate-db/wp-migrate-db.php";i:8;s:23:"wp-smushit/wp-smush.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-2', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:82:"C:\\Wamp\\www\\vcs-2\\vaidas-vaznys/wp-content/plugins/wp-migrate-db/wp-migrate-db.php";i:1;s:79:"C:\\Wamp\\www\\vcs-2\\vaidas-vaznys/wp-content/plugins/elementor/includes/fonts.php";i:2;s:80:"C:\\Wamp\\www\\vcs-2\\vaidas-vaznys/wp-content/plugins/elementor/includes/editor.php";i:3;s:76:"C:\\Wamp\\www\\vcs-2\\vaidas-vaznys/wp-content/plugins/elementor/includes/db.php";i:4;s:84:"C:\\Wamp\\www\\vcs-2\\vaidas-vaznys/wp-content/plugins/elementor/includes/conditions.php";}', 'no'),
(40, 'template', 'vcs-starter', 'yes'),
(41, 'stylesheet', 'vcs-starter', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:23:"elementor/elementor.php";a:2:{i:0;s:21:"Elementor\\Maintenance";i:1;s:9:"uninstall";}s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:15:"hicpo_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '60', 'yes'),
(84, 'page_on_front', '48', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'lt_LT', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:6:{i:1490178958;a:1:{s:28:"elementor/tracker/send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490196016;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1490196017;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1490196078;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490223617;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1489561261;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(150, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"vaidas.vazny@gmail.com";s:7:"version";s:5:"4.7.3";s:9:"timestamp";i:1489411049;}', 'no'),
(169, 'theme_mods_twentyfifteen', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(172, 'recently_activated', 'a:1:{s:23:"elementor/elementor.php";i:1490131392;}', 'yes'),
(179, 'acf_version', '4.4.11', 'yes'),
(237, 'current_theme', 'VCS Starter', 'yes'),
(238, 'theme_mods_vcs-starter', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:18:"primary-navigation";i:2;}}', 'yes'),
(239, 'theme_switched', '', 'yes'),
(267, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(325, 'elementor_version', '1.3.5', 'yes'),
(327, '_elementor_installed_time', '1490012615', 'yes'),
(328, 'elementor_remote_info_templates_data', 'a:48:{i:0;a:7:{s:2:"id";s:3:"147";s:5:"title";s:16:"Homepage – App";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0004.png";s:12:"tmpl_created";s:10:"1470829868";s:6:"author";s:9:"Elementor";s:3:"url";s:43:"https://library.elementor.com/homepage-app/";s:6:"is_pro";s:1:"0";}i:1;a:7:{s:2:"id";s:3:"492";s:5:"title";s:21:"Homepage – Law firm";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/10/0024.png";s:12:"tmpl_created";s:10:"1477388365";s:6:"author";s:9:"Elementor";s:3:"url";s:48:"https://library.elementor.com/homepage-law-firm/";s:6:"is_pro";s:1:"0";}i:2;a:7:{s:2:"id";s:3:"225";s:5:"title";s:23:"Homepage – Restaurant";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0016.png";s:12:"tmpl_created";s:10:"1470829872";s:6:"author";s:9:"Elementor";s:3:"url";s:50:"https://library.elementor.com/homepage-restaurant/";s:6:"is_pro";s:1:"0";}i:3;a:7:{s:2:"id";s:3:"777";s:5:"title";s:28:"Homepage &#8211; Coffee Shop";s:9:"thumbnail";s:70:"https://library.elementor.com/wp-content/uploads/2017/01/rest-home.jpg";s:12:"tmpl_created";s:10:"1485273092";s:6:"author";s:9:"Elementor";s:3:"url";s:51:"https://library.elementor.com/homepage-coffee-shop/";s:6:"is_pro";s:1:"1";}i:4;a:7:{s:2:"id";s:3:"519";s:5:"title";s:20:"Homepage – Fitness";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/10/0023.png";s:12:"tmpl_created";s:10:"1477388808";s:6:"author";s:9:"Elementor";s:3:"url";s:47:"https://library.elementor.com/homepage-fitness/";s:6:"is_pro";s:1:"0";}i:5;a:7:{s:2:"id";s:3:"181";s:5:"title";s:23:"Homepage &#8211; Agency";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0019.png";s:12:"tmpl_created";s:10:"1470826567";s:6:"author";s:9:"Elementor";s:3:"url";s:46:"https://library.elementor.com/homepage-agency/";s:6:"is_pro";s:1:"0";}i:6;a:7:{s:2:"id";s:3:"728";s:5:"title";s:33:"Homepage &#8211; Delivery Company";s:9:"thumbnail";s:87:"https://library.elementor.com/wp-content/uploads/2017/01/delivery-company-home-page.jpg";s:12:"tmpl_created";s:10:"1485269993";s:6:"author";s:9:"Elementor";s:3:"url";s:56:"https://library.elementor.com/homepage-delivery-company/";s:6:"is_pro";s:1:"1";}i:7;a:7:{s:2:"id";s:3:"463";s:5:"title";s:18:"Homepage – Study";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/10/0022.png";s:12:"tmpl_created";s:10:"1477388340";s:6:"author";s:9:"Elementor";s:3:"url";s:45:"https://library.elementor.com/homepage-study/";s:6:"is_pro";s:1:"0";}i:8;a:7:{s:2:"id";s:3:"751";s:5:"title";s:25:"Homepage &#8211; Interior";s:9:"thumbnail";s:74:"https://library.elementor.com/wp-content/uploads/2017/01/interior-home.png";s:12:"tmpl_created";s:10:"1485269743";s:6:"author";s:9:"Elementor";s:3:"url";s:48:"https://library.elementor.com/homepage-interior/";s:6:"is_pro";s:1:"1";}i:9;a:7:{s:2:"id";s:4:"1068";s:5:"title";s:27:"Homepage &#8211; Copywriter";s:9:"thumbnail";s:71:"https://library.elementor.com/wp-content/uploads/2017/03/copywriter.png";s:12:"tmpl_created";s:10:"1488805928";s:6:"author";s:9:"Elementor";s:3:"url";s:50:"https://library.elementor.com/homepage-copywriter/";s:6:"is_pro";s:1:"1";}i:10;a:7:{s:2:"id";s:4:"1085";s:5:"title";s:21:"About &#8211; Startup";s:9:"thumbnail";s:68:"https://library.elementor.com/wp-content/uploads/2017/03/Startup.png";s:12:"tmpl_created";s:10:"1488810874";s:6:"author";s:9:"Elementor";s:3:"url";s:44:"https://library.elementor.com/about-startup/";s:6:"is_pro";s:1:"0";}i:11;a:7:{s:2:"id";s:3:"143";s:5:"title";s:18:"About – Personal";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0010.png";s:12:"tmpl_created";s:10:"1470820447";s:6:"author";s:9:"Elementor";s:3:"url";s:45:"https://library.elementor.com/about-personal/";s:6:"is_pro";s:1:"0";}i:12;a:7:{s:2:"id";s:3:"101";s:5:"title";s:16:"About &#8211; CV";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0018.png";s:12:"tmpl_created";s:10:"1470829785";s:6:"author";s:9:"Elementor";s:3:"url";s:39:"https://library.elementor.com/about-cv/";s:6:"is_pro";s:1:"0";}i:13;a:7:{s:2:"id";s:3:"140";s:5:"title";s:21:"About – Art Gallery";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0009.png";s:12:"tmpl_created";s:10:"1470820463";s:6:"author";s:9:"Elementor";s:3:"url";s:48:"https://library.elementor.com/about-art-gallery/";s:6:"is_pro";s:1:"0";}i:14;a:7:{s:2:"id";s:3:"213";s:5:"title";s:22:"About – Architecture";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0008.png";s:12:"tmpl_created";s:10:"1470829766";s:6:"author";s:9:"Elementor";s:3:"url";s:49:"https://library.elementor.com/about-architecture/";s:6:"is_pro";s:1:"0";}i:15;a:7:{s:2:"id";s:3:"753";s:5:"title";s:22:"About &#8211; Interior";s:9:"thumbnail";s:75:"https://library.elementor.com/wp-content/uploads/2017/01/Interior-About.png";s:12:"tmpl_created";s:10:"1485269710";s:6:"author";s:9:"Elementor";s:3:"url";s:45:"https://library.elementor.com/about-interior/";s:6:"is_pro";s:1:"1";}i:16;a:7:{s:2:"id";s:3:"730";s:5:"title";s:24:"Landing Page &#8211; App";s:9:"thumbnail";s:78:"https://library.elementor.com/wp-content/uploads/2017/01/app.-landing-page.jpg";s:12:"tmpl_created";s:10:"1485273430";s:6:"author";s:9:"Elementor";s:3:"url";s:47:"https://library.elementor.com/landing-page-app/";s:6:"is_pro";s:1:"1";}i:17;a:7:{s:2:"id";s:3:"643";s:5:"title";s:29:"Langing Page &#8211; Festival";s:9:"thumbnail";s:69:"https://library.elementor.com/wp-content/uploads/2016/12/festival.jpg";s:12:"tmpl_created";s:10:"1481549290";s:6:"author";s:9:"Elementor";s:3:"url";s:52:"https://library.elementor.com/langing-page-festival/";s:6:"is_pro";s:1:"1";}i:18;a:7:{s:2:"id";s:3:"487";s:5:"title";s:29:"Landing Page &#8211; Vacation";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/10/0021.png";s:12:"tmpl_created";s:10:"1477388357";s:6:"author";s:9:"Elementor";s:3:"url";s:52:"https://library.elementor.com/landing-page-vacation/";s:6:"is_pro";s:1:"0";}i:19;a:7:{s:2:"id";s:3:"192";s:5:"title";s:28:"Landing Page &#8211; Webinar";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0015.png";s:12:"tmpl_created";s:10:"1470820734";s:6:"author";s:9:"Elementor";s:3:"url";s:51:"https://library.elementor.com/landing-page-webinar/";s:6:"is_pro";s:1:"0";}i:20;a:7:{s:2:"id";s:3:"542";s:5:"title";s:28:"Landing Page &#8211; Wedding";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/10/0025.png";s:12:"tmpl_created";s:10:"1477388484";s:6:"author";s:9:"Elementor";s:3:"url";s:51:"https://library.elementor.com/landing-page-wedding/";s:6:"is_pro";s:1:"0";}i:21;a:7:{s:2:"id";s:3:"641";s:5:"title";s:28:"Landing Page &#8211; Fashion";s:9:"thumbnail";s:81:"https://library.elementor.com/wp-content/uploads/2016/12/fashion-landing-page.jpg";s:12:"tmpl_created";s:10:"1481549264";s:6:"author";s:9:"Elementor";s:3:"url";s:51:"https://library.elementor.com/landing-page-fashion/";s:6:"is_pro";s:1:"1";}i:22;a:7:{s:2:"id";s:3:"189";s:5:"title";s:28:"Landing Page &#8211; Tourism";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0005.png";s:12:"tmpl_created";s:10:"1470820715";s:6:"author";s:9:"Elementor";s:3:"url";s:51:"https://library.elementor.com/landing-page-tourism/";s:6:"is_pro";s:1:"0";}i:23;a:7:{s:2:"id";s:3:"195";s:5:"title";s:28:"Landing Page &#8211; Product";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0006.png";s:12:"tmpl_created";s:10:"1470820765";s:6:"author";s:9:"Elementor";s:3:"url";s:51:"https://library.elementor.com/landing-page-product/";s:6:"is_pro";s:1:"0";}i:24;a:7:{s:2:"id";s:3:"197";s:5:"title";s:32:"Landing Page &#8211; Real Estate";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0007.png";s:12:"tmpl_created";s:10:"1470825711";s:6:"author";s:9:"Elementor";s:3:"url";s:55:"https://library.elementor.com/landing-page-real-estate/";s:6:"is_pro";s:1:"0";}i:25;a:7:{s:2:"id";s:3:"726";s:5:"title";s:31:"Landing Page &#8211; Conference";s:9:"thumbnail";s:84:"https://library.elementor.com/wp-content/uploads/2017/01/convention-landing-page.jpg";s:12:"tmpl_created";s:10:"1485270062";s:6:"author";s:9:"Elementor";s:3:"url";s:54:"https://library.elementor.com/landing-page-conference/";s:6:"is_pro";s:1:"1";}i:26;a:7:{s:2:"id";s:4:"1032";s:5:"title";s:27:"Landing Page &#8211; Agency";s:9:"thumbnail";s:67:"https://library.elementor.com/wp-content/uploads/2017/03/Agency.png";s:12:"tmpl_created";s:10:"1488810866";s:6:"author";s:9:"Elementor";s:3:"url";s:50:"https://library.elementor.com/landing-page-agency/";s:6:"is_pro";s:1:"1";}i:27;a:7:{s:2:"id";s:4:"1052";s:5:"title";s:31:"Landing Page &#8211; Mobile App";s:9:"thumbnail";s:64:"https://library.elementor.com/wp-content/uploads/2017/03/app.png";s:12:"tmpl_created";s:10:"1488810873";s:6:"author";s:9:"Elementor";s:3:"url";s:54:"https://library.elementor.com/landing-page-mobile-app/";s:6:"is_pro";s:1:"0";}i:28;a:7:{s:2:"id";s:3:"137";s:5:"title";s:22:"Contact &#8211; Modern";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0013.png";s:12:"tmpl_created";s:10:"1470829828";s:6:"author";s:9:"Elementor";s:3:"url";s:45:"https://library.elementor.com/contact-modern/";s:6:"is_pro";s:1:"0";}i:29;a:7:{s:2:"id";s:3:"614";s:5:"title";s:25:"Contact &#8211; Architect";s:9:"thumbnail";s:78:"https://library.elementor.com/wp-content/uploads/2016/12/architect-contact.jpg";s:12:"tmpl_created";s:10:"1481549169";s:6:"author";s:9:"Elementor";s:3:"url";s:48:"https://library.elementor.com/contact-architect/";s:6:"is_pro";s:1:"1";}i:30;a:7:{s:2:"id";s:3:"256";s:5:"title";s:26:"Contact &#8211; Restaurant";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0011.png";s:12:"tmpl_created";s:10:"1470829796";s:6:"author";s:9:"Elementor";s:3:"url";s:49:"https://library.elementor.com/contact-restaurant/";s:6:"is_pro";s:1:"0";}i:31;a:7:{s:2:"id";s:3:"223";s:5:"title";s:17:"Contact – Hotel";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0002.png";s:12:"tmpl_created";s:10:"1470820471";s:6:"author";s:9:"Elementor";s:3:"url";s:44:"https://library.elementor.com/contact-hotel/";s:6:"is_pro";s:1:"0";}i:32;a:7:{s:2:"id";s:2:"24";s:5:"title";s:25:"Contact &#8211; Corporate";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0012.png";s:12:"tmpl_created";s:10:"1470248619";s:6:"author";s:9:"Elementor";s:3:"url";s:48:"https://library.elementor.com/contact-corporate/";s:6:"is_pro";s:1:"0";}i:33;a:7:{s:2:"id";s:3:"752";s:5:"title";s:24:"Contact &#8211; Interior";s:9:"thumbnail";s:77:"https://library.elementor.com/wp-content/uploads/2017/01/interior-contact.png";s:12:"tmpl_created";s:10:"1485269737";s:6:"author";s:9:"Elementor";s:3:"url";s:47:"https://library.elementor.com/contact-interior/";s:6:"is_pro";s:1:"1";}i:34;a:7:{s:2:"id";s:3:"184";s:5:"title";s:23:"Services &#8211; Moving";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0017.png";s:12:"tmpl_created";s:10:"1470829889";s:6:"author";s:9:"Elementor";s:3:"url";s:46:"https://library.elementor.com/services-moving/";s:6:"is_pro";s:1:"0";}i:35;a:7:{s:2:"id";s:3:"625";s:5:"title";s:31:"Services &#8211; Cake Shop Menu";s:9:"thumbnail";s:75:"https://library.elementor.com/wp-content/uploads/2016/12/cake-shop-menu.jpg";s:12:"tmpl_created";s:10:"1481549196";s:6:"author";s:9:"Elementor";s:3:"url";s:54:"https://library.elementor.com/services-cake-shop-menu/";s:6:"is_pro";s:1:"1";}i:36;a:7:{s:2:"id";s:3:"187";s:5:"title";s:20:"Services &#8211; Fun";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0001.png";s:12:"tmpl_created";s:10:"1470829892";s:6:"author";s:9:"Elementor";s:3:"url";s:43:"https://library.elementor.com/services-fun/";s:6:"is_pro";s:1:"0";}i:37;a:7:{s:2:"id";s:3:"238";s:5:"title";s:27:"Services &#8211; Consulting";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0014.png";s:12:"tmpl_created";s:10:"1470829865";s:6:"author";s:9:"Elementor";s:3:"url";s:50:"https://library.elementor.com/services-consulting/";s:6:"is_pro";s:1:"0";}i:38;a:7:{s:2:"id";s:3:"647";s:5:"title";s:33:"Services &#8211; Coffee Shop Menu";s:9:"thumbnail";s:76:"https://library.elementor.com/wp-content/uploads/2016/12/restaurant-menu.jpg";s:12:"tmpl_created";s:10:"1481549320";s:6:"author";s:9:"Elementor";s:3:"url";s:56:"https://library.elementor.com/services-coffee-shop-menu/";s:6:"is_pro";s:1:"1";}i:39;a:7:{s:2:"id";s:3:"754";s:5:"title";s:25:"Services &#8211; Interior";s:9:"thumbnail";s:78:"https://library.elementor.com/wp-content/uploads/2017/01/Interior-Services.png";s:12:"tmpl_created";s:10:"1485269691";s:6:"author";s:9:"Elementor";s:3:"url";s:48:"https://library.elementor.com/services-interior/";s:6:"is_pro";s:1:"1";}i:40;a:7:{s:2:"id";s:3:"823";s:5:"title";s:19:"Pricing &#8211; App";s:9:"thumbnail";s:72:"https://library.elementor.com/wp-content/uploads/2017/01/pricing-app.jpg";s:12:"tmpl_created";s:10:"1485272966";s:6:"author";s:9:"Elementor";s:3:"url";s:44:"https://library.elementor.com/pricing-app-2/";s:6:"is_pro";s:1:"1";}i:41;a:7:{s:2:"id";s:3:"824";s:5:"title";s:24:"Pricing &#8211; Software";s:9:"thumbnail";s:77:"https://library.elementor.com/wp-content/uploads/2017/01/pricing-software.png";s:12:"tmpl_created";s:10:"1485272900";s:6:"author";s:9:"Elementor";s:3:"url";s:49:"https://library.elementor.com/pricing-software-2/";s:6:"is_pro";s:1:"1";}i:42;a:7:{s:2:"id";s:3:"825";s:5:"title";s:24:"Product &#8211; Speakers";s:9:"thumbnail";s:73:"https://library.elementor.com/wp-content/uploads/2017/01/product-page.jpg";s:12:"tmpl_created";s:10:"1485272513";s:6:"author";s:9:"Elementor";s:3:"url";s:47:"https://library.elementor.com/product-speakers/";s:6:"is_pro";s:1:"1";}i:43;a:7:{s:2:"id";s:3:"245";s:5:"title";s:21:"Product &#8211; Clean";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0020.png";s:12:"tmpl_created";s:10:"1470829876";s:6:"author";s:9:"Elementor";s:3:"url";s:44:"https://library.elementor.com/product-clean/";s:6:"is_pro";s:1:"0";}i:44;a:7:{s:2:"id";s:3:"150";s:5:"title";s:19:"Product &#8211; App";s:9:"thumbnail";s:65:"https://library.elementor.com/wp-content/uploads/2016/08/0003.png";s:12:"tmpl_created";s:10:"1470829879";s:6:"author";s:9:"Elementor";s:3:"url";s:42:"https://library.elementor.com/product-app/";s:6:"is_pro";s:1:"0";}i:45;a:7:{s:2:"id";s:4:"1075";s:5:"title";s:19:"Shop &#8211; Sweets";s:9:"thumbnail";s:67:"https://library.elementor.com/wp-content/uploads/2017/03/Sweets.png";s:12:"tmpl_created";s:10:"1488810871";s:6:"author";s:9:"Elementor";s:3:"url";s:42:"https://library.elementor.com/shop-sweets/";s:6:"is_pro";s:1:"0";}i:46;a:7:{s:2:"id";s:4:"1051";s:5:"title";s:24:"Blog Post &#8211; Launch";s:9:"thumbnail";s:71:"https://library.elementor.com/wp-content/uploads/2017/03/post-cloud.png";s:12:"tmpl_created";s:10:"1488810869";s:6:"author";s:9:"Elementor";s:3:"url";s:47:"https://library.elementor.com/blog-post-launch/";s:6:"is_pro";s:1:"0";}i:47;a:7:{s:2:"id";s:3:"420";s:5:"title";s:11:"Hero UI Kit";s:9:"thumbnail";s:81:"https://library.elementor.com/wp-content/uploads/2016/09/library-ui-kit-cover.png";s:12:"tmpl_created";s:10:"1475067229";s:6:"author";s:9:"Elementor";s:3:"url";s:42:"https://library.elementor.com/hero-ui-kit/";s:6:"is_pro";s:1:"0";}}', 'no'),
(358, 'core_updater.lock', '1490040285', 'no'),
(359, 'elementor_scheme_color', 'a:4:{i:1;s:7:"#6ec1e4";i:2;s:7:"#54595f";i:3;s:7:"#7a7a7a";i:4;s:7:"#61ce70";}', 'yes'),
(360, 'elementor_scheme_typography', 'a:4:{i:1;a:2:{s:11:"font_family";s:6:"Roboto";s:11:"font_weight";s:3:"600";}i:2;a:2:{s:11:"font_family";s:11:"Roboto Slab";s:11:"font_weight";s:3:"400";}i:3;a:2:{s:11:"font_family";s:6:"Roboto";s:11:"font_weight";s:3:"400";}i:4;a:2:{s:11:"font_family";s:6:"Roboto";s:11:"font_weight";s:3:"500";}}', 'yes'),
(361, 'elementor_scheme_color-picker', 'a:8:{i:1;s:7:"#6ec1e4";i:2;s:7:"#54595f";i:3;s:7:"#7a7a7a";i:4;s:7:"#61ce70";i:5;s:7:"#4054b2";i:6;s:7:"#23a455";i:7;s:4:"#000";i:8;s:4:"#fff";}', 'yes'),
(362, 'elementor_cpt_support', 'a:1:{i:0;s:4:"page";}', 'yes'),
(363, 'elementor_exclude_user_roles', 'a:0:{}', 'yes'),
(364, 'elementor_disable_color_schemes', '', 'yes'),
(365, 'elementor_disable_typography_schemes', '', 'yes'),
(366, 'elementor_default_generic_fonts', 'Sans-serif', 'yes'),
(367, 'elementor_container_width', '', 'yes'),
(368, 'elementor_stretched_section_container', '', 'yes'),
(369, '_elementor_settings_update_time', '1490089468', 'yes'),
(370, 'elementor_allow_tracking', 'no', 'yes'),
(413, 'elementor_tracker_notice', '1', 'yes'),
(418, 'category_children', 'a:0:{}', 'yes'),
(424, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.7";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1490123141;s:7:"version";s:3:"4.7";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(425, 'wpseo', 'a:23:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:3:"4.5";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";b:0;s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:20:"enable_setting_pages";b:0;s:21:"enable_admin_bar_menu";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1490130373;}', 'yes'),
(426, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(427, 'wpseo_titles', 'a:60:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:23:"title-elementor_library";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:26:"metadesc-elementor_library";s:0:"";s:25:"metakey-elementor_library";s:0:"";s:25:"noindex-elementor_library";b:0;s:26:"showdate-elementor_library";b:0;s:29:"hideeditbox-elementor_library";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(428, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"7a7af306ec03709569620fa307f20a08";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(429, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(430, 'wpseo_internallinks', 'a:11:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;s:36:"post_types-elementor_library-maintax";i:0;}', 'yes'),
(431, 'wpseo_xml', 'a:16:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(432, 'wpseo_flush_rewrite', '1', 'yes'),
(433, 'wpseo_sitemap_1_cache_validator', '6BktS', 'no'),
(434, 'wpseo_sitemap_category_cache_validator', '6xQlH', 'no'),
(435, 'wpseo_sitemap_post_cache_validator', '6xQmr', 'no'),
(448, 'wpseo_sitemap_cache_validator_global', '6znGo', 'no'),
(449, 'wpseo_sitemap_page_cache_validator', 'z94j', 'no'),
(457, 'wpseo-gsc-refresh_token', '1/8fw2p8FbqXGFzQjdePW6WuCd3Td2sSWHB-2ZtC_8A2Y', 'yes'),
(458, 'wpseo-gsc-access_token', 'a:5:{s:13:"refresh_token";s:45:"1/8fw2p8FbqXGFzQjdePW6WuCd3Td2sSWHB-2ZtC_8A2Y";s:12:"access_token";s:129:"ya29.GlsVBOb1UiijYk9yJqAjHvD5RWTfAtyqCDt2sa-ZvvsGCgDsk-378Bp5x-c4NXqWkRj-DsgmzcGJdJuAKR4mV-nNhYXuHYKH-r5euzEXnvvSiXiNztO-241sDJJe";s:7:"expires";i:1490130190;s:10:"expires_in";i:3600;s:7:"created";i:1490133790;}', 'yes'),
(462, 'hicpo_activation', '1', 'yes'),
(463, 'sumome_hide_dashboard_overlay', '0', 'yes'),
(464, 'sumome_site_id', 'e1ecfb001969300043147c00216d8a0016631000fe54eb004a2d7e00fb675d00', 'yes'),
(465, 'wdev-frash', 'a:3:{s:7:"plugins";a:1:{s:23:"wp-smushit/wp-smush.php";i:1490134828;}s:5:"queue";a:1:{s:32:"fc50097023d0d34c5a66f6cddcf77694";a:3:{s:6:"plugin";s:23:"wp-smushit/wp-smush.php";s:4:"type";s:4:"rate";s:7:"show_at";i:1490739628;}}s:4:"done";a:1:{i:0;a:6:{s:6:"plugin";s:23:"wp-smushit/wp-smush.php";s:4:"type";s:5:"email";s:7:"show_at";i:1490134828;s:5:"state";s:6:"ignore";s:4:"hash";s:32:"fc50097023d0d34c5a66f6cddcf77694";s:10:"handled_at";i:1490165776;}}}', 'no'),
(466, 'wp-smush-version', '2.6.1', 'no'),
(467, 'wp-smush-skip-redirect', '1', 'no'),
(472, 'dir_smush_stats', 'a:2:{s:9:"dir_smush";a:2:{s:5:"total";s:1:"0";s:9:"optimised";i:0;}s:14:"combined_stats";a:0:{}}', 'no'),
(473, 'wp-smush-install-type', 'new', 'no'),
(478, 'sumome_initial_wpdashboard_load_time', '20170322065600', 'yes'),
(495, 'wp-smush-hide_upgrade_notice', '1', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1490107325:1'),
(24, 13, '_menu_item_type', 'custom'),
(25, 13, '_menu_item_menu_item_parent', '0'),
(26, 13, '_menu_item_object_id', '13'),
(27, 13, '_menu_item_object', 'custom'),
(28, 13, '_menu_item_target', ''),
(29, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(30, 13, '_menu_item_xfn', ''),
(31, 13, '_menu_item_url', 'http://localhost/vcs-2/vaidas-vaznys/'),
(32, 13, '_menu_item_orphaned', '1489564363'),
(33, 14, '_menu_item_type', 'post_type'),
(34, 14, '_menu_item_menu_item_parent', '0'),
(35, 14, '_menu_item_object_id', '2'),
(36, 14, '_menu_item_object', 'page'),
(37, 14, '_menu_item_target', ''),
(38, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 14, '_menu_item_xfn', ''),
(40, 14, '_menu_item_url', ''),
(41, 14, '_menu_item_orphaned', '1489564365'),
(42, 15, '_menu_item_type', 'custom'),
(43, 15, '_menu_item_menu_item_parent', '0'),
(44, 15, '_menu_item_object_id', '15'),
(45, 15, '_menu_item_object', 'custom'),
(46, 15, '_menu_item_target', ''),
(47, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 15, '_menu_item_xfn', ''),
(49, 15, '_menu_item_url', 'http://localhost/vcs-2/vaidas-vaznys/'),
(50, 15, '_menu_item_orphaned', '1489564460'),
(51, 16, '_menu_item_type', 'post_type'),
(52, 16, '_menu_item_menu_item_parent', '0'),
(53, 16, '_menu_item_object_id', '2'),
(54, 16, '_menu_item_object', 'page'),
(55, 16, '_menu_item_target', ''),
(56, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 16, '_menu_item_xfn', ''),
(58, 16, '_menu_item_url', ''),
(59, 16, '_menu_item_orphaned', '1489564462'),
(60, 17, '_menu_item_type', 'custom'),
(61, 17, '_menu_item_menu_item_parent', '0'),
(62, 17, '_menu_item_object_id', '17'),
(63, 17, '_menu_item_object', 'custom'),
(64, 17, '_menu_item_target', ''),
(65, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 17, '_menu_item_xfn', ''),
(67, 17, '_menu_item_url', 'http://localhost/vcs-2/vaidas-vaznys/'),
(68, 17, '_menu_item_orphaned', '1489611293'),
(69, 18, '_menu_item_type', 'post_type'),
(70, 18, '_menu_item_menu_item_parent', '0'),
(71, 18, '_menu_item_object_id', '2'),
(72, 18, '_menu_item_object', 'page'),
(73, 18, '_menu_item_target', ''),
(74, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(75, 18, '_menu_item_xfn', ''),
(76, 18, '_menu_item_url', ''),
(77, 18, '_menu_item_orphaned', '1489611294'),
(78, 19, '_menu_item_type', 'custom'),
(79, 19, '_menu_item_menu_item_parent', '0'),
(80, 19, '_menu_item_object_id', '19'),
(81, 19, '_menu_item_object', 'custom'),
(82, 19, '_menu_item_target', ''),
(83, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 19, '_menu_item_xfn', ''),
(85, 19, '_menu_item_url', 'http://localhost/vcs-2/vaidas-vaznys/'),
(86, 19, '_menu_item_orphaned', '1489614931'),
(87, 20, '_menu_item_type', 'post_type'),
(88, 20, '_menu_item_menu_item_parent', '0'),
(89, 20, '_menu_item_object_id', '2'),
(90, 20, '_menu_item_object', 'page'),
(91, 20, '_menu_item_target', ''),
(92, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 20, '_menu_item_xfn', ''),
(94, 20, '_menu_item_url', ''),
(95, 20, '_menu_item_orphaned', '1489614932'),
(96, 21, '_menu_item_type', 'custom'),
(97, 21, '_menu_item_menu_item_parent', '0'),
(98, 21, '_menu_item_object_id', '21'),
(99, 21, '_menu_item_object', 'custom'),
(100, 21, '_menu_item_target', ''),
(101, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(102, 21, '_menu_item_xfn', ''),
(103, 21, '_menu_item_url', 'http://localhost/vcs-2/vaidas-vaznys/'),
(104, 21, '_menu_item_orphaned', '1489614943'),
(105, 22, '_menu_item_type', 'post_type'),
(106, 22, '_menu_item_menu_item_parent', '0'),
(107, 22, '_menu_item_object_id', '2'),
(108, 22, '_menu_item_object', 'page'),
(109, 22, '_menu_item_target', ''),
(110, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(111, 22, '_menu_item_xfn', ''),
(112, 22, '_menu_item_url', ''),
(113, 22, '_menu_item_orphaned', '1489614943'),
(123, 24, '_menu_item_type', 'custom'),
(124, 24, '_menu_item_menu_item_parent', '0'),
(125, 24, '_menu_item_object_id', '24'),
(126, 24, '_menu_item_object', 'custom'),
(127, 24, '_menu_item_target', ''),
(128, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(129, 24, '_menu_item_xfn', ''),
(130, 24, '_menu_item_url', '#') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(132, 25, '_menu_item_type', 'custom'),
(133, 25, '_menu_item_menu_item_parent', '0'),
(134, 25, '_menu_item_object_id', '25'),
(135, 25, '_menu_item_object', 'custom'),
(136, 25, '_menu_item_target', ''),
(137, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(138, 25, '_menu_item_xfn', ''),
(139, 25, '_menu_item_url', '#'),
(141, 26, '_menu_item_type', 'custom'),
(142, 26, '_menu_item_menu_item_parent', '0'),
(143, 26, '_menu_item_object_id', '26'),
(144, 26, '_menu_item_object', 'custom'),
(145, 26, '_menu_item_target', ''),
(146, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(147, 26, '_menu_item_xfn', ''),
(148, 26, '_menu_item_url', '#'),
(150, 27, '_menu_item_type', 'custom'),
(151, 27, '_menu_item_menu_item_parent', '0'),
(152, 27, '_menu_item_object_id', '27'),
(153, 27, '_menu_item_object', 'custom'),
(154, 27, '_menu_item_target', ''),
(155, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(156, 27, '_menu_item_xfn', ''),
(157, 27, '_menu_item_url', '#'),
(168, 29, '_menu_item_type', 'custom'),
(169, 29, '_menu_item_menu_item_parent', '0'),
(170, 29, '_menu_item_object_id', '29'),
(171, 29, '_menu_item_object', 'custom'),
(172, 29, '_menu_item_target', ''),
(173, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(174, 29, '_menu_item_xfn', ''),
(175, 29, '_menu_item_url', '#'),
(177, 30, '_menu_item_type', 'custom'),
(178, 30, '_menu_item_menu_item_parent', '0'),
(179, 30, '_menu_item_object_id', '30'),
(180, 30, '_menu_item_object', 'custom'),
(181, 30, '_menu_item_target', ''),
(182, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(183, 30, '_menu_item_xfn', ''),
(184, 30, '_menu_item_url', 'https://twitter.com/'),
(186, 31, '_menu_item_type', 'custom'),
(187, 31, '_menu_item_menu_item_parent', '0'),
(188, 31, '_menu_item_object_id', '31'),
(189, 31, '_menu_item_object', 'custom'),
(190, 31, '_menu_item_target', ''),
(191, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(192, 31, '_menu_item_xfn', ''),
(193, 31, '_menu_item_url', '#'),
(194, 1, '_edit_lock', '1490130921:1'),
(195, 2, '_edit_last', '1'),
(196, 2, '_elementor_edit_mode', 'builder'),
(197, 33, '_edit_last', '1'),
(198, 33, '_edit_lock', '1490102294:1'),
(199, 33, '_elementor_edit_mode', 'builder'),
(200, 35, '_edit_last', '1'),
(201, 35, '_wp_page_template', 'default'),
(202, 35, '_edit_lock', '1490099984:1'),
(203, 35, '_elementor_edit_mode', 'builder'),
(204, 40, '_wp_trash_meta_status', 'publish'),
(205, 40, '_wp_trash_meta_time', '1490052055'),
(206, 42, '_edit_last', '1'),
(208, 42, '_edit_lock', '1490130933:1'),
(218, 45, '_wp_trash_meta_status', 'publish'),
(219, 45, '_wp_trash_meta_time', '1490091900'),
(220, 46, '_wp_trash_meta_status', 'publish'),
(221, 46, '_wp_trash_meta_time', '1490091982'),
(222, 47, '_wp_trash_meta_status', 'publish'),
(223, 47, '_wp_trash_meta_time', '1490092043'),
(224, 48, '_edit_last', '1'),
(225, 48, '_wp_page_template', 'default'),
(226, 48, '_edit_lock', '1490165965:1'),
(227, 48, '_elementor_edit_mode', 'builder'),
(228, 51, '_wp_attached_file', '2017/03/mostrare-about-18.png'),
(229, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:196;s:6:"height";i:297;s:4:"file";s:29:"2017/03/mostrare-about-18.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"mostrare-about-18-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(231, 35, '_wp_trash_meta_status', 'publish'),
(232, 35, '_wp_trash_meta_time', '1490121704'),
(233, 35, '_wp_desired_post_slug', '35-2'),
(234, 33, '_wp_trash_meta_status', 'draft'),
(235, 33, '_wp_trash_meta_time', '1490121704'),
(236, 33, '_wp_desired_post_slug', ''),
(237, 2, '_wp_trash_meta_status', 'publish'),
(238, 2, '_wp_trash_meta_time', '1490121705'),
(239, 2, '_wp_desired_post_slug', 'puslapio-pavyzdys'),
(240, 54, '_edit_last', '1'),
(241, 54, '_edit_lock', '1490130636:1'),
(244, 54, '_thumbnail_id', '51'),
(248, 58, '_edit_last', '1'),
(249, 58, '_thumbnail_id', '51'),
(251, 58, '_edit_lock', '1490165160:1'),
(252, 60, '_edit_last', '1'),
(253, 60, '_wp_page_template', 'default'),
(254, 60, '_edit_lock', '1490132367:1'),
(264, 60, '_thumbnail_id', '72'),
(265, 65, '_menu_item_type', 'post_type'),
(266, 65, '_menu_item_menu_item_parent', '0'),
(267, 65, '_menu_item_object_id', '60'),
(268, 65, '_menu_item_object', 'page'),
(269, 65, '_menu_item_target', ''),
(270, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(271, 65, '_menu_item_xfn', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(272, 65, '_menu_item_url', ''),
(274, 66, '_form', '<label> Your Name (required)\n    [text* Vaidas] </label>\n\n<label> Your Email (required)\n    [email* vaidas.vaznys@gmail.com] </label>\n\n<label> Subject\n    [vyras] </label>\n\n<label> Your Message\n    [Sveiki] </label>\n\n[submit "Send"]'),
(275, 66, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:24:"*Mintis "[your-subject]"";s:6:"sender";s:36:"[your-name] <vaidas.vazny@gmail.com>";s:9:"recipient";s:22:"vaidas.vazny@gmail.com";s:4:"body";s:179:"From: [Vaidas] <[vaidas.vaznys@gmail.com]>\nSubject: [vyras]\n\nMessage Body:\n[Sveiki]\n\n-- \nThis e-mail was sent from a contact form on *Mintis (http://localhost/vcs-2/vaidas-vaznys)";s:18:"additional_headers";s:35:"Reply-To: [vaidas.vaznys@gmail.com]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(276, 66, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:24:"*Mintis "[your-subject]"";s:6:"sender";s:32:"*Mintis <vaidas.vazny@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:124:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on *Mintis (http://localhost/vcs-2/vaidas-vaznys)";s:18:"additional_headers";s:32:"Reply-To: vaidas.vazny@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(277, 66, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(278, 66, '_additional_settings', ''),
(279, 66, '_locale', 'lt_LT'),
(280, 67, '_edit_last', '1'),
(281, 67, 'field_58d195ebc39be', 'a:14:{s:3:"key";s:19:"field_58d195ebc39be";s:5:"label";s:4:"City";s:4:"name";s:4:"city";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(283, 67, 'position', 'side'),
(284, 67, 'layout', 'default'),
(285, 67, 'hide_on_screen', ''),
(286, 67, '_edit_lock', '1490165472:1'),
(289, 68, 'city', 'Vilnius'),
(290, 68, '_city', 'field_58d195ebc39be'),
(291, 54, '_yoast_wpseo_content_score', '60'),
(292, 54, 'city', 'Vilnius'),
(293, 54, '_city', 'field_58d195ebc39be'),
(294, 54, '_yoast_wpseo_primary_category', ''),
(296, 69, 'city', 'Vilnius'),
(297, 69, '_city', 'field_58d195ebc39be'),
(302, 58, '_wp_old_slug', 'johnathan-doe2__trashed'),
(303, 67, 'field_58d19776bf464', 'a:10:{s:3:"key";s:19:"field_58d19776bf464";s:5:"label";s:9:"Invisible";s:4:"name";s:9:"invisible";s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"message";s:0:"";s:13:"default_value";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(305, 67, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(307, 70, 'city', ''),
(308, 70, '_city', 'field_58d195ebc39be'),
(309, 70, 'invisible', '1'),
(310, 70, '_invisible', 'field_58d19776bf464'),
(311, 58, '_yoast_wpseo_content_score', '60'),
(312, 58, 'city', ''),
(313, 58, '_city', 'field_58d195ebc39be'),
(314, 58, 'invisible', '1'),
(315, 58, '_invisible', 'field_58d19776bf464'),
(316, 58, '_yoast_wpseo_primary_category', ''),
(317, 42, '_wp_trash_meta_status', 'publish'),
(318, 42, '_wp_trash_meta_time', '1490131082'),
(319, 42, '_wp_desired_post_slug', 'mintis'),
(320, 1, '_wp_trash_meta_status', 'publish'),
(321, 1, '_wp_trash_meta_time', '1490131083'),
(322, 1, '_wp_desired_post_slug', 'pirmasis-tinklarascio-irasas'),
(323, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(324, 72, '_wp_attached_file', '2017/03/profilis.jpg'),
(325, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:618;s:6:"height";i:522;s:4:"file";s:20:"2017/03/profilis.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"profilis-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"profilis-300x253.jpg";s:5:"width";i:300;s:6:"height";i:253;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(326, 60, '_yoast_wpseo_content_score', '30'),
(327, 74, '_edit_last', '1'),
(328, 74, 'field_58d19af66e449', 'a:14:{s:3:"key";s:19:"field_58d19af66e449";s:5:"label";s:6:"Vardas";s:4:"name";s:6:"vardas";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(330, 74, 'position', 'side'),
(331, 74, 'layout', 'default'),
(332, 74, 'hide_on_screen', ''),
(333, 74, '_edit_lock', '1490165525:1'),
(335, 74, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"60";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(336, 75, 'vardas', 'Vaidas'),
(337, 75, '_vardas', 'field_58d19af66e449'),
(338, 60, 'vardas', 'Vaidas'),
(339, 60, '_vardas', 'field_58d19af66e449'),
(342, 66, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:51:"Invalid mailbox syntax is used in the %name% field.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-03-03 13:20:12', '2017-03-03 15:20:12', 'Sveikiname pasirinkus WordPress. Tai pirmasis jūsų tinklalapio įrašas, galite jį redaguoti arba ištrinti.', 'Pirmasis tinklalapio įrašas!', '', 'trash', 'open', 'open', '', 'pirmasis-tinklarascio-irasas__trashed', '', '', '2017-03-21 19:18:03', '2017-03-21 21:18:03', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=1', 0, 'post', '', 1),
(2, 1, '2017-03-03 13:20:12', '2017-03-03 15:20:12', 'Tai testinis puslapis. Puslapis skiriasi nuo įrašo, nes jis visuomet liks toje pačioje vietoje Jūsų tinklalapyje, bei daugumoje temų bus rodomas kaip meniu punktas. Dažniausiai tinklalapiai pradedami kurti nuo puslapio "Apie", kuriame tinklalapis pristatomas jo lankytojams. Pavyzdžiui, tokiame puslapyje gali būti parašyta:\r\n<blockquote>Sveiki! Dienomis aš dirbu dviračių kurjeriu, vakarais bandau siekti aktoriaus karjeros, o čia yra mano tinklaraštis. Aš gyvenu Vilniuje, turiu puikų šunį vardu Rudis, ir labai mėgstu vaisių kokteilius (bei būti užkluptas lietaus).</blockquote>\r\n...arba šis puslapis gali būti ir rimtesnis:\r\n<blockquote>UAB "Įrankių Fabrikas" buvo įkurta dar 1971-aisiais, ir nuo pat tada iki šiol nepavargdami gamina kokybiškus įrankius. Įmonė įsikūrusi Kaune, joje dirba daugiau nei 2000 specialistų. UAB "Įrankių Fabrikas" aktyviai dalyvauja bendruomenės veikloje ir nuolat prisideda prie miestiečių gyvenimo gerinimo.</blockquote>\r\nKadangi šis tinklalapis yra ką tik sukurtas, mes rekomenduojame pirmiausia apsilankyti savo <a href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/">administravimo skydelyje</a>, ištrinti šį testinį puslapį ir sukurti naujus su savo norimu turiniu. Sėkmės!', 'Puslapio pavyzdys', '', 'trash', 'closed', 'open', '', 'puslapio-pavyzdys__trashed', '', '', '2017-03-21 16:41:45', '2017-03-21 18:41:45', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?page_id=2', 0, 'page', '', 0),
(13, 1, '2017-03-15 05:52:41', '0000-00-00 00:00:00', '', 'Pradžia', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 05:52:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2017-03-15 05:52:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 05:52:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2017-03-15 05:54:15', '0000-00-00 00:00:00', '', 'Pradžia', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 05:54:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-03-15 05:54:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 05:54:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2017-03-15 18:54:52', '0000-00-00 00:00:00', '', 'Pradžia', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 18:54:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2017-03-15 18:54:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 18:54:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2017-03-15 19:55:30', '0000-00-00 00:00:00', '', 'Pradžia', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 19:55:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2017-03-15 19:55:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 19:55:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2017-03-15 19:55:42', '0000-00-00 00:00:00', '', 'Pradžia', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 19:55:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2017-03-15 19:55:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 19:55:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=22', 1, 'nav_menu_item', '', 0),
(24, 1, '2017-03-15 20:07:48', '2017-03-15 22:07:48', '', 'ALL PROJECTS', '', 'publish', 'closed', 'closed', '', 'all-projects', '', '', '2017-03-21 19:03:59', '2017-03-21 21:03:59', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2017-03-15 20:07:48', '2017-03-15 22:07:48', '', 'FASHION', '', 'publish', 'closed', 'closed', '', 'fashion', '', '', '2017-03-21 19:03:59', '2017-03-21 21:03:59', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2017-03-15 20:07:49', '2017-03-15 22:07:49', '', 'PORTRAITS', '', 'publish', 'closed', 'closed', '', 'portraits', '', '', '2017-03-21 19:03:59', '2017-03-21 21:03:59', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2017-03-15 20:07:49', '2017-03-15 22:07:49', '', 'EDITORIAL', '', 'publish', 'closed', 'closed', '', 'editorial', '', '', '2017-03-21 19:03:59', '2017-03-21 21:03:59', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=27', 5, 'nav_menu_item', '', 0),
(29, 1, '2017-03-15 20:07:49', '2017-03-15 22:07:49', '', 'MY JOURNAL', '', 'publish', 'closed', 'closed', '', 'my-journal', '', '', '2017-03-21 19:04:00', '2017-03-21 21:04:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=29', 6, 'nav_menu_item', '', 0),
(30, 1, '2017-03-15 20:20:20', '2017-03-15 22:20:20', '', 'TWEET', '', 'publish', 'closed', 'closed', '', 'twet', '', '', '2017-03-21 19:04:00', '2017-03-21 21:04:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=30', 7, 'nav_menu_item', '', 0),
(31, 1, '2017-03-15 20:20:21', '2017-03-15 22:20:21', '', 'SOCIAL', '', 'publish', 'closed', 'closed', '', 'social', '', '', '2017-03-21 19:04:00', '2017-03-21 21:04:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=31', 8, 'nav_menu_item', '', 0),
(32, 1, '2017-03-20 19:11:58', '2017-03-20 21:11:58', 'Tai testinis puslapis. Puslapis skiriasi nuo įrašo, nes jis visuomet liks toje pačioje vietoje Jūsų tinklalapyje, bei daugumoje temų bus rodomas kaip meniu punktas. Dažniausiai tinklalapiai pradedami kurti nuo puslapio "Apie", kuriame tinklalapis pristatomas jo lankytojams. Pavyzdžiui, tokiame puslapyje gali būti parašyta:\r\n<blockquote>Sveiki! Dienomis aš dirbu dviračių kurjeriu, vakarais bandau siekti aktoriaus karjeros, o čia yra mano tinklaraštis. Aš gyvenu Vilniuje, turiu puikų šunį vardu Rudis, ir labai mėgstu vaisių kokteilius (bei būti užkluptas lietaus).</blockquote>\r\n...arba šis puslapis gali būti ir rimtesnis:\r\n<blockquote>UAB "Įrankių Fabrikas" buvo įkurta dar 1971-aisiais, ir nuo pat tada iki šiol nepavargdami gamina kokybiškus įrankius. Įmonė įsikūrusi Kaune, joje dirba daugiau nei 2000 specialistų. UAB "Įrankių Fabrikas" aktyviai dalyvauja bendruomenės veikloje ir nuolat prisideda prie miestiečių gyvenimo gerinimo.</blockquote>\r\nKadangi šis tinklalapis yra ką tik sukurtas, mes rekomenduojame pirmiausia apsilankyti savo <a href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/">administravimo skydelyje</a>, ištrinti šį testinį puslapį ir sukurti naujus su savo norimu turiniu. Sėkmės!', 'Puslapio pavyzdys', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-20 19:11:58', '2017-03-20 21:11:58', '', 2, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/20/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-03-20 21:00:51', '2017-03-20 23:00:51', '', '*Mostrare', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2017-03-21 16:41:44', '2017-03-21 18:41:44', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?page_id=33', 0, 'page', '', 0),
(34, 1, '2017-03-20 21:01:20', '0000-00-00 00:00:00', '', 'Automatiškai išsaugotas juodraštis', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-20 21:01:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=34', 0, 'post', '', 0),
(35, 1, '2017-03-20 21:01:59', '2017-03-20 23:01:59', '', '', '', 'trash', 'closed', 'closed', '', '35-2__trashed', '', '', '2017-03-21 16:41:44', '2017-03-21 18:41:44', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?page_id=35', 0, 'page', '', 0),
(36, 1, '2017-03-20 21:01:59', '2017-03-20 23:01:59', '', '', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-03-20 21:01:59', '2017-03-20 23:01:59', '', 35, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/20/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-03-20 21:02:24', '2017-03-20 23:02:24', '', '*Mintis', '', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2017-03-20 21:02:24', '2017-03-20 23:02:24', '', 35, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/20/35-autosave-v1/', 0, 'revision', '', 0),
(38, 1, '2017-03-20 21:16:08', '0000-00-00 00:00:00', '', 'Automatiškai išsaugotas juodraštis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 21:16:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?page_id=38', 0, 'page', '', 0),
(39, 1, '2017-03-20 21:16:10', '0000-00-00 00:00:00', '', 'Automatiškai išsaugotas juodraštis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 21:16:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?page_id=39', 0, 'page', '', 0),
(40, 1, '2017-03-20 21:20:54', '2017-03-20 23:20:54', '{"show_on_front":{"value":"posts","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '76745fdc-eece-41b3-8992-fba57915da88', '', '', '2017-03-20 21:20:54', '2017-03-20 23:20:54', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2017-03-21 07:33:13', '0000-00-00 00:00:00', '{"show_on_front":{"value":"posts","type":"option","user_id":1}}', '', '', 'auto-draft', 'closed', 'closed', '', 'b2b66727-7f27-4a9f-ad10-042adfeafb35', '', '', '2017-03-21 07:33:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2017-03-21 07:45:14', '2017-03-21 09:45:14', '', '*Mintis', '', 'trash', 'open', 'open', '', 'mintis__trashed', '', '', '2017-03-21 19:18:02', '2017-03-21 21:18:02', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=42', 0, 'post', '', 0),
(43, 1, '2017-03-21 07:45:14', '2017-03-21 09:45:14', '', '*Mintis', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-03-21 07:45:14', '2017-03-21 09:45:14', '', 42, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/42-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-03-21 08:24:59', '2017-03-21 10:24:59', '{"nav_menu_item[44]":{"value":false,"type":"nav_menu_item","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'f7953acb-2756-4b3e-af62-467a8a7d1b2d', '', '', '2017-03-21 08:24:59', '2017-03-21 10:24:59', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/f7953acb-2756-4b3e-af62-467a8a7d1b2d/', 0, 'customize_changeset', '', 0),
(46, 1, '2017-03-21 08:26:22', '2017-03-21 10:26:22', '{"nav_menu_item[30]":{"value":{"menu_item_parent":0,"object_id":30,"object":"custom","type":"custom","type_label":"Sava nuoroda","title":"TWEET","url":"#\\/\\/twiter.com","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":2,"position":8,"status":"publish","original_title":"","_invalid":false},"type":"nav_menu_item","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'c9f4696a-bf14-4753-966b-53e5f89000f6', '', '', '2017-03-21 08:26:22', '2017-03-21 10:26:22', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=46', 0, 'customize_changeset', '', 0),
(47, 1, '2017-03-21 08:27:23', '2017-03-21 10:27:23', '{"show_on_front":{"value":"page","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'ce08598d-85a4-4be6-9b5f-e4cd65da859c', '', '', '2017-03-21 08:27:23', '2017-03-21 10:27:23', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/ce08598d-85a4-4be6-9b5f-e4cd65da859c/', 0, 'customize_changeset', '', 0),
(48, 1, '2017-03-21 10:44:09', '2017-03-21 12:44:09', '', 'Pagrindinis', '', 'publish', 'closed', 'closed', '', 'pagrindinis', '', '', '2017-03-21 18:13:37', '2017-03-21 20:13:37', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?page_id=48', 0, 'page', '', 0),
(49, 1, '2017-03-21 10:44:09', '2017-03-21 12:44:09', '', 'Pagrindinis', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-03-21 10:44:09', '2017-03-21 12:44:09', '', 48, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-03-21 12:30:19', '0000-00-00 00:00:00', '', 'Automatiškai išsaugotas juodraštis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-21 12:30:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?page_id=50', 0, 'page', '', 0),
(51, 1, '2017-03-21 12:31:01', '2017-03-21 14:31:01', '', 'mostrare-about-18', '', 'inherit', 'open', 'closed', '', 'mostrare-about-18', '', '', '2017-03-21 12:31:01', '2017-03-21 14:31:01', '', 48, 'http://localhost/vcs-2/vaidas-vaznys/wp-content/uploads/2017/03/mostrare-about-18.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2017-03-21 16:41:44', '2017-03-21 18:41:44', '', '*Mostrare', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-03-21 16:41:44', '2017-03-21 18:41:44', '', 33, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/33-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-03-21 17:36:00', '2017-03-21 19:36:00', 'Chania is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.\r\n\r\nResize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing.\r\n\r\n<span style="color: #ff9900;"><b>"MAURIS SUSCIPIT ULLAMCORPER FELIS.SED ALIQUAM MASSA VEL RISUS DAPIBUS QUIS TICIDUNT PURUS LOBORTIS.CRAS ULTRICES, TELLUS UT SOLLICITUDIN FEUGIANT, ENIM TURPIS PELLENTESQUE ARCU."</b></span>\r\n-John Doe\r\n\r\n<i>Famous Photographer</i>', 'JOHNATHAN DOE', '', 'publish', 'open', 'open', '', 'johnathan-doe', '', '', '2017-03-21 19:12:06', '2017-03-21 21:12:06', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=54', 0, 'post', '', 0),
(55, 1, '2017-03-21 17:36:00', '2017-03-21 19:36:00', '<h1>The City</h1>\r\nChania is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.\r\n\r\nResize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing.\r\n\r\n<i>"MAURIS SUSCIPIT ULLAMCORPER FELIS.SED ALIQUAM MASSA VEL RISUS DAPIBUS QUIS TICIDUNT PURUS LOBORTIS. CRAS ULTRICES, TELLUS UT SOLLICITUDIN FEUGIANT, ENIM TURPIS PELLENTESQUE ARCU."</i>\r\n\r\n-John Doe\r\n\r\n<i>Famous Photographer</i>', 'JOHNATHAN DOE', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-03-21 17:36:00', '2017-03-21 19:36:00', '', 54, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-03-21 18:01:49', '2017-03-21 20:01:49', '&nbsp;\r\n<h1>The City</h1>\r\nChania is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.\r\n\r\nResize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing.\r\n\r\n<b>"MAURIS SUSCIPIT ULLAMCORPER FELIS.SED ALIQUAM MASSA VEL RISUS DAPIBUS QUIS TICIDUNT PURUS LOBORTIS.CRAS ULTRICES, TELLUS UT SOLLICITUDIN FEUGIANT, ENIM TURPIS PELLENTESQUE ARCU."</b>\r\n-John Doe\r\n\r\n<i>Famous Photographer</i>', 'JOHNATHAN DOE', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-03-21 18:01:49', '2017-03-21 20:01:49', '', 54, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2017-03-21 18:06:30', '2017-03-21 20:06:30', '&nbsp;\r\n<h1>The City</h1>\r\nChania is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.\r\n\r\nResize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing.\r\n\r\n<span style="color: #ff9900;"><b>"MAURIS SUSCIPIT ULLAMCORPER FELIS.SED ALIQUAM MASSA VEL RISUS DAPIBUS QUIS TICIDUNT PURUS LOBORTIS.CRAS ULTRICES, TELLUS UT SOLLICITUDIN FEUGIANT, ENIM TURPIS PELLENTESQUE ARCU."</b></span>\r\n-John Doe\r\n\r\n<i>Famous Photographer</i>', 'JOHNATHAN DOE', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-03-21 18:06:30', '2017-03-21 20:06:30', '', 54, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/54-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-03-21 18:52:09', '2017-03-21 20:52:09', '<strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong>', 'JOHNATHAN DOE2', '', 'publish', 'open', 'open', '', 'johnathan-doe2', '', '', '2017-03-21 19:14:44', '2017-03-21 21:14:44', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=58', 0, 'post', '', 0),
(59, 1, '2017-03-21 18:52:09', '2017-03-21 20:52:09', '<strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong>', 'JOHNATHAN DOE2', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-03-21 18:52:09', '2017-03-21 20:52:09', '', 58, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-03-21 18:55:06', '2017-03-21 20:55:06', 'gfdgfdg dgdf g', 'ABOUT ME', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2017-03-21 19:31:12', '2017-03-21 21:31:12', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?page_id=60', 0, 'page', '', 0),
(61, 1, '2017-03-21 18:55:06', '2017-03-21 20:55:06', '', 'About me', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-03-21 18:55:06', '2017-03-21 20:55:06', '', 60, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-03-21 18:55:14', '2017-03-21 20:55:14', 'gfdgfdg dgdf g', 'About me', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-03-21 18:55:14', '2017-03-21 20:55:14', '', 60, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/60-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-03-21 19:03:09', '2017-03-21 21:03:09', 'gfdgfdg dgdf g', 'ABOUT ME', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-03-21 19:03:09', '2017-03-21 21:03:09', '', 60, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/60-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-03-21 19:03:59', '2017-03-21 21:03:59', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2017-03-21 19:03:59', '2017-03-21 21:03:59', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?p=65', 4, 'nav_menu_item', '', 0),
(66, 1, '2017-03-21 19:05:40', '2017-03-21 21:05:40', '<label> Your Name (required)\r\n    [text* Vaidas] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* vaidas.vaznys@gmail.com] </label>\r\n\r\n<label> Subject\r\n    [vyras] </label>\r\n\r\n<label> Your Message\r\n    [Sveiki] </label>\r\n\r\n[submit "Send"]\n1\n*Mintis "[your-subject]"\n[your-name] <vaidas.vazny@gmail.com>\nvaidas.vazny@gmail.com\nFrom: [Vaidas] <[vaidas.vaznys@gmail.com]>\r\nSubject: [vyras]\r\n\r\nMessage Body:\r\n[Sveiki]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on *Mintis (http://localhost/vcs-2/vaidas-vaznys)\nReply-To: [vaidas.vaznys@gmail.com]\n\n\n\n\n*Mintis "[your-subject]"\n*Mintis <vaidas.vazny@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on *Mintis (http://localhost/vcs-2/vaidas-vaznys)\nReply-To: vaidas.vazny@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-03-21 20:15:57', '2017-03-21 22:15:57', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?post_type=wpcf7_contact_form&#038;p=66', 0, 'wpcf7_contact_form', '', 0),
(67, 1, '2017-03-21 19:08:05', '2017-03-21 21:08:05', '', 'Member', '', 'publish', 'closed', 'closed', '', 'acf_member', '', '', '2017-03-21 19:14:23', '2017-03-21 21:14:23', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?post_type=acf&#038;p=67', 0, 'acf', '', 0),
(68, 1, '2017-03-21 19:09:07', '2017-03-21 21:09:07', '&nbsp;\r\n<h1>The City</h1>\r\nChania is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.\r\n\r\nResize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing.\r\n\r\n<span style="color: #ff9900;"><b>"MAURIS SUSCIPIT ULLAMCORPER FELIS.SED ALIQUAM MASSA VEL RISUS DAPIBUS QUIS TICIDUNT PURUS LOBORTIS.CRAS ULTRICES, TELLUS UT SOLLICITUDIN FEUGIANT, ENIM TURPIS PELLENTESQUE ARCU."</b></span>\r\n-John Doe\r\n\r\n<i>Famous Photographer</i>', 'JOHNATHAN DOE', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-03-21 19:09:07', '2017-03-21 21:09:07', '', 54, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/54-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-03-21 19:12:06', '2017-03-21 21:12:06', 'Chania is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.\r\n\r\nResize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing.\r\n\r\n<span style="color: #ff9900;"><b>"MAURIS SUSCIPIT ULLAMCORPER FELIS.SED ALIQUAM MASSA VEL RISUS DAPIBUS QUIS TICIDUNT PURUS LOBORTIS.CRAS ULTRICES, TELLUS UT SOLLICITUDIN FEUGIANT, ENIM TURPIS PELLENTESQUE ARCU."</b></span>\r\n-John Doe\r\n\r\n<i>Famous Photographer</i>', 'JOHNATHAN DOE', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-03-21 19:12:06', '2017-03-21 21:12:06', '', 54, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/54-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-03-21 19:14:44', '2017-03-21 21:14:44', '<strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong><strong><a class="row-title" href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/post.php?post=54&amp;action=edit">JOHNATHAN DOE</a></strong>', 'JOHNATHAN DOE2', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-03-21 19:14:44', '2017-03-21 21:14:44', '', 58, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/58-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-03-21 19:18:03', '2017-03-21 21:18:03', 'Sveikiname pasirinkus WordPress. Tai pirmasis jūsų tinklalapio įrašas, galite jį redaguoti arba ištrinti.', 'Pirmasis tinklalapio įrašas!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-03-21 19:18:03', '2017-03-21 21:18:03', '', 1, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/1-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-03-21 19:26:55', '2017-03-21 21:26:55', '', 'profilis', '', 'inherit', 'open', 'closed', '', 'profilis', '', '', '2017-03-21 19:26:55', '2017-03-21 21:26:55', '', 60, 'http://localhost/vcs-2/vaidas-vaznys/wp-content/uploads/2017/03/profilis.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2017-03-21 19:28:51', '2017-03-21 21:28:51', '', 'ABOUT ME', '', 'publish', 'closed', 'closed', '', 'acf_about-me', '', '', '2017-03-21 19:30:21', '2017-03-21 21:30:21', '', 0, 'http://localhost/vcs-2/vaidas-vaznys/?post_type=acf&#038;p=74', 0, 'acf', '', 0),
(75, 1, '2017-03-21 19:31:12', '2017-03-21 21:31:12', 'gfdgfdg dgdf g', 'ABOUT ME', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-03-21 19:31:12', '2017-03-21 21:31:12', '', 60, 'http://localhost/vcs-2/vaidas-vaznys/2017/03/21/60-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_smush_dir_images`
#

DROP TABLE IF EXISTS `wp_smush_dir_images`;


#
# Table structure of table `wp_smush_dir_images`
#

CREATE TABLE `wp_smush_dir_images` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `resize` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `file_time` int(10) unsigned DEFAULT NULL,
  `last_scan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `path` (`path`(191)),
  KEY `image_size` (`image_size`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_smush_dir_images`
#

#
# End of data contents of table `wp_smush_dir_images`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(42, 1, 0),
(54, 3, 0),
(58, 3, 0),
(65, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'category', '', 0, 2) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Be kategorijos', 'be-kategorijos', 0, 0),
(2, 'Main Navigation', 'main-navigation', 0, 0),
(3, 'team', 'team', 0, 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:3:{s:64:"cfaa7981c42c332e059d016ab01c9ed7f4e107305ccc1f926224b8c92e240033";a:4:{s:10:"expiration";i:1490686199;s:2:"ip";s:3:"::1";s:2:"ua";s:124:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.21 Safari/537.36 MMS/1.0.2459.0";s:5:"login";i:1489476599;}s:64:"f6660e0b14dd1ea4023df30bcedd383c104c32d2efdb25921caf4c2dec686285";a:4:{s:10:"expiration";i:1490174417;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490001617;}s:64:"2b52b360427153601cc54aa93339e9e9038b7b096dc5a35f730c76aafe8286ce";a:4:{s:10:"expiration";i:1491252332;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490042732;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '34'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(21, 1, 'wp_user-settings-time', '1490126788'),
(23, 1, 'wp_yoast_notifications', 'a:3:{i:0;a:2:{s:7:"message";s:144:"Since you are new to Yoast SEO you can configure the <a href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/?page=wpseo_configurator">plugin</a>";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:31:"wpseo-dismiss-onboarding-notice";s:5:"nonce";N;s:8:"priority";d:0.80000000000000004;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}i:1;a:2:{s:7:"message";s:179:"Don\'t miss your crawl errors: <a href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/admin.php?page=wpseo_search_console&tab=settings">connect with Google Search Console here</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}i:2;a:2:{s:7:"message";s:233:"<strong>Huge SEO Issue: You\'re blocking access to robots.</strong> You must <a href="http://localhost/vcs-2/vaidas-vaznys/wp-admin/options-reading.php">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility.";s:7:"options";a:8:{s:4:"type";s:5:"error";s:2:"id";s:32:"wpseo-dismiss-blog-public-notice";s:5:"nonce";N;s:8:"priority";i:1;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}}'),
(24, 1, 'wpseo-has-mailchimp-signup', '1') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BvxMQ1Nir566U.bSdAlF8Iz7hCSxHm1', 'admin', 'vaidas.vazny@gmail.com', '', '2017-03-03 15:20:09', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#


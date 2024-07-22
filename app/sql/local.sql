-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-07-19 16:46:58','2024-07-19 16:46:58','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=480 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:14:{i:1721681219;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1721684242;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1721710134;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1721713618;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1721715418;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1721717218;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1721753219;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1721753334;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1721753336;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1722012566;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1722012783;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1722012793;a:1:{s:19:\"jwt_auth_share_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1722098819;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','auto');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://localhost:10008','on');
INSERT INTO `wp_options` VALUES (3,'home','http://localhost:10008','on');
INSERT INTO `wp_options` VALUES (4,'blogname','omeruta-api','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','requiemcreatif@gmail.com','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','password','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:116:{s:10:\"artists/?$\";s:26:\"index.php?post_type=artist\";s:40:\"artists/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=artist&feed=$matches[1]\";s:35:\"artists/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=artist&feed=$matches[1]\";s:27:\"artists/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=artist&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"artists/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"artists/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"artists/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"artists/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"artists/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"artists/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"artists/([^/]+)/embed/?$\";s:39:\"index.php?artist=$matches[1]&embed=true\";s:28:\"artists/([^/]+)/trackback/?$\";s:33:\"index.php?artist=$matches[1]&tb=1\";s:48:\"artists/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?artist=$matches[1]&feed=$matches[2]\";s:43:\"artists/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?artist=$matches[1]&feed=$matches[2]\";s:36:\"artists/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?artist=$matches[1]&paged=$matches[2]\";s:43:\"artists/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?artist=$matches[1]&cpage=$matches[2]\";s:32:\"artists/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?artist=$matches[1]&page=$matches[2]\";s:24:\"artists/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"artists/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"artists/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"artists/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"artists/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"artists/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:5:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";i:2;s:30:\"advanced-custom-fields/acf.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','http://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','omeruta-api','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','omeruta-api','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','57155','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','posts','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:0:{}','on');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:0:{}','on');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:0:{}','on');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','0','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1736959618','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','57155','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','auto');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','auto');
INSERT INTO `wp_options` VALUES (104,'user_count','1','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (125,'recovery_keys','a:1:{s:22:\"jfDYjdaVB1CYFPQmjwB0kC\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BOdT7wrA/8Nt9NMlLWRWH2xhPzKB2R0\";s:10:\"created_at\";i:1721657956;}}','auto');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (150,'recently_activated','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (157,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (162,'acf_first_activated_version','6.3.4','on');
INSERT INTO `wp_options` VALUES (163,'acf_site_health','{\"version\":\"6.3.4\",\"plugin_type\":\"Free\",\"wp_version\":\"6.6\",\"mysql_version\":\"8.0.16\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Twenty Twenty-Four\",\"version\":\"1.2\",\"theme_uri\":\"https:\\/\\/wordpress.org\\/themes\\/twentytwentyfour\\/\",\"stylesheet\":false},\"active_plugins\":{\"acf-to-rest-api\\/class-acf-to-rest-api.php\":{\"name\":\"ACF to REST API\",\"version\":\"3.3.3\",\"plugin_uri\":\"http:\\/\\/github.com\\/airesvsg\\/acf-to-rest-api\"},\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.4\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1721407983,\"last_updated\":1721408191,\"event_first_created_field_group\":1721408191}','off');
INSERT INTO `wp_options` VALUES (165,'acf_version','6.3.4','auto');
INSERT INTO `wp_options` VALUES (168,'cptui_new_install','false','auto');
INSERT INTO `wp_options` VALUES (170,'jwt_auth_admin_notice','1','auto');
INSERT INTO `wp_options` VALUES (181,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1721410348;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (182,'current_theme','Omeruta API','auto');
INSERT INTO `wp_options` VALUES (183,'theme_mods_omeruta-api','a:4:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (184,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (208,'wp_calendar_block_has_published_posts','1','auto');
INSERT INTO `wp_options` VALUES (260,'ai1wm_updater','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (289,'images_updated','true','auto');
INSERT INTO `wp_options` VALUES (301,'acf_to_rest_api_request_version','3','auto');
INSERT INTO `wp_options` VALUES (326,'recovery_mode_email_last_sent','1721657956','auto');
INSERT INTO `wp_options` VALUES (407,'ai1wm_secret_key','nzmhsGGIqCRE','auto');
INSERT INTO `wp_options` VALUES (408,'ai1wm_backups_labels','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (409,'ai1wm_sites_links','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (410,'ai1wm_backups_path','/Users/omerutapro/Local Sites/omeruta-api/app/public/wp-content/ai1wm-backups','auto');
INSERT INTO `wp_options` VALUES (413,'ai1wm_status','a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:287:\"<a href=\"http://localhost:10008/wp-content/ai1wm-backups/localhost-20240722-125431-it1zyw.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"localhost\" download=\"localhost-20240722-125431-it1zyw.wpress\"><span>Download localhost</span><em>Size: 40 MB</em></a>\";}','auto');
INSERT INTO `wp_options` VALUES (414,'swift_performance_plugin_organizer','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (415,'jetpack_active_modules','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (418,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.6\";s:7:\"version\";s:3:\"6.6\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1721678881;s:15:\"version_checked\";s:3:\"6.6\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (419,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1721676307;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/acf-to-rest-api\";s:4:\"slug\";s:15:\"acf-to-rest-api\";s:6:\"plugin\";s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:11:\"new_version\";s:5:\"3.3.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/acf-to-rest-api/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-to-rest-api.3.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-256x256.jpg?rev=1752896\";s:2:\"1x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-128x128.jpg?rev=1752896\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/acf-to-rest-api/assets/banner-1544x500.jpg?rev=1752896\";s:2:\"1x\";s:70:\"https://ps.w.org/acf-to-rest-api/assets/banner-772x250.jpg?rev=1752896\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.3.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3096880\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3096880\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3096880\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3096880\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.84\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.84.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2990457\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2990457\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.17.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.17.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.5\";}s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/jwt-authentication-for-wp-rest-api\";s:4:\"slug\";s:34:\"jwt-authentication-for-wp-rest-api\";s:6:\"plugin\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.3.4\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/jwt-authentication-for-wp-rest-api.1.3.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";s:3:\"svg\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/banner-772x250.jpg?rev=2787935\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";}}}','off');
INSERT INTO `wp_options` VALUES (422,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1721676308;s:7:\"checked\";a:1:{s:11:\"omeruta-api\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (423,'_site_transient_ai1wm_last_check_for_updates','1721676307','off');
INSERT INTO `wp_options` VALUES (424,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (425,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:3:\"6.6\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (453,'_site_transient_timeout_browser_b33dc345895b77dd46ad78ad7d44280a','1722262756','off');
INSERT INTO `wp_options` VALUES (454,'_site_transient_browser_b33dc345895b77dd46ad78ad7d44280a','a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"18.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `wp_options` VALUES (455,'_site_transient_timeout_php_check_1a31e573deff9bf63840fe4b3ef8afb9','1722262756','off');
INSERT INTO `wp_options` VALUES (456,'_site_transient_php_check_1a31e573deff9bf63840fe4b3ef8afb9','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (471,'_site_transient_timeout_theme_roots','1721678108','off');
INSERT INTO `wp_options` VALUES (472,'_site_transient_theme_roots','a:1:{s:11:\"omeruta-api\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (475,'_site_transient_timeout_wp_theme_files_patterns-5abe6d54cfc9b61de2a5b7a63e84a6dd','1721680680','off');
INSERT INTO `wp_options` VALUES (477,'_site_transient_wp_theme_files_patterns-5abe6d54cfc9b61de2a5b7a63e84a6dd','a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:56:{s:15:\"banner-hero.php\";a:5:{s:5:\"title\";s:4:\"Hero\";s:4:\"slug\";s:28:\"twentytwentyfour/banner-hero\";s:11:\"description\";s:69:\"A hero section with a title, a paragraph, a CTA button, and an image.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";i:2;s:8:\"featured\";}}s:30:\"banner-project-description.php\";a:5:{s:5:\"title\";s:19:\"Project description\";s:4:\"slug\";s:43:\"twentytwentyfour/banner-project-description\";s:11:\"description\";s:64:\"Project description section with title, paragraph, and an image.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:4:{i:0;s:8:\"featured\";i:1;s:6:\"banner\";i:2;s:5:\"about\";i:3;s:9:\"portfolio\";}}s:30:\"cta-content-image-on-right.php\";a:5:{s:5:\"title\";s:34:\"Call to action with image on right\";s:4:\"slug\";s:43:\"twentytwentyfour/cta-content-image-on-right\";s:11:\"description\";s:76:\"A title, paragraph, two CTA buttons, and an image for a general CTA section.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";}}s:15:\"cta-pricing.php\";a:5:{s:5:\"title\";s:7:\"Pricing\";s:4:\"slug\";s:28:\"twentytwentyfour/cta-pricing\";s:11:\"description\";s:69:\"A pricing section with a title, a paragraph and three pricing levels.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"services\";}}s:12:\"cta-rsvp.php\";a:5:{s:5:\"title\";s:4:\"RSVP\";s:4:\"slug\";s:25:\"twentytwentyfour/cta-rsvp\";s:11:\"description\";s:63:\"A large RSVP heading sideways, a description, and a CTA button.\";s:13:\"viewportWidth\";i:1100;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}}s:27:\"cta-services-image-left.php\";a:5:{s:5:\"title\";s:42:\"Services call to action with image on left\";s:4:\"slug\";s:40:\"twentytwentyfour/cta-services-image-left\";s:11:\"description\";s:65:\"An image, title, paragraph and a CTA button to describe services.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:4:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";i:3;s:8:\"services\";}}s:26:\"cta-subscribe-centered.php\";a:5:{s:5:\"title\";s:23:\"Centered call to action\";s:4:\"slug\";s:39:\"twentytwentyfour/cta-subscribe-centered\";s:11:\"description\";s:67:\"Subscribers CTA section with a title, a paragraph and a CTA button.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:3:{i:0;s:10:\"newsletter\";i:1;s:9:\"subscribe\";i:2;s:6:\"button\";}}s:28:\"footer-centered-logo-nav.php\";a:5:{s:5:\"title\";s:40:\"Footer with centered logo and navigation\";s:4:\"slug\";s:41:\"twentytwentyfour/footer-centered-logo-nav\";s:11:\"description\";s:73:\"A footer section with a centered logo, navigation, and WordPress credits.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:25:\"footer-colophon-3-col.php\";a:5:{s:5:\"title\";s:31:\"Footer with colophon, 3 columns\";s:4:\"slug\";s:38:\"twentytwentyfour/footer-colophon-3-col\";s:11:\"description\";s:47:\"A footer section with a colophon and 3 columns.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:10:\"footer.php\";a:5:{s:5:\"title\";s:31:\"Footer with colophon, 4 columns\";s:4:\"slug\";s:23:\"twentytwentyfour/footer\";s:11:\"description\";s:47:\"A footer section with a colophon and 4 columns.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:29:\"gallery-full-screen-image.php\";a:4:{s:5:\"title\";s:17:\"Full screen image\";s:4:\"slug\";s:42:\"twentytwentyfour/gallery-full-screen-image\";s:11:\"description\";s:51:\"A cover image section that covers the entire width.\";s:10:\"categories\";a:2:{i:0;s:7:\"gallery\";i:1;s:9:\"portfolio\";}}s:36:\"gallery-offset-images-grid-2-col.php\";a:6:{s:5:\"title\";s:25:\"Offset gallery, 2 columns\";s:4:\"slug\";s:49:\"twentytwentyfour/gallery-offset-images-grid-2-col\";s:11:\"description\";s:51:\"A gallery section with 2 columns and offset images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:7:\"gallery\";i:1;s:9:\"portfolio\";}s:8:\"keywords\";a:5:{i:0;s:7:\"project\";i:1;s:6:\"images\";i:2;s:5:\"media\";i:3;s:7:\"masonry\";i:4;s:7:\"columns\";}}s:36:\"gallery-offset-images-grid-3-col.php\";a:6:{s:5:\"title\";s:25:\"Offset gallery, 3 columns\";s:4:\"slug\";s:49:\"twentytwentyfour/gallery-offset-images-grid-3-col\";s:11:\"description\";s:51:\"A gallery section with 3 columns and offset images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:7:\"gallery\";i:1;s:9:\"portfolio\";}s:8:\"keywords\";a:5:{i:0;s:7:\"project\";i:1;s:6:\"images\";i:2;s:5:\"media\";i:3;s:7:\"masonry\";i:4;s:7:\"columns\";}}s:36:\"gallery-offset-images-grid-4-col.php\";a:6:{s:5:\"title\";s:25:\"Offset gallery, 4 columns\";s:4:\"slug\";s:49:\"twentytwentyfour/gallery-offset-images-grid-4-col\";s:11:\"description\";s:51:\"A gallery section with 4 columns and offset images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:7:\"gallery\";i:1;s:8:\"featured\";i:2;s:9:\"portfolio\";}s:8:\"keywords\";a:5:{i:0;s:7:\"project\";i:1;s:6:\"images\";i:2;s:5:\"media\";i:3;s:7:\"masonry\";i:4;s:7:\"columns\";}}s:26:\"gallery-project-layout.php\";a:5:{s:5:\"title\";s:14:\"Project layout\";s:4:\"slug\";s:39:\"twentytwentyfour/gallery-project-layout\";s:11:\"description\";s:54:\"A gallery section with a project layout with 2 images.\";s:13:\"viewportWidth\";i:1600;s:10:\"categories\";a:3:{i:0;s:7:\"gallery\";i:1;s:8:\"featured\";i:2;s:9:\"portfolio\";}}s:14:\"hidden-404.php\";a:4:{s:5:\"title\";s:3:\"404\";s:4:\"slug\";s:27:\"twentytwentyfour/hidden-404\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:19:\"hidden-comments.php\";a:4:{s:5:\"title\";s:8:\"Comments\";s:4:\"slug\";s:32:\"twentytwentyfour/hidden-comments\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:21:\"hidden-no-results.php\";a:4:{s:5:\"title\";s:10:\"No results\";s:4:\"slug\";s:34:\"twentytwentyfour/hidden-no-results\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:25:\"hidden-portfolio-hero.php\";a:4:{s:5:\"title\";s:14:\"Portfolio hero\";s:4:\"slug\";s:38:\"twentytwentyfour/hidden-portfolio-hero\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:20:\"hidden-post-meta.php\";a:4:{s:5:\"title\";s:9:\"Post meta\";s:4:\"slug\";s:33:\"twentytwentyfour/hidden-post-meta\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:26:\"hidden-post-navigation.php\";a:4:{s:5:\"title\";s:15:\"Post navigation\";s:4:\"slug\";s:39:\"twentytwentyfour/hidden-post-navigation\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:17:\"hidden-search.php\";a:4:{s:5:\"title\";s:6:\"Search\";s:4:\"slug\";s:30:\"twentytwentyfour/hidden-search\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:18:\"hidden-sidebar.php\";a:4:{s:5:\"title\";s:7:\"Sidebar\";s:4:\"slug\";s:31:\"twentytwentyfour/hidden-sidebar\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"page-about-business.php\";a:8:{s:5:\"title\";s:5:\"About\";s:4:\"slug\";s:36:\"twentytwentyfour/page-about-business\";s:11:\"description\";s:147:\"A business about page with a hero section, a text section, a services section, a team section, a clients section, a FAQ section, and a CTA section.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:22:\"page-home-blogging.php\";a:7:{s:5:\"title\";s:13:\"Blogging home\";s:4:\"slug\";s:35:\"twentytwentyfour/page-home-blogging\";s:11:\"description\";s:92:\"A blogging home page with a hero section, a text section, a blog section, and a CTA section.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:2:{i:0;s:4:\"page\";i:1;s:7:\"starter\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:22:\"page-home-business.php\";a:8:{s:5:\"title\";s:13:\"Business home\";s:4:\"slug\";s:35:\"twentytwentyfour/page-home-business\";s:11:\"description\";s:146:\"A business home page with a hero section, a text section, a services section, a team section, a clients section, a FAQ section, and a CTA section.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:31:\"page-home-portfolio-gallery.php\";a:8:{s:5:\"title\";s:28:\"Portfolio home image gallery\";s:4:\"slug\";s:34:\"twentytwentyfour/page-home-gallery\";s:11:\"description\";s:45:\"A porfolio home page that features a gallery.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:23:\"page-home-portfolio.php\";a:8:{s:5:\"title\";s:40:\"Portfolio home with post featured images\";s:4:\"slug\";s:36:\"twentytwentyfour/page-home-portfolio\";s:11:\"description\";s:94:\"A portfolio home page with a description and a 4-column post section with only feature images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:27:\"page-newsletter-landing.php\";a:8:{s:5:\"title\";s:18:\"Newsletter landing\";s:4:\"slug\";s:40:\"twentytwentyfour/page-newsletter-landing\";s:11:\"description\";s:62:\"A block with a newsletter subscription CTA for a landing page.\";s:13:\"viewportWidth\";i:1100;s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:21:\"twentytwentyfour_page\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:27:\"page-portfolio-overview.php\";a:8:{s:5:\"title\";s:26:\"Portfolio project overview\";s:4:\"slug\";s:40:\"twentytwentyfour/page-portfolio-overview\";s:11:\"description\";s:138:\"A full portfolio page with a section for project description, project details, a full screen image, and a gallery section with two images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfour_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:21:\"page-rsvp-landing.php\";a:8:{s:5:\"title\";s:12:\"RSVP landing\";s:4:\"slug\";s:34:\"twentytwentyfour/page-rsvp-landing\";s:11:\"description\";s:63:\"A large RSVP heading sideways, a description, and a CTA button.\";s:13:\"viewportWidth\";i:1100;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfour_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:15:\"posts-1-col.php\";a:5:{s:5:\"title\";s:23:\"List of posts, 1 column\";s:4:\"slug\";s:28:\"twentytwentyfour/posts-1-col\";s:11:\"description\";s:26:\"A list of posts, 1 column.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:15:\"posts-3-col.php\";a:5:{s:5:\"title\";s:24:\"List of posts, 3 columns\";s:4:\"slug\";s:28:\"twentytwentyfour/posts-3-col\";s:11:\"description\";s:27:\"A list of posts, 3 columns.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:20:\"posts-grid-2-col.php\";a:5:{s:5:\"title\";s:49:\"Grid of posts featuring the first post, 2 columns\";s:4:\"slug\";s:33:\"twentytwentyfour/posts-grid-2-col\";s:11:\"description\";s:52:\"A grid of posts featuring the first post, 2 columns.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:27:\"posts-images-only-3-col.php\";a:5:{s:5:\"title\";s:42:\"Posts with featured images only, 3 columns\";s:4:\"slug\";s:40:\"twentytwentyfour/posts-images-only-3-col\";s:11:\"description\";s:53:\"A list of posts with featured images only, 3 columns.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:34:\"posts-images-only-offset-4-col.php\";a:4:{s:5:\"title\";s:49:\"Offset posts with featured images only, 4 columns\";s:4:\"slug\";s:47:\"twentytwentyfour/posts-images-only-offset-4-col\";s:11:\"description\";s:53:\"A list of posts with featured images only, 4 columns.\";s:10:\"categories\";a:1:{i:0;s:5:\"posts\";}}s:14:\"posts-list.php\";a:5:{s:5:\"title\";s:38:\"List of posts without images, 1 column\";s:4:\"slug\";s:27:\"twentytwentyfour/posts-list\";s:11:\"description\";s:41:\"A list of posts without images, 1 column.\";s:10:\"categories\";a:2:{i:0;s:5:\"query\";i:1;s:5:\"posts\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:14:\"team-4-col.php\";a:5:{s:5:\"title\";s:23:\"Team members, 4 columns\";s:4:\"slug\";s:27:\"twentytwentyfour/team-4-col\";s:11:\"description\";s:76:\"A team section, with a heading, a paragraph, and 4 columns for team members.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"team\";i:1;s:5:\"about\";}}s:29:\"template-archive-blogging.php\";a:6:{s:5:\"title\";s:25:\"Blogging archive template\";s:4:\"slug\";s:42:\"twentytwentyfour/template-archive-blogging\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:5:{i:0;s:7:\"archive\";i:1;s:8:\"category\";i:2;s:3:\"tag\";i:3;s:6:\"author\";i:4;s:4:\"date\";}}s:30:\"template-archive-portfolio.php\";a:6:{s:5:\"title\";s:26:\"Portfolio archive template\";s:4:\"slug\";s:43:\"twentytwentyfour/template-archive-portfolio\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:26:\"template-home-blogging.php\";a:6:{s:5:\"title\";s:22:\"Blogging home template\";s:4:\"slug\";s:39:\"twentytwentyfour/template-home-blogging\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:26:\"template-home-business.php\";a:6:{s:5:\"title\";s:22:\"Business home template\";s:4:\"slug\";s:39:\"twentytwentyfour/template-home-business\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:10:\"front-page\";i:1;s:4:\"home\";}}s:27:\"template-home-portfolio.php\";a:6:{s:5:\"title\";s:49:\"Portfolio home template with post featured images\";s:4:\"slug\";s:40:\"twentytwentyfour/template-home-portfolio\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:10:\"front-page\";i:1;s:4:\"home\";}}s:27:\"template-index-blogging.php\";a:6:{s:5:\"title\";s:23:\"Blogging index template\";s:4:\"slug\";s:40:\"twentytwentyfour/template-index-blogging\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"index\";i:1;s:4:\"home\";}}s:28:\"template-index-portfolio.php\";a:6:{s:5:\"title\";s:24:\"Portfolio index template\";s:4:\"slug\";s:41:\"twentytwentyfour/template-index-portfolio\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:5:\"index\";}}s:28:\"template-search-blogging.php\";a:6:{s:5:\"title\";s:24:\"Blogging search template\";s:4:\"slug\";s:41:\"twentytwentyfour/template-search-blogging\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:29:\"template-search-portfolio.php\";a:6:{s:5:\"title\";s:25:\"Portfolio search template\";s:4:\"slug\";s:42:\"twentytwentyfour/template-search-portfolio\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:29:\"template-single-portfolio.php\";a:6:{s:5:\"title\";s:30:\"Portfolio single post template\";s:4:\"slug\";s:42:\"twentytwentyfour/template-single-portfolio\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:24:\"testimonial-centered.php\";a:6:{s:5:\"title\";s:20:\"Centered testimonial\";s:4:\"slug\";s:37:\"twentytwentyfour/testimonial-centered\";s:11:\"description\";s:66:\"A centered testimonial section with a avatar, name, and job title.\";s:13:\"viewportWidth\";i:1300;s:10:\"categories\";a:2:{i:0;s:12:\"testimonials\";i:1;s:4:\"text\";}s:8:\"keywords\";a:3:{i:0;s:5:\"quote\";i:1;s:6:\"review\";i:2;s:5:\"about\";}}s:27:\"text-alternating-images.php\";a:5:{s:5:\"title\";s:28:\"Text with alternating images\";s:4:\"slug\";s:40:\"twentytwentyfour/text-alternating-images\";s:11:\"description\";s:80:\"A text section, then a two column section with text in one and image in another.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}}s:33:\"text-centered-statement-small.php\";a:6:{s:5:\"title\";s:25:\"Centered statement, small\";s:4:\"slug\";s:46:\"twentytwentyfour/text-centered-statement-small\";s:11:\"description\";s:55:\"A centered itallic text statement with compact padding.\";s:13:\"viewportWidth\";i:1200;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}s:8:\"keywords\";a:2:{i:0;s:7:\"mission\";i:1;s:12:\"introduction\";}}s:27:\"text-centered-statement.php\";a:6:{s:5:\"title\";s:18:\"Centered statement\";s:4:\"slug\";s:40:\"twentytwentyfour/text-centered-statement\";s:11:\"description\";s:48:\"A centered text statement with a large paddings.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:4:\"text\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:2:{i:0;s:7:\"mission\";i:1;s:12:\"introduction\";}}s:12:\"text-faq.php\";a:6:{s:5:\"title\";s:3:\"FAQ\";s:4:\"slug\";s:25:\"twentytwentyfour/text-faq\";s:11:\"description\";s:80:\"A FAQ section with a large FAQ heading and list of toggle questions and answers.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:4:\"text\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:4:{i:0;s:3:\"faq\";i:1;s:5:\"about\";i:2;s:10:\"frequently\";i:3;s:5:\"asked\";}}s:27:\"text-feature-grid-3-col.php\";a:5:{s:5:\"title\";s:23:\"Feature grid, 3 columns\";s:4:\"slug\";s:40:\"twentytwentyfour/text-feature-grid-3-col\";s:11:\"description\";s:62:\"A feature grid of 2 rows and 3 columns with headings and text.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}}s:24:\"text-project-details.php\";a:5:{s:5:\"title\";s:15:\"Project details\";s:4:\"slug\";s:37:\"twentytwentyfour/text-project-details\";s:11:\"description\";s:40:\"A text only section for project details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:9:\"portfolio\";}}s:31:\"text-title-left-image-right.php\";a:5:{s:5:\"title\";s:49:\"Title text and button on left with image on right\";s:4:\"slug\";s:44:\"twentytwentyfour/text-title-left-image-right\";s:11:\"description\";s:77:\"A title, a paragraph and a CTA button on the left with an image on the right.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}}}}','off');
INSERT INTO `wp_options` VALUES (479,'_transient_doing_cron','1721678880.9092819690704345703125','on');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1721517956:1');
INSERT INTO `wp_postmeta` VALUES (4,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (5,13,'_edit_lock','1721408788:1');
INSERT INTO `wp_postmeta` VALUES (6,15,'_edit_lock','1721519896:1');
INSERT INTO `wp_postmeta` VALUES (7,16,'_wp_attached_file','2024/07/puto-largo.jpeg');
INSERT INTO `wp_postmeta` VALUES (8,16,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2024/07/puto-largo.jpeg\";s:8:\"filesize\";i:295932;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"puto-largo-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14071;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"puto-largo-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67302;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"puto-largo-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9228;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"puto-largo-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43920;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"puto-largo-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124924;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:21:\"Miguel Del Cano Costa\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:34:\"Processed with VSCO with a5 preset\";s:17:\"created_timestamp\";s:10:\"1568500829\";s:9:\"copyright\";s:36:\"Copyright 2019. All rights reserved.\";s:12:\"focal_length\";s:3:\"130\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:34:\"Processed with VSCO with a5 preset\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (9,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (10,15,'short_bio','Cantante, compositor sevillano y uno de los pioneros del rap andaluz,con 10 discos publicados, giras por España, latinoamérica y 25 años de experiencia.');
INSERT INTO `wp_postmeta` VALUES (11,15,'_short_bio','field_6699add5c6cd6');
INSERT INTO `wp_postmeta` VALUES (12,15,'full_bio','Cantante, compositor sevillano y uno de los pioneros del rap andaluz, con 10 discos publicados, giras por España, latinoamérica y 25 años de experiencia. Destaca por su versatilidad musical, usando melodias vocales yofreciendo una nueva manera de transmitir, mezclar estilos, génerosmusicales y por el mensaje de sus canciones, haciendo apología alcrecimiento, a la superación personal, a la inclusión, la igualdad,la empatía y la tolerancia.Con 21 años fundó su grupo Dogma Crew y fue el autor de \'Chúpala\',éxitosa canción que forma parte de la historia del rap en español.Actualmente, ha publicado su quinto disco en solitario llamado \'Yin Yang\'.');
INSERT INTO `wp_postmeta` VALUES (13,15,'_full_bio','field_6699ae15c6cd7');
INSERT INTO `wp_postmeta` VALUES (14,15,'instagram','');
INSERT INTO `wp_postmeta` VALUES (15,15,'_instagram','field_6699ae50c6cd8');
INSERT INTO `wp_postmeta` VALUES (16,15,'facebook','');
INSERT INTO `wp_postmeta` VALUES (17,15,'_facebook','field_6699ae63c6cd9');
INSERT INTO `wp_postmeta` VALUES (18,15,'twitter','');
INSERT INTO `wp_postmeta` VALUES (19,15,'_twitter','field_6699ae66c6cda');
INSERT INTO `wp_postmeta` VALUES (20,15,'spotify','');
INSERT INTO `wp_postmeta` VALUES (21,15,'_spotify','field_6699ae8ec6cdb');
INSERT INTO `wp_postmeta` VALUES (22,15,'artist_image','16');
INSERT INTO `wp_postmeta` VALUES (23,15,'_artist_image','field_669a9b9ed3b4e');
INSERT INTO `wp_postmeta` VALUES (24,19,'_edit_lock','1721611991:1');
INSERT INTO `wp_postmeta` VALUES (27,21,'_edit_lock','1721518300:1');
INSERT INTO `wp_postmeta` VALUES (28,22,'_wp_attached_file','2024/07/telitah-dancer.jpeg');
INSERT INTO `wp_postmeta` VALUES (29,22,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1782;s:6:\"height\";i:2227;s:4:\"file\";s:27:\"2024/07/telitah-dancer.jpeg\";s:8:\"filesize\";i:623072;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"telitah-dancer-240x300.jpeg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12477;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"telitah-dancer-819x1024.jpeg\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81796;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"telitah-dancer-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5525;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"telitah-dancer-768x960.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73695;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"telitah-dancer-1229x1536.jpeg\";s:5:\"width\";i:1229;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:156799;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:29:\"telitah-dancer-1639x2048.jpeg\";s:5:\"width\";i:1639;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:260416;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (30,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (31,21,'short_bio','Estela aka Telitah apasionada por el baile desde muy joven, conoce el Dancehall y el Booty Dance en 2011 y comienza a formarse en estos estilos. Se centra en estas dos disciplinas, pero sigue participando activamente en talleres y formaciones de diferentes disciplinas de danza.');
INSERT INTO `wp_postmeta` VALUES (32,21,'_short_bio','field_6699add5c6cd6');
INSERT INTO `wp_postmeta` VALUES (33,21,'full_bio','Estela aka Telitah apasionada por el baile desde muy joven, conoce el Dancehall y el Booty Dance en 2011 y comienza a formarse en estos estilos. Se centra en estas dos disciplinas, pero sigue participando activamente en talleres y formaciones de diferentes disciplinas de danza.\r\n<div>\r\n<div>\r\n<div dir=\"auto\">\r\n<div dir=\"auto\">Ha actuado en numerosas ocasiones en discotecas, festivales y eventos, como en Rototom Sunsplash, siendo bailarina residente en 2023 y 2024 y bailando para artistas como Chi Ching Ching (JA), el Nowa Reggae en 2024, CamArt fest en 2024, New Level Vigo como bailarina residente de 2018 a 2020, O\' Marisquiño 2015 junto con Invasive, Casino Espinho en la Bboy Gala Portugal 2015, Vigo Street Stunts 2015 y 2017, Festas da Anunciada 2019, en Canibal Apolo 2019-New Level BCN, entre muchos otros.</div>\r\n<div dir=\"auto\"></div>\r\n<div dir=\"auto\">\r\n<div dir=\"auto\">Desde 2016 es profesora de Dancehall y Booty Dance, trabajando en las mejores academias de Vigo e impartiendo formaciones y workshops en numerosas partes de Galicia, Madrid, Ponferrada, Salamanca, Barcelona, y Francia.</div>\r\n</div>\r\n<div dir=\"auto\"></div>\r\n<div dir=\"auto\">Ha competido en Spanish Bounce Shake Down (Booty Dance Contest en Madrid) presentándose ante Big Fredia como jurado, en el Spanish Dancehall Queen Contest 2018, en Barcelona, llegando a podium, y tan sólo un mes más tarde en el Queens On Top Spain 2018, en Madrid, quedando en el TOP 5 y poniendo a Galicia en el mapa de la escena del Dancehall nacional.</div>\r\n</div>\r\n</div>\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (34,21,'_full_bio','field_6699ae15c6cd7');
INSERT INTO `wp_postmeta` VALUES (35,21,'instagram','');
INSERT INTO `wp_postmeta` VALUES (36,21,'_instagram','field_6699ae50c6cd8');
INSERT INTO `wp_postmeta` VALUES (37,21,'facebook','');
INSERT INTO `wp_postmeta` VALUES (38,21,'_facebook','field_6699ae63c6cd9');
INSERT INTO `wp_postmeta` VALUES (39,21,'twitter','');
INSERT INTO `wp_postmeta` VALUES (40,21,'_twitter','field_6699ae66c6cda');
INSERT INTO `wp_postmeta` VALUES (41,21,'spotify','');
INSERT INTO `wp_postmeta` VALUES (42,21,'_spotify','field_6699ae8ec6cdb');
INSERT INTO `wp_postmeta` VALUES (43,21,'artist_image','22');
INSERT INTO `wp_postmeta` VALUES (44,21,'_artist_image','field_669a9b9ed3b4e');
INSERT INTO `wp_postmeta` VALUES (45,21,'_thumbnail_id','22');
INSERT INTO `wp_postmeta` VALUES (46,15,'_thumbnail_id','16');
INSERT INTO `wp_postmeta` VALUES (47,22,'_wp_old_slug','telitah-dancer');
INSERT INTO `wp_postmeta` VALUES (48,16,'_wp_old_slug','processed-with-vsco-with-a5-preset');
INSERT INTO `wp_postmeta` VALUES (49,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (50,23,'_edit_lock','1721518093:1');
INSERT INTO `wp_postmeta` VALUES (51,21,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (52,21,'_wp_trash_meta_time','1721518387');
INSERT INTO `wp_postmeta` VALUES (53,21,'_wp_desired_post_slug','telitah-dancer');
INSERT INTO `wp_postmeta` VALUES (54,26,'_edit_lock','1721518579:1');
INSERT INTO `wp_postmeta` VALUES (55,27,'_acf_changed','1');
INSERT INTO `wp_postmeta` VALUES (56,28,'_edit_lock','1721518446:1');
INSERT INTO `wp_postmeta` VALUES (57,29,'short_bio','Cantante, compositor sevillano y uno de los pioneros del rap andaluz,con 10 discos publicados, giras por España, latinoamérica y 25 años de experiencia.');
INSERT INTO `wp_postmeta` VALUES (58,29,'_short_bio','field_6699add5c6cd6');
INSERT INTO `wp_postmeta` VALUES (59,29,'full_bio','Cantante, compositor sevillano y uno de los pioneros del rap andaluz, con 10 discos publicados, giras por España, latinoamérica y 25 años de experiencia. Destaca por su versatilidad musical, usando melodias vocales yofreciendo una nueva manera de transmitir, mezclar estilos, génerosmusicales y por el mensaje de sus canciones, haciendo apología alcrecimiento, a la superación personal, a la inclusión, la igualdad,la empatía y la tolerancia.Con 21 años fundó su grupo Dogma Crew y fue el autor de \'Chúpala\',éxitosa canción que forma parte de la historia del rap en español.Actualmente, ha publicado su quinto disco en solitario llamado \'Yin Yang\'.');
INSERT INTO `wp_postmeta` VALUES (60,29,'_full_bio','field_6699ae15c6cd7');
INSERT INTO `wp_postmeta` VALUES (61,29,'instagram','');
INSERT INTO `wp_postmeta` VALUES (62,29,'_instagram','field_6699ae50c6cd8');
INSERT INTO `wp_postmeta` VALUES (63,29,'facebook','');
INSERT INTO `wp_postmeta` VALUES (64,29,'_facebook','field_6699ae63c6cd9');
INSERT INTO `wp_postmeta` VALUES (65,29,'twitter','');
INSERT INTO `wp_postmeta` VALUES (66,29,'_twitter','field_6699ae66c6cda');
INSERT INTO `wp_postmeta` VALUES (67,29,'spotify','');
INSERT INTO `wp_postmeta` VALUES (68,29,'_spotify','field_6699ae8ec6cdb');
INSERT INTO `wp_postmeta` VALUES (69,29,'artist_image','16');
INSERT INTO `wp_postmeta` VALUES (70,29,'_artist_image','field_669a9b9ed3b4e');
INSERT INTO `wp_postmeta` VALUES (71,26,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (72,26,'_wp_trash_meta_time','1721520318');
INSERT INTO `wp_postmeta` VALUES (73,26,'_wp_desired_post_slug','test-artist');
INSERT INTO `wp_postmeta` VALUES (74,15,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (75,15,'_wp_trash_meta_time','1721520320');
INSERT INTO `wp_postmeta` VALUES (76,15,'_wp_desired_post_slug','puto-largo');
INSERT INTO `wp_postmeta` VALUES (77,5,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (78,5,'_wp_trash_meta_time','1721521006');
INSERT INTO `wp_postmeta` VALUES (79,5,'_wp_desired_post_slug','group_6699add5276d7');
INSERT INTO `wp_postmeta` VALUES (80,6,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (81,6,'_wp_trash_meta_time','1721521006');
INSERT INTO `wp_postmeta` VALUES (82,6,'_wp_desired_post_slug','field_6699add5c6cd6');
INSERT INTO `wp_postmeta` VALUES (83,7,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (84,7,'_wp_trash_meta_time','1721521006');
INSERT INTO `wp_postmeta` VALUES (85,7,'_wp_desired_post_slug','field_6699ae15c6cd7');
INSERT INTO `wp_postmeta` VALUES (86,8,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (87,8,'_wp_trash_meta_time','1721521006');
INSERT INTO `wp_postmeta` VALUES (88,8,'_wp_desired_post_slug','field_6699ae50c6cd8');
INSERT INTO `wp_postmeta` VALUES (89,9,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (90,9,'_wp_trash_meta_time','1721521006');
INSERT INTO `wp_postmeta` VALUES (91,9,'_wp_desired_post_slug','field_6699ae63c6cd9');
INSERT INTO `wp_postmeta` VALUES (92,10,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (93,10,'_wp_trash_meta_time','1721521006');
INSERT INTO `wp_postmeta` VALUES (94,10,'_wp_desired_post_slug','field_6699ae66c6cda');
INSERT INTO `wp_postmeta` VALUES (95,11,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (96,11,'_wp_trash_meta_time','1721521006');
INSERT INTO `wp_postmeta` VALUES (97,11,'_wp_desired_post_slug','field_6699ae8ec6cdb');
INSERT INTO `wp_postmeta` VALUES (98,12,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (99,12,'_wp_trash_meta_time','1721521006');
INSERT INTO `wp_postmeta` VALUES (100,12,'_wp_desired_post_slug','field_669a9b9ed3b4e');
INSERT INTO `wp_postmeta` VALUES (101,23,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (102,23,'_wp_trash_meta_time','1721521008');
INSERT INTO `wp_postmeta` VALUES (103,23,'_wp_desired_post_slug','group_669c475c1b606');
INSERT INTO `wp_postmeta` VALUES (104,24,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (105,24,'_wp_trash_meta_time','1721521008');
INSERT INTO `wp_postmeta` VALUES (106,24,'_wp_desired_post_slug','field_669c475c9c989');
INSERT INTO `wp_postmeta` VALUES (107,25,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (108,25,'_wp_trash_meta_time','1721521009');
INSERT INTO `wp_postmeta` VALUES (109,25,'_wp_desired_post_slug','field_669c481b1d49b');
INSERT INTO `wp_postmeta` VALUES (110,32,'_edit_lock','1721526066:1');
INSERT INTO `wp_postmeta` VALUES (111,32,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (112,40,'_edit_lock','1721524077:1');
INSERT INTO `wp_postmeta` VALUES (115,40,'_thumbnail_id','16');
INSERT INTO `wp_postmeta` VALUES (116,40,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (117,40,'short_bio','Cantante, compositor sevillano y uno de los pioneros del rap andaluz,con 10 discos publicados, giras por España, latinoamérica y 25 años de experiencia.');
INSERT INTO `wp_postmeta` VALUES (118,40,'_short_bio','field_6699add5c6cd6');
INSERT INTO `wp_postmeta` VALUES (119,40,'full_bio','Cantante, compositor sevillano y uno de los pioneros del rap andaluz, con 10 discos publicados, giras por España, latinoamérica y 25 años de experiencia. Destaca por su versatilidad musical, usando melodias vocales yofreciendo una nueva manera de transmitir, mezclar estilos, génerosmusicales y por el mensaje de sus canciones, haciendo apología alcrecimiento, a la superación personal, a la inclusión, la igualdad,la empatía y la tolerancia.Con 21 años fundó su grupo Dogma Crew y fue el autor de &amp;#8216;Chúpala&amp;#8217;,éxitosa canción que forma parte de la historia del rap en español.Actualmente, ha publicado su quinto disco en solitario llamado Yin Ana');
INSERT INTO `wp_postmeta` VALUES (120,40,'_full_bio','field_6699ae15c6cd7');
INSERT INTO `wp_postmeta` VALUES (121,40,'instagram','');
INSERT INTO `wp_postmeta` VALUES (122,40,'_instagram','field_6699ae50c6cd8');
INSERT INTO `wp_postmeta` VALUES (123,40,'facebook','');
INSERT INTO `wp_postmeta` VALUES (124,40,'_facebook','field_6699ae63c6cd9');
INSERT INTO `wp_postmeta` VALUES (125,40,'twitter','');
INSERT INTO `wp_postmeta` VALUES (126,40,'_twitter','field_6699ae66c6cda');
INSERT INTO `wp_postmeta` VALUES (127,40,'spotify','');
INSERT INTO `wp_postmeta` VALUES (128,40,'_spotify','field_6699ae8ec6cdb');
INSERT INTO `wp_postmeta` VALUES (129,40,'artist_image','16');
INSERT INTO `wp_postmeta` VALUES (130,40,'_artist_image','field_669c5441ea018');
INSERT INTO `wp_postmeta` VALUES (131,42,'short_bio','Cantante, compositor sevillano y uno de los pioneros del rap andaluz,con 10 discos publicados, giras por España, latinoamérica y 25 años de experiencia.');
INSERT INTO `wp_postmeta` VALUES (132,42,'_short_bio','field_6699add5c6cd6');
INSERT INTO `wp_postmeta` VALUES (133,42,'full_bio','Cantante, compositor sevillano y uno de los pioneros del rap andaluz, con 10 discos publicados, giras por España, latinoamérica y 25 años de experiencia. Destaca por su versatilidad musical, usando melodias vocales yofreciendo una nueva manera de transmitir, mezclar estilos, génerosmusicales y por el mensaje de sus canciones, haciendo apología alcrecimiento, a la superación personal, a la inclusión, la igualdad,la empatía y la tolerancia.Con 21 años fundó su grupo Dogma Crew y fue el autor de &amp;#8216;Chúpala&amp;#8217;,éxitosa canción que forma parte de la historia del rap en español.Actualmente, ha publicado su quinto disco en solitario llamado Yin Ana');
INSERT INTO `wp_postmeta` VALUES (134,42,'_full_bio','field_6699ae15c6cd7');
INSERT INTO `wp_postmeta` VALUES (135,42,'instagram','');
INSERT INTO `wp_postmeta` VALUES (136,42,'_instagram','field_6699ae50c6cd8');
INSERT INTO `wp_postmeta` VALUES (137,42,'facebook','');
INSERT INTO `wp_postmeta` VALUES (138,42,'_facebook','field_6699ae63c6cd9');
INSERT INTO `wp_postmeta` VALUES (139,42,'twitter','');
INSERT INTO `wp_postmeta` VALUES (140,42,'_twitter','field_6699ae66c6cda');
INSERT INTO `wp_postmeta` VALUES (141,42,'spotify','');
INSERT INTO `wp_postmeta` VALUES (142,42,'_spotify','field_6699ae8ec6cdb');
INSERT INTO `wp_postmeta` VALUES (143,42,'artist_image','16');
INSERT INTO `wp_postmeta` VALUES (144,42,'_artist_image','field_669c5441ea018');
INSERT INTO `wp_postmeta` VALUES (145,43,'_edit_lock','1721524064:1');
INSERT INTO `wp_postmeta` VALUES (146,43,'_thumbnail_id','22');
INSERT INTO `wp_postmeta` VALUES (147,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (148,43,'short_bio','Estela aka Telitah apasionada por el baile desde muy joven, conoce el Dancehall y el Booty Dance en 2011 y comienza a formarse en estos estilos. Se centra en estas dos disciplinas, pero sigue participando activamente en talleres y formaciones de diferentes disciplinas de danza.');
INSERT INTO `wp_postmeta` VALUES (149,43,'_short_bio','field_6699add5c6cd6');
INSERT INTO `wp_postmeta` VALUES (150,43,'full_bio','<div dir=\"auto\">Ha actuado en numerosas ocasiones en discotecas, festivales y eventos, como en Rototom Sunsplash, siendo bailarina residente en 2023 y 2024 y bailando para artistas como Chi Ching Ching (JA), el Nowa Reggae en 2024, CamArt fest en 2024, New Level Vigo como bailarina residente de 2018 a 2020, O\' Marisquiño 2015 junto con Invasive, Casino Espinho en la Bboy Gala Portugal 2015, Vigo Street Stunts 2015 y 2017, Festas da Anunciada 2019, en Canibal Apolo 2019-New Level BCN, entre muchos otros.</div>\r\n<div dir=\"auto\"></div>\r\n<div dir=\"auto\">\r\n<div dir=\"auto\">Desde 2016 es profesora de Dancehall y Booty Dance, trabajando en las mejores academias de Vigo e impartiendo formaciones y workshops en numerosas partes de Galicia, Madrid, Ponferrada, Salamanca, Barcelona, y Francia.</div>\r\n</div>\r\n<div dir=\"auto\"></div>\r\n<div dir=\"auto\">Ha competido en Spanish Bounce Shake Down (Booty Dance Contest en Madrid) presentándose ante Big Fredia como jurado, en el Spanish Dancehall Queen Contest 2018, en Barcelona, llegando a podium, y tan sólo un mes más tarde en el Queens On Top Spain 2018, en Madrid, quedando en el TOP 5 y poniendo a Galicia en el mapa de la escena del Dancehall nacional.</div>');
INSERT INTO `wp_postmeta` VALUES (151,43,'_full_bio','field_6699ae15c6cd7');
INSERT INTO `wp_postmeta` VALUES (152,43,'instagram','');
INSERT INTO `wp_postmeta` VALUES (153,43,'_instagram','field_6699ae50c6cd8');
INSERT INTO `wp_postmeta` VALUES (154,43,'facebook','');
INSERT INTO `wp_postmeta` VALUES (155,43,'_facebook','field_6699ae63c6cd9');
INSERT INTO `wp_postmeta` VALUES (156,43,'twitter','');
INSERT INTO `wp_postmeta` VALUES (157,43,'_twitter','field_6699ae66c6cda');
INSERT INTO `wp_postmeta` VALUES (158,43,'spotify','');
INSERT INTO `wp_postmeta` VALUES (159,43,'_spotify','field_6699ae8ec6cdb');
INSERT INTO `wp_postmeta` VALUES (160,43,'artist_image','22');
INSERT INTO `wp_postmeta` VALUES (161,43,'_artist_image','field_669c5441ea018');
INSERT INTO `wp_postmeta` VALUES (162,44,'short_bio','Estela aka Telitah apasionada por el baile desde muy joven, conoce el Dancehall y el Booty Dance en 2011 y comienza a formarse en estos estilos. Se centra en estas dos disciplinas, pero sigue participando activamente en talleres y formaciones de diferentes disciplinas de danza.');
INSERT INTO `wp_postmeta` VALUES (163,44,'_short_bio','field_6699add5c6cd6');
INSERT INTO `wp_postmeta` VALUES (164,44,'full_bio','<div dir=\"auto\">Ha actuado en numerosas ocasiones en discotecas, festivales y eventos, como en Rototom Sunsplash, siendo bailarina residente en 2023 y 2024 y bailando para artistas como Chi Ching Ching (JA), el Nowa Reggae en 2024, CamArt fest en 2024, New Level Vigo como bailarina residente de 2018 a 2020, O\' Marisquiño 2015 junto con Invasive, Casino Espinho en la Bboy Gala Portugal 2015, Vigo Street Stunts 2015 y 2017, Festas da Anunciada 2019, en Canibal Apolo 2019-New Level BCN, entre muchos otros.</div>\r\n<div dir=\"auto\"></div>\r\n<div dir=\"auto\">\r\n<div dir=\"auto\">Desde 2016 es profesora de Dancehall y Booty Dance, trabajando en las mejores academias de Vigo e impartiendo formaciones y workshops en numerosas partes de Galicia, Madrid, Ponferrada, Salamanca, Barcelona, y Francia.</div>\r\n</div>\r\n<div dir=\"auto\"></div>\r\n<div dir=\"auto\">Ha competido en Spanish Bounce Shake Down (Booty Dance Contest en Madrid) presentándose ante Big Fredia como jurado, en el Spanish Dancehall Queen Contest 2018, en Barcelona, llegando a podium, y tan sólo un mes más tarde en el Queens On Top Spain 2018, en Madrid, quedando en el TOP 5 y poniendo a Galicia en el mapa de la escena del Dancehall nacional.</div>');
INSERT INTO `wp_postmeta` VALUES (165,44,'_full_bio','field_6699ae15c6cd7');
INSERT INTO `wp_postmeta` VALUES (166,44,'instagram','');
INSERT INTO `wp_postmeta` VALUES (167,44,'_instagram','field_6699ae50c6cd8');
INSERT INTO `wp_postmeta` VALUES (168,44,'facebook','');
INSERT INTO `wp_postmeta` VALUES (169,44,'_facebook','field_6699ae63c6cd9');
INSERT INTO `wp_postmeta` VALUES (170,44,'twitter','');
INSERT INTO `wp_postmeta` VALUES (171,44,'_twitter','field_6699ae66c6cda');
INSERT INTO `wp_postmeta` VALUES (172,44,'spotify','');
INSERT INTO `wp_postmeta` VALUES (173,44,'_spotify','field_6699ae8ec6cdb');
INSERT INTO `wp_postmeta` VALUES (174,44,'artist_image','22');
INSERT INTO `wp_postmeta` VALUES (175,44,'_artist_image','field_669c5441ea018');
INSERT INTO `wp_postmeta` VALUES (178,46,'_wp_attached_file','2024/07/cam95-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (179,46,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:2048;s:4:\"file\";s:25:\"2024/07/cam95-scaled.jpeg\";s:8:\"filesize\";i:400145;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"cam95-300x240.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14537;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"cam95-1024x819.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:819;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:86713;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"cam95-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6999;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"cam95-768x614.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56493;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"cam95-1536x1229.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1229;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:164810;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"cam95-2048x1638.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1638;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:268497;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON Z 6_2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1710716115\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"cam95.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (180,47,'_wp_attached_file','2024/07/cam459-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (181,47,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:2048;s:4:\"file\";s:26:\"2024/07/cam459-scaled.jpeg\";s:8:\"filesize\";i:281950;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"cam459-300x240.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11746;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"cam459-1024x819.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:819;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63329;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"cam459-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6425;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"cam459-768x614.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41727;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"cam459-1536x1229.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1229;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116240;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:21:\"cam459-2048x1638.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1638;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:188162;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON Z 6_2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1710719195\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"cam459.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (182,48,'_wp_attached_file','2024/07/cam415-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (183,48,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1703;s:4:\"file\";s:26:\"2024/07/cam415-scaled.jpeg\";s:8:\"filesize\";i:415661;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"cam415-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14873;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"cam415-1024x681.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87531;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"cam415-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8371;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"cam415-768x511.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56622;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"cam415-1536x1022.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1022;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:165232;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:21:\"cam415-2048x1363.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1363;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:273017;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON Z 6_2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1710719036\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"cam415.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (184,49,'_wp_attached_file','2024/07/cam204-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (185,49,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1703;s:4:\"file\";s:25:\"2024/07/cam204-scaled.jpg\";s:8:\"filesize\";i:365694;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"cam204-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14455;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"cam204-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82699;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"cam204-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7603;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"cam204-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53805;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"cam204-1536x1022.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1022;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:152546;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:20:\"cam204-2048x1363.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1363;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:246404;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON Z 6_2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1710717817\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:10:\"cam204.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (188,19,'_thumbnail_id','49');
INSERT INTO `wp_postmeta` VALUES (189,19,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (190,19,'approver','');
INSERT INTO `wp_postmeta` VALUES (195,1,'_edit_lock','1721611995:1');
INSERT INTO `wp_postmeta` VALUES (196,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (197,1,'_wp_trash_meta_time','1721612143');
INSERT INTO `wp_postmeta` VALUES (198,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (199,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (200,51,'_edit_lock','1721664035:1');
INSERT INTO `wp_postmeta` VALUES (203,51,'_thumbnail_id','48');
INSERT INTO `wp_postmeta` VALUES (204,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (205,51,'approver','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-07-19 16:46:58','2024-07-19 16:46:58','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2024-07-22 01:35:43','2024-07-22 01:35:43','',0,'http://localhost:10008/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-07-19 16:46:58','2024-07-19 16:46:58','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10008/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-07-19 16:46:58','2024-07-19 16:46:58','',0,'http://localhost:10008/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-07-19 16:46:58','2024-07-19 16:46:58','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10008.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2024-07-19 16:46:58','2024-07-19 16:46:58','',0,'http://localhost:10008/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2024-07-19 16:48:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-07-19 16:48:56','0000-00-00 00:00:00','',0,'http://localhost:10008/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2024-07-19 16:56:31','2024-07-19 16:56:31','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"artist\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Artist Details','artist-details','trash','closed','closed','','group_6699add5276d7__trashed','','','2024-07-21 00:16:46','2024-07-21 00:16:46','',0,'http://localhost:10008/?p=5',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2024-07-19 16:56:31','2024-07-19 16:56:31','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Short Bio','short_bio','trash','closed','closed','','field_6699add5c6cd6__trashed','','','2024-07-21 00:16:46','2024-07-21 00:16:46','',5,'http://localhost:10008/?post_type=acf-field&#038;p=6',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-07-19 16:56:31','2024-07-19 16:56:31','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Full Bio','full_bio','trash','closed','closed','','field_6699ae15c6cd7__trashed','','','2024-07-21 00:16:46','2024-07-21 00:16:46','',5,'http://localhost:10008/?post_type=acf-field&#038;p=7',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-07-19 16:56:31','2024-07-19 16:56:31','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Instagram','instagram','trash','closed','closed','','field_6699ae50c6cd8__trashed','','','2024-07-21 00:16:46','2024-07-21 00:16:46','',5,'http://localhost:10008/?post_type=acf-field&#038;p=8',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-07-19 16:56:31','2024-07-19 16:56:31','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Facebook','facebook','trash','closed','closed','','field_6699ae63c6cd9__trashed','','','2024-07-21 00:16:46','2024-07-21 00:16:46','',5,'http://localhost:10008/?post_type=acf-field&#038;p=9',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-07-19 16:56:31','2024-07-19 16:56:31','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Twitter','twitter','trash','closed','closed','','field_6699ae66c6cda__trashed','','','2024-07-21 00:16:46','2024-07-21 00:16:46','',5,'http://localhost:10008/?post_type=acf-field&#038;p=10',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-07-19 16:56:31','2024-07-19 16:56:31','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Spotify','spotify','trash','closed','closed','','field_6699ae8ec6cdb__trashed','','','2024-07-21 00:16:46','2024-07-21 00:16:46','',5,'http://localhost:10008/?post_type=acf-field&#038;p=11',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-07-19 17:01:08','2024-07-19 17:01:08','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Image','artist_image','trash','closed','closed','','field_669a9b9ed3b4e__trashed','','','2024-07-21 00:16:46','2024-07-21 00:16:46','',5,'http://localhost:10008/?post_type=acf-field&#038;p=12',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-07-19 17:08:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-07-19 17:08:30','0000-00-00 00:00:00','',0,'http://localhost:10008/?post_type=artist&p=13',0,'artist','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-07-19 17:08:30','2024-07-19 17:08:30','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfour','','','2024-07-19 17:08:30','2024-07-19 17:08:30','',0,'http://localhost:10008/wp-global-styles-twentytwentyfour/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-07-19 17:10:29','2024-07-19 17:10:29','','Puto Largo','','trash','closed','closed','','puto-largo__trashed','','','2024-07-21 00:05:20','2024-07-21 00:05:20','',0,'http://localhost:10008/?post_type=artist&#038;p=15',0,'artist','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-07-19 17:10:20','2024-07-19 17:10:20','','Processed with VSCO with a5 preset','Processed with VSCO with a5 preset','inherit','open','closed','','media-processed-with-vsco-with-a5-preset','','','2024-07-20 23:24:49','2024-07-20 23:24:49','',15,'http://localhost:10008/wp-content/uploads/2024/07/puto-largo.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (17,1,'2024-07-19 17:32:24','2024-07-19 17:32:24','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-07-19 17:32:24','2024-07-19 17:32:24','',0,'http://localhost:10008/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-07-19 17:34:41','2024-07-19 17:34:41','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-omeruta-api','','','2024-07-19 17:34:41','2024-07-19 17:34:41','',0,'http://localhost:10008/wp-global-styles-omeruta-api/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-07-19 19:51:16','2024-07-19 19:51:16','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','New Article','','publish','open','open','','new-article','','','2024-07-22 01:35:21','2024-07-22 01:35:21','',0,'http://localhost:10008/?p=19',0,'post','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-07-19 19:51:16','2024-07-19 19:51:16','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','New Article','','inherit','closed','closed','','19-revision-v1','','','2024-07-19 19:51:16','2024-07-19 19:51:16','',19,'http://localhost:10008/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-07-19 22:31:39','2024-07-19 22:31:39','','Telitah Dancer','','trash','closed','closed','','telitah-dancer__trashed','','','2024-07-20 23:33:07','2024-07-20 23:33:07','',0,'http://localhost:10008/?post_type=artist&#038;p=21',0,'artist','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-07-19 22:31:32','2024-07-19 22:31:32','','telitah-dancer','','inherit','open','closed','','media-telitah-dancer','','','2024-07-20 23:24:49','2024-07-20 23:24:49','',21,'http://localhost:10008/wp-content/uploads/2024/07/telitah-dancer.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-07-20 23:25:28','2024-07-20 23:25:28','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Testing Acf','testing-acf','trash','closed','closed','','group_669c475c1b606__trashed','','','2024-07-21 00:16:48','2024-07-21 00:16:48','',0,'http://localhost:10008/?post_type=acf-field-group&#038;p=23',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-07-20 23:25:28','2024-07-20 23:25:28','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','test','test','trash','closed','closed','','field_669c475c9c989__trashed','','','2024-07-21 00:16:48','2024-07-21 00:16:48','',23,'http://localhost:10008/?post_type=acf-field&#038;p=24',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-07-20 23:28:33','2024-07-20 23:28:33','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','new','new','trash','closed','closed','','field_669c481b1d49b__trashed','','','2024-07-21 00:16:49','2024-07-21 00:16:49','',23,'http://localhost:10008/?post_type=acf-field&#038;p=25',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-07-20 23:34:26','2024-07-20 23:34:26','','test artist','','trash','closed','closed','','test-artist__trashed','','','2024-07-21 00:05:18','2024-07-21 00:05:18','',0,'http://localhost:10008/?post_type=artist&#038;p=26',0,'artist','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-07-20 23:35:09','2024-07-20 23:35:09','','test artist','','inherit','closed','closed','','26-autosave-v1','','','2024-07-20 23:35:09','2024-07-20 23:35:09','',26,'http://localhost:10008/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-07-20 23:36:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-07-20 23:36:22','0000-00-00 00:00:00','',0,'http://localhost:10008/?post_type=artist&p=28',0,'artist','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-07-20 23:58:15','2024-07-20 23:58:15','','Puto Largo','','inherit','closed','closed','','15-revision-v1','','','2024-07-20 23:58:15','2024-07-20 23:58:15','',15,'http://localhost:10008/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-07-21 00:05:18','2024-07-21 00:05:18','','test artist','','inherit','closed','closed','','26-revision-v1','','','2024-07-21 00:05:18','2024-07-21 00:05:18','',26,'http://localhost:10008/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-07-21 00:18:19','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-07-21 00:18:19','0000-00-00 00:00:00','',0,'http://localhost:10008/?post_type=acf-field-group&p=31',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-07-21 00:19:43','2024-07-21 00:19:43','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"artist\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Artist Details','artist-details','publish','closed','closed','','group_6699add5276d7','','','2024-07-21 01:41:06','2024-07-21 01:41:06','',0,'http://localhost:10008/?p=32',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-07-21 00:19:43','2024-07-21 00:19:43','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Short Bio','short_bio','publish','closed','closed','','field_6699add5c6cd6','','','2024-07-21 00:19:43','2024-07-21 00:19:43','',32,'http://localhost:10008/?post_type=acf-field&p=33',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-07-21 00:19:43','2024-07-21 00:19:43','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Full Bio','full_bio','publish','closed','closed','','field_6699ae15c6cd7','','','2024-07-21 00:19:43','2024-07-21 00:19:43','',32,'http://localhost:10008/?post_type=acf-field&p=34',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-07-21 00:19:43','2024-07-21 00:19:43','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Instagram','instagram','publish','closed','closed','','field_6699ae50c6cd8','','','2024-07-21 00:19:43','2024-07-21 00:19:43','',32,'http://localhost:10008/?post_type=acf-field&p=35',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-07-21 00:19:43','2024-07-21 00:19:43','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Facebook','facebook','publish','closed','closed','','field_6699ae63c6cd9','','','2024-07-21 00:19:43','2024-07-21 00:19:43','',32,'http://localhost:10008/?post_type=acf-field&p=36',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-07-21 00:19:43','2024-07-21 00:19:43','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Twitter','twitter','publish','closed','closed','','field_6699ae66c6cda','','','2024-07-21 00:19:43','2024-07-21 00:19:43','',32,'http://localhost:10008/?post_type=acf-field&p=37',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-07-21 00:19:43','2024-07-21 00:19:43','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Spotify','spotify','publish','closed','closed','','field_6699ae8ec6cdb','','','2024-07-21 00:19:43','2024-07-21 00:19:43','',32,'http://localhost:10008/?post_type=acf-field&p=38',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-07-21 00:26:36','2024-07-21 00:26:36','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Artist Image','artist_image','publish','closed','closed','','field_669c5441ea018','','','2024-07-21 01:41:06','2024-07-21 01:41:06','',32,'http://localhost:10008/?post_type=acf-field&#038;p=39',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-07-21 00:30:03','2024-07-21 00:30:03','','Puto Largo','','publish','closed','closed','','puto-largo','','','2024-07-21 01:07:57','2024-07-21 01:07:57','',0,'http://localhost:10008/?post_type=artist&#038;p=40',0,'artist','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-07-21 00:30:03','2024-07-21 00:30:03','','Puto Largo','','inherit','closed','closed','','40-revision-v1','','','2024-07-21 00:30:03','2024-07-21 00:30:03','',40,'http://localhost:10008/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-07-21 00:34:12','2024-07-21 00:34:12','','Telitah Dancer','','publish','closed','closed','','telitah-dancer','','','2024-07-21 01:07:44','2024-07-21 01:07:44','',0,'http://localhost:10008/?post_type=artist&#038;p=43',0,'artist','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-07-21 00:34:12','2024-07-21 00:34:12','','Telitah Dancer','','inherit','closed','closed','','43-revision-v1','','','2024-07-21 00:34:12','2024-07-21 00:34:12','',43,'http://localhost:10008/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-07-22 01:34:18','2024-07-22 01:34:18','','cam95','','inherit','open','closed','','cam95','','','2024-07-22 01:34:18','2024-07-22 01:34:18','',19,'http://localhost:10008/wp-content/uploads/2024/07/cam95.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-07-22 01:34:29','2024-07-22 01:34:29','','cam459','','inherit','open','closed','','cam459','','','2024-07-22 01:34:29','2024-07-22 01:34:29','',19,'http://localhost:10008/wp-content/uploads/2024/07/cam459.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (48,1,'2024-07-22 01:34:31','2024-07-22 01:34:31','','cam415','','inherit','open','closed','','cam415','','','2024-07-22 01:34:31','2024-07-22 01:34:31','',19,'http://localhost:10008/wp-content/uploads/2024/07/cam415.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (49,1,'2024-07-22 01:34:34','2024-07-22 01:34:34','','cam204','','inherit','open','closed','','cam204','','','2024-07-22 01:34:34','2024-07-22 01:34:34','',19,'http://localhost:10008/wp-content/uploads/2024/07/cam204.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (50,1,'2024-07-22 01:35:43','2024-07-22 01:35:43','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2024-07-22 01:35:43','2024-07-22 01:35:43','',1,'http://localhost:10008/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2024-07-22 01:36:53','2024-07-22 01:36:53','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Second News','','publish','open','open','','second-news','','','2024-07-22 01:36:54','2024-07-22 01:36:54','',0,'http://localhost:10008/?p=51',0,'post','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2024-07-22 01:36:53','2024-07-22 01:36:53','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Second News','','inherit','closed','closed','','51-revision-v1','','','2024-07-22 01:36:53','2024-07-22 01:36:53','',51,'http://localhost:10008/?p=52',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (14,2,0);
INSERT INTO `wp_term_relationships` VALUES (18,3,0);
INSERT INTO `wp_term_relationships` VALUES (19,1,0);
INSERT INTO `wp_term_relationships` VALUES (32,1,0);
INSERT INTO `wp_term_relationships` VALUES (51,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentyfour','twentytwentyfour',0);
INSERT INTO `wp_terms` VALUES (3,'omeruta-api','omeruta-api',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','omeruta');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"2428b08e8678557a836fedecb88ef255fe54dd0d20b78049a643c1e85606736c\";a:4:{s:10:\"expiration\";i:1722821284;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15\";s:5:\"login\";i:1721611684;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1721407731');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','4');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'omeruta','$P$B425RaRFucFuDp3gV.LlyKJbdqXyrz0','omeruta','requiemcreatif@gmail.com','http://localhost:10008','2024-07-19 16:46:58','',0,'omeruta');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-22 21:08:03

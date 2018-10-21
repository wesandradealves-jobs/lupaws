-- All In One WP Migration SQL Dump
-- https://servmask.com/
--
-- Host: localhost
-- Database: portalseguranca
-- Class: Ai1wm_Database_Mysqli
--

DROP TABLE IF EXISTS `SERVMASK_PREFIX_commentmeta`;
CREATE TABLE `SERVMASK_PREFIX_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `SERVMASK_PREFIX_comments`;
CREATE TABLE `SERVMASK_PREFIX_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_comments` VALUES ('1','1','Um comentarista do WordPress','wapuu@wordpress.example','https://wordpress.org/','','2018-09-01 14:07:47','2018-09-01 17:07:47','Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.','0','1','','','0','0');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_links`;
CREATE TABLE `SERVMASK_PREFIX_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `SERVMASK_PREFIX_options`;
CREATE TABLE `SERVMASK_PREFIX_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1075 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1','siteurl','http://localhost/portalseguranca/','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('2','home','http://localhost/portalseguranca/','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('3','blogname','portalseguranca','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('4','blogdescription','Só mais um site WordPress','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('5','users_can_register','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('6','admin_email','wesandradealves@gmail.com','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('7','start_of_week','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('8','use_balanceTags','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('9','use_smilies','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('10','require_name_email','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('11','comments_notify','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('12','posts_per_rss','10','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('13','rss_use_excerpt','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('14','mailserver_url','mail.example.com','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('15','mailserver_login','login@example.com','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('16','mailserver_pass','password','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('17','mailserver_port','110','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('18','default_category','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('19','default_comment_status','open','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('20','default_ping_status','open','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('21','default_pingback_flag','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('22','posts_per_page','10','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('23','date_format','j \\d\\e F \\d\\e Y','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('24','time_format','H:i','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('25','links_updated_date_format','j \\d\\e F \\d\\e Y, H:i','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('26','comment_moderation','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('27','moderation_notify','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('28','permalink_structure','/%postname%/','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('29','rewrite_rules','a:233:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"wpforms_log_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]\";s:52:\"wpforms_log_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]\";s:33:\"wpforms_log_type/([^/]+)/embed/?$\";s:49:\"index.php?wpforms_log_type=$matches[1]&embed=true\";s:45:\"wpforms_log_type/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?wpforms_log_type=$matches[1]&paged=$matches[2]\";s:27:\"wpforms_log_type/([^/]+)/?$\";s:38:\"index.php?wpforms_log_type=$matches[1]\";s:34:\"videos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"videos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"videos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"videos/([^/]+)/embed/?$\";s:39:\"index.php?videos=$matches[1]&embed=true\";s:27:\"videos/([^/]+)/trackback/?$\";s:33:\"index.php?videos=$matches[1]&tb=1\";s:35:\"videos/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?videos=$matches[1]&paged=$matches[2]\";s:42:\"videos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?videos=$matches[1]&cpage=$matches[2]\";s:31:\"videos/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?videos=$matches[1]&page=$matches[2]\";s:23:\"videos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"videos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"videos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?banner_categories=$matches[1]&feed=$matches[2]\";s:46:\"categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?banner_categories=$matches[1]&feed=$matches[2]\";s:27:\"categories/([^/]+)/embed/?$\";s:50:\"index.php?banner_categories=$matches[1]&embed=true\";s:39:\"categories/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?banner_categories=$matches[1]&paged=$matches[2]\";s:21:\"categories/([^/]+)/?$\";s:39:\"index.php?banner_categories=$matches[1]\";s:35:\"jornais/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"jornais/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"jornais/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"jornais/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"jornais/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"jornais/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"jornais/([^/]+)/embed/?$\";s:40:\"index.php?jornais=$matches[1]&embed=true\";s:28:\"jornais/([^/]+)/trackback/?$\";s:34:\"index.php?jornais=$matches[1]&tb=1\";s:36:\"jornais/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?jornais=$matches[1]&paged=$matches[2]\";s:43:\"jornais/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?jornais=$matches[1]&cpage=$matches[2]\";s:32:\"jornais/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?jornais=$matches[1]&page=$matches[2]\";s:24:\"jornais/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"jornais/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"jornais/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"jornais/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"jornais/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"jornais/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"banners/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"banners/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"banners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"banners/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"banners/([^/]+)/embed/?$\";s:40:\"index.php?banners=$matches[1]&embed=true\";s:28:\"banners/([^/]+)/trackback/?$\";s:34:\"index.php?banners=$matches[1]&tb=1\";s:36:\"banners/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&paged=$matches[2]\";s:43:\"banners/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&cpage=$matches[2]\";s:32:\"banners/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?banners=$matches[1]&page=$matches[2]\";s:24:\"banners/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"banners/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"banners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"banners/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"clientes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"clientes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"clientes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"clientes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"clientes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"clientes/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"clientes/([^/]+)/embed/?$\";s:41:\"index.php?clientes=$matches[1]&embed=true\";s:29:\"clientes/([^/]+)/trackback/?$\";s:35:\"index.php?clientes=$matches[1]&tb=1\";s:37:\"clientes/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?clientes=$matches[1]&paged=$matches[2]\";s:44:\"clientes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?clientes=$matches[1]&cpage=$matches[2]\";s:33:\"clientes/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?clientes=$matches[1]&page=$matches[2]\";s:25:\"clientes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"clientes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"clientes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"clientes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"clientes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"clientes/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"cargos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"cargos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"cargos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"cargos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"cargos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"cargos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"cargos/([^/]+)/embed/?$\";s:39:\"index.php?cargos=$matches[1]&embed=true\";s:27:\"cargos/([^/]+)/trackback/?$\";s:33:\"index.php?cargos=$matches[1]&tb=1\";s:35:\"cargos/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?cargos=$matches[1]&paged=$matches[2]\";s:42:\"cargos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?cargos=$matches[1]&cpage=$matches[2]\";s:31:\"cargos/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?cargos=$matches[1]&page=$matches[2]\";s:23:\"cargos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"cargos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"cargos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"cargos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"cargos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"cargos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"operadoras/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"operadoras/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"operadoras/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"operadoras/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"operadoras/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"operadoras/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"operadoras/([^/]+)/embed/?$\";s:43:\"index.php?operadoras=$matches[1]&embed=true\";s:31:\"operadoras/([^/]+)/trackback/?$\";s:37:\"index.php?operadoras=$matches[1]&tb=1\";s:39:\"operadoras/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?operadoras=$matches[1]&paged=$matches[2]\";s:46:\"operadoras/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?operadoras=$matches[1]&cpage=$matches[2]\";s:35:\"operadoras/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?operadoras=$matches[1]&page=$matches[2]\";s:27:\"operadoras/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"operadoras/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"operadoras/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"operadoras/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"operadoras/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"operadoras/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"atividade_fornecedor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"atividade_fornecedor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"atividade_fornecedor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"atividade_fornecedor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"atividade_fornecedor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"atividade_fornecedor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"atividade_fornecedor/([^/]+)/embed/?$\";s:53:\"index.php?atividade_fornecedor=$matches[1]&embed=true\";s:41:\"atividade_fornecedor/([^/]+)/trackback/?$\";s:47:\"index.php?atividade_fornecedor=$matches[1]&tb=1\";s:49:\"atividade_fornecedor/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?atividade_fornecedor=$matches[1]&paged=$matches[2]\";s:56:\"atividade_fornecedor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:60:\"index.php?atividade_fornecedor=$matches[1]&cpage=$matches[2]\";s:45:\"atividade_fornecedor/([^/]+)(?:/([0-9]+))?/?$\";s:59:\"index.php?atividade_fornecedor=$matches[1]&page=$matches[2]\";s:37:\"atividade_fornecedor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"atividade_fornecedor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"atividade_fornecedor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"atividade_fornecedor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"atividade_fornecedor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"atividade_fornecedor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"atividade_usuario/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"atividade_usuario/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"atividade_usuario/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"atividade_usuario/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"atividade_usuario/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"atividade_usuario/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"atividade_usuario/([^/]+)/embed/?$\";s:50:\"index.php?atividade_usuario=$matches[1]&embed=true\";s:38:\"atividade_usuario/([^/]+)/trackback/?$\";s:44:\"index.php?atividade_usuario=$matches[1]&tb=1\";s:46:\"atividade_usuario/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?atividade_usuario=$matches[1]&paged=$matches[2]\";s:53:\"atividade_usuario/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?atividade_usuario=$matches[1]&cpage=$matches[2]\";s:42:\"atividade_usuario/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?atividade_usuario=$matches[1]&page=$matches[2]\";s:34:\"atividade_usuario/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"atividade_usuario/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"atividade_usuario/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"atividade_usuario/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"atividade_usuario/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"atividade_usuario/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=24&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('30','hack_file','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('31','blog_charset','UTF-8','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('32','moderation_keys','','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('34','category_base','','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('35','ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('36','comment_max_links','2','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('37','gmt_offset','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('38','default_email_category','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('39','recently_edited','','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('42','comment_whitelist','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('43','blacklist_keys','','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('44','comment_registration','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('45','html_type','text/html','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('46','use_trackback','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('47','default_role','subscriber','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('48','db_version','38590','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('49','uploads_use_yearmonth_folders','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('50','upload_path','','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('51','blog_public','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('52','default_link_category','2','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('53','show_on_front','page','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('54','tag_base','','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('55','show_avatars','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('56','avatar_rating','G','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('57','upload_url_path','','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('58','thumbnail_size_w','150','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('59','thumbnail_size_h','150','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('60','thumbnail_crop','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('61','medium_size_w','300','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('62','medium_size_h','300','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('63','avatar_default','mystery','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('64','large_size_w','1024','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('65','large_size_h','1024','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('66','image_default_link_type','none','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('67','image_default_size','','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('68','image_default_align','','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('69','close_comments_for_old_posts','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('70','close_comments_days_old','14','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('71','thread_comments','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('72','thread_comments_depth','5','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('73','page_comments','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('74','comments_per_page','50','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('75','default_comments_page','newest','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('76','comment_order','asc','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('77','sticky_posts','a:0:{}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('78','widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('79','widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('80','widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('81','uninstall_plugins','a:0:{}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('82','timezone_string','America/Sao_Paulo','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('83','page_for_posts','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('84','page_on_front','24','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('85','default_post_format','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('86','link_manager_enabled','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('87','finished_splitting_shared_terms','1','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('88','site_icon','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('89','medium_large_size_w','768','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('90','medium_large_size_h','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('91','SERVMASK_PREFIX_page_for_privacy_policy','3','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('92','initial_db_version','38590','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('93','SERVMASK_PREFIX_user_roles','a:16:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:5:\"admin\";a:2:{s:4:\"name\";s:5:\"Admin\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:9:\"assinante\";a:2:{s:4:\"name\";s:9:\"Assinante\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:10:\"jornalista\";a:2:{s:4:\"name\";s:10:\"Jornalista\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:11:\"atendimento\";a:2:{s:4:\"name\";s:11:\"Atendimento\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:9:\"videoaula\";a:2:{s:4:\"name\";s:9:\"Videoaula\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:5:\"fatej\";a:2:{s:4:\"name\";s:5:\"FATEJ\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:14:\"assinante-plus\";a:2:{s:4:\"name\";s:14:\"Assinante Plus\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:14:\"assinante-ouro\";a:2:{s:4:\"name\";s:14:\"Assinante Ouro\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:17:\"assinante-ouro-ii\";a:2:{s:4:\"name\";s:17:\"Assinante Ouro II\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:16:\"curso-terrorismo\";a:2:{s:4:\"name\";s:16:\"Curso Terrorismo\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}s:23:\"brinde-palestra-escolta\";a:2:{s:4:\"name\";s:23:\"Brinde Palestra Escolta\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:12:\"create_posts\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:13:\"publish_posts\";b:1;s:17:\"manage_categories\";b:1;}}}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('94','fresh_site','0','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('95','WPLANG','pt_BR','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('96','widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('97','widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('98','widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('99','widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('100','widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('101','sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('102','widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('103','widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('104','widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('105','widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('106','widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('107','widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('108','widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('109','widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('110','widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('111','cron','a:5:{i:1536142068;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1536167268;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536167276;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536180075;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('112','theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535931820;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('125','_site_transient_timeout_browser_01fe6d96f512df15cc1b10345d6b37d9','1536426481','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('126','_site_transient_browser_01fe6d96f512df15cc1b10345d6b37d9','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('129','can_compress_scripts','1','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('144','auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"wesandradealves@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1535821722;}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('151','recently_activated','a:3:{s:24:\"wpforms-lite/wpforms.php\";i:1536089441;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1536088870;s:66:\"frontend-registration-contact-form-7/frontend-registration-cf7.php\";i:1536088870;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('164','ai1wm_updater','a:0:{}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('189','acf_version','5.7.3','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('195','current_theme','','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('196','theme_mods_portalseguranca_novo','a:12:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:4:\"logo\";s:68:\"http://localhost/portalseguranca/wp-content/uploads/2018/09/logo.png\";s:8:\"telefone\";s:11:\"(11) 123456\";s:11:\"atendimento\";s:11:\"8 äs 18hrs\";s:2:\"bg\";s:70:\"http://localhost/portalseguranca/wp-content/uploads/2018/09/footer.png\";s:18:\"footer-description\";s:385:\"JORNAL DA SEGURANÇA\n<br/><br/>\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. CUM NOSTRUM, NAM. MINIMA IPSA IUSTO TENETUR AMET VOLUPTATES DELENITI! EAQUE SIT MINUS ASPERIORES, DOLORES FACILIS MOLLITIA, DELECTUS EUM LABORIOSAM. DOLOREMQUE, BLANDITIIS. \n<br/><br/>\n<small>\nCNPJ: 08.891.132./0001-62\nSEGURANÇA, DEFESA, VIGILÂNCIA, ALARME, CÂMERA, DVR, EXPOSEC, ISC\n</small>\";s:8:\"facebook\";s:6:\"http//\";s:9:\"instagram\";s:6:\"http//\";s:9:\"pinterest\";s:6:\"http//\";s:7:\"twitter\";s:6:\"http//\";}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('197','theme_switched','','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('198','nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('216','category_children','a:0:{}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('236','video_categories_children','a:0:{}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('238','options_nome_do_perfil','Admin','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('239','_options_nome_do_perfil','field_5b8c91cf20c08','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('240','options_tipo_de_acesso','admin','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('241','_options_tipo_de_acesso','field_5b8c914dc7c1e','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('242','options_perfis_da_aplicação_0_perfil','Admin','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('243','_options_perfis_da_aplicação_0_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('244','options_perfis_da_aplicação','11','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('245','_options_perfis_da_aplicação','field_5b8c99b179eb6','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('246','options_perfis_da_aplicação_1_perfil','Assinante','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('247','_options_perfis_da_aplicação_1_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('248','options_perfis_da_aplicação_2_perfil','Jornalista','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('249','_options_perfis_da_aplicação_2_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('250','options_perfis_da_aplicação_3_perfil','Atendimento','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('251','_options_perfis_da_aplicação_3_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('252','options_perfis_da_aplicação_4_perfil','Videoaula','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('253','_options_perfis_da_aplicação_4_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('254','options_perfis_da_aplicação_5_perfil','FATEJ','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('255','_options_perfis_da_aplicação_5_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('256','options_perfis_da_aplicação_6_perfil','Assinante Plus','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('257','_options_perfis_da_aplicação_6_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('258','options_perfis_da_aplicação_7_perfil','Assinanet Ouro','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('259','_options_perfis_da_aplicação_7_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('260','options_perfis_da_aplicação_8_perfil','Assinante Ouro II','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('261','_options_perfis_da_aplicação_8_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('262','options_perfis_da_aplicação_9_perfil','Curso Terrorismo','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('263','_options_perfis_da_aplicação_9_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('264','options_perfis_da_aplicação_10_perfil','Brinde Palestra Escolta','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('265','_options_perfis_da_aplicação_10_perfil','field_5b8c923d30fad','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('267','options_perfis_da_aplicação_0_id','5b8c9a2f3e69a','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('268','_options_perfis_da_aplicação_0_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('269','options_perfis_da_aplicação_0_tipo_de_perfil','Admin','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('270','_options_perfis_da_aplicação_0_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('271','options_perfis_da_aplicação_1_id','5b8c9a38c5fc6','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('272','_options_perfis_da_aplicação_1_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('273','options_perfis_da_aplicação_1_tipo_de_perfil','Assinante','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('274','_options_perfis_da_aplicação_1_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('275','options_perfis_da_aplicação_2_id','5b8c9a42e838f','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('276','_options_perfis_da_aplicação_2_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('277','options_perfis_da_aplicação_2_tipo_de_perfil','Jornalista','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('278','_options_perfis_da_aplicação_2_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('279','options_perfis_da_aplicação_3_id','5b8c9a5740a50','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('280','_options_perfis_da_aplicação_3_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('281','options_perfis_da_aplicação_3_tipo_de_perfil','Atendimento','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('282','_options_perfis_da_aplicação_3_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('283','options_perfis_da_aplicação_4_id','5b8c9a6150729','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('284','_options_perfis_da_aplicação_4_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('285','options_perfis_da_aplicação_4_tipo_de_perfil','Videoaula','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('286','_options_perfis_da_aplicação_4_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('287','options_perfis_da_aplicação_5_id','5b8c9a843ea7b','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('288','_options_perfis_da_aplicação_5_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('289','options_perfis_da_aplicação_5_tipo_de_perfil','FATEJ','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('290','_options_perfis_da_aplicação_5_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('291','options_perfis_da_aplicação_6_id','5b8c9a8447a04','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('292','_options_perfis_da_aplicação_6_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('293','options_perfis_da_aplicação_6_tipo_de_perfil','Assinante Plus','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('294','_options_perfis_da_aplicação_6_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('295','options_perfis_da_aplicação_7_id','5b8c9a844e218','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('296','_options_perfis_da_aplicação_7_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('297','options_perfis_da_aplicação_7_tipo_de_perfil','Assinante Ouro','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('298','_options_perfis_da_aplicação_7_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('299','options_perfis_da_aplicação_8_id','5b8c9a9c58ac2','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('300','_options_perfis_da_aplicação_8_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('301','options_perfis_da_aplicação_8_tipo_de_perfil','Assinante Ouro II','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('302','_options_perfis_da_aplicação_8_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('303','options_perfis_da_aplicação_9_id','5b8c9a9c5ebca','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('304','_options_perfis_da_aplicação_9_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('305','options_perfis_da_aplicação_9_tipo_de_perfil','Curso Terrorismo','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('306','_options_perfis_da_aplicação_9_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('307','options_perfis_da_aplicação_10_id','5b8c9a9c667c5','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('308','_options_perfis_da_aplicação_10_id','field_5b8c99d479eb7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('309','options_perfis_da_aplicação_10_tipo_de_perfil','Brinde Palestra Escolta','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('310','_options_perfis_da_aplicação_10_tipo_de_perfil','field_5b8c99e379eb8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('312','options_ramo_de_atividade_usuario_0_id','5b8cab81ad641','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('313','_options_ramo_de_atividade_usuario_0_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('314','options_ramo_de_atividade_usuario_0_ramo_usuario','ADMINISTRADORA DE CONDOMÍNIO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('315','_options_ramo_de_atividade_usuario_0_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('316','options_ramo_de_atividade_usuario_1_id','5b8cab81b4172','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('317','_options_ramo_de_atividade_usuario_1_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('318','options_ramo_de_atividade_usuario_1_ramo_usuario','ASSESSORIA DE IMPRENSA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('319','_options_ramo_de_atividade_usuario_1_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('320','options_ramo_de_atividade_usuario_2_id','5b8cab81ba48a','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('321','_options_ramo_de_atividade_usuario_2_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('322','options_ramo_de_atividade_usuario_2_ramo_usuario','AUTARQUIA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('323','_options_ramo_de_atividade_usuario_2_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('324','options_ramo_de_atividade_usuario_3_id','5b8cab81c05b7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('325','_options_ramo_de_atividade_usuario_3_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('326','options_ramo_de_atividade_usuario_3_ramo_usuario','BANCO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('327','_options_ramo_de_atividade_usuario_3_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('328','options_ramo_de_atividade_usuario_4_id','5b8cab81c6ec3','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('329','_options_ramo_de_atividade_usuario_4_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('330','options_ramo_de_atividade_usuario_4_ramo_usuario','BLINDADORA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('331','_options_ramo_de_atividade_usuario_4_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('332','options_ramo_de_atividade_usuario_5_id','5b8cab81cc435','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('333','_options_ramo_de_atividade_usuario_5_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('334','options_ramo_de_atividade_usuario_5_ramo_usuario','BOMBEIROS','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('335','_options_ramo_de_atividade_usuario_5_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('336','options_ramo_de_atividade_usuario_6_id','5b8cab81d2072','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('337','_options_ramo_de_atividade_usuario_6_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('338','options_ramo_de_atividade_usuario_6_ramo_usuario','CANIL','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('339','_options_ramo_de_atividade_usuario_6_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('340','options_ramo_de_atividade_usuario_7_id','5b8cab81d7a89','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('341','_options_ramo_de_atividade_usuario_7_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('342','options_ramo_de_atividade_usuario_7_ramo_usuario','CENTRO DE FORMAÇÃO DE VIGILANTES		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('343','_options_ramo_de_atividade_usuario_7_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('344','options_ramo_de_atividade_usuario_8_id','5b8cab81dd91b','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('345','_options_ramo_de_atividade_usuario_8_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('346','options_ramo_de_atividade_usuario_8_ramo_usuario','CONCESSIONÁRIA DE AUTOS E MOTOS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('347','_options_ramo_de_atividade_usuario_8_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('348','options_ramo_de_atividade_usuario_9_id','5b8cab81e3908','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('349','_options_ramo_de_atividade_usuario_9_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('350','options_ramo_de_atividade_usuario_9_ramo_usuario','CONDOMÍNIO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('351','_options_ramo_de_atividade_usuario_9_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('352','options_ramo_de_atividade_usuario_10_id','5b8cab81e9504','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('353','_options_ramo_de_atividade_usuario_10_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('354','options_ramo_de_atividade_usuario_10_ramo_usuario','CONSTRUTORA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('355','_options_ramo_de_atividade_usuario_10_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('356','options_ramo_de_atividade_usuario_11_id','5b8cab81eec27','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('357','_options_ramo_de_atividade_usuario_11_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('358','options_ramo_de_atividade_usuario_11_ramo_usuario','CONSULTORIA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('359','_options_ramo_de_atividade_usuario_11_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('360','options_ramo_de_atividade_usuario_12_id','5b8cab8200525','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('361','_options_ramo_de_atividade_usuario_12_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('362','options_ramo_de_atividade_usuario_12_ramo_usuario','CONTROLE DE ACESSO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('363','_options_ramo_de_atividade_usuario_12_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('364','options_ramo_de_atividade_usuario_13_id','5b8cab82072aa','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('365','_options_ramo_de_atividade_usuario_13_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('366','options_ramo_de_atividade_usuario_13_ramo_usuario','CORRETOR DE SEGUROS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('367','_options_ramo_de_atividade_usuario_13_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('368','options_ramo_de_atividade_usuario_14_id','5b8cab820c839','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('369','_options_ramo_de_atividade_usuario_14_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('370','options_ramo_de_atividade_usuario_14_ramo_usuario','DRONES		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('371','_options_ramo_de_atividade_usuario_14_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('372','options_ramo_de_atividade_usuario_15_id','5b8cab8211da0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('373','_options_ramo_de_atividade_usuario_15_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('374','options_ramo_de_atividade_usuario_15_ramo_usuario','EDITORA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('375','_options_ramo_de_atividade_usuario_15_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('376','options_ramo_de_atividade_usuario_16_id','5b8cab8217c1f','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('377','_options_ramo_de_atividade_usuario_16_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('378','options_ramo_de_atividade_usuario_16_ramo_usuario','EMPRESA DE VIGILÂNCIA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('379','_options_ramo_de_atividade_usuario_16_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('380','options_ramo_de_atividade_usuario_17_id','5b8cab821d71a','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('381','_options_ramo_de_atividade_usuario_17_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('382','options_ramo_de_atividade_usuario_17_ramo_usuario','ENGENHARIA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('383','_options_ramo_de_atividade_usuario_17_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('384','options_ramo_de_atividade_usuario_18_id','5b8cab8223232','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('385','_options_ramo_de_atividade_usuario_18_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('386','options_ramo_de_atividade_usuario_18_ramo_usuario','ESCOLA/UNIVERSIDADE		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('387','_options_ramo_de_atividade_usuario_18_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('388','options_ramo_de_atividade_usuario_19_id','5b8cab822845d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('389','_options_ramo_de_atividade_usuario_19_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('390','options_ramo_de_atividade_usuario_19_ramo_usuario','ESCOLTA ARMADA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('391','_options_ramo_de_atividade_usuario_19_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('392','options_ramo_de_atividade_usuario_20_id','5b8cab822f6cb','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('393','_options_ramo_de_atividade_usuario_20_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('394','options_ramo_de_atividade_usuario_20_ramo_usuario','ESCRITÓRIO DE PEQUENO PORTE		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('395','_options_ramo_de_atividade_usuario_20_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('396','options_ramo_de_atividade_usuario_21_id','5b8cab8234a5f','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('397','_options_ramo_de_atividade_usuario_21_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('398','options_ramo_de_atividade_usuario_21_ramo_usuario','ESTUDANTE','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('399','_options_ramo_de_atividade_usuario_21_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('400','options_ramo_de_atividade_usuario_22_id','5b8cab823a02f','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('401','_options_ramo_de_atividade_usuario_22_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('402','options_ramo_de_atividade_usuario_22_ramo_usuario','FONTES','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('403','_options_ramo_de_atividade_usuario_22_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('404','options_ramo_de_atividade_usuario_23_id','5b8cab823fa69','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('405','_options_ramo_de_atividade_usuario_23_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('406','options_ramo_de_atividade_usuario_23_ramo_usuario','FORÇAS ARMADAS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('407','_options_ramo_de_atividade_usuario_23_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('408','options_ramo_de_atividade_usuario_24_id','5b8cab8244692','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('409','_options_ramo_de_atividade_usuario_24_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('410','options_ramo_de_atividade_usuario_24_ramo_usuario','GOVERNO ESTADUAL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('411','_options_ramo_de_atividade_usuario_24_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('412','options_ramo_de_atividade_usuario_25_id','5b8cab8249cae','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('413','_options_ramo_de_atividade_usuario_25_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('414','options_ramo_de_atividade_usuario_25_ramo_usuario','GOVERNO FEDERAL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('415','_options_ramo_de_atividade_usuario_25_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('416','options_ramo_de_atividade_usuario_26_id','5b8cab824eed7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('417','_options_ramo_de_atividade_usuario_26_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('418','options_ramo_de_atividade_usuario_26_ramo_usuario','GUARITAS','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('419','_options_ramo_de_atividade_usuario_26_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('420','options_ramo_de_atividade_usuario_27_id','5b8cab8253feb','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('421','_options_ramo_de_atividade_usuario_27_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('422','options_ramo_de_atividade_usuario_27_ramo_usuario','HOSPITAL','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('423','_options_ramo_de_atividade_usuario_27_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('424','options_ramo_de_atividade_usuario_28_id','5b8cab8258fd4','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('425','_options_ramo_de_atividade_usuario_28_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('426','options_ramo_de_atividade_usuario_28_ramo_usuario','INDÚSTRIA AUTOMOBILÍSTICA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('427','_options_ramo_de_atividade_usuario_28_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('428','options_ramo_de_atividade_usuario_29_id','5b8cab825dbf9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('429','_options_ramo_de_atividade_usuario_29_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('430','options_ramo_de_atividade_usuario_29_ramo_usuario','INDÚSTRIA DE ARMAS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('431','_options_ramo_de_atividade_usuario_29_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('432','options_ramo_de_atividade_usuario_30_id','5b8cab8263377','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('433','_options_ramo_de_atividade_usuario_30_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('434','options_ramo_de_atividade_usuario_30_ramo_usuario','INDÚSTRIA DE EQUIP. DE SEG		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('435','_options_ramo_de_atividade_usuario_30_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('436','options_ramo_de_atividade_usuario_31_id','5b8cab8268986','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('437','_options_ramo_de_atividade_usuario_31_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('438','options_ramo_de_atividade_usuario_31_ramo_usuario','INDÚSTRIA FARMACEUTICA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('439','_options_ramo_de_atividade_usuario_31_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('440','options_ramo_de_atividade_usuario_32_id','5b8cab826e1bc','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('441','_options_ramo_de_atividade_usuario_32_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('442','options_ramo_de_atividade_usuario_32_ramo_usuario','Indústria Gráfica		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('443','_options_ramo_de_atividade_usuario_32_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('444','options_ramo_de_atividade_usuario_33_id','5b8cab8273820','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('445','_options_ramo_de_atividade_usuario_33_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('446','options_ramo_de_atividade_usuario_33_ramo_usuario','INDÚSTRIA QUÍMICA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('447','_options_ramo_de_atividade_usuario_33_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('448','options_ramo_de_atividade_usuario_34_id','5b8cab8279b33','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('449','_options_ramo_de_atividade_usuario_34_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('450','options_ramo_de_atividade_usuario_34_ramo_usuario','INTEGRADOR','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('451','_options_ramo_de_atividade_usuario_34_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('452','options_ramo_de_atividade_usuario_35_id','5b8cab827f538','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('453','_options_ramo_de_atividade_usuario_35_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('454','options_ramo_de_atividade_usuario_35_ramo_usuario','JOALHERIA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('455','_options_ramo_de_atividade_usuario_35_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('456','options_ramo_de_atividade_usuario_36_id','5b8cab828497c','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('457','_options_ramo_de_atividade_usuario_36_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('458','options_ramo_de_atividade_usuario_36_ramo_usuario','JUDICIÁRIO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('459','_options_ramo_de_atividade_usuario_36_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('460','options_ramo_de_atividade_usuario_37_id','5b8cab8289a02','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('461','_options_ramo_de_atividade_usuario_37_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('462','options_ramo_de_atividade_usuario_37_ramo_usuario','LABORATÓRIO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('463','_options_ramo_de_atividade_usuario_37_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('464','options_ramo_de_atividade_usuario_38_id','5b8cab828e1f2','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('465','_options_ramo_de_atividade_usuario_38_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('466','options_ramo_de_atividade_usuario_38_ramo_usuario','MINERADORA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('467','_options_ramo_de_atividade_usuario_38_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('468','options_ramo_de_atividade_usuario_39_id','5b8cab8293585','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('469','_options_ramo_de_atividade_usuario_39_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('470','options_ramo_de_atividade_usuario_39_ramo_usuario','MONITORAMENTO DE ALARMES		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('471','_options_ramo_de_atividade_usuario_39_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('472','options_ramo_de_atividade_usuario_40_id','5b8cab8298f00','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('473','_options_ramo_de_atividade_usuario_40_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('474','options_ramo_de_atividade_usuario_40_ramo_usuario','MONITORAMENTO DE IMAGENS E ALARMES		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('475','_options_ramo_de_atividade_usuario_40_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('476','options_ramo_de_atividade_usuario_41_id','5b8cab82a0ffe','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('477','_options_ramo_de_atividade_usuario_41_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('478','options_ramo_de_atividade_usuario_41_ramo_usuario','Outros..		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('479','_options_ramo_de_atividade_usuario_41_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('480','options_ramo_de_atividade_usuario_42_id','5b8cab82a86b4','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('481','_options_ramo_de_atividade_usuario_42_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('482','options_ramo_de_atividade_usuario_42_ramo_usuario','PESSOA FÍSICA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('483','_options_ramo_de_atividade_usuario_42_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('484','options_ramo_de_atividade_usuario_43_id','5b8cab82ae328','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('485','_options_ramo_de_atividade_usuario_43_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('486','options_ramo_de_atividade_usuario_43_ramo_usuario','POLÍCIA CIVIL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('487','_options_ramo_de_atividade_usuario_43_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('488','options_ramo_de_atividade_usuario_44_id','5b8cab82b2cf4','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('489','_options_ramo_de_atividade_usuario_44_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('490','options_ramo_de_atividade_usuario_44_ramo_usuario','POLÍCIA FEDERAL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('491','_options_ramo_de_atividade_usuario_44_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('492','options_ramo_de_atividade_usuario_45_id','5b8cab82b7aa8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('493','_options_ramo_de_atividade_usuario_45_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('494','options_ramo_de_atividade_usuario_45_ramo_usuario','POLÍCIA FERROVIÁRIA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('495','_options_ramo_de_atividade_usuario_45_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('496','options_ramo_de_atividade_usuario_46_id','5b8cab82bc8ba','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('497','_options_ramo_de_atividade_usuario_46_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('498','options_ramo_de_atividade_usuario_46_ramo_usuario','POLÍCIA MILITAR		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('499','_options_ramo_de_atividade_usuario_46_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('500','options_ramo_de_atividade_usuario_47_id','5b8cab82c228c','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('501','_options_ramo_de_atividade_usuario_47_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('502','options_ramo_de_atividade_usuario_47_ramo_usuario','POLÍCIA PORTUÁRIA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('503','_options_ramo_de_atividade_usuario_47_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('504','options_ramo_de_atividade_usuario_48_id','5b8cab82c7c4d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('505','_options_ramo_de_atividade_usuario_48_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('506','options_ramo_de_atividade_usuario_48_ramo_usuario','PORTARIA E LIMPEZA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('507','_options_ramo_de_atividade_usuario_48_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('508','options_ramo_de_atividade_usuario_49_id','5b8cab82cc802','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('509','_options_ramo_de_atividade_usuario_49_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('510','options_ramo_de_atividade_usuario_49_ramo_usuario','PREFEITURA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('511','_options_ramo_de_atividade_usuario_49_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('512','options_ramo_de_atividade_usuario_50_id','5b8cab82d1a7b','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('513','_options_ramo_de_atividade_usuario_50_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('514','options_ramo_de_atividade_usuario_50_ramo_usuario','PROTEÇÃO PERIMETRAL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('515','_options_ramo_de_atividade_usuario_50_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('516','options_ramo_de_atividade_usuario_51_id','5b8cab82d74f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('517','_options_ramo_de_atividade_usuario_51_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('518','options_ramo_de_atividade_usuario_51_ramo_usuario','REDE VAREJISTA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('519','_options_ramo_de_atividade_usuario_51_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('520','options_ramo_de_atividade_usuario_52_id','5b8cab82dbcd2','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('521','_options_ramo_de_atividade_usuario_52_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('522','options_ramo_de_atividade_usuario_52_ramo_usuario','SEGURANÇA PERIMETRAL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('523','_options_ramo_de_atividade_usuario_52_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('524','options_ramo_de_atividade_usuario_53_id','5b8cab82e0ad7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('525','_options_ramo_de_atividade_usuario_53_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('526','options_ramo_de_atividade_usuario_53_ramo_usuario','SEGURANÇA PRIVADA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('527','_options_ramo_de_atividade_usuario_53_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('528','options_ramo_de_atividade_usuario_54_id','5b8cab82e5871','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('529','_options_ramo_de_atividade_usuario_54_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('530','options_ramo_de_atividade_usuario_54_ramo_usuario','TECNOLOGIA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('531','_options_ramo_de_atividade_usuario_54_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('532','options_ramo_de_atividade_usuario_55_id','5b8cab82eb705','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('533','_options_ramo_de_atividade_usuario_55_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('534','options_ramo_de_atividade_usuario_55_ramo_usuario','TRANSPORTADORA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('535','_options_ramo_de_atividade_usuario_55_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('536','options_ramo_de_atividade_usuario_56_id','5b8cab82f0352','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('537','_options_ramo_de_atividade_usuario_56_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('538','options_ramo_de_atividade_usuario_56_ramo_usuario','TRANSPORTE DE VALORES		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('539','_options_ramo_de_atividade_usuario_56_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('540','options_ramo_de_atividade_usuario_57_id','5b8cab83012d5','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('541','_options_ramo_de_atividade_usuario_57_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('542','options_ramo_de_atividade_usuario_57_ramo_usuario','TRANSPORTES AÉREOS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('543','_options_ramo_de_atividade_usuario_57_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('544','options_ramo_de_atividade_usuario_58_id','5b8cab8306d41','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('545','_options_ramo_de_atividade_usuario_58_id','field_5b8ca9306df94','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('546','options_ramo_de_atividade_usuario_58_ramo_usuario','VIGILANTE','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('547','_options_ramo_de_atividade_usuario_58_ramo_usuario','field_5b8ca9306e36d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('548','options_ramo_de_atividade_usuario','59','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('549','_options_ramo_de_atividade_usuario','field_5b8ca93069176','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('550','options_ramo_de_atividade_fornecedor_0_id','5b8cac5828417','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('551','_options_ramo_de_atividade_fornecedor_0_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('552','options_ramo_de_atividade_fornecedor_0_ramo_fornecedor','ADVOCACIA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('553','_options_ramo_de_atividade_fornecedor_0_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('554','options_ramo_de_atividade_fornecedor_1_id','5b8cac582d66b','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('555','_options_ramo_de_atividade_fornecedor_1_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('556','options_ramo_de_atividade_fornecedor_1_ramo_fornecedor','ALAMBRADO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('557','_options_ramo_de_atividade_fornecedor_1_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('558','options_ramo_de_atividade_fornecedor_2_id','5b8cac5832862','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('559','_options_ramo_de_atividade_fornecedor_2_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('560','options_ramo_de_atividade_fornecedor_2_ramo_fornecedor','ALARMES','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('561','_options_ramo_de_atividade_fornecedor_2_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('562','options_ramo_de_atividade_fornecedor_3_id','5b8cac583700a','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('563','_options_ramo_de_atividade_fornecedor_3_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('564','options_ramo_de_atividade_fornecedor_3_ramo_fornecedor','ARQUITETURA DE SEGURANÇA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('565','_options_ramo_de_atividade_fornecedor_3_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('566','options_ramo_de_atividade_fornecedor_4_id','5b8cac583cc7c','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('567','_options_ramo_de_atividade_fornecedor_4_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('568','options_ramo_de_atividade_fornecedor_4_ramo_fornecedor','AUTOMAÇÃO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('569','_options_ramo_de_atividade_fornecedor_4_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('570','options_ramo_de_atividade_fornecedor_5_id','5b8cac58422c3','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('571','_options_ramo_de_atividade_fornecedor_5_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('572','options_ramo_de_atividade_fornecedor_5_ramo_fornecedor','BOMBEIRO CIVIL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('573','_options_ramo_de_atividade_fornecedor_5_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('574','options_ramo_de_atividade_fornecedor_6_id','5b8cac5847d2f','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('575','_options_ramo_de_atividade_fornecedor_6_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('576','options_ramo_de_atividade_fornecedor_6_ramo_fornecedor','CADEADOS','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('577','_options_ramo_de_atividade_fornecedor_6_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('578','options_ramo_de_atividade_fornecedor_7_id','5b8cac584cb67','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('579','_options_ramo_de_atividade_fornecedor_7_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('580','options_ramo_de_atividade_fornecedor_7_ramo_fornecedor','CAMERAS','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('581','_options_ramo_de_atividade_fornecedor_7_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('582','options_ramo_de_atividade_fornecedor_8_id','5b8cac5851d56','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('583','_options_ramo_de_atividade_fornecedor_8_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('584','options_ramo_de_atividade_fornecedor_8_ramo_fornecedor','CANIL','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('585','_options_ramo_de_atividade_fornecedor_8_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('586','options_ramo_de_atividade_fornecedor_9_id','5b8cac5857213','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('587','_options_ramo_de_atividade_fornecedor_9_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('588','options_ramo_de_atividade_fornecedor_9_ramo_fornecedor','CERCA ELETRICA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('589','_options_ramo_de_atividade_fornecedor_9_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('590','options_ramo_de_atividade_fornecedor_10_id','5b8cac585d077','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('591','_options_ramo_de_atividade_fornecedor_10_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('592','options_ramo_de_atividade_fornecedor_10_ramo_fornecedor','CONCERTINA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('593','_options_ramo_de_atividade_fornecedor_10_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('594','options_ramo_de_atividade_fornecedor_11_id','5b8cac58624e9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('595','_options_ramo_de_atividade_fornecedor_11_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('596','options_ramo_de_atividade_fornecedor_11_ramo_fornecedor','CONSULTORIA / ASSESSORIA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('597','_options_ramo_de_atividade_fornecedor_11_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('598','options_ramo_de_atividade_fornecedor_12_id','5b8cac58675fe','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('599','_options_ramo_de_atividade_fornecedor_12_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('600','options_ramo_de_atividade_fornecedor_12_ramo_fornecedor','CONTABILIDADE','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('601','_options_ramo_de_atividade_fornecedor_12_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('602','options_ramo_de_atividade_fornecedor_13_id','5b8cac586c751','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('603','_options_ramo_de_atividade_fornecedor_13_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('604','options_ramo_de_atividade_fornecedor_13_ramo_fornecedor','CONTROLE DE ACESSO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('605','_options_ramo_de_atividade_fornecedor_13_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('606','options_ramo_de_atividade_fornecedor_14_id','5b8cac587243a','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('607','_options_ramo_de_atividade_fornecedor_14_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('608','options_ramo_de_atividade_fornecedor_14_ramo_fornecedor','CONTROLE DE CHAVES		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('609','_options_ramo_de_atividade_fornecedor_14_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('610','options_ramo_de_atividade_fornecedor_15_id','5b8cac5878a27','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('611','_options_ramo_de_atividade_fornecedor_15_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('612','options_ramo_de_atividade_fornecedor_15_ramo_fornecedor','CONTROLE DE RONDAS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('613','_options_ramo_de_atividade_fornecedor_15_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('614','options_ramo_de_atividade_fornecedor_16_id','5b8cac587e56f','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('615','_options_ramo_de_atividade_fornecedor_16_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('616','options_ramo_de_atividade_fornecedor_16_ramo_fornecedor','CURSOS DE SEGURANÇA ELETRÔNICA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('617','_options_ramo_de_atividade_fornecedor_16_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('618','options_ramo_de_atividade_fornecedor_17_id','5b8cac5883957','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('619','_options_ramo_de_atividade_fornecedor_17_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('620','options_ramo_de_atividade_fornecedor_17_ramo_fornecedor','DESENVOLVIMENTO DE SISTEMAS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('621','_options_ramo_de_atividade_fornecedor_17_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('622','options_ramo_de_atividade_fornecedor_18_id','5b8cac58881c8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('623','_options_ramo_de_atividade_fornecedor_18_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('624','options_ramo_de_atividade_fornecedor_18_ramo_fornecedor','DISCO RIGIDO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('625','_options_ramo_de_atividade_fornecedor_18_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('626','options_ramo_de_atividade_fornecedor_19_id','5b8cac588dab7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('627','_options_ramo_de_atividade_fornecedor_19_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('628','options_ramo_de_atividade_fornecedor_19_ramo_fornecedor','DRONES','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('629','_options_ramo_de_atividade_fornecedor_19_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('630','options_ramo_de_atividade_fornecedor_20_id','5b8cac58934bf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('631','_options_ramo_de_atividade_fornecedor_20_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('632','options_ramo_de_atividade_fornecedor_20_ramo_fornecedor','ESCOLTA ARMADA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('633','_options_ramo_de_atividade_fornecedor_20_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('634','options_ramo_de_atividade_fornecedor_21_id','5b8cac5899e35','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('635','_options_ramo_de_atividade_fornecedor_21_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('636','options_ramo_de_atividade_fornecedor_21_ramo_fornecedor','FABRICANTE','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('637','_options_ramo_de_atividade_fornecedor_21_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('638','options_ramo_de_atividade_fornecedor_22_id','5b8cac589f097','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('639','_options_ramo_de_atividade_fornecedor_22_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('640','options_ramo_de_atividade_fornecedor_22_ramo_fornecedor','FACULDADE','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('641','_options_ramo_de_atividade_fornecedor_22_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('642','options_ramo_de_atividade_fornecedor_23_id','5b8cac58a3e0e','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('643','_options_ramo_de_atividade_fornecedor_23_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('644','options_ramo_de_atividade_fornecedor_23_ramo_fornecedor','FECHADURAS','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('645','_options_ramo_de_atividade_fornecedor_23_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('646','options_ramo_de_atividade_fornecedor_24_id','5b8cac58aaad7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('647','_options_ramo_de_atividade_fornecedor_24_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('648','options_ramo_de_atividade_fornecedor_24_ramo_fornecedor','FECHADURAS ELETROMAGNÉTICAS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('649','_options_ramo_de_atividade_fornecedor_24_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('650','options_ramo_de_atividade_fornecedor_25_id','5b8cac58affb2','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('651','_options_ramo_de_atividade_fornecedor_25_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('652','options_ramo_de_atividade_fornecedor_25_ramo_fornecedor','FONTES DE ALIMENTAÇÃO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('653','_options_ramo_de_atividade_fornecedor_25_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('654','options_ramo_de_atividade_fornecedor_26_id','5b8cac58b55de','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('655','_options_ramo_de_atividade_fornecedor_26_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('656','options_ramo_de_atividade_fornecedor_26_ramo_fornecedor','FORMAÇÃO DE VIGILANTES		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('657','_options_ramo_de_atividade_fornecedor_26_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('658','options_ramo_de_atividade_fornecedor_27_id','5b8cac58badec','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('659','_options_ramo_de_atividade_fornecedor_27_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('660','options_ramo_de_atividade_fornecedor_27_ramo_fornecedor','GERADOR','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('661','_options_ramo_de_atividade_fornecedor_27_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('662','options_ramo_de_atividade_fornecedor_28_id','5b8cac58bfc6c','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('663','_options_ramo_de_atividade_fornecedor_28_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('664','options_ramo_de_atividade_fornecedor_28_ramo_fornecedor','GERADOR DE NEBLINA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('665','_options_ramo_de_atividade_fornecedor_28_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('666','options_ramo_de_atividade_fornecedor_29_id','5b8cac58c5174','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('667','_options_ramo_de_atividade_fornecedor_29_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('668','options_ramo_de_atividade_fornecedor_29_ramo_fornecedor','GUARITAS','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('669','_options_ramo_de_atividade_fornecedor_29_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('670','options_ramo_de_atividade_fornecedor_30_id','5b8cac58cb86f','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('671','_options_ramo_de_atividade_fornecedor_30_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('672','options_ramo_de_atividade_fornecedor_30_ramo_fornecedor','INDÚSTRIA DE EQUIP. DE SEG		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('673','_options_ramo_de_atividade_fornecedor_30_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('674','options_ramo_de_atividade_fornecedor_31_id','5b8cac58d1227','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('675','_options_ramo_de_atividade_fornecedor_31_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('676','options_ramo_de_atividade_fornecedor_31_ramo_fornecedor','INSTALADOR','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('677','_options_ramo_de_atividade_fornecedor_31_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('678','options_ramo_de_atividade_fornecedor_32_id','5b8cac58d7343','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('679','_options_ramo_de_atividade_fornecedor_32_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('680','options_ramo_de_atividade_fornecedor_32_ramo_fornecedor','INTEGRADOR','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('681','_options_ramo_de_atividade_fornecedor_32_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('682','options_ramo_de_atividade_fornecedor_33_id','5b8cac58dc846','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('683','_options_ramo_de_atividade_fornecedor_33_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('684','options_ramo_de_atividade_fornecedor_33_ramo_fornecedor','INVESTIGAÇÃO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('685','_options_ramo_de_atividade_fornecedor_33_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('686','options_ramo_de_atividade_fornecedor_34_id','5b8cac58e20ca','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('687','_options_ramo_de_atividade_fornecedor_34_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('688','options_ramo_de_atividade_fornecedor_34_ramo_fornecedor','LIMPEZA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('689','_options_ramo_de_atividade_fornecedor_34_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('690','options_ramo_de_atividade_fornecedor_35_id','5b8cac58e7687','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('691','_options_ramo_de_atividade_fornecedor_35_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('692','options_ramo_de_atividade_fornecedor_35_ramo_fornecedor','MANUTENÇÃO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('693','_options_ramo_de_atividade_fornecedor_35_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('694','options_ramo_de_atividade_fornecedor_36_id','5b8cac58ec94f','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('695','_options_ramo_de_atividade_fornecedor_36_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('696','options_ramo_de_atividade_fornecedor_36_ramo_fornecedor','MONITORAMENTO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('697','_options_ramo_de_atividade_fornecedor_36_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('698','options_ramo_de_atividade_fornecedor_37_id','5b8cac58f1676','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('699','_options_ramo_de_atividade_fornecedor_37_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('700','options_ramo_de_atividade_fornecedor_37_ramo_fornecedor','Outros..		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('701','_options_ramo_de_atividade_fornecedor_37_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('702','options_ramo_de_atividade_fornecedor_38_id','5b8cac59039dd','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('703','_options_ramo_de_atividade_fornecedor_38_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('704','options_ramo_de_atividade_fornecedor_38_ramo_fornecedor','PORTARIA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('705','_options_ramo_de_atividade_fornecedor_38_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('706','options_ramo_de_atividade_fornecedor_39_id','5b8cac5908c03','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('707','_options_ramo_de_atividade_fornecedor_39_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('708','options_ramo_de_atividade_fornecedor_39_ramo_fornecedor','PORTARIA REMOTA/VIRTUAL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('709','_options_ramo_de_atividade_fornecedor_39_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('710','options_ramo_de_atividade_fornecedor_40_id','5b8cac590e4d8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('711','_options_ramo_de_atividade_fornecedor_40_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('712','options_ramo_de_atividade_fornecedor_40_ramo_fornecedor','PROFESSOR/INSTRUTOR		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('713','_options_ramo_de_atividade_fornecedor_40_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('714','options_ramo_de_atividade_fornecedor_41_id','5b8cac5913b53','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('715','_options_ramo_de_atividade_fornecedor_41_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('716','options_ramo_de_atividade_fornecedor_41_ramo_fornecedor','PROTEÇÃO PERÍMETRAL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('717','_options_ramo_de_atividade_fornecedor_41_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('718','options_ramo_de_atividade_fornecedor_42_id','5b8cac5919318','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('719','_options_ramo_de_atividade_fornecedor_42_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('720','options_ramo_de_atividade_fornecedor_42_ramo_fornecedor','RADIOCOMUNICAÇÃO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('721','_options_ramo_de_atividade_fornecedor_42_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('722','options_ramo_de_atividade_fornecedor_43_id','5b8cac591df25','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('723','_options_ramo_de_atividade_fornecedor_43_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('724','options_ramo_de_atividade_fornecedor_43_ramo_fornecedor','RASTREAMENTO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('725','_options_ramo_de_atividade_fornecedor_43_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('726','options_ramo_de_atividade_fornecedor_44_id','5b8cac592408d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('727','_options_ramo_de_atividade_fornecedor_44_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('728','options_ramo_de_atividade_fornecedor_44_ramo_fornecedor','RECRUTAMENTO E SELEÇÃO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('729','_options_ramo_de_atividade_fornecedor_44_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('730','options_ramo_de_atividade_fornecedor_45_id','5b8cac5928efe','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('731','_options_ramo_de_atividade_fornecedor_45_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('732','options_ramo_de_atividade_fornecedor_45_ramo_fornecedor','SEGURANÇA ARMADA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('733','_options_ramo_de_atividade_fornecedor_45_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('734','options_ramo_de_atividade_fornecedor_46_id','5b8cac592ddc5','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('735','_options_ramo_de_atividade_fornecedor_46_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('736','options_ramo_de_atividade_fornecedor_46_ramo_fornecedor','SEGURANÇA DE INFORMAÇÕES		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('737','_options_ramo_de_atividade_fornecedor_46_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('738','options_ramo_de_atividade_fornecedor_47_id','5b8cac59326b8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('739','_options_ramo_de_atividade_fornecedor_47_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('740','options_ramo_de_atividade_fornecedor_47_ramo_fornecedor','SEGURANÇA EXECUTIVA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('741','_options_ramo_de_atividade_fornecedor_47_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('742','options_ramo_de_atividade_fornecedor_48_id','5b8cac5938148','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('743','_options_ramo_de_atividade_fornecedor_48_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('744','options_ramo_de_atividade_fornecedor_48_ramo_fornecedor','SEGURANÇA PERIMETRAL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('745','_options_ramo_de_atividade_fornecedor_48_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('746','options_ramo_de_atividade_fornecedor_49_id','5b8cac593d5b7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('747','_options_ramo_de_atividade_fornecedor_49_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('748','options_ramo_de_atividade_fornecedor_49_ramo_fornecedor','SOFTWARE','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('749','_options_ramo_de_atividade_fornecedor_49_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('750','options_ramo_de_atividade_fornecedor_50_id','5b8cac5942757','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('751','_options_ramo_de_atividade_fornecedor_50_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('752','options_ramo_de_atividade_fornecedor_50_ramo_fornecedor','SOFTWARE DE GESTÃO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('753','_options_ramo_de_atividade_fornecedor_50_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('754','options_ramo_de_atividade_fornecedor_51_id','5b8cac5947c4c','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('755','_options_ramo_de_atividade_fornecedor_51_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('756','options_ramo_de_atividade_fornecedor_51_ramo_fornecedor','TECNOLOGIA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('757','_options_ramo_de_atividade_fornecedor_51_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('758','options_ramo_de_atividade_fornecedor_52_id','5b8cac594c517','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('759','_options_ramo_de_atividade_fornecedor_52_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('760','options_ramo_de_atividade_fornecedor_52_ramo_fornecedor','TORRE DE ILUMINAÇÃO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('761','_options_ramo_de_atividade_fornecedor_52_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('762','options_ramo_de_atividade_fornecedor_53_id','5b8cac5950ecd','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('763','_options_ramo_de_atividade_fornecedor_53_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('764','options_ramo_de_atividade_fornecedor_53_ramo_fornecedor','TRANSFORMADOR PARA CFTV		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('765','_options_ramo_de_atividade_fornecedor_53_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('766','options_ramo_de_atividade_fornecedor_54_id','5b8cac59560ef','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('767','_options_ramo_de_atividade_fornecedor_54_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('768','options_ramo_de_atividade_fornecedor_54_ramo_fornecedor','TRANSPORTE DE VALORES		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('769','_options_ramo_de_atividade_fornecedor_54_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('770','options_ramo_de_atividade_fornecedor_55_id','5b8cac595ba6c','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('771','_options_ramo_de_atividade_fornecedor_55_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('772','options_ramo_de_atividade_fornecedor_55_ramo_fornecedor','VEÍCULOS ELÉTRICOS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('773','_options_ramo_de_atividade_fornecedor_55_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('774','options_ramo_de_atividade_fornecedor_56_id','5b8cac59606aa','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('775','_options_ramo_de_atividade_fornecedor_56_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('776','options_ramo_de_atividade_fornecedor_56_ramo_fornecedor','VIGILÂNCIA','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('777','_options_ramo_de_atividade_fornecedor_56_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('778','options_ramo_de_atividade_fornecedor_57_id','5b8cac596598f','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('779','_options_ramo_de_atividade_fornecedor_57_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('780','options_ramo_de_atividade_fornecedor_57_ramo_fornecedor','VISTORIA TECNICA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('781','_options_ramo_de_atividade_fornecedor_57_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('782','options_ramo_de_atividade_fornecedor_58_id','5b8cac596a15a','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('783','_options_ramo_de_atividade_fornecedor_58_id','field_5b8ca934b99f7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('784','options_ramo_de_atividade_fornecedor_58_ramo_fornecedor','WEBDESIGNER','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('785','_options_ramo_de_atividade_fornecedor_58_ramo_fornecedor','field_5b8ca934b9dc8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('786','options_ramo_de_atividade_fornecedor','59','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('787','_options_ramo_de_atividade_fornecedor','field_5b8ca934b4499','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('790','options_cargos_0_cargo','ADESTRADOR','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('791','_options_cargos_0_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('794','options_cargos_1_cargo','ANALISTA FINANCEIRO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('795','_options_cargos_1_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('798','options_cargos_2_cargo','ANALISTA RH		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('799','_options_cargos_2_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('802','options_cargos_3_cargo','ANALISTA RH		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('803','_options_cargos_3_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('806','options_cargos_4_cargo','ASSISTENTE RH		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('807','_options_cargos_4_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('810','options_cargos_5_cargo','AUXILIAR ADMINISTRATIVO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('811','_options_cargos_5_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('814','options_cargos_6_cargo','COMERCIAL','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('815','_options_cargos_6_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('818','options_cargos_7_cargo','CONSULTOR (A)		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('819','_options_cargos_7_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('822','options_cargos_8_cargo','CONTROLADOR DE ACESSO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('823','_options_cargos_8_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('826','options_cargos_9_cargo','DIRETOR','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('827','_options_cargos_9_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('830','options_cargos_10_cargo','DIRETOR (A) RH		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('831','_options_cargos_10_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('834','options_cargos_11_cargo','ENGENHEIRO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('835','_options_cargos_11_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('838','options_cargos_12_cargo','GERENTE COMERCIAL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('839','_options_cargos_12_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('842','options_cargos_13_cargo','GERENTE DE OPERA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('843','_options_cargos_13_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('846','options_cargos_14_cargo','GERENTE DE OPERAÇÕES		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('847','_options_cargos_14_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('850','options_cargos_15_cargo','GERENTE DE PROJETOS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('851','_options_cargos_15_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('854','options_cargos_16_cargo','GERENTE FINANCEIRO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('855','_options_cargos_16_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('858','options_cargos_17_cargo','GERENTE GERAL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('859','_options_cargos_17_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('862','options_cargos_18_cargo','GERENTE RH		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('863','_options_cargos_18_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('866','options_cargos_19_cargo','GESTOR DE SEGURANÇA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('867','_options_cargos_19_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('870','options_cargos_20_cargo','GESTOR FINANCEIRO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('871','_options_cargos_20_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('874','options_cargos_21_cargo','OPERADOR DE MONITORAMENTO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('875','_options_cargos_21_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('878','options_cargos_22_cargo','Outros..		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('879','_options_cargos_22_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('882','options_cargos_23_cargo','PRESIDENTE','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('883','_options_cargos_23_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('886','options_cargos_24_cargo','RECEPCIONISTA		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('887','_options_cargos_24_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('890','options_cargos_25_cargo','SECRETARIA (O)		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('891','_options_cargos_25_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('894','options_cargos_26_cargo','SERVIÇOS GERAIS		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('895','_options_cargos_26_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('898','options_cargos_27_cargo','SUPERVISOR		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('899','_options_cargos_27_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('902','options_cargos_28_cargo','TECNICO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('903','_options_cargos_28_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('906','options_cargos_29_cargo','VIGILANTE','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('907','_options_cargos_29_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('910','options_cargos_30_cargo','VIGILANTE OPERADOR DE MONITORAMENTO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('911','_options_cargos_30_cargo','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('912','options_cargos','1','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('913','_options_cargos','field_5b8ca9388d5aa','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('914','options_operadoras_de_telefonia_0_id','5b8cad44e2fd7','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('915','_options_operadoras_de_telefonia_0_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('916','options_operadoras_de_telefonia_0_operadora','america net		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('917','_options_operadoras_de_telefonia_0_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('918','options_operadoras_de_telefonia_1_id','5b8cad44e8dae','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('919','_options_operadoras_de_telefonia_1_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('920','options_operadoras_de_telefonia_1_operadora','CLARO','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('921','_options_operadoras_de_telefonia_1_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('922','options_operadoras_de_telefonia_2_id','5b8cad44edfaa','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('923','_options_operadoras_de_telefonia_2_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('924','options_operadoras_de_telefonia_2_operadora','EMBRATEL		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('925','_options_operadoras_de_telefonia_2_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('926','options_operadoras_de_telefonia_3_id','5b8cad44f3580','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('927','_options_operadoras_de_telefonia_3_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('928','options_operadoras_de_telefonia_3_operadora','NET','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('929','_options_operadoras_de_telefonia_3_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('930','options_operadoras_de_telefonia_4_id','5b8cad4503a6e','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('931','_options_operadoras_de_telefonia_4_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('932','options_operadoras_de_telefonia_4_operadora','NEXTEL','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('933','_options_operadoras_de_telefonia_4_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('934','options_operadoras_de_telefonia_5_id','5b8cad4509ae3','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('935','_options_operadoras_de_telefonia_5_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('936','options_operadoras_de_telefonia_5_operadora','OI','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('937','_options_operadoras_de_telefonia_5_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('938','options_operadoras_de_telefonia_6_id','5b8cad450e22d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('939','_options_operadoras_de_telefonia_6_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('940','options_operadoras_de_telefonia_6_operadora','oi fixo		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('941','_options_operadoras_de_telefonia_6_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('942','options_operadoras_de_telefonia_7_id','5b8cad4513958','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('943','_options_operadoras_de_telefonia_7_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('944','options_operadoras_de_telefonia_7_operadora','Outros..		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('945','_options_operadoras_de_telefonia_7_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('946','options_operadoras_de_telefonia_8_id','5b8cad451920c','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('947','_options_operadoras_de_telefonia_8_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('948','options_operadoras_de_telefonia_8_operadora','tesa','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('949','_options_operadoras_de_telefonia_8_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('950','options_operadoras_de_telefonia_9_id','5b8cad451da2f','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('951','_options_operadoras_de_telefonia_9_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('952','options_operadoras_de_telefonia_9_operadora','Tim','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('953','_options_operadoras_de_telefonia_9_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('954','options_operadoras_de_telefonia_10_id','5b8cad4523274','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('955','_options_operadoras_de_telefonia_10_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('956','options_operadoras_de_telefonia_10_operadora','TIM FIXO		','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('957','_options_operadoras_de_telefonia_10_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('958','options_operadoras_de_telefonia_11_id','5b8cad452a4fa','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('959','_options_operadoras_de_telefonia_11_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('960','options_operadoras_de_telefonia_11_operadora','vivo','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('961','_options_operadoras_de_telefonia_11_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('962','options_operadoras_de_telefonia_12_id','5b8cad452fa95','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('963','_options_operadoras_de_telefonia_12_id','field_5b8ca93c72dcf','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('964','options_operadoras_de_telefonia_12_operadora','vivo fixo','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('965','_options_operadoras_de_telefonia_12_operadora','field_5b8ca93c731b9','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('966','options_operadoras_de_telefonia','13','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('967','_options_operadoras_de_telefonia','field_5b8ca93c67a9d','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('969','banner_categories_children','a:0:{}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('974','_site_transient_timeout_browser_690e3344004465033c5325f7f419b806','1536600508','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('975','_site_transient_browser_690e3344004465033c5325f7f419b806','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('981','_transient_timeout_acf_plugin_updates','1536171587','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('982','_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.7.4\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.7.3\";}}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('998','_transient_timeout_plugin_slugs','1536221296','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('999','_transient_plugin_slugs','a:12:{i:0;s:29:\"acf-repeater/acf-repeater.php\";i:1;s:41:\"wp-acf-unique_id-master/acf-unique_id.php\";i:2;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:3;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:4;s:19:\"wpforms/wpforms.php\";i:5;s:50:\"wpforms-ajax-submit-master/wpforms-ajax-submit.php\";i:6;s:35:\"wpforms-captcha/wpforms-captcha.php\";i:7;s:24:\"wpforms-lite/wpforms.php\";i:8;s:39:\"wpforms-mailchimp/wpforms-mailchimp.php\";i:9;s:47:\"wpforms-offline-forms/wpforms-offline-forms.php\";i:10;s:53:\"wpforms-post-submissions/wpforms-post-submissions.php\";i:11;s:55:\"wpforms-user-registration/wpforms-user-registration.php\";}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1007','wpforms_preview_page','142','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1008','wpforms_version','1.4.3','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1009','wpforms_activated','a:2:{s:4:\"lite\";i:1536088889;s:3:\"pro\";i:1536089490;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1012','widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1013','_amn_wpforms-lite_last_checked','1536019200','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1014','wpforms_review','a:2:{s:4:\"time\";i:1536088892;s:9:\"dismissed\";b:0;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1015','wpforms_settings','a:18:{s:11:\"disable-css\";s:1:\"3\";s:13:\"global-assets\";b:0;s:4:\"gdpr\";b:0;s:14:\"email-template\";s:4:\"none\";s:18:\"email-header-image\";s:0:\"\";s:22:\"email-background-color\";s:7:\"#e9eaec\";s:17:\"email-carbon-copy\";b:0;s:14:\"recaptcha-type\";s:2:\"v2\";s:18:\"recaptcha-site-key\";s:40:\"6LeRYG4UAAAAAGPN2i6JW1VeyPo_tJLPeOcjbHah\";s:20:\"recaptcha-secret-key\";s:40:\"6LeRYG4UAAAAAA6Dsk_L8x_eU-t_4XgmDRxVNrdH\";s:20:\"recaptcha-noconflict\";b:0;s:19:\"validation-required\";s:19:\"Campo obrigatório.\";s:14:\"validation-url\";s:22:\"Entre uma URL válida.\";s:16:\"validation-email\";s:24:\"Entre um E-mail válido.\";s:17:\"validation-number\";s:26:\"Entre num número válido.\";s:18:\"validation-confirm\";s:30:\"Campos não são compatíveis.\";s:18:\"hide-announcements\";b:1;s:14:\"uninstall-data\";b:0;}','yes');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1032','options_cargos_0_id','5b8ee3e85a617','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1033','_options_cargos_0_id','field_5b8ca938927c8','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1034','options_cargos_0_title','Teste','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1035','_options_cargos_0_title','field_5b8ca93892ba0','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1052','_site_transient_timeout_available_translations','1536137950','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1053','_site_transient_available_translations','a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-29 21:06:24\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-23 07:27:43\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-26 07:51:00\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-25 04:47:06\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 08:58:57\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-27 10:53:54\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-07-06 08:46:24\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 07:44:46\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 07:45:31\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 17:01:04\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 20:38:16\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 13:34:08\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 21:44:38\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"u�$_    �$_                    ��            `��    (%_            �$_     @      �$_            ame\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 09:59:15\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-01 16:09:29\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 20:43:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-21 14:41:13\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-28 15:49:41\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 11:18:39\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 10:46:48\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 12:18:54\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-06 16:13:32\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 05:17:01\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 10:46:11\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 08:49:46\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-14 10:04:37\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 10:29:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-23 06:29:23\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-31 06:32:41\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-21 12:12:01\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 22:24:38\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-04 12:57:46\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"l�$_    �$_                    ��            `��    (%_            �$_     @      �$_            nglish_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 09:42:27\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 07:24:43\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-29 11:28:05\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-06 12:43:59\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 08:56:33\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-13 11:47:22\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-29 17:20:37\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 15:06:12\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 14:22:52\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 08:17:26\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 08:15:10\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-28 12:46:02\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 09:01:19\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 20:59:54\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-03 22:59:07\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 21:09:54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-05 13:55:11\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-03 10:59:52\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 02:27:27\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1060','_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1536145666','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1061','_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4502;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2966;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2584;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2449;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1884;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1679;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1671;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1458;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1404;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1400;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1395;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1333;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1284;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1241;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1113;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1072;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1039;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1037;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:920;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:892;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:834;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:813;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:807;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:733;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:704;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:696;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:687;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:676;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:667;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:658;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:657;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:646;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:644;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:616;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:616;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:615;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:606;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:600;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:598;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:576;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:551;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:545;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:542;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:532;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:525;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:516;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:515;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:515;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:509;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:495;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:495;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:492;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:486;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:481;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:480;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:460;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:458;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:453;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:443;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:440;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:437;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:422;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:420;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:417;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:416;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:414;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:409;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:389;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:374;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:373;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:371;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:366;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:364;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:360;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:359;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:353;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:348;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:347;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:346;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:345;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:339;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:337;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:334;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:329;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:327;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:312;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:309;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:306;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:304;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:303;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:302;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:299;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:298;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:298;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:293;}}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1064','_site_transient_timeout_theme_roots','1536136686','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1065','_site_transient_theme_roots','a:4:{s:20:\"portalseguranca_novo\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1066','_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1536134891;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1067','_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1536134893;s:7:\"checked\";a:12:{s:29:\"acf-repeater/acf-repeater.php\";s:5:\"1.1.1\";s:41:\"wp-acf-unique_id-master/acf-unique_id.php\";s:5:\"1.0.0\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.7.3\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.75\";s:19:\"wpforms/wpforms.php\";s:5:\"1.4.3\";s:50:\"wpforms-ajax-submit-master/wpforms-ajax-submit.php\";s:5:\"1.2.0\";s:35:\"wpforms-captcha/wpforms-captcha.php\";s:5:\"1.0.3\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.4.8.1\";s:39:\"wpforms-mailchimp/wpforms-mailchimp.php\";s:5:\"1.2.0\";s:47:\"wpforms-offline-forms/wpforms-offline-forms.php\";s:5:\"1.0.0\";s:53:\"wpforms-post-submissions/wpforms-post-submissions.php\";s:5:\"1.0.4\";s:55:\"wpforms-user-registration/wpforms-user-registration.php\";s:5:\"1.0.9\";}s:8:\"response\";a:2:{s:29:\"acf-repeater/acf-repeater.php\";O:8:\"stdClass\":4:{s:4:\"slug\";s:12:\"acf-repeater\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:36:\"http://www.advancedcustomfields.com/\";s:7:\"package\";s:151:\"https://connect.advancedcustomfields.com/index.php?a=download&p=repeater&k=QJF7-L4IX-UCNP-RF2W&wp_url=http://localhost/portalseguranca&wp_version=4.9.8\";}s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.7.4\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:41:\"wp-acf-unique_id-master/acf-unique_id.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/acf-unique-id-field\";s:4:\"slug\";s:19:\"acf-unique-id-field\";s:6:\"plugin\";s:41:\"wp-acf-unique_id-master/acf-unique_id.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/acf-unique-id-field/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/acf-unique-id-field.1.0.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/acf-unique-id-field.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.75\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.75.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1876524\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1876524\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.4.8.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wpforms-lite.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1068','_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1536134893;s:7:\"checked\";a:4:{s:20:\"portalseguranca_novo\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `SERVMASK_PREFIX_options` VALUES ('1070','ai1wm_secret_key','aQz5knktk78H','yes');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_postmeta`;
CREATE TABLE `SERVMASK_PREFIX_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=719 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('1','2','_wp_page_template','default');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('2','3','_wp_page_template','default');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('11','10','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('12','10','_edit_lock','1535932730:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('13','12','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('14','12','_edit_lock','1535930938:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('15','14','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('16','14','_edit_lock','1535931671:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('17','17','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('18','17','_edit_lock','1535930982:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('19','19','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('20','19','_edit_lock','1535932631:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('21','21','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('22','21','_edit_lock','1535931020:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('23','2','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('24','2','_wp_trash_meta_time','1535931171');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('25','2','_wp_desired_post_slug','pagina-exemplo');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('26','24','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('27','24','_edit_lock','1535931349:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('28','24','_wp_page_template','page-templates/home.php');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('29','10','_wp_page_template','page-templates/home.php');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('48','40','_menu_item_type','post_type');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('49','40','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('50','40','_menu_item_object_id','24');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('51','40','_menu_item_object','page');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('52','40','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('53','40','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('54','40','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('55','40','_menu_item_url','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('57','41','_menu_item_type','post_type');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('58','41','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('59','41','_menu_item_object_id','12');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('60','41','_menu_item_object','page');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('61','41','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('62','41','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('63','41','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('64','41','_menu_item_url','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('66','42','_menu_item_type','post_type');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('67','42','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('68','42','_menu_item_object_id','10');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('69','42','_menu_item_object','page');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('70','42','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('71','42','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('72','42','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('73','42','_menu_item_url','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('75','43','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('76','43','_wp_page_template','default');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('77','43','_edit_lock','1535932846:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('80','43','_wp_desired_post_slug','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('81','43','_wp_trash_meta_status','draft');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('82','43','_wp_trash_meta_time','1535933007');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('83','3','_wp_trash_meta_status','draft');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('84','3','_wp_trash_meta_time','1535933011');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('85','3','_wp_desired_post_slug','politica-de-privacidade');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('86','45','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('87','45','_wp_page_template','default');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('88','45','_edit_lock','1535932906:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('89','46','_menu_item_type','post_type');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('90','46','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('91','46','_menu_item_object_id','45');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('92','46','_menu_item_object','page');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('93','46','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('94','46','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('95','46','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('96','46','_menu_item_url','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('98','47','_menu_item_type','custom');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('99','47','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('100','47','_menu_item_object_id','47');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('101','47','_menu_item_object','custom');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('102','47','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('103','47','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('104','47','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('105','47','_menu_item_url','#');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('107','48','_menu_item_type','post_type');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('108','48','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('109','48','_menu_item_object_id','21');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('110','48','_menu_item_object','page');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('111','48','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('112','48','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('113','48','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('114','48','_menu_item_url','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('116','49','_menu_item_type','post_type');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('117','49','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('118','49','_menu_item_object_id','19');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('119','49','_menu_item_object','page');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('120','49','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('121','49','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('122','49','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('123','49','_menu_item_url','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('125','50','_menu_item_type','post_type');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('126','50','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('127','50','_menu_item_object_id','17');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('128','50','_menu_item_object','page');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('129','50','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('130','50','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('131','50','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('132','50','_menu_item_url','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('134','51','_menu_item_type','post_type');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('135','51','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('136','51','_menu_item_object_id','14');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('137','51','_menu_item_object','page');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('138','51','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('139','51','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('140','51','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('141','51','_menu_item_url','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('143','52','_wp_attached_file','2018/09/logo.png');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('144','52','_wp_attachment_metadata','a:5:{s:5:\"width\";i:248;s:6:\"height\";i:52;s:4:\"file\";s:16:\"2018/09/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x52.png\";s:5:\"width\";i:150;s:6:\"height\";i:52;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('145','53','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('146','53','_wp_trash_meta_time','1535933176');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('147','54','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('148','54','_wp_trash_meta_time','1535933200');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('149','55','_wp_attached_file','2018/09/footer.png');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('150','55','_wp_attachment_metadata','a:5:{s:5:\"width\";i:1458;s:6:\"height\";i:375;s:4:\"file\";s:18:\"2018/09/footer.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"footer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"footer-300x77.png\";s:5:\"width\";i:300;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"footer-768x198.png\";s:5:\"width\";i:768;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"footer-1024x263.png\";s:5:\"width\";i:1024;s:6:\"height\";i:263;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"footer-600x154.png\";s:5:\"width\";i:600;s:6:\"height\";i:154;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('151','56','_edit_lock','1535933217:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('152','56','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('153','56','_wp_trash_meta_time','1535933253');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('154','57','_edit_lock','1535933289:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('155','57','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('156','57','_wp_trash_meta_time','1535933295');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('157','58','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('158','58','_wp_page_template','default');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('159','58','_edit_lock','1535935478:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('160','59','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('161','59','_wp_page_template','default');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('162','59','_edit_lock','1535935549:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('163','60','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('164','60','_edit_lock','1535944221:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('165','77','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('166','77','_edit_lock','1535941007:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('167','77','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('168','77','_wp_trash_meta_time','1535941022');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('169','77','_wp_desired_post_slug','group_5b8c9132aa656');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('170','80','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('171','80','_wp_trash_meta_time','1535941022');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('172','80','_wp_desired_post_slug','field_5b8c922e30fac');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('173','83','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('174','83','_edit_lock','1536091452:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('175','94','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('176','94','_edit_lock','1535944250:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('177','99','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('178','99','_edit_lock','1535944130:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('179','112','_edit_lock','1535945174:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('180','120','_edit_lock','1536091103:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('181','116','_edit_lock','1535945172:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('182','124','_edit_lock','1535945171:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('183','112','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('184','116','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('185','120','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('186','124','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('187','128','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('188','128','_edit_lock','1535946233:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('209','120','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('210','120','_wp_trash_meta_time','1536091250');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('211','120','_wp_desired_post_slug','group_5b8ca93880ddc');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('212','121','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('213','121','_wp_trash_meta_time','1536091250');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('214','121','_wp_desired_post_slug','field_5b8ca9388d5aa');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('215','124','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('216','124','_wp_trash_meta_time','1536091586');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('217','124','_wp_desired_post_slug','group_5b8ca93c57dbe');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('218','125','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('219','125','_wp_trash_meta_time','1536091586');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('220','125','_wp_desired_post_slug','field_5b8ca93c67a9d');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('221','116','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('222','116','_wp_trash_meta_time','1536091586');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('223','116','_wp_desired_post_slug','group_5b8ca934a7842');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('224','117','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('225','117','_wp_trash_meta_time','1536091586');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('226','117','_wp_desired_post_slug','field_5b8ca934b4499');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('227','112','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('228','112','_wp_trash_meta_time','1536091586');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('229','112','_wp_desired_post_slug','group_5b8ca9305d2f4');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('230','113','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('231','113','_wp_trash_meta_time','1536091586');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('232','113','_wp_desired_post_slug','field_5b8ca93069176');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('243','157','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('244','157','_edit_lock','1536093890:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('245','158','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('246','158','_edit_lock','1536093896:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('247','159','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('248','159','_edit_lock','1536093903:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('249','160','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('250','160','_edit_lock','1536093915:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('251','161','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('252','161','_edit_lock','1536093931:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('253','163','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('254','163','_edit_lock','1536094087:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('255','164','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('256','164','_edit_lock','1536094095:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('257','165','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('258','165','_edit_lock','1536094102:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('259','166','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('260','166','_edit_lock','1536094108:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('261','167','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('262','167','_edit_lock','1536094113:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('263','168','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('264','168','_edit_lock','1536094124:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('265','169','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('266','169','_edit_lock','1536094134:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('267','170','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('268','170','_edit_lock','1536094148:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('269','171','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('270','171','_edit_lock','1536094154:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('271','172','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('272','172','_edit_lock','1536094160:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('273','173','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('274','173','_edit_lock','1536094166:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('275','174','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('276','174','_edit_lock','1536094172:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('277','175','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('278','175','_edit_lock','1536094189:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('279','176','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('280','176','_edit_lock','1536094201:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('281','177','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('282','177','_edit_lock','1536094209:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('283','178','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('284','178','_edit_lock','1536094216:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('285','179','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('286','179','_edit_lock','1536094223:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('287','180','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('288','180','_edit_lock','1536094229:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('289','181','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('290','181','_edit_lock','1536094307:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('291','182','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('292','182','_edit_lock','1536094441:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('293','183','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('294','183','_edit_lock','1536094447:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('295','184','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('296','184','_edit_lock','1536094453:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('297','185','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('298','185','_edit_lock','1536094459:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('299','186','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('300','186','_edit_lock','1536094502:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('301','188','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('302','188','_edit_lock','1536099371:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('303','189','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('304','189','_edit_lock','1536099387:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('305','190','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('306','190','_edit_lock','1536099401:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('307','191','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('308','191','_edit_lock','1536099410:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('309','192','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('310','192','_edit_lock','1536099416:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('311','193','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('312','193','_edit_lock','1536099426:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('313','194','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('314','194','_edit_lock','1536099435:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('315','195','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('316','195','_edit_lock','1536099441:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('317','196','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('318','196','_edit_lock','1536099449:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('319','197','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('320','197','_edit_lock','1536099460:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('321','198','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('322','198','_edit_lock','1536099472:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('323','199','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('324','199','_edit_lock','1536099482:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('325','200','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('326','200','_edit_lock','1536099496:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('327','201','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('328','201','_edit_lock','1536099592:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('329','202','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('330','202','_edit_lock','1536099599:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('331','203','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('332','203','_edit_lock','1536099607:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('333','204','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('334','204','_edit_lock','1536099626:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('335','205','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('336','205','_edit_lock','1536099652:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('337','206','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('338','206','_edit_lock','1536099662:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('339','207','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('340','207','_edit_lock','1536099669:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('341','208','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('342','208','_edit_lock','1536099675:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('343','209','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('344','209','_edit_lock','1536099681:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('345','210','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('346','210','_edit_lock','1536099689:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('347','211','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('348','211','_edit_lock','1536099698:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('349','212','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('350','212','_edit_lock','1536099706:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('351','213','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('352','213','_edit_lock','1536099715:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('353','214','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('354','214','_edit_lock','1536099722:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('355','215','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('356','215','_edit_lock','1536099733:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('357','216','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('358','216','_edit_lock','1536099743:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('359','217','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('360','217','_edit_lock','1536099765:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('361','218','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('362','218','_edit_lock','1536099779:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('363','219','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('364','219','_edit_lock','1536100439:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('365','220','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('366','220','_edit_lock','1536100069:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('367','221','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('368','221','_edit_lock','1536100077:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('369','222','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('370','222','_edit_lock','1536100087:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('371','223','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('372','223','_edit_lock','1536100095:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('373','224','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('374','224','_edit_lock','1536100101:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('375','225','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('376','225','_edit_lock','1536100123:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('377','226','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('378','226','_edit_lock','1536100134:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('379','227','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('380','227','_edit_lock','1536100140:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('381','228','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('382','228','_edit_lock','1536100148:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('383','229','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('384','229','_edit_lock','1536100156:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('385','230','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('386','230','_edit_lock','1536100164:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('387','231','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('388','231','_edit_lock','1536100171:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('389','232','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('390','232','_edit_lock','1536100182:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('391','233','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('392','233','_edit_lock','1536100190:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('393','234','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('394','234','_edit_lock','1536100198:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('395','235','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('396','235','_edit_lock','1536100206:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('397','236','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('398','236','_edit_lock','1536100213:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('399','237','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('400','237','_edit_lock','1536100222:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('401','238','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('402','238','_edit_lock','1536100234:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('403','239','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('404','239','_edit_lock','1536100242:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('405','240','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('406','240','_edit_lock','1536100250:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('407','241','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('408','241','_edit_lock','1536100257:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('409','242','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('410','242','_edit_lock','1536100264:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('411','243','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('412','243','_edit_lock','1536100272:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('413','244','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('414','244','_edit_lock','1536100279:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('415','245','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('416','245','_edit_lock','1536100286:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('417','246','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('418','246','_edit_lock','1536100294:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('419','247','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('420','247','_edit_lock','1536100302:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('421','248','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('422','248','_edit_lock','1536100309:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('423','249','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('424','249','_edit_lock','1536100316:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('425','250','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('426','250','_edit_lock','1536100324:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('427','251','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('428','251','_edit_lock','1536100332:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('429','252','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('430','252','_edit_lock','1536100339:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('431','253','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('432','253','_edit_lock','1536100347:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('433','254','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('434','254','_edit_lock','1536100354:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('435','255','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('436','255','_edit_lock','1536100362:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('437','256','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('438','256','_edit_lock','1536100369:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('439','257','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('440','257','_edit_lock','1536100377:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('441','258','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('442','258','_edit_lock','1536100384:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('443','259','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('444','259','_edit_lock','1536100394:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('445','260','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('446','260','_edit_lock','1536100453:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('447','261','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('448','261','_edit_lock','1536100460:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('449','262','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('450','262','_edit_lock','1536100468:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('451','263','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('452','263','_edit_lock','1536100505:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('453','264','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('454','264','_edit_lock','1536100512:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('455','265','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('456','265','_edit_lock','1536100520:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('457','266','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('458','266','_edit_lock','1536100527:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('459','267','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('460','267','_edit_lock','1536100536:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('461','268','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('462','268','_edit_lock','1536100544:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('463','269','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('464','269','_edit_lock','1536100552:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('465','270','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('466','270','_edit_lock','1536100559:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('467','271','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('468','271','_edit_lock','1536100566:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('469','272','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('470','272','_edit_lock','1536100574:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('471','273','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('472','273','_edit_lock','1536100583:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('473','274','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('474','274','_edit_lock','1536100590:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('475','275','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('476','275','_edit_lock','1536100598:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('477','276','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('478','276','_edit_lock','1536100606:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('479','277','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('480','277','_edit_lock','1536100615:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('481','278','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('482','278','_edit_lock','1536100622:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('483','279','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('484','279','_edit_lock','1536100630:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('485','280','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('486','280','_edit_lock','1536100637:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('487','281','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('488','281','_edit_lock','1536100643:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('489','282','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('490','282','_edit_lock','1536100653:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('491','283','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('492','283','_edit_lock','1536100662:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('493','284','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('494','284','_edit_lock','1536100670:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('495','285','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('496','285','_edit_lock','1536100676:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('497','286','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('498','286','_edit_lock','1536100682:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('499','287','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('500','287','_edit_lock','1536100693:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('501','288','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('502','288','_edit_lock','1536100699:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('503','289','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('504','289','_edit_lock','1536100706:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('505','290','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('506','290','_edit_lock','1536100714:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('507','291','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('508','291','_edit_lock','1536100721:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('509','292','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('510','292','_edit_lock','1536100747:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('511','293','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('512','293','_edit_lock','1536100758:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('513','294','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('514','294','_edit_lock','1536100764:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('515','295','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('516','295','_edit_lock','1536100773:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('517','296','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('518','296','_edit_lock','1536100781:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('519','297','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('520','297','_edit_lock','1536100789:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('521','298','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('522','298','_edit_lock','1536100796:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('523','299','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('524','299','_edit_lock','1536100804:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('525','300','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('526','300','_edit_lock','1536100812:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('527','301','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('528','301','_edit_lock','1536100826:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('529','302','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('530','302','_edit_lock','1536100832:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('531','303','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('532','303','_edit_lock','1536100840:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('533','304','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('534','304','_edit_lock','1536100848:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('535','305','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('536','305','_edit_lock','1536100856:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('537','306','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('538','306','_edit_lock','1536100863:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('539','307','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('540','307','_edit_lock','1536100871:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('541','308','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('542','308','_edit_lock','1536100878:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('543','309','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('544','309','_edit_lock','1536100886:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('545','310','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('546','310','_edit_lock','1536100893:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('547','311','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('548','311','_edit_lock','1536100901:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('549','312','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('550','312','_edit_lock','1536100910:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('551','313','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('552','313','_edit_lock','1536100917:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('553','314','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('554','314','_edit_lock','1536100924:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('555','315','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('556','315','_edit_lock','1536100931:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('557','316','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('558','316','_edit_lock','1536100939:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('559','317','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('560','317','_edit_lock','1536100945:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('561','318','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('562','318','_edit_lock','1536100953:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('563','321','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('564','321','_edit_lock','1536122843:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('565','321','_wp_page_template','page-templates/cadastro.php');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('566','322','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('567','322','_edit_lock','1536138821:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('605','342','_edit_lock','1536126939:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('606','342','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('607','342','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('608','342','_wp_desired_post_slug','group_5b8f702a9128a');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('609','343','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('610','343','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('611','343','_wp_desired_post_slug','field_5b8f702a99279');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('612','344','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('613','344','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('614','344','_wp_desired_post_slug','field_5b8f702a99329');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('615','345','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('616','345','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('617','345','_wp_desired_post_slug','field_5b8f702a993df');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('618','346','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('619','346','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('620','346','_wp_desired_post_slug','field_5b8f702a994a6');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('621','347','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('622','347','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('623','347','_wp_desired_post_slug','field_5b8f702a99561');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('624','348','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('625','348','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('626','348','_wp_desired_post_slug','field_5b8f702a99624');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('627','349','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('628','349','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('629','349','_wp_desired_post_slug','field_5b8f702a996e8');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('630','350','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('631','350','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('632','350','_wp_desired_post_slug','field_5b8f702a997b2');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('633','351','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('634','351','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('635','351','_wp_desired_post_slug','field_5b8f702a99877');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('636','352','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('637','352','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('638','352','_wp_desired_post_slug','field_5b8f702a9993f');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('639','353','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('640','353','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('641','353','_wp_desired_post_slug','field_5b8f702a99a09');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('642','354','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('643','354','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('644','354','_wp_desired_post_slug','field_5b8f702a99ab5');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('645','355','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('646','355','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('647','355','_wp_desired_post_slug','field_5b8f702a99b4e');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('648','356','_wp_trash_meta_status','publish');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('649','356','_wp_trash_meta_time','1536127087');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('650','356','_wp_desired_post_slug','field_5b8f702a99be4');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('670','359','nome','wesley');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('671','359','cargo','COMERCIAL');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('672','359','telefone_celular','21000000');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('673','359','telefone_comercial','21000000');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('674','359','email_comercial','wes.andrade@ymail.com');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('675','359','endereco','rua alberto pinto jr');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('676','359','numero','322');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('677','359','cep','21810190');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('678','359','cidade','Selecione uma opção');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('679','359','estado','Selecione uma opção');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('680','359','assinante_jornal_seguranca','Sim');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('681','359','email','wes.andrade@ymail.com');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('682','360','_menu_item_type','post_type');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('683','360','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('684','360','_menu_item_object_id','321');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('685','360','_menu_item_object','page');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('686','360','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('687','360','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('688','360','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('689','360','_menu_item_url','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('691','362','_edit_lock','1536137093:1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('692','362','_edit_last','1');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('693','362','_wp_page_template','page-templates/login.php');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('694','363','_menu_item_type','post_type');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('695','363','_menu_item_menu_item_parent','0');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('696','363','_menu_item_object_id','362');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('697','363','_menu_item_object','page');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('698','363','_menu_item_target','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('699','363','_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('700','363','_menu_item_xfn','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('701','363','_menu_item_url','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('703','359','_wp_trash_meta_status','pending');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('704','359','_wp_trash_meta_time','1536131395');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('705','359','_wp_desired_post_slug','');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('706','364','nome','wesley');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('707','364','cargo','ANALISTA RH');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('708','364','telefone_celular','21000000');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('709','364','telefone_comercial','21000000');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('710','364','telefone_pessoal','21000000');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('711','364','email_comercial','wes.andrade@ymail.com');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('712','364','endereco','rua alberto pinto jr');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('713','364','numero','66');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('714','364','cep','21810190');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('715','364','cidade','Selecione uma opção');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('716','364','estado','Selecione uma opção');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('717','364','assinante_jornal_seguranca','Sim');
INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES ('718','364','email','wes.andrade@ymail.com');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_posts`;
CREATE TABLE `SERVMASK_PREFIX_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('1','1','2018-09-01 14:07:47','2018-09-01 17:07:47','Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!','Olá, mundo!','','publish','open','open','','ola-mundo','','','2018-09-01 14:07:47','2018-09-01 17:07:47','','0','http://localhost/portalseguranca//?p=1','0','post','','1');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('2','1','2018-09-01 14:07:47','2018-09-01 17:07:47','Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins de semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href=\"http://localhost/portalseguranca//wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!','Página de exemplo','','trash','closed','open','','pagina-exemplo__trashed','','','2018-09-02 20:32:51','2018-09-02 23:32:51','','0','http://localhost/portalseguranca//?page_id=2','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('3','1','2018-09-01 14:07:47','2018-09-01 17:07:47','<h2>Quem somos</h2><p>O endereço do nosso site é: http://localhost/portalseguranca/.</p><h2>Quais dados pessoais coletamos e porque</h2><h3>Comentários</h3><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><h3>Mídia</h3><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><h3>Formulários de contato</h3><h3>Cookies</h3><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><h3>Mídia incorporada de outros sites</h3><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><h3>Análises</h3><h2>Com quem partilhamos seus dados</h2><h2>Por quanto tempo mantemos os seus dados</h2><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><h2>Quais os seus direitos sobre seus dados</h2><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><h2>Para onde enviamos seus dados</h2><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><h2>Suas informações de contato</h2><h2>Informações adicionais</h2><h3>Como protegemos seus dados</h3><h3>Quais são nossos procedimentos contra violação de dados</h3><h3>De quais terceiros nós recebemos dados</h3><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3>','Política de privacidade','','trash','closed','open','','politica-de-privacidade__trashed','','','2018-09-02 21:03:31','2018-09-03 00:03:31','','0','http://localhost/portalseguranca//?page_id=3','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('4','1','2018-09-01 14:08:01','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2018-09-01 14:08:01','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?p=4','0','post','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('9','1','2018-09-02 17:41:15','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 17:41:15','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=acf-field-group&p=9','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('10','1','2018-09-02 20:30:54','2018-09-02 23:30:54','','Empresa','','publish','closed','closed','','empresa','','','2018-09-02 20:54:59','2018-09-02 23:54:59','','0','http://localhost/portalseguranca//?page_id=10','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('11','1','2018-09-02 20:30:54','2018-09-02 23:30:54','','Empresa','','inherit','closed','closed','','10-revision-v1','','','2018-09-02 20:30:54','2018-09-02 23:30:54','','10','http://localhost/portalseguranca//2018/09/02/10-revision-v1/','0','revision','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('12','1','2018-09-02 20:31:15','2018-09-02 23:31:15','','Edições','','publish','closed','closed','','edicoes','','','2018-09-02 20:31:15','2018-09-02 23:31:15','','0','http://localhost/portalseguranca//?page_id=12','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('13','1','2018-09-02 20:31:15','2018-09-02 23:31:15','','Edições','','inherit','closed','closed','','12-revision-v1','','','2018-09-02 20:31:15','2018-09-02 23:31:15','','12','http://localhost/portalseguranca//2018/09/02/12-revision-v1/','0','revision','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('14','1','2018-09-02 20:31:33','2018-09-02 23:31:33','','Anuncie','','publish','closed','closed','','videos','','','2018-09-02 20:31:45','2018-09-02 23:31:45','','0','http://localhost/portalseguranca//?page_id=14','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('15','1','2018-09-02 20:31:33','2018-09-02 23:31:33','','Vídeos','','inherit','closed','closed','','14-revision-v1','','','2018-09-02 20:31:33','2018-09-02 23:31:33','','14','http://localhost/portalseguranca//2018/09/02/14-revision-v1/','0','revision','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('16','1','2018-09-02 20:31:45','2018-09-02 23:31:45','','Anuncie','','inherit','closed','closed','','14-revision-v1','','','2018-09-02 20:31:45','2018-09-02 23:31:45','','14','http://localhost/portalseguranca//2018/09/02/14-revision-v1/','0','revision','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('17','1','2018-09-02 20:32:00','2018-09-02 23:32:00','','Guia da Segurança','','publish','closed','closed','','guia-da-seguranca','','','2018-09-02 20:32:00','2018-09-02 23:32:00','','0','http://localhost/portalseguranca//?page_id=17','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('18','1','2018-09-02 20:32:00','2018-09-02 23:32:00','','Guia da Segurança','','inherit','closed','closed','','17-revision-v1','','','2018-09-02 20:32:00','2018-09-02 23:32:00','','17','http://localhost/portalseguranca//2018/09/02/17-revision-v1/','0','revision','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('19','1','2018-09-02 20:32:14','2018-09-02 23:32:14','','Blog','','publish','closed','closed','','blog','','','2018-09-02 20:32:14','2018-09-02 23:32:14','','0','http://localhost/portalseguranca//?page_id=19','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('20','1','2018-09-02 20:32:14','2018-09-02 23:32:14','','Blog','','inherit','closed','closed','','19-revision-v1','','','2018-09-02 20:32:14','2018-09-02 23:32:14','','19','http://localhost/portalseguranca//2018/09/02/19-revision-v1/','0','revision','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('21','1','2018-09-02 20:32:35','2018-09-02 23:32:35','','Contato','','publish','closed','closed','','contato','','','2018-09-02 20:32:35','2018-09-02 23:32:35','','0','http://localhost/portalseguranca//?page_id=21','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('22','1','2018-09-02 20:32:35','2018-09-02 23:32:35','','Contato','','inherit','closed','closed','','21-revision-v1','','','2018-09-02 20:32:35','2018-09-02 23:32:35','','21','http://localhost/portalseguranca//2018/09/02/21-revision-v1/','0','revision','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('23','1','2018-09-02 20:32:51','2018-09-02 23:32:51','Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins de semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href=\"http://localhost/portalseguranca//wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!','Página de exemplo','','inherit','closed','closed','','2-revision-v1','','','2018-09-02 20:32:51','2018-09-02 23:32:51','','2','http://localhost/portalseguranca//2018/09/02/2-revision-v1/','0','revision','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('24','1','2018-09-02 20:33:09','2018-09-02 23:33:09','','Home','','publish','closed','closed','','home','','','2018-09-02 20:33:09','2018-09-02 23:33:09','','0','http://localhost/portalseguranca//?page_id=24','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('25','1','2018-09-02 20:33:09','2018-09-02 23:33:09','','Home','','inherit','closed','closed','','24-revision-v1','','','2018-09-02 20:33:09','2018-09-02 23:33:09','','24','http://localhost/portalseguranca//2018/09/02/24-revision-v1/','0','revision','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('26','1','2018-09-02 20:38:15','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:38:15','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=26','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('27','1','2018-09-02 20:40:46','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:40:46','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=27','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('28','1','2018-09-02 20:44:16','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:44:16','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=28','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('29','1','2018-09-02 20:44:43','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:44:43','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=29','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('30','1','2018-09-02 20:47:12','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:47:12','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=30','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('31','1','2018-09-02 20:55:13','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:55:13','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=31','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('32','1','2018-09-02 20:55:26','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:55:26','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=32','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('33','1','2018-09-02 20:56:03','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:56:03','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=33','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('34','1','2018-09-02 20:56:14','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:56:14','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=34','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('35','1','2018-09-02 20:56:39','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:56:39','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=35','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('36','1','2018-09-02 20:57:33','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:57:33','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=36','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('37','1','2018-09-02 20:57:37','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 20:57:37','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?page_id=37','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('40','1','2018-09-02 21:04:16','2018-09-03 00:04:16',' ','','','publish','closed','closed','','40','','','2018-09-02 21:05:42','2018-09-03 00:05:42','','0','http://localhost/portalseguranca//?p=40','1','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('41','1','2018-09-02 21:04:16','2018-09-03 00:04:16',' ','','','publish','closed','closed','','41','','','2018-09-02 21:05:42','2018-09-03 00:05:42','','0','http://localhost/portalseguranca//?p=41','3','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('42','1','2018-09-02 21:04:16','2018-09-03 00:04:16',' ','','','publish','closed','closed','','42','','','2018-09-02 21:05:42','2018-09-03 00:05:42','','0','http://localhost/portalseguranca//?p=42','2','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('43','1','2018-09-02 21:03:12','2018-09-03 00:03:12','','Vídeos','','trash','closed','closed','','__trashed','','','2018-09-02 21:03:27','2018-09-03 00:03:27','','0','http://localhost/portalseguranca//?page_id=43','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('44','1','2018-09-02 21:03:16','2018-09-03 00:03:16','','Vídeos','','inherit','closed','closed','','43-revision-v1','','','2018-09-02 21:03:16','2018-09-03 00:03:16','','43','http://localhost/portalseguranca//2018/09/02/43-revision-v1/','0','revision','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('45','1','2018-09-02 21:03:58','2018-09-03 00:03:58','','Vídeos','','publish','closed','closed','','videos-2','','','2018-09-02 21:03:58','2018-09-03 00:03:58','','0','http://localhost/portalseguranca//?page_id=45','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('46','1','2018-09-02 21:05:42','2018-09-03 00:05:42',' ','','','publish','closed','closed','','46','','','2018-09-02 21:05:42','2018-09-03 00:05:42','','0','http://localhost/portalseguranca//?p=46','4','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('47','1','2018-09-02 21:05:42','2018-09-03 00:05:42','','Loja','','publish','closed','closed','','loja','','','2018-09-02 21:05:42','2018-09-03 00:05:42','','0','http://localhost/portalseguranca//?p=47','5','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('48','1','2018-09-02 21:05:42','2018-09-03 00:05:42',' ','','','publish','closed','closed','','48','','','2018-09-02 21:05:42','2018-09-03 00:05:42','','0','http://localhost/portalseguranca//?p=48','9','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('49','1','2018-09-02 21:05:42','2018-09-03 00:05:42',' ','','','publish','closed','closed','','49','','','2018-09-02 21:05:42','2018-09-03 00:05:42','','0','http://localhost/portalseguranca//?p=49','8','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('50','1','2018-09-02 21:05:42','2018-09-03 00:05:42',' ','','','publish','closed','closed','','50','','','2018-09-02 21:05:42','2018-09-03 00:05:42','','0','http://localhost/portalseguranca//?p=50','7','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('51','1','2018-09-02 21:05:42','2018-09-03 00:05:42',' ','','','publish','closed','closed','','51','','','2018-09-02 21:05:42','2018-09-03 00:05:42','','0','http://localhost/portalseguranca//?p=51','6','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('52','1','2018-09-02 21:06:11','2018-09-03 00:06:11','','logo','','inherit','open','closed','','logo','','','2018-09-02 21:06:11','2018-09-03 00:06:11','','0','http://localhost/portalseguranca//wp-content/uploads/2018/09/logo.png','0','attachment','image/png','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('53','1','2018-09-02 21:06:16','2018-09-03 00:06:16','{\n    \"portalseguranca_novo::logo\": {\n        \"value\": \"http://localhost/portalseguranca//wp-content/uploads/2018/09/logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 00:06:16\"\n    }\n}','','','trash','closed','closed','','87433f5d-7b48-45d6-b3b2-8c66c79f15c7','','','2018-09-02 21:06:16','2018-09-03 00:06:16','','0','http://localhost/portalseguranca//2018/09/02/87433f5d-7b48-45d6-b3b2-8c66c79f15c7/','0','customize_changeset','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('54','1','2018-09-02 21:06:40','2018-09-03 00:06:40','{\n    \"portalseguranca_novo::telefone\": {\n        \"value\": \"(11) 123456\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 00:06:40\"\n    },\n    \"portalseguranca_novo::atendimento\": {\n        \"value\": \"8 \\u00e4s 18hrs\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 00:06:40\"\n    }\n}','','','trash','closed','closed','','61640315-2653-4345-bf24-898ac2b4ab6b','','','2018-09-02 21:06:40','2018-09-03 00:06:40','','0','http://localhost/portalseguranca//2018/09/02/61640315-2653-4345-bf24-898ac2b4ab6b/','0','customize_changeset','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('55','1','2018-09-02 21:06:48','2018-09-03 00:06:48','','footer','','inherit','open','closed','','footer','','','2018-09-02 21:06:48','2018-09-03 00:06:48','','0','http://localhost/portalseguranca//wp-content/uploads/2018/09/footer.png','0','attachment','image/png','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('56','1','2018-09-02 21:07:33','2018-09-03 00:07:33','{\n    \"portalseguranca_novo::bg\": {\n        \"value\": \"http://localhost/portalseguranca//wp-content/uploads/2018/09/footer.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 00:06:56\"\n    },\n    \"portalseguranca_novo::footer-description\": {\n        \"value\": \"JORNAL DA SEGURAN\\u00c7A\\n<br/><br/>\\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. CUM NOSTRUM, NAM. MINIMA IPSA IUSTO TENETUR AMET VOLUPTATES DELENITI! EAQUE SIT MINUS ASPERIORES, DOLORES FACILIS MOLLITIA, DELECTUS EUM LABORIOSAM. DOLOREMQUE, BLANDITIIS. \\n<br/><br/>\\n<small>\\nCNPJ: 08.891.132./0001-62\\nSEGURAN\\u00c7A, DEFESA, VIGIL\\u00c2NCIA, ALARME, C\\u00c2MERA, DVR, EXPOSEC, ISC\\n</small>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 00:07:33\"\n    }\n}','','','trash','closed','closed','','57a6ccfc-3be9-464f-8451-deed8635d151','','','2018-09-02 21:07:33','2018-09-03 00:07:33','','0','http://localhost/portalseguranca//?p=56','0','customize_changeset','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('57','1','2018-09-02 21:08:15','2018-09-03 00:08:15','{\n    \"portalseguranca_novo::facebook\": {\n        \"value\": \"http//\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 00:08:09\"\n    },\n    \"portalseguranca_novo::instagram\": {\n        \"value\": \"http//\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 00:08:09\"\n    },\n    \"portalseguranca_novo::pinterest\": {\n        \"value\": \"http//\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 00:08:09\"\n    },\n    \"portalseguranca_novo::twitter\": {\n        \"value\": \"http//\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 00:08:15\"\n    }\n}','','','trash','closed','closed','','8aeb9eb8-cf2d-4a97-a638-e7667a6dfb97','','','2018-09-02 21:08:15','2018-09-03 00:08:15','','0','http://localhost/portalseguranca//?p=57','0','customize_changeset','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('58','1','2018-09-02 21:46:56','2018-09-03 00:46:56','','Entrega','','publish','closed','closed','','entrega','','','2018-09-02 21:46:56','2018-09-03 00:46:56','','0','http://localhost/portalseguranca//?page_id=58','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('59','1','2018-09-02 21:47:13','2018-09-03 00:47:13','','Política de Privacidade','','publish','closed','closed','','politica-de-privacidade','','','2018-09-02 21:47:13','2018-09-03 00:47:13','','0','http://localhost/portalseguranca//?page_id=59','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('60','1','2018-09-02 21:53:26','2018-09-03 00:53:26','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"videos\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:9:\"permalink\";i:1;s:13:\"custom_fields\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Vídeos','videos','publish','closed','closed','','group_5b8c8600e8555','','','2018-09-03 00:12:09','2018-09-03 03:12:09','','0','http://localhost/portalseguranca//?post_type=acf-field-group&#038;p=60','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('61','1','2018-09-02 22:00:09','2018-09-03 01:00:09','a:14:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:1;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Ordem','ordem','publish','closed','closed','','field_5b8c863ab1622','','','2018-09-02 22:00:09','2018-09-03 01:00:09','','60','http://localhost/portalseguranca//?post_type=acf-field&p=61','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('62','1','2018-09-02 22:00:09','2018-09-03 01:00:09','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Código Vímeo','codigo_vimeo','publish','closed','closed','','field_5b8c864bb1623','','','2018-09-02 22:00:09','2018-09-03 01:00:09','','60','http://localhost/portalseguranca//?post_type=acf-field&p=62','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('63','1','2018-09-02 22:00:09','2018-09-03 01:00:09','a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:10:\"uploadedTo\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";i:30;s:10:\"mime_types\";s:8:\"mp4,webm\";}','Vídeo','video','publish','closed','closed','','field_5b8c8664b1624','','','2018-09-02 22:00:09','2018-09-03 01:00:09','','60','http://localhost/portalseguranca//?post_type=acf-field&p=63','2','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('64','1','2018-09-02 22:00:09','2018-09-03 01:00:09','a:14:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:0:\"\";s:0:\"\";}s:13:\"default_value\";a:1:{s:0:\"\";s:0:\"\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";s:8:\"disabled\";i:0;s:8:\"readonly\";i:0;}','Nível de Acesso','nivel_de_acesso','publish','closed','closed','','field_5b8c86a2b1625','','','2018-09-02 22:00:09','2018-09-03 01:00:09','','60','http://localhost/portalseguranca//?post_type=acf-field&p=64','3','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('66','1','2018-09-02 22:00:09','2018-09-03 01:00:09','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Palestrante','palestrante','publish','closed','closed','','field_5b8c870db1627','','','2018-09-02 22:23:27','2018-09-03 01:23:27','','60','http://localhost/portalseguranca//?post_type=acf-field&#038;p=66','4','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('67','1','2018-09-02 22:00:09','2018-09-03 01:00:09','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','E-mail','e-mail','publish','closed','closed','','field_5b8c8713b1628','','','2018-09-02 22:23:27','2018-09-03 01:23:27','','60','http://localhost/portalseguranca//?post_type=acf-field&#038;p=67','5','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('68','1','2018-09-02 22:00:09','2018-09-03 01:00:09','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Site','site','publish','closed','closed','','field_5b8c871eb1629','','','2018-09-02 22:23:27','2018-09-03 01:23:27','','60','http://localhost/portalseguranca//?post_type=acf-field&#038;p=68','6','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('69','1','2018-09-02 22:00:09','2018-09-03 01:00:09','a:7:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;}','Ativo','ativo','publish','closed','closed','','field_5b8c8727b162a','','','2018-09-03 00:02:43','2018-09-03 03:02:43','','60','http://localhost/portalseguranca//?post_type=acf-field&#038;p=69','7','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('70','1','2018-09-02 22:00:09','2018-09-03 01:00:09','a:7:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;}','Aparecer capa','aparecer_capa','publish','closed','closed','','field_5b8c8744b162b','','','2018-09-02 22:23:27','2018-09-03 01:23:27','','60','http://localhost/portalseguranca//?post_type=acf-field&#038;p=70','8','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('71','1','2018-09-02 22:00:09','2018-09-03 01:00:09','a:7:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;}','Aparecer como destaque','aparecer_como_destaque','publish','closed','closed','','field_5b8c8756b162c','','','2018-09-02 22:23:27','2018-09-03 01:23:27','','60','http://localhost/portalseguranca//?post_type=acf-field&#038;p=71','9','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('72','1','2018-09-02 22:11:55','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 22:11:55','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=72','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('73','1','2018-09-02 22:22:24','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 22:22:24','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=73','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('74','1','2018-09-02 22:22:53','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 22:22:53','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=74','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('75','1','2018-09-02 22:23:40','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 22:23:40','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=75','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('76','1','2018-09-02 22:32:59','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 22:32:59','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=acf-field-group&p=76','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('77','1','2018-09-02 22:42:09','2018-09-03 01:42:09','a:6:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-perfis\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:15:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:14:\"featured_image\";i:12;s:10:\"categories\";i:13;s:4:\"tags\";i:14;s:15:\"send-trackbacks\";}}','Cadastrar Perfil','cadastrar-perfil','trash','closed','closed','','group_5b8c9132aa656__trashed','','','2018-09-02 23:17:02','2018-09-03 02:17:02','','0','http://localhost/portalseguranca//?post_type=acf-field-group&#038;p=77','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('80','1','2018-09-02 22:45:41','2018-09-03 01:45:41','a:9:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:16:\"Adicionar perfil\";}','Perfis da Aplicação','perfis_da_aplicação','trash','closed','closed','','field_5b8c922e30fac__trashed','','','2018-09-02 23:17:02','2018-09-03 02:17:02','','77','http://localhost/portalseguranca//?post_type=acf-field&#038;p=80','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('81','1','2018-09-02 22:45:41','2018-09-03 01:45:41','a:8:{s:4:\"type\";s:4:\"user\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"role\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;}','Tipo de perfil','perfil','publish','closed','closed','','field_5b8c923d30fad','','','2018-09-02 23:16:10','2018-09-03 02:16:10','','80','http://localhost/portalseguranca//?post_type=acf-field&#038;p=81','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('82','1','2018-09-02 23:07:10','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 23:07:10','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=82','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('83','1','2018-09-02 23:18:46','2018-09-03 02:18:46','a:6:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-perfis\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:15:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:14:\"featured_image\";i:12;s:10:\"categories\";i:13;s:4:\"tags\";i:14;s:15:\"send-trackbacks\";}}','Cadastrar Perfil','cadastrar-perfil','publish','closed','closed','','group_5b8c99a1c2b21','','','2018-09-02 23:18:46','2018-09-03 02:18:46','','0','http://localhost/portalseguranca//?post_type=acf-field-group&#038;p=83','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('84','1','2018-09-02 23:18:46','2018-09-03 02:18:46','a:9:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:14:\"Adicionar novo\";}','Perfis da Aplicação','perfis_da_aplicação','publish','closed','closed','','field_5b8c99b179eb6','','','2018-09-02 23:18:46','2018-09-03 02:18:46','','83','http://localhost/portalseguranca//?post_type=acf-field&p=84','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('85','1','2018-09-02 23:18:46','2018-09-03 02:18:46','a:5:{s:4:\"type\";s:9:\"unique_id\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}}','ID','id','publish','closed','closed','','field_5b8c99d479eb7','','','2018-09-02 23:18:46','2018-09-03 02:18:46','','84','http://localhost/portalseguranca//?post_type=acf-field&p=85','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('86','1','2018-09-02 23:18:46','2018-09-03 02:18:46','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Tipo de Perfil','tipo_de_perfil','publish','closed','closed','','field_5b8c99e379eb8','','','2018-09-02 23:18:46','2018-09-03 02:18:46','','84','http://localhost/portalseguranca//?post_type=acf-field&p=86','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('87','1','2018-09-02 23:23:11','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 23:23:11','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=87','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('88','1','2018-09-02 23:52:19','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 23:52:19','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=88','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('89','1','2018-09-02 23:53:21','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 23:53:21','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=89','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('90','1','2018-09-02 23:53:41','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 23:53:41','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=90','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('91','1','2018-09-02 23:53:56','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 23:53:56','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=91','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('92','1','2018-09-02 23:54:54','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-02 23:54:54','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=92','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('93','1','2018-09-02 23:55:27','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2018-09-02 23:55:27','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?p=93','0','post','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('94','1','2018-09-02 23:57:25','2018-09-03 02:57:25','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:8:{i:0;s:13:\"custom_fields\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:6:\"author\";i:5;s:6:\"format\";i:6;s:15:\"page_attributes\";i:7;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Notícias','noticias','publish','closed','closed','','group_5b8ca2b10b546','','','2018-09-03 00:13:07','2018-09-03 03:13:07','','0','http://localhost/portalseguranca//?post_type=acf-field-group&#038;p=94','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('95','1','2018-09-02 23:57:25','2018-09-03 02:57:25','a:7:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;}','Restrito para visualizar?','restrito_para_visualizar','publish','closed','closed','','field_5b8ca2b86b470','','','2018-09-02 23:57:25','2018-09-03 02:57:25','','94','http://localhost/portalseguranca//?post_type=acf-field&p=95','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('96','1','2018-09-02 23:57:25','2018-09-03 02:57:25','a:14:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Ordem','ordem','publish','closed','closed','','field_5b8ca2cb6b471','','','2018-09-02 23:57:25','2018-09-03 02:57:25','','94','http://localhost/portalseguranca//?post_type=acf-field&p=96','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('97','1','2018-09-02 23:57:29','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2018-09-02 23:57:29','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?p=97','0','post','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('98','1','2018-09-02 23:59:41','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2018-09-02 23:59:41','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?p=98','0','post','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('99','1','2018-09-03 00:02:17','2018-09-03 03:02:17','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"jornais\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Jornais','jornais','publish','closed','closed','','group_5b8ca3ab5ef8b','','','2018-09-03 00:11:01','2018-09-03 03:11:01','','0','http://localhost/portalseguranca//?post_type=acf-field-group&#038;p=99','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('100','1','2018-09-03 00:02:17','2018-09-03 03:02:17','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Edi;áo','edi;ao','publish','closed','closed','','field_5b8ca3cd87a6c','','','2018-09-03 00:02:17','2018-09-03 03:02:17','','99','http://localhost/portalseguranca//?post_type=acf-field&p=100','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('101','1','2018-09-03 00:02:17','2018-09-03 03:02:17','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}','Data da Edição','data_da_edição','publish','closed','closed','','field_5b8ca3d487a6d','','','2018-09-03 00:11:01','2018-09-03 03:11:01','','99','http://localhost/portalseguranca//?post_type=acf-field&#038;p=101','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('102','1','2018-09-03 00:02:17','2018-09-03 03:02:17','a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:10:\"uploadedTo\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:3:\"pdf\";}','Arquivo PDF','arquivo_pdf','publish','closed','closed','','field_5b8ca3fb87a6e','','','2018-09-03 00:02:17','2018-09-03 03:02:17','','99','http://localhost/portalseguranca//?post_type=acf-field&p=102','2','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('103','1','2018-09-03 00:02:17','2018-09-03 03:02:17','a:7:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;}','Ativo','ativo','publish','closed','closed','','field_5b8ca40c87a6f','','','2018-09-03 00:02:17','2018-09-03 03:02:17','','99','http://localhost/portalseguranca//?post_type=acf-field&p=103','3','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('104','1','2018-09-03 00:03:03','2018-09-03 03:03:03','a:7:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;}','Ativo','ativo','publish','closed','closed','','field_5b8ca459f0abb','','','2018-09-03 00:03:03','2018-09-03 03:03:03','','94','http://localhost/portalseguranca//?post_type=acf-field&p=104','2','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('105','1','2018-09-03 00:03:13','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 00:03:13','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=jornais&p=105','0','jornais','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('106','1','2018-09-03 00:11:11','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 00:11:11','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=jornais&p=106','0','jornais','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('107','1','2018-09-03 00:11:37','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 00:11:37','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=107','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('108','1','2018-09-03 00:12:13','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 00:12:13','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=108','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('109','1','2018-09-03 00:13:12','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2018-09-03 00:13:12','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?p=109','0','post','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('110','1','2018-09-03 00:18:07','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 00:18:07','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=110','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('111','1','2018-09-03 00:18:19','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 00:18:19','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=videos&p=111','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('112','1','2018-09-03 00:23:28','2018-09-03 03:23:28','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:37:\"acf-options-ramo-de-atividade-usuario\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:15:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:14:\"featured_image\";i:12;s:10:\"categories\";i:13;s:4:\"tags\";i:14;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Ramo de Atividade - Usuário','ramo-de-atividade-usuario','trash','closed','closed','','group_5b8ca9305d2f4__trashed','','','2018-09-04 17:06:26','2018-09-04 20:06:26','','0','http://localhost/portalseguranca//?post_type=acf-field-group&#038;p=112','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('113','1','2018-09-03 00:23:28','2018-09-03 03:23:28','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:14:\"Adicionar novo\";}','Ramo de Atividade Usuário','ramo_de_atividade_usuario','trash','closed','closed','','field_5b8ca93069176__trashed','','','2018-09-04 17:06:26','2018-09-04 20:06:26','','112','http://localhost/portalseguranca//?post_type=acf-field&#038;p=113','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('114','1','2018-09-03 00:23:28','2018-09-03 03:23:28','a:5:{s:4:\"type\";s:9:\"unique_id\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}}','ID','id','publish','closed','closed','','field_5b8ca9306df94','','','2018-09-03 00:23:28','2018-09-03 03:23:28','','113','http://localhost/portalseguranca//?post_type=acf-field&p=114','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('115','1','2018-09-03 00:23:28','2018-09-03 03:23:28','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Ramo Usuário','ramo_usuario','publish','closed','closed','','field_5b8ca9306e36d','','','2018-09-03 00:26:13','2018-09-03 03:26:13','','113','http://localhost/portalseguranca//?post_type=acf-field&#038;p=115','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('116','1','2018-09-03 00:23:32','2018-09-03 03:23:32','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:40:\"acf-options-ramo-de-atividade-fornecedor\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:15:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:14:\"featured_image\";i:12;s:10:\"categories\";i:13;s:4:\"tags\";i:14;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Ramo de Atividade - Fornecedor','ramo-de-atividade-fornecedor','trash','closed','closed','','group_5b8ca934a7842__trashed','','','2018-09-04 17:06:26','2018-09-04 20:06:26','','0','http://localhost/portalseguranca//?post_type=acf-field-group&#038;p=116','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('117','1','2018-09-03 00:23:32','2018-09-03 03:23:32','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:14:\"Adicionar novo\";}','Ramo de Atividade Fornecedor','ramo_de_atividade_fornecedor','trash','closed','closed','','field_5b8ca934b4499__trashed','','','2018-09-04 17:06:26','2018-09-04 20:06:26','','116','http://localhost/portalseguranca//?post_type=acf-field&#038;p=117','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('118','1','2018-09-03 00:23:32','2018-09-03 03:23:32','a:5:{s:4:\"type\";s:9:\"unique_id\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}}','ID','id','publish','closed','closed','','field_5b8ca934b99f7','','','2018-09-03 00:23:32','2018-09-03 03:23:32','','117','http://localhost/portalseguranca//?post_type=acf-field&p=118','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('119','1','2018-09-03 00:23:32','2018-09-03 03:23:32','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Ramo Fornecedor','ramo_fornecedor','publish','closed','closed','','field_5b8ca934b9dc8','','','2018-09-03 00:26:23','2018-09-03 03:26:23','','117','http://localhost/portalseguranca//?post_type=acf-field&#038;p=119','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('120','1','2018-09-03 00:23:36','2018-09-03 03:23:36','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-cargos\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Cargos','cargos','trash','closed','closed','','group_5b8ca93880ddc__trashed','','','2018-09-04 17:00:50','2018-09-04 20:00:50','','0','http://localhost/portalseguranca//?post_type=acf-field-group&#038;p=120','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('121','1','2018-09-03 00:23:36','2018-09-03 03:23:36','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:14:\"Adicionar novo\";}','Cargos','cargos','trash','closed','closed','','field_5b8ca9388d5aa__trashed','','','2018-09-04 17:00:50','2018-09-04 20:00:50','','120','http://localhost/portalseguranca//?post_type=acf-field&#038;p=121','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('122','1','2018-09-03 00:23:36','2018-09-03 03:23:36','a:5:{s:4:\"type\";s:9:\"unique_id\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}}','ID','id','publish','closed','closed','','field_5b8ca938927c8','','','2018-09-03 00:23:36','2018-09-03 03:23:36','','121','http://localhost/portalseguranca//?post_type=acf-field&p=122','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('123','1','2018-09-03 00:23:36','2018-09-03 03:23:36','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Cargo','title','publish','closed','closed','','field_5b8ca93892ba0','','','2018-09-04 16:55:53','2018-09-04 19:55:53','','121','http://localhost/portalseguranca//?post_type=acf-field&#038;p=123','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('124','1','2018-09-03 00:23:40','2018-09-03 03:23:40','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"acf-options-operadoras-de-telefonia\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:15:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:14:\"featured_image\";i:12;s:10:\"categories\";i:13;s:4:\"tags\";i:14;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Operadoras de Telefonia','operadoras-de-telefonia','trash','closed','closed','','group_5b8ca93c57dbe__trashed','','','2018-09-04 17:06:26','2018-09-04 20:06:26','','0','http://localhost/portalseguranca//?post_type=acf-field-group&#038;p=124','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('125','1','2018-09-03 00:23:40','2018-09-03 03:23:40','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:14:\"Adicionar novo\";}','Operadoras de Telefonia','operadoras_de_telefonia','trash','closed','closed','','field_5b8ca93c67a9d__trashed','','','2018-09-04 17:06:26','2018-09-04 20:06:26','','124','http://localhost/portalseguranca//?post_type=acf-field&#038;p=125','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('126','1','2018-09-03 00:23:40','2018-09-03 03:23:40','a:5:{s:4:\"type\";s:9:\"unique_id\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}}','ID','id','publish','closed','closed','','field_5b8ca93c72dcf','','','2018-09-03 00:23:40','2018-09-03 03:23:40','','125','http://localhost/portalseguranca//?post_type=acf-field&p=126','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('127','1','2018-09-03 00:23:40','2018-09-03 03:23:40','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Operadora','operadora','publish','closed','closed','','field_5b8ca93c731b9','','','2018-09-03 00:26:43','2018-09-03 03:26:43','','125','http://localhost/portalseguranca//?post_type=acf-field&#038;p=127','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('128','1','2018-09-03 00:44:54','2018-09-03 03:44:54','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"banners\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Banners','banners','publish','closed','closed','','group_5b8caddc04900','','','2018-09-03 00:46:10','2018-09-03 03:46:10','','0','http://localhost/portalseguranca//?post_type=acf-field-group&#038;p=128','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('129','1','2018-09-03 00:44:54','2018-09-03 03:44:54','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Ordem','ordem','publish','closed','closed','','field_5b8caddf97aa7','','','2018-09-03 00:44:54','2018-09-03 03:44:54','','128','http://localhost/portalseguranca//?post_type=acf-field&p=129','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('130','1','2018-09-03 00:44:54','2018-09-03 03:44:54','a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}','Ativo','ativo','publish','closed','closed','','field_5b8caded97aa8','','','2018-09-03 00:46:10','2018-09-03 03:46:10','','128','http://localhost/portalseguranca//?post_type=acf-field&#038;p=130','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('131','1','2018-09-03 00:44:54','2018-09-03 03:44:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','URL Externa','url_externa','publish','closed','closed','','field_5b8cae0097aa9','','','2018-09-03 00:44:54','2018-09-03 03:44:54','','128','http://localhost/portalseguranca//?post_type=acf-field&p=131','2','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('132','1','2018-09-03 00:44:54','2018-09-03 03:44:54','a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}','Aparecer Loja','aparecer_loja','publish','closed','closed','','field_5b8cae0797aaa','','','2018-09-03 00:45:58','2018-09-03 03:45:58','','128','http://localhost/portalseguranca//?post_type=acf-field&#038;p=132','3','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('133','1','2018-09-03 00:45:29','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 00:45:29','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=banners&p=133','0','banners','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('134','1','2018-09-03 00:48:48','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 00:48:48','0000-00-00 00:00:00','','0','http://localhost/portalseguranca//?post_type=acf-field-group&p=134','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('135','1','2018-09-03 14:29:32','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 14:29:32','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=jornais&p=135','0','jornais','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('136','1','2018-09-03 14:29:46','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 14:29:46','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=videos&p=136','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('137','1','2018-09-03 14:30:44','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 14:30:44','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=videos&p=137','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('138','1','2018-09-03 14:37:24','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 14:37:24','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=videos&p=138','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('139','1','2018-09-03 14:58:02','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 14:58:02','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=videos&p=139','0','videos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('140','1','2018-09-03 14:58:28','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-03 14:58:28','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=jornais&p=140','0','jornais','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('142','1','2018-09-04 16:21:29','2018-09-04 19:21:29','<p>This is the WPForms preview page. All your form previews will be handled on this page.</p><p>The page is set to private, so it is not publicly accessible. Please do not delete this page :) .</p>','WPForms Preview','','private','closed','closed','','wpforms-preview','','','2018-09-04 16:21:29','2018-09-04 19:21:29','','0','http://localhost/portalseguranca/wpforms-preview/','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('151','1','2018-09-04 17:20:03','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-04 17:20:03','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=cargos&p=151','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('152','1','2018-09-04 17:29:08','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-04 17:29:08','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=cargos&p=152','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('153','1','2018-09-04 17:34:18','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-04 17:34:18','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=cargos&p=153','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('157','1','2018-09-04 17:47:03','2018-09-04 20:47:03','','ADESTRADOR','','publish','closed','closed','','adestrador','','','2018-09-04 17:47:03','2018-09-04 20:47:03','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=157','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('158','1','2018-09-04 17:47:18','2018-09-04 20:47:18','','ANALISTA FINANCEIRO','','publish','closed','closed','','analista-financeiro','','','2018-09-04 17:47:18','2018-09-04 20:47:18','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=158','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('159','1','2018-09-04 17:47:24','2018-09-04 20:47:24','','ANALISTA RH','','publish','closed','closed','','analista-rh','','','2018-09-04 17:47:24','2018-09-04 20:47:24','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=159','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('160','1','2018-09-04 17:47:35','2018-09-04 20:47:35','','ASSISTENTE RH','','publish','closed','closed','','assistente-rh','','','2018-09-04 17:47:35','2018-09-04 20:47:35','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=160','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('161','1','2018-09-04 17:47:42','2018-09-04 20:47:42','','AUXILIAR ADMINISTRATIVO','','publish','closed','closed','','auxiliar-administrativo','','','2018-09-04 17:47:42','2018-09-04 20:47:42','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=161','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('162','1','2018-09-04 17:47:55','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-04 17:47:55','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=cargos&p=162','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('163','1','2018-09-04 17:50:28','2018-09-04 20:50:28','','COMERCIAL','','publish','closed','closed','','comercial','','','2018-09-04 17:50:28','2018-09-04 20:50:28','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=163','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('164','1','2018-09-04 17:50:36','2018-09-04 20:50:36','','CONSULTOR (A)','','publish','closed','closed','','consultor-a','','','2018-09-04 17:50:36','2018-09-04 20:50:36','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=164','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('165','1','2018-09-04 17:50:42','2018-09-04 20:50:42','','CONTROLADOR DE ACESSO','','publish','closed','closed','','controlador-de-acesso','','','2018-09-04 17:50:42','2018-09-04 20:50:42','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=165','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('166','1','2018-09-04 17:50:49','2018-09-04 20:50:49','','DIRETOR','','publish','closed','closed','','diretor','','','2018-09-04 17:50:49','2018-09-04 20:50:49','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=166','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('167','1','2018-09-04 17:50:54','2018-09-04 20:50:54','','DIRETOR (A) RH','','publish','closed','closed','','diretor-a-rh','','','2018-09-04 17:50:54','2018-09-04 20:50:54','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=167','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('168','1','2018-09-04 17:51:01','2018-09-04 20:51:01','','ENGENHEIRO','','publish','closed','closed','','engenheiro','','','2018-09-04 17:51:01','2018-09-04 20:51:01','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=168','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('169','1','2018-09-04 17:51:12','2018-09-04 20:51:12','','GERENTE COMERCIAL','','publish','closed','closed','','gerente-comercial','','','2018-09-04 17:51:12','2018-09-04 20:51:12','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=169','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('170','1','2018-09-04 17:51:28','2018-09-04 20:51:28','','GERENTE DE OPERAÇÕES','','publish','closed','closed','','gerente-de-operacoes','','','2018-09-04 17:51:28','2018-09-04 20:51:28','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=170','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('171','1','2018-09-04 17:51:35','2018-09-04 20:51:35','','GERENTE DE PROJETOS','','publish','closed','closed','','gerente-de-projetos','','','2018-09-04 17:51:35','2018-09-04 20:51:35','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=171','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('172','1','2018-09-04 17:51:41','2018-09-04 20:51:41','','GERENTE FINANCEIRO','','publish','closed','closed','','gerente-financeiro','','','2018-09-04 17:51:41','2018-09-04 20:51:41','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=172','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('173','1','2018-09-04 17:51:48','2018-09-04 20:51:48','','GERENTE GERAL','','publish','closed','closed','','gerente-geral','','','2018-09-04 17:51:48','2018-09-04 20:51:48','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=173','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('174','1','2018-09-04 17:51:53','2018-09-04 20:51:53','','GERENTE RH','','publish','closed','closed','','gerente-rh','','','2018-09-04 17:51:53','2018-09-04 20:51:53','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=174','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('175','1','2018-09-04 17:51:59','2018-09-04 20:51:59','','GESTOR DE SEGURANÇA','','publish','closed','closed','','gestor-de-seguranca','','','2018-09-04 17:51:59','2018-09-04 20:51:59','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=175','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('176','1','2018-09-04 17:52:21','2018-09-04 20:52:21','','GESTOR FINANCEIRO','','publish','closed','closed','','gestor-financeiro','','','2018-09-04 17:52:21','2018-09-04 20:52:21','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=176','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('177','1','2018-09-04 17:52:30','2018-09-04 20:52:30','','OPERADOR DE MONITORAMENTO','','publish','closed','closed','','operador-de-monitoramento','','','2018-09-04 17:52:30','2018-09-04 20:52:30','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=177','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('178','1','2018-09-04 17:52:38','2018-09-04 20:52:38','','OUTROS','','publish','closed','closed','','outros','','','2018-09-04 17:52:38','2018-09-04 20:52:38','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=178','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('179','1','2018-09-04 17:52:43','2018-09-04 20:52:43','','PRESIDENTE','','publish','closed','closed','','presidente','','','2018-09-04 17:52:43','2018-09-04 20:52:43','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=179','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('180','1','2018-09-04 17:52:50','2018-09-04 20:52:50','','RECEPCIONISTA','','publish','closed','closed','','recepcionista','','','2018-09-04 17:52:50','2018-09-04 20:52:50','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=180','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('181','1','2018-09-04 17:52:56','2018-09-04 20:52:56','','SECRETARIA (O)','','publish','closed','closed','','secretaria-o','','','2018-09-04 17:52:56','2018-09-04 20:52:56','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=181','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('182','1','2018-09-04 17:54:16','2018-09-04 20:54:16','','SERVIÇOS GERAIS','','publish','closed','closed','','servicos-gerais','','','2018-09-04 17:54:16','2018-09-04 20:54:16','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=182','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('183','1','2018-09-04 17:56:28','2018-09-04 20:56:28','','SUPERVISOR','','publish','closed','closed','','supervisor','','','2018-09-04 17:56:28','2018-09-04 20:56:28','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=183','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('184','1','2018-09-04 17:56:33','2018-09-04 20:56:33','','TECNICO','','publish','closed','closed','','tecnico','','','2018-09-04 17:56:33','2018-09-04 20:56:33','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=184','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('185','1','2018-09-04 17:56:40','2018-09-04 20:56:40','','VIGILANTE','','publish','closed','closed','','vigilante','','','2018-09-04 17:56:40','2018-09-04 20:56:40','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=185','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('186','1','2018-09-04 17:56:46','2018-09-04 20:56:46','','VIGILANTE OPERADOR DE MONITORAMENTO','','publish','closed','closed','','vigilante-operador-de-monitoramento','','','2018-09-04 17:56:46','2018-09-04 20:56:46','','0','http://localhost/portalseguranca/?post_type=cargos&#038;p=186','0','cargos','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('188','1','2018-09-04 19:18:29','2018-09-04 22:18:29','','America Net','','publish','closed','closed','','america-net','','','2018-09-04 19:18:29','2018-09-04 22:18:29','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=188','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('189','1','2018-09-04 19:18:49','2018-09-04 22:18:49','','Claro','','publish','closed','closed','','claro','','','2018-09-04 19:18:49','2018-09-04 22:18:49','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=189','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('190','1','2018-09-04 19:19:03','2018-09-04 22:19:03','','Embratel','','publish','closed','closed','','embratel','','','2018-09-04 19:19:03','2018-09-04 22:19:03','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=190','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('191','1','2018-09-04 19:19:10','2018-09-04 22:19:10','','NET','','publish','closed','closed','','net','','','2018-09-04 19:19:10','2018-09-04 22:19:10','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=191','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('192','1','2018-09-04 19:19:18','2018-09-04 22:19:18','','NEXTEL','','publish','closed','closed','','nextel','','','2018-09-04 19:19:18','2018-09-04 22:19:18','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=192','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('193','1','2018-09-04 19:19:28','2018-09-04 22:19:28','','Oi','','publish','closed','closed','','oi','','','2018-09-04 19:19:28','2018-09-04 22:19:28','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=193','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('194','1','2018-09-04 19:19:37','2018-09-04 22:19:37','','Oi Fixo','','publish','closed','closed','','oi-fixo','','','2018-09-04 19:19:37','2018-09-04 22:19:37','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=194','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('195','1','2018-09-04 19:19:43','0000-00-00 00:00:00','','Outros','','draft','closed','closed','','','','','2018-09-04 19:19:43','2018-09-04 22:19:43','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=195','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('196','1','2018-09-04 19:19:50','2018-09-04 22:19:50','','Tesa','','publish','closed','closed','','tesa','','','2018-09-04 19:19:50','2018-09-04 22:19:50','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=196','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('197','1','2018-09-04 19:19:58','2018-09-04 22:19:58','','TIM','','publish','closed','closed','','tim','','','2018-09-04 19:19:58','2018-09-04 22:19:58','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=197','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('198','1','2018-09-04 19:20:13','2018-09-04 22:20:13','','TIM Fixo','','publish','closed','closed','','tim-fixo','','','2018-09-04 19:20:13','2018-09-04 22:20:13','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=198','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('199','1','2018-09-04 19:20:24','2018-09-04 22:20:24','','Vivo','','publish','closed','closed','','vivo','','','2018-09-04 19:20:24','2018-09-04 22:20:24','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=199','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('200','1','2018-09-04 19:20:34','2018-09-04 22:20:34','','Vivo Fixo','','publish','closed','closed','','vivo-fixo','','','2018-09-04 19:20:34','2018-09-04 22:20:34','','0','http://localhost/portalseguranca/?post_type=operadoras&#038;p=200','0','operadoras','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('201','1','2018-09-04 19:22:14','0000-00-00 00:00:00','','ADVOCACIA','','draft','closed','closed','','','','','2018-09-04 19:22:14','2018-09-04 22:22:14','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=201','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('202','1','2018-09-04 19:22:21','0000-00-00 00:00:00','','ALAMBRADO','','draft','closed','closed','','','','','2018-09-04 19:22:21','2018-09-04 22:22:21','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=202','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('203','1','2018-09-04 19:22:28','0000-00-00 00:00:00','','ALARMES','','draft','closed','closed','','','','','2018-09-04 19:22:28','2018-09-04 22:22:28','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=203','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('204','1','2018-09-04 19:22:47','0000-00-00 00:00:00','','ARQUITETURA DE SEGURANÇA','','draft','closed','closed','','','','','2018-09-04 19:22:47','2018-09-04 22:22:47','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=204','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('205','1','2018-09-04 19:23:10','2018-09-04 22:23:10','','AUTOMAÇÃO','','publish','closed','closed','','automacao','','','2018-09-04 19:23:10','2018-09-04 22:23:10','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=205','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('206','1','2018-09-04 19:23:23','0000-00-00 00:00:00','','BOMBEIRO CIVIL','','draft','closed','closed','','','','','2018-09-04 19:23:23','2018-09-04 22:23:23','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=206','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('207','1','2018-09-04 19:23:30','0000-00-00 00:00:00','','CADEADOS','','draft','closed','closed','','','','','2018-09-04 19:23:30','2018-09-04 22:23:30','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=207','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('208','1','2018-09-04 19:23:36','0000-00-00 00:00:00','','CAMERAS','','draft','closed','closed','','','','','2018-09-04 19:23:36','2018-09-04 22:23:36','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=208','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('209','1','2018-09-04 19:23:42','0000-00-00 00:00:00','','CANIL','','draft','closed','closed','','','','','2018-09-04 19:23:42','2018-09-04 22:23:42','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=209','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('210','1','2018-09-04 19:23:51','0000-00-00 00:00:00','','CERCA ELETRICA','','draft','closed','closed','','','','','2018-09-04 19:23:51','2018-09-04 22:23:51','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=210','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('211','1','2018-09-04 19:23:58','0000-00-00 00:00:00','','CONCERTINA','','draft','closed','closed','','','','','2018-09-04 19:23:58','2018-09-04 22:23:58','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=211','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('212','1','2018-09-04 19:24:08','0000-00-00 00:00:00','','CONSULTORIA / ASSESSORIA','','draft','closed','closed','','','','','2018-09-04 19:24:08','2018-09-04 22:24:08','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=212','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('213','1','2018-09-04 19:24:16','0000-00-00 00:00:00','','CONTABILIDADE','','draft','closed','closed','','','','','2018-09-04 19:24:16','2018-09-04 22:24:16','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=213','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('214','1','2018-09-04 19:24:24','0000-00-00 00:00:00','','CONTROLE DE ACESSO','','draft','closed','closed','','','','','2018-09-04 19:24:24','2018-09-04 22:24:24','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=214','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('215','1','2018-09-04 19:24:34','0000-00-00 00:00:00','','CONTROLE DE CHAVES','','draft','closed','closed','','','','','2018-09-04 19:24:34','2018-09-04 22:24:34','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=215','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('216','1','2018-09-04 19:24:42','0000-00-00 00:00:00','','CONTROLE DE RONDAS','','draft','closed','closed','','','','','2018-09-04 19:24:42','2018-09-04 22:24:42','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=216','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('217','1','2018-09-04 19:25:07','2018-09-04 22:25:07','','CURSO DE SEGURANÇA ELETRÔNICA','','publish','closed','closed','','curso-de-seguranca-eletronica','','','2018-09-04 19:25:07','2018-09-04 22:25:07','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=217','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('218','1','2018-09-04 19:25:19','0000-00-00 00:00:00','','DESENVOLVIMENTO DE SISTEMAS','','draft','closed','closed','','','','','2018-09-04 19:25:19','2018-09-04 22:25:19','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=218','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('219','1','2018-09-04 19:36:03','2018-09-04 22:36:03','','DISCO RIGIDO','','publish','closed','closed','','disco-rigido','','','2018-09-04 19:36:03','2018-09-04 22:36:03','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=219','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('220','1','2018-09-04 19:25:37','0000-00-00 00:00:00','','DRONES','','draft','closed','closed','','','','','2018-09-04 19:25:37','2018-09-04 22:25:37','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=220','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('221','1','2018-09-04 19:30:19','0000-00-00 00:00:00','','ESCOLTA ARMADA','','draft','closed','closed','','','','','2018-09-04 19:30:19','2018-09-04 22:30:19','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=221','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('222','1','2018-09-04 19:30:27','0000-00-00 00:00:00','','FABRICANTE','','draft','closed','closed','','','','','2018-09-04 19:30:27','2018-09-04 22:30:27','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=222','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('223','1','2018-09-04 19:30:36','0000-00-00 00:00:00','','FACULDADE','','draft','closed','closed','','','','','2018-09-04 19:30:36','2018-09-04 22:30:36','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=223','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('224','1','2018-09-04 19:30:43','0000-00-00 00:00:00','','FECHADURAS','','draft','closed','closed','','','','','2018-09-04 19:30:43','2018-09-04 22:30:43','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=224','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('225','1','2018-09-04 19:31:03','2018-09-04 22:31:03','','FECHADURAS ELETROMAGNÉTICAS','','publish','closed','closed','','fechaduras-eletromagneticas','','','2018-09-04 19:31:03','2018-09-04 22:31:03','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=225','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('226','1','2018-09-04 19:31:14','2018-09-04 22:31:14','','FONTES DE ALIMENTAÇÃO','','publish','closed','closed','','fontes-de-alimentacao','','','2018-09-04 19:31:14','2018-09-04 22:31:14','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=226','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('227','1','2018-09-04 19:31:21','2018-09-04 22:31:21','','FORMAÇÃO DE VIGILANTES','','publish','closed','closed','','formacao-de-vigilantes','','','2018-09-04 19:31:21','2018-09-04 22:31:21','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=227','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('228','1','2018-09-04 19:31:28','2018-09-04 22:31:28','','GERADOR','','publish','closed','closed','','gerador','','','2018-09-04 19:31:28','2018-09-04 22:31:28','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=228','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('229','1','2018-09-04 19:31:36','2018-09-04 22:31:36','','GERADOR DE NEBLINA','','publish','closed','closed','','gerador-de-neblina','','','2018-09-04 19:31:36','2018-09-04 22:31:36','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=229','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('230','1','2018-09-04 19:31:44','2018-09-04 22:31:44','','GUARITAS','','publish','closed','closed','','guaritas','','','2018-09-04 19:31:44','2018-09-04 22:31:44','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=230','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('231','1','2018-09-04 19:31:52','2018-09-04 22:31:52','','INDÚSTRIA DE EQUIP. DE SEG','','publish','closed','closed','','industria-de-equip-de-seg','','','2018-09-04 19:31:52','2018-09-04 22:31:52','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=231','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('232','1','2018-09-04 19:31:59','2018-09-04 22:31:59','','INSTALADOR','','publish','closed','closed','','instalador','','','2018-09-04 19:31:59','2018-09-04 22:31:59','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=232','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('233','1','2018-09-04 19:32:10','2018-09-04 22:32:10','','INTEGRADOR','','publish','closed','closed','','integrador','','','2018-09-04 19:32:10','2018-09-04 22:32:10','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=233','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('234','1','2018-09-04 19:32:18','2018-09-04 22:32:18','','INVESTIGAÇÃO','','publish','closed','closed','','investigacao','','','2018-09-04 19:32:18','2018-09-04 22:32:18','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=234','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('235','1','2018-09-04 19:32:26','2018-09-04 22:32:26','','LIMPEZA','','publish','closed','closed','','limpeza','','','2018-09-04 19:32:26','2018-09-04 22:32:26','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=235','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('236','1','2018-09-04 19:32:33','2018-09-04 22:32:33','','MANUTENÇÃO','','publish','closed','closed','','manutencao','','','2018-09-04 19:32:33','2018-09-04 22:32:33','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=236','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('237','1','2018-09-04 19:32:41','2018-09-04 22:32:41','','MONITORAMENTO','','publish','closed','closed','','monitoramento','','','2018-09-04 19:32:41','2018-09-04 22:32:41','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=237','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('238','1','2018-09-04 19:32:54','2018-09-04 22:32:54','','OUTROS...','','publish','closed','closed','','outros','','','2018-09-04 19:32:54','2018-09-04 22:32:54','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=238','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('239','1','2018-09-04 19:33:03','2018-09-04 22:33:03','','PORTARIA','','publish','closed','closed','','portaria','','','2018-09-04 19:33:03','2018-09-04 22:33:03','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=239','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('240','1','2018-09-04 19:33:09','2018-09-04 22:33:09','','PORTARIA REMOTA/VIRTUAL','','publish','closed','closed','','portaria-remota-virtual','','','2018-09-04 19:33:09','2018-09-04 22:33:09','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=240','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('241','1','2018-09-04 19:33:17','2018-09-04 22:33:17','','PROFESSOR/INSTRUTOR','','publish','closed','closed','','professor-instrutor','','','2018-09-04 19:33:17','2018-09-04 22:33:17','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=241','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('242','1','2018-09-04 19:33:25','2018-09-04 22:33:25','','PROTEÇÃO PERÍMETRAL','','publish','closed','closed','','protecao-perimetral','','','2018-09-04 19:33:25','2018-09-04 22:33:25','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=242','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('243','1','2018-09-04 19:33:32','2018-09-04 22:33:32','','RADIOCOMUNICAÇÃO','','publish','closed','closed','','radiocomunicacao','','','2018-09-04 19:33:32','2018-09-04 22:33:32','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=243','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('244','1','2018-09-04 19:33:40','2018-09-04 22:33:40','','RASTREAMENTO','','publish','closed','closed','','rastreamento','','','2018-09-04 19:33:40','2018-09-04 22:33:40','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=244','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('245','1','2018-09-04 19:33:46','2018-09-04 22:33:46','','RECRUTAMENTO E SELEÇÃO','','publish','closed','closed','','recrutamento-e-selecao','','','2018-09-04 19:33:46','2018-09-04 22:33:46','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=245','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('246','1','2018-09-04 19:33:54','2018-09-04 22:33:54','','SEGURANÇA ARMADA','','publish','closed','closed','','seguranca-armada','','','2018-09-04 19:33:54','2018-09-04 22:33:54','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=246','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('247','1','2018-09-04 19:34:02','2018-09-04 22:34:02','','SEGURANÇA DE INFORMAÇÕES','','publish','closed','closed','','seguranca-de-informacoes','','','2018-09-04 19:34:02','2018-09-04 22:34:02','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=247','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('248','1','2018-09-04 19:34:09','2018-09-04 22:34:09','','SEGURANÇA EXECUTIVA','','publish','closed','closed','','seguranca-executiva','','','2018-09-04 19:34:09','2018-09-04 22:34:09','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=248','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('249','1','2018-09-04 19:34:16','2018-09-04 22:34:16','','SEGURANÇA PERIMETRAL','','publish','closed','closed','','seguranca-perimetral','','','2018-09-04 19:34:16','2018-09-04 22:34:16','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=249','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('250','1','2018-09-04 19:34:24','2018-09-04 22:34:24','','SOFTWARE','','publish','closed','closed','','software','','','2018-09-04 19:34:24','2018-09-04 22:34:24','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=250','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('251','1','2018-09-04 19:34:32','2018-09-04 22:34:32','','SOFTWARE DE GESTÃO','','publish','closed','closed','','software-de-gestao','','','2018-09-04 19:34:32','2018-09-04 22:34:32','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=251','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('252','1','2018-09-04 19:34:40','2018-09-04 22:34:40','','TECNOLOGIA','','publish','closed','closed','','tecnologia','','','2018-09-04 19:34:40','2018-09-04 22:34:40','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=252','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('253','1','2018-09-04 19:34:46','2018-09-04 22:34:46','','TORRE DE ILUMINAÇÃO','','publish','closed','closed','','torre-de-iluminacao','','','2018-09-04 19:34:46','2018-09-04 22:34:46','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=253','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('254','1','2018-09-04 19:34:54','2018-09-04 22:34:54','','TRANSFORMADOR PARA CFTV','','publish','closed','closed','','transformador-para-cftv','','','2018-09-04 19:34:54','2018-09-04 22:34:54','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=254','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('255','1','2018-09-04 19:35:03','2018-09-04 22:35:03','','TRANSPORTE DE VALORES','','publish','closed','closed','','transporte-de-valores','','','2018-09-04 19:35:03','2018-09-04 22:35:03','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=255','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('256','1','2018-09-04 19:35:09','2018-09-04 22:35:09','','VEÍCULOS ELÉTRICOS','','publish','closed','closed','','veiculos-eletricos','','','2018-09-04 19:35:09','2018-09-04 22:35:09','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=256','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('257','1','2018-09-04 19:35:17','2018-09-04 22:35:17','','VIGILÂNCIA','','publish','closed','closed','','vigilancia','','','2018-09-04 19:35:17','2018-09-04 22:35:17','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=257','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('258','1','2018-09-04 19:35:25','2018-09-04 22:35:25','','VISTORIA TECNICA','','publish','closed','closed','','vistoria-tecnica','','','2018-09-04 19:35:25','2018-09-04 22:35:25','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=258','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('259','1','2018-09-04 19:35:32','2018-09-04 22:35:32','','WEBDESIGNER','','publish','closed','closed','','webdesigner','','','2018-09-04 19:35:32','2018-09-04 22:35:32','','0','http://localhost/portalseguranca/?post_type=atividade_fornecedor&#038;p=259','0','atividade_fornecedor','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('260','1','2018-09-04 19:36:33','2018-09-04 22:36:33','','ADMINISTRADORA DE CONDOMÍNIO','','publish','closed','closed','','administradora-de-condominio','','','2018-09-04 19:36:33','2018-09-04 22:36:33','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=260','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('261','1','2018-09-04 19:36:40','0000-00-00 00:00:00','','ASSESSORIA DE IMPRENSA','','draft','closed','closed','','','','','2018-09-04 19:36:40','2018-09-04 22:36:40','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=261','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('262','1','2018-09-04 19:36:48','2018-09-04 22:36:48','','AUTARQUIA','','publish','closed','closed','','autarquia','','','2018-09-04 19:36:48','2018-09-04 22:36:48','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=262','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('263','1','2018-09-04 19:37:26','2018-09-04 22:37:26','','BANCO','','publish','closed','closed','','banco','','','2018-09-04 19:37:26','2018-09-04 22:37:26','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=263','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('264','1','2018-09-04 19:37:33','2018-09-04 22:37:33','','BLINDADORA','','publish','closed','closed','','blindadora','','','2018-09-04 19:37:33','2018-09-04 22:37:33','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=264','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('265','1','2018-09-04 19:37:42','2018-09-04 22:37:42','','BOMBEIROS','','publish','closed','closed','','bombeiros','','','2018-09-04 19:37:42','2018-09-04 22:37:42','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=265','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('266','1','2018-09-04 19:37:48','2018-09-04 22:37:48','','CANIL','','publish','closed','closed','','canil','','','2018-09-04 19:37:48','2018-09-04 22:37:48','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=266','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('267','1','2018-09-04 19:37:55','2018-09-04 22:37:55','','CENTRO DE FORMAÇÃO DE VIGILANTES','','publish','closed','closed','','centro-de-formacao-de-vigilantes','','','2018-09-04 19:37:55','2018-09-04 22:37:55','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=267','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('268','1','2018-09-04 19:38:04','2018-09-04 22:38:04','','CONCESSIONÁRIA DE AUTOS E MOTOS','','publish','closed','closed','','concessionaria-de-autos-e-motos','','','2018-09-04 19:38:04','2018-09-04 22:38:04','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=268','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('269','1','2018-09-04 19:38:12','2018-09-04 22:38:12','','CONDOMÍNIO','','publish','closed','closed','','condominio','','','2018-09-04 19:38:12','2018-09-04 22:38:12','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=269','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('270','1','2018-09-04 19:38:20','2018-09-04 22:38:20','','CONSTRUTORA','','publish','closed','closed','','construtora','','','2018-09-04 19:38:20','2018-09-04 22:38:20','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=270','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('271','1','2018-09-04 19:38:26','2018-09-04 22:38:26','','CONSULTORIA','','publish','closed','closed','','consultoria','','','2018-09-04 19:38:26','2018-09-04 22:38:26','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=271','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('272','1','2018-09-04 19:38:34','2018-09-04 22:38:34','','CONTROLE DE ACESSO','','publish','closed','closed','','controle-de-acesso','','','2018-09-04 19:38:34','2018-09-04 22:38:34','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=272','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('273','1','2018-09-04 19:38:41','2018-09-04 22:38:41','','CORRETOR DE SEGUROS','','publish','closed','closed','','corretor-de-seguros','','','2018-09-04 19:38:41','2018-09-04 22:38:41','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=273','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('274','1','2018-09-04 19:38:51','2018-09-04 22:38:51','','DRONES','','publish','closed','closed','','drones','','','2018-09-04 19:38:51','2018-09-04 22:38:51','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=274','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('275','1','2018-09-04 19:38:58','2018-09-04 22:38:58','','EDITORA','','publish','closed','closed','','editora','','','2018-09-04 19:38:58','2018-09-04 22:38:58','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=275','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('276','1','2018-09-04 19:39:06','2018-09-04 22:39:06','','EMPRESA DE VIGILÂNCIA','','publish','closed','closed','','empresa-de-vigilancia','','','2018-09-04 19:39:06','2018-09-04 22:39:06','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=276','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('277','1','2018-09-04 19:39:15','2018-09-04 22:39:15','','ENGENHARIA','','publish','closed','closed','','engenharia','','','2018-09-04 19:39:15','2018-09-04 22:39:15','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=277','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('278','1','2018-09-04 19:39:22','2018-09-04 22:39:22','','ESCOLA/UNIVERSIDADE','','publish','closed','closed','','escola-universidade','','','2018-09-04 19:39:22','2018-09-04 22:39:22','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=278','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('279','1','2018-09-04 19:39:30','2018-09-04 22:39:30','','ESCOLTA ARMADA','','publish','closed','closed','','escolta-armada','','','2018-09-04 19:39:30','2018-09-04 22:39:30','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=279','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('280','1','2018-09-04 19:39:37','2018-09-04 22:39:37','','ESCRITÓRIO DE PEQUENO PORTE','','publish','closed','closed','','escritorio-de-pequeno-porte','','','2018-09-04 19:39:37','2018-09-04 22:39:37','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=280','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('281','1','2018-09-04 19:39:44','2018-09-04 22:39:44','','ESTUDANTE','','publish','closed','closed','','estudante','','','2018-09-04 19:39:44','2018-09-04 22:39:44','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=281','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('282','1','2018-09-04 19:39:51','2018-09-04 22:39:51','','FONTES','','publish','closed','closed','','fontes','','','2018-09-04 19:39:51','2018-09-04 22:39:51','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=282','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('283','1','2018-09-04 19:40:04','2018-09-04 22:40:04','','FORÇAS ARMADAS','','publish','closed','closed','','forcas-armadas','','','2018-09-04 19:40:04','2018-09-04 22:40:04','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=283','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('284','1','2018-09-04 19:40:09','2018-09-04 22:40:09','','GOVERNO ESTADUAL','','publish','closed','closed','','governo-estadual','','','2018-09-04 19:40:09','2018-09-04 22:40:09','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=284','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('285','1','2018-09-04 19:40:17','2018-09-04 22:40:17','','GOVERNO FEDERAL','','publish','closed','closed','','governo-federal','','','2018-09-04 19:40:17','2018-09-04 22:40:17','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=285','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('286','1','2018-09-04 19:40:23','2018-09-04 22:40:23','','GUARITAS','','publish','closed','closed','','guaritas','','','2018-09-04 19:40:23','2018-09-04 22:40:23','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=286','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('287','1','2018-09-04 19:40:30','2018-09-04 22:40:30','','HOSPITAL','','publish','closed','closed','','hospital','','','2018-09-04 19:40:30','2018-09-04 22:40:30','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=287','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('288','1','2018-09-04 19:40:40','2018-09-04 22:40:40','','INDÚSTRIA AUTOMOBILÍSTICA','','publish','closed','closed','','industria-automobilistica','','','2018-09-04 19:40:40','2018-09-04 22:40:40','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=288','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('289','1','2018-09-04 19:40:47','2018-09-04 22:40:47','','INDÚSTRIA DE ARMAS','','publish','closed','closed','','industria-de-armas','','','2018-09-04 19:40:47','2018-09-04 22:40:47','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=289','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('290','1','2018-09-04 19:40:54','2018-09-04 22:40:54','','INDÚSTRIA DE EQUIP. DE SEG','','publish','closed','closed','','industria-de-equip-de-seg','','','2018-09-04 19:40:54','2018-09-04 22:40:54','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=290','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('291','1','2018-09-04 19:41:03','2018-09-04 22:41:03','','INDÚSTRIA FARMACEUTICA','','publish','closed','closed','','industria-farmaceutica','','','2018-09-04 19:41:03','2018-09-04 22:41:03','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=291','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('292','1','2018-09-04 19:41:20','2018-09-04 22:41:20','','INDÚSTRIA GRÁFICA','','publish','closed','closed','','industria-grafica','','','2018-09-04 19:41:20','2018-09-04 22:41:20','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=292','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('293','1','2018-09-04 19:41:39','2018-09-04 22:41:39','','INDÚSTRIA QUÍMICA','','publish','closed','closed','','industria-quimica','','','2018-09-04 19:41:39','2018-09-04 22:41:39','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=293','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('294','1','2018-09-04 19:41:45','2018-09-04 22:41:45','','INTEGRADOR','','publish','closed','closed','','integrador','','','2018-09-04 19:41:45','2018-09-04 22:41:45','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=294','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('295','1','2018-09-04 19:41:51','2018-09-04 22:41:51','','JOALHERIA','','publish','closed','closed','','joalheria','','','2018-09-04 19:41:51','2018-09-04 22:41:51','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=295','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('296','1','2018-09-04 19:42:01','2018-09-04 22:42:01','','JUDICIÁRIO','','publish','closed','closed','','judiciario','','','2018-09-04 19:42:02','2018-09-04 22:42:02','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=296','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('297','1','2018-09-04 19:42:09','2018-09-04 22:42:09','','LABORATÓRIO','','publish','closed','closed','','laboratorio','','','2018-09-04 19:42:09','2018-09-04 22:42:09','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=297','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('298','1','2018-09-04 19:42:16','2018-09-04 22:42:16','','MINERADORA','','publish','closed','closed','','mineradora','','','2018-09-04 19:42:16','2018-09-04 22:42:16','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=298','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('299','1','2018-09-04 19:42:24','2018-09-04 22:42:24','','MONITORAMENTO DE ALARMES','','publish','closed','closed','','monitoramento-de-alarmes','','','2018-09-04 19:42:24','2018-09-04 22:42:24','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=299','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('300','1','2018-09-04 19:42:31','2018-09-04 22:42:31','','MONITORAMENTO DE IMAGENS E ALARMES','','publish','closed','closed','','monitoramento-de-imagens-e-alarmes','','','2018-09-04 19:42:31','2018-09-04 22:42:31','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=300','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('301','1','2018-09-04 19:42:48','2018-09-04 22:42:48','','OUTROS...','','publish','closed','closed','','outros','','','2018-09-04 19:42:48','2018-09-04 22:42:48','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=301','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('302','1','2018-09-04 19:42:53','2018-09-04 22:42:53','','PESSOA FÍSICA','','publish','closed','closed','','pessoa-fisica','','','2018-09-04 19:42:53','2018-09-04 22:42:53','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=302','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('303','1','2018-09-04 19:43:00','2018-09-04 22:43:00','','POLÍCIA CIVIL','','publish','closed','closed','','policia-civil','','','2018-09-04 19:43:00','2018-09-04 22:43:00','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=303','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('304','1','2018-09-04 19:43:07','2018-09-04 22:43:07','','POLÍCIA FEDERAL','','publish','closed','closed','','policia-federal','','','2018-09-04 19:43:07','2018-09-04 22:43:07','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=304','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('305','1','2018-09-04 19:43:15','2018-09-04 22:43:15','','POLÍCIA FERROVIÁRIA','','publish','closed','closed','','policia-ferroviaria','','','2018-09-04 19:43:15','2018-09-04 22:43:15','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=305','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('306','1','2018-09-04 19:43:24','2018-09-04 22:43:24','','POLÍCIA MILITAR','','publish','closed','closed','','policia-militar','','','2018-09-04 19:43:24','2018-09-04 22:43:24','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=306','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('307','1','2018-09-04 19:43:31','2018-09-04 22:43:31','','POLÍCIA PORTUÁRIA','','publish','closed','closed','','policia-portuaria','','','2018-09-04 19:43:31','2018-09-04 22:43:31','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=307','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('308','1','2018-09-04 19:43:38','2018-09-04 22:43:38','','PORTARIA E LIMPEZA','','publish','closed','closed','','portaria-e-limpeza','','','2018-09-04 19:43:38','2018-09-04 22:43:38','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=308','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('309','1','2018-09-04 19:43:45','2018-09-04 22:43:45','','PREFEITURA','','publish','closed','closed','','prefeitura','','','2018-09-04 19:43:45','2018-09-04 22:43:45','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=309','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('310','1','2018-09-04 19:43:53','2018-09-04 22:43:53','','PROTEÇÃO PERIMETRAL','','publish','closed','closed','','protecao-perimetral','','','2018-09-04 19:43:53','2018-09-04 22:43:53','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=310','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('311','1','2018-09-04 19:44:00','2018-09-04 22:44:00','','REDE VAREJISTA','','publish','closed','closed','','rede-varejista','','','2018-09-04 19:44:00','2018-09-04 22:44:00','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=311','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('312','1','2018-09-04 19:44:08','2018-09-04 22:44:08','','SEGURANÇA PERIMETRAL','','publish','closed','closed','','seguranca-perimetral','','','2018-09-04 19:44:08','2018-09-04 22:44:08','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=312','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('313','1','2018-09-04 19:44:17','2018-09-04 22:44:17','','SEGURANÇA PRIVADA','','publish','closed','closed','','seguranca-privada','','','2018-09-04 19:44:17','2018-09-04 22:44:17','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=313','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('314','1','2018-09-04 19:44:24','2018-09-04 22:44:24','','TECNOLOGIA','','publish','closed','closed','','tecnologia','','','2018-09-04 19:44:24','2018-09-04 22:44:24','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=314','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('315','1','2018-09-04 19:44:32','2018-09-04 22:44:32','','TRANSPORTADORA','','publish','closed','closed','','transportadora','','','2018-09-04 19:44:32','2018-09-04 22:44:32','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=315','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('316','1','2018-09-04 19:44:39','2018-09-04 22:44:39','','TRANSPORTE DE VALORES','','publish','closed','closed','','transporte-de-valores','','','2018-09-04 19:44:39','2018-09-04 22:44:39','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=316','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('317','1','2018-09-04 19:44:46','2018-09-04 22:44:46','','TRANSPORTES AÉREOS','','publish','closed','closed','','transportes-aereos','','','2018-09-04 19:44:46','2018-09-04 22:44:46','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=317','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('318','1','2018-09-04 19:44:53','2018-09-04 22:44:53','','VIGILANTE','','publish','closed','closed','','vigilante','','','2018-09-04 19:44:53','2018-09-04 22:44:53','','0','http://localhost/portalseguranca/?post_type=atividade_usuario&#038;p=318','0','atividade_usuario','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('319','1','2018-09-05 01:23:44','2018-09-05 04:23:44','{\"id\":\"319\",\"field_id\":20,\"fields\":{\"1\":{\"id\":\"1\",\"type\":\"name\",\"label\":\"Seu Nome\",\"format\":\"simple\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"19\":{\"id\":\"19\",\"type\":\"select\",\"label\":\"Cargo\",\"choices\":{\"1\":{\"label\":\"Escolha uma op\\u00e7\\u00e3o\",\"value\":\"\"}},\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\",\"dynamic_choices\":\"post_type\",\"dynamic_post_type\":\"cargos\"},\"8\":{\"id\":\"8\",\"type\":\"phone\",\"label\":\"Telefone Celular\",\"format\":\"international\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"celular\"},\"10\":{\"id\":\"10\",\"type\":\"phone\",\"label\":\"Telefone Comercial\",\"format\":\"international\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"telefone\"},\"3\":{\"id\":\"3\",\"type\":\"email\",\"label\":\"Email Comercial\",\"description\":\"\",\"confirmation\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\",\"meta\":{\"nickname\":\"email\",\"delete\":false}},\"9\":{\"id\":\"9\",\"type\":\"phone\",\"label\":\"Telefone Pessoal\",\"format\":\"international\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"telefone\"},\"13\":{\"id\":\"13\",\"type\":\"text\",\"label\":\"Endere\\u00e7o\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"14\":{\"id\":\"14\",\"type\":\"number\",\"label\":\"N\\u00famero\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"16\":{\"id\":\"16\",\"type\":\"text\",\"label\":\"CEP\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"cep\"},\"17\":{\"id\":\"17\",\"type\":\"select\",\"label\":\"Cidade\",\"choices\":{\"1\":{\"label\":\"Selecione uma op\\u00e7\\u00e3o\",\"value\":\"\"}},\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"cidade\",\"dynamic_choices\":\"\"},\"6\":{\"id\":\"6\",\"type\":\"select\",\"label\":\"Estado\",\"choices\":{\"1\":{\"label\":\"Selecione uma op\\u00e7\\u00e3o\",\"value\":\"\"}},\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"estado\",\"dynamic_choices\":\"\"},\"18\":{\"id\":\"18\",\"type\":\"checkbox\",\"label\":\"\\u00c9 assinante do Jornal Seguran\\u00e7a?\",\"choices\":{\"1\":{\"label\":\"Sim\",\"value\":\"\"},\"2\":{\"label\":\"N\\u00e3o\",\"value\":\"\"}},\"description\":\"\",\"input_columns\":\"3\",\"css\":\"assinante-checkbox\",\"dynamic_choices\":\"\"},\"11\":{\"id\":\"11\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"confirmation\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"password\",\"label\":\"Password\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"}},\"settings\":{\"form_title\":\"Registro\",\"form_desc\":\"Formul\\u00e1rio de Cadastro\",\"form_class\":\"register-form\",\"submit_text\":\"Enviar informa\\u00e7\\u00f5es\",\"submit_text_processing\":\"Enviar informa\\u00e7\\u00f5es\",\"submit_class\":\"btn btn-submit\",\"offline_form\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"notification_name\":\"Default Notification\",\"email\":\"{admin_email}\",\"subject\":\"Novo Registro\",\"sender_name\":\"Portal Seguran\\u00e7a \",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\"}},\"confirmation_type\":\"message\",\"confirmation_message\":\"<p style=\\\"text-align: center;\\\"><strong>Seu cadastro foi feito com sucesso!<\\/strong><\\/p>\",\"confirmation_message_scroll\":\"1\",\"confirmation_page\":\"14\",\"confirmation_redirect\":\"\",\"post_submissions\":\"1\",\"post_submissions_title\":\"1\",\"post_submissions_content\":\"\",\"post_submissions_excerpt\":\"\",\"post_submissions_featured\":\"\",\"post_submissions_type\":\"clientes\",\"post_submissions_status\":\"pending\",\"post_submissions_author\":\"1\",\"post_submissions_meta\":{\"first_name\":\"1\",\"cargo\":\"19\",\"telefone_celular\":\"8\",\"telefone_comercial\":\"10\",\"telefone_pessoal\":\"9\",\"email_comercial\":\"3\",\"endereco\":\"13\",\"numero\":\"14\",\"cep\":\"16\",\"cidade\":\"17\",\"estado\":\"6\",\"assinante_jornal_seguranca\":\"18\",\"email\":\"11\"},\"registration_username\":\"\",\"registration_name\":\"1\",\"registration_password\":\"4\",\"registration_website\":\"\",\"registration_bio\":\"\",\"registration_role\":\"assinante\",\"registration_email_user\":\"1\",\"registration_email_admin\":\"1\",\"registration_activation\":\"1\",\"registration_activation_method\":\"user\",\"registration_activation_confirmation\":\"\",\"registration_meta\":{\"cargo\":\"19\",\"telefone_celular\":\"8\",\"telefone_comercial\":\"10\",\"email_comercial\":\"3\",\"telefone_pessoal\":\"9\",\"endereco\":\"13\",\"numero\":\"14\",\"cep\":\"16\",\"cidade\":\"17\",\"estado\":\"6\",\"assinante_jornal_seguranca\":\"18\",\"email\":\"11\",\"first_name\":\"1\"}},\"meta\":{\"template\":\"user_registration\",\"entry_columns\":[11,1,18,8,9]}}','Registro','Formulário de Cadastro','publish','closed','closed','','registro','','','2018-09-05 06:10:46','2018-09-05 09:10:46','','0','http://localhost/portalseguranca/?post_type=wpforms&#038;p=319','0','wpforms','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('320','1','2018-09-05 01:48:17','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-05 01:48:17','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?page_id=320','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('321','1','2018-09-05 01:49:37','2018-09-05 04:49:37','','Cadastro','','publish','closed','closed','','cadastro','','','2018-09-05 01:49:37','2018-09-05 04:49:37','','0','http://localhost/portalseguranca/?page_id=321','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('322','1','2018-09-05 01:52:02','2018-09-05 04:52:02','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"clientes\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_form\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Cliente','cliente','publish','closed','closed','','group_5b8f60a99a7ac','','','2018-09-05 05:59:47','2018-09-05 08:59:47','','0','http://localhost/portalseguranca/?post_type=acf-field-group&#038;p=322','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('323','1','2018-09-05 01:52:02','2018-09-05 04:52:02','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:0:{}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Tipo de Perfil','user_perfil','publish','closed','closed','','field_5b8f60adef007','','','2018-09-05 02:31:52','2018-09-05 05:31:52','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=323','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('324','1','2018-09-05 02:05:46','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-05 02:05:46','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=clientes&p=324','0','clientes','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('325','1','2018-09-05 02:06:51','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2018-09-05 02:06:51','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=clientes&p=325','0','clientes','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('328','1','2018-09-05 02:24:50','2018-09-05 05:24:50','a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','E-mail','email','publish','closed','closed','','field_5b8f6895d6454','','','2018-09-05 02:31:52','2018-09-05 05:31:52','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=328','2','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('330','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Cargo','cargo','publish','closed','closed','','field_5b8f699189c60','','','2018-09-05 02:31:52','2018-09-05 05:31:52','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=330','3','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('331','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Telefone Celular','telefone_celular','publish','closed','closed','','field_5b8f699789c61','','','2018-09-05 03:10:05','2018-09-05 06:10:05','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=331','4','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('332','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Telefone Comercial','telefone_comercial','publish','closed','closed','','field_5b8f69b889c62','','','2018-09-05 03:10:05','2018-09-05 06:10:05','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=332','5','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('333','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Telefone Pessoal','telefone_pessoal','publish','closed','closed','','field_5b8f69c389c63','','','2018-09-05 03:10:05','2018-09-05 06:10:05','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=333','6','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('334','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','E-mail comercial','email_comercial','publish','closed','closed','','field_5b8f69d089c64','','','2018-09-05 03:10:05','2018-09-05 06:10:05','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=334','7','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('335','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Endereço','endereco','publish','closed','closed','','field_5b8f69e089c65','','','2018-09-05 02:31:52','2018-09-05 05:31:52','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=335','8','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('336','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Número','numero','publish','closed','closed','','field_5b8f69f289c66','','','2018-09-05 02:31:52','2018-09-05 05:31:52','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=336','9','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('337','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','CEP','cep','publish','closed','closed','','field_5b8f69fa89c67','','','2018-09-05 02:31:52','2018-09-05 05:31:52','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=337','10','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('338','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Cidade','cidade','publish','closed','closed','','field_5b8f6a0189c68','','','2018-09-05 02:31:52','2018-09-05 05:31:52','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=338','11','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('339','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Estado','estado','publish','closed','closed','','field_5b8f6a0589c69','','','2018-09-05 02:31:52','2018-09-05 05:31:52','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=339','12','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('340','1','2018-09-05 02:31:22','2018-09-05 05:31:22','a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}','Assinante Jornal Segurança','assinante_jornal_seguranca','publish','closed','closed','','field_5b8f6a0989c6a','','','2018-09-05 03:10:05','2018-09-05 06:10:05','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=340','13','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('341','1','2018-09-05 02:31:52','2018-09-05 05:31:52','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Nome','first_name','publish','closed','closed','','field_5b8f6a3a4c067','','','2018-09-05 05:59:47','2018-09-05 08:59:47','','322','http://localhost/portalseguranca/?post_type=acf-field&#038;p=341','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('342','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"clientes\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Cliente (copiar)','cliente-copiar','trash','closed','closed','','group_5b8f702a9128a__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','0','http://localhost/portalseguranca/?post_type=acf-field-group&#038;p=342','0','acf-field-group','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('343','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Nome','nome','trash','closed','closed','','field_5b8f702a99279__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=343','0','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('344','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:11:{s:5:\"admin\";s:5:\"Admin\";s:9:\"assinante\";s:9:\"Assinante\";s:10:\"jornalista\";s:10:\"Jornalista\";s:11:\"atendimento\";s:11:\"Atendimento\";s:9:\"videoaula\";s:9:\"Videoaula\";s:5:\"fatej\";s:5:\"FATEJ\";s:14:\"assinante-plus\";s:14:\"Assinante Plus\";s:14:\"assinante-ouro\";s:14:\"Assinante Ouro\";s:17:\"assinante-ouro-ii\";s:17:\"Assinante Ouro II\";s:16:\"curso-terrorismo\";s:16:\"Curso Terrorismo\";s:23:\"brinde-palestra-escolta\";s:23:\"Brinde Palestra Escolta\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Tipo de Perfil','user_perfil','trash','closed','closed','','field_5b8f702a99329__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=344','1','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('345','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','E-mail','email','trash','closed','closed','','field_5b8f702a993df__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=345','2','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('346','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Cargo','cargo','trash','closed','closed','','field_5b8f702a994a6__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=346','3','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('347','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Telefone Celular','telefone-celular','trash','closed','closed','','field_5b8f702a99561__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=347','4','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('348','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Telefone Comercial','telefone-comercial','trash','closed','closed','','field_5b8f702a99624__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=348','5','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('349','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Telefone Pessoal','telefone-pessoal','trash','closed','closed','','field_5b8f702a996e8__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=349','6','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('350','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','E-mail comercial','email-comercial','trash','closed','closed','','field_5b8f702a997b2__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=350','7','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('351','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Endereço','endereco','trash','closed','closed','','field_5b8f702a99877__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=351','8','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('352','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Número','numero','trash','closed','closed','','field_5b8f702a9993f__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=352','9','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('353','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','CEP','cep','trash','closed','closed','','field_5b8f702a99a09__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=353','10','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('354','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Cidade','cidade','trash','closed','closed','','field_5b8f702a99ab5__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=354','11','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('355','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Estado','estado','trash','closed','closed','','field_5b8f702a99b4e__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=355','12','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('356','1','2018-09-05 02:56:58','2018-09-05 05:56:58','a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}','Assinante Jornal Segurança','assinante-jornal-seguranca','trash','closed','closed','','field_5b8f702a99be4__trashed','','','2018-09-05 02:58:07','2018-09-05 05:58:07','','342','http://localhost/portalseguranca/?post_type=acf-field&#038;p=356','13','acf-field','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('359','1','2018-09-05 04:09:55','2018-09-05 07:09:55','','wesley','','trash','closed','closed','','__trashed','','','2018-09-05 04:09:55','2018-09-05 07:09:55','','0','http://localhost/portalseguranca/?post_type=clientes&#038;p=359','0','clientes','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('360','1','2018-09-05 03:53:16','2018-09-05 06:53:16',' ','','','publish','closed','closed','','360','','','2018-09-05 03:58:42','2018-09-05 06:58:42','','0','http://localhost/portalseguranca/?p=360','2','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('361','1','2018-09-05 03:56:47','2018-09-05 06:56:47','{\"id\":\"361\",\"field_id\":2,\"fields\":[{\"id\":\"0\",\"type\":\"text\",\"label\":\"Username or Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\",\"meta\":{\"nickname\":\"login\",\"delete\":false}},{\"id\":\"1\",\"type\":\"password\",\"label\":\"Password\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\",\"meta\":{\"nickname\":\"password\",\"delete\":false}}],\"settings\":{\"form_title\":\"User Login Form\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Login\",\"submit_text_processing\":\"\",\"submit_class\":\"\",\"notification_enable\":\"0\",\"notifications\":{\"1\":{\"notification_name\":\"Default Notification\",\"email\":\"{admin_email}\",\"subject\":\"New User Login Form Entry\",\"sender_name\":\"portalseguranca\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\"}},\"confirmation_type\":\"redirect\",\"confirmation_message\":\"Thanks for contacting us! We will be in touch with you shortly.\",\"confirmation_page\":\"14\",\"confirmation_redirect\":\"http:\\/\\/localhost\\/portalseguranca\",\"post_submissions\":\"\",\"post_submissions_title\":\"\",\"post_submissions_content\":\"\",\"post_submissions_excerpt\":\"\",\"post_submissions_featured\":\"\",\"post_submissions_type\":\"post\",\"post_submissions_status\":\"pending\",\"post_submissions_author\":\"\"},\"meta\":{\"template\":\"user_login\"}}','User Login Form','','publish','closed','closed','','user-login-form','','','2018-09-05 04:02:57','2018-09-05 07:02:57','','0','http://localhost/portalseguranca/?post_type=wpforms&#038;p=361','0','wpforms','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('362','1','2018-09-05 03:58:26','2018-09-05 06:58:26','','Login','','publish','closed','closed','','login','','','2018-09-05 05:14:16','2018-09-05 08:14:16','','0','http://localhost/portalseguranca/?page_id=362','0','page','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('363','1','2018-09-05 03:58:42','2018-09-05 06:58:42',' ','','','publish','closed','closed','','363','','','2018-09-05 03:58:42','2018-09-05 06:58:42','','0','http://localhost/portalseguranca/?p=363','1','nav_menu_item','','0');
INSERT INTO `SERVMASK_PREFIX_posts` VALUES ('364','1','2018-09-05 04:17:32','0000-00-00 00:00:00','','wesley','','pending','closed','closed','','','','','2018-09-05 04:17:32','0000-00-00 00:00:00','','0','http://localhost/portalseguranca/?post_type=clientes&p=364','0','clientes','','0');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_term_relationships`;
CREATE TABLE `SERVMASK_PREFIX_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('1','1','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('40','3','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('41','3','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('42','3','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('46','3','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('47','3','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('48','3','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('49','3','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('50','3','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('51','3','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('360','2','0');
INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES ('363','2','0');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_term_taxonomy`;
CREATE TABLE `SERVMASK_PREFIX_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('1','1','category','','0','1');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('2','2','nav_menu','','0','2');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('3','3','nav_menu','','0','9');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('4','4','category','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('5','5','category','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('6','6','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('7','7','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('8','8','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('9','9','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('10','10','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('11','11','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('12','12','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('13','13','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('14','14','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('15','15','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('18','18','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('19','19','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('20','20','video_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('21','21','banner_categories','','0','0');
INSERT INTO `SERVMASK_PREFIX_term_taxonomy` VALUES ('22','22','banner_categories','','0','0');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_termmeta`;
CREATE TABLE `SERVMASK_PREFIX_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `SERVMASK_PREFIX_terms`;
CREATE TABLE `SERVMASK_PREFIX_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('1','Sem categoria','sem-categoria','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('2','top','top','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('3','navigation','navigation','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('4','Artigos','artigos','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('5','Notícias','noticias','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('6','Soluções','solucoes','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('7','ABSO','abso','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('8','Canal Graber','canal-graber','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('9','Depoimentos','depoimentos','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('10','Entrevistas','entrevistas','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('11','LAAD','laad','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('12','ISC','isc','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('13','Cursos/Faculdades/Escolas','cursos','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('14','Exposec','exposec','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('15','Palestras','palestras','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('18','Educação ä distância (EAD)','ead','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('19','Assinante Ouro','assinante-ouro','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('20','Curso Anti-terrorismo','curso-antiterrorismo','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('21','Topo','topo','0');
INSERT INTO `SERVMASK_PREFIX_terms` VALUES ('22','Premium','premium','0');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_usermeta`;
CREATE TABLE `SERVMASK_PREFIX_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('1','1','nickname','admin');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('2','1','first_name','');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('3','1','last_name','');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('4','1','description','');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('5','1','rich_editing','true');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('6','1','syntax_highlighting','true');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('7','1','comment_shortcuts','false');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('8','1','admin_color','blue');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('9','1','use_ssl','0');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('10','1','show_admin_bar_front','true');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('11','1','locale','');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('12','1','SERVMASK_PREFIX_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('13','1','SERVMASK_PREFIX_user_level','10');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('14','1','dismissed_wp_pointers','wp496_privacy');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('15','1','show_welcome_panel','0');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('16','1','session_tokens','a:6:{s:64:\"6f5e2837b5ddc550c061e1a05b4d9607d16cda96f6b0eeeddb6a6b5ec6d00764\";a:4:{s:10:\"expiration\";i:1536167986;s:2:\"ip\";s:12:\"200.196.50.6\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535995186;}s:64:\"f449a93aca0b0d47de4dd39e32c203ef169724c0c44081026450e85f2b42a4f5\";a:4:{s:10:\"expiration\";i:1537207310;s:2:\"ip\";s:12:\"200.196.50.6\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535997710;}s:64:\"cb0e295cdd9b24b35bf691e640edd278cee202ed1ae4a15bd68edeafbadd1b66\";a:4:{s:10:\"expiration\";i:1536258016;s:2:\"ip\";s:12:\"200.196.50.6\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536085216;}s:64:\"d72308a47cc293413fd787c5bf44d4bd02860daa768218cb4c8f679ee8aafad5\";a:4:{s:10:\"expiration\";i:1536302248;s:2:\"ip\";s:13:\"187.13.29.222\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536129448;}s:64:\"1199b30c827c09d1aaa95b110188e8d299038cac8172714e7c26952437aa4ede\";a:4:{s:10:\"expiration\";i:1536302301;s:2:\"ip\";s:13:\"187.13.29.222\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536129501;}s:64:\"b545b487a2b075a1cd79ff69d57ebfd8479d9fae3e47a5819300f801ebdc1032\";a:4:{s:10:\"expiration\";i:1536307971;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536135171;}}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('17','1','SERVMASK_PREFIX_dashboard_quick_press_last_post_id','4');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('18','1','closedpostboxes_page','a:0:{}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('19','1','metaboxhidden_page','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('20','1','managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('21','1','metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('22','1','SERVMASK_PREFIX_user-settings','libraryContent=browse');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('23','1','SERVMASK_PREFIX_user-settings-time','1535933297');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('24','1','nav_menu_recently_edited','2');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('25','1','show_try_gutenberg_panel','0');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('26','1','closedpostboxes_dashboard','a:0:{}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('27','1','metaboxhidden_dashboard','a:1:{i:0;s:18:\"dashboard_activity\";}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('28','1','acf_user_settings','a:0:{}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('29','1','meta-box-order_cargos','a:4:{s:15:\"acf_after_title\";s:95:\"acf-group_5b8caddc04900,acf-group_5b8ca3ab5ef8b,acf-group_5b8ca2b10b546,acf-group_5b8c8600e8555\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:31:\"acf-group_5b8c99a1c2b21,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('30','1','screen_layout_cargos','2');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('31','1','closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('32','1','metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('162','6','nickname','wes.andrade@ymail.com');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('163','6','first_name','WESS');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('164','6','last_name','');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('165','6','description','');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('166','6','rich_editing','true');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('167','6','syntax_highlighting','true');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('168','6','comment_shortcuts','false');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('169','6','admin_color','fresh');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('170','6','use_ssl','0');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('171','6','show_admin_bar_front','true');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('172','6','locale','');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('173','6','SERVMASK_PREFIX_capabilities','a:1:{s:16:\"curso-terrorismo\";b:1;}');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('174','6','SERVMASK_PREFIX_user_level','0');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('175','6','cargo','ANALISTA RH');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('176','6','telefone_celular','21000000');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('177','6','telefone_comercial','21000000');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('178','6','email_comercial','wes.andrade@ymail.com');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('179','6','telefone_pessoal','21000000');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('180','6','endereco','rua alberto pinto jr');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('181','6','numero','66');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('182','6','cep','21810190');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('183','6','cidade','Selecione uma opção');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('184','6','estado','Selecione uma opção');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('185','6','assinante_jornal_seguranca','1');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('186','6','email','wes.andrade@ymail.com');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('187','6','nome','wesley');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('188','6','wpforms-pending','1');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('189','6','wpforms-role','assinante');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('190','6','_nome','field_5b8f6a3a4c067');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('191','6','user_perfil','atendimento');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('192','6','_user_perfil','field_5b8f60adef007');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('193','6','_email','field_5b8f6895d6454');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('194','6','_cargo','field_5b8f699189c60');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('195','6','_telefone_celular','field_5b8f699789c61');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('196','6','_telefone_comercial','field_5b8f69b889c62');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('197','6','_telefone_pessoal','field_5b8f69c389c63');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('198','6','_email_comercial','field_5b8f69d089c64');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('199','6','_endereco','field_5b8f69e089c65');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('200','6','_numero','field_5b8f69f289c66');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('201','6','_cep','field_5b8f69fa89c67');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('202','6','_cidade','field_5b8f6a0189c68');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('203','6','_estado','field_5b8f6a0589c69');
INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES ('204','6','_assinante_jornal_seguranca','field_5b8f6a0989c6a');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_users`;
CREATE TABLE `SERVMASK_PREFIX_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_users` VALUES ('1','admin','$P$B5YPNC0xy5Z7oIH9KUkcQbP0rZ5K0x/','admin','wesandradealves@gmail.com','','2018-09-01 17:07:47','','0','admin');
INSERT INTO `SERVMASK_PREFIX_users` VALUES ('6','wes.andrade@ymail.com','$P$BLQUj/8JO8kBwqCd5l0mtyOFWqgd7l1','wes-andradeymail-com','wes.andrade@ymail.com','','2018-09-05 07:17:31','','0','wes.andrade@ymail.com');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_wpforms_entries`;
CREATE TABLE `SERVMASK_PREFIX_wpforms_entries` (
  `entry_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` tinyint(1) DEFAULT '0',
  `starred` tinyint(1) DEFAULT '0',
  `fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `ip_address` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_uuid` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`entry_id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_wpforms_entries` VALUES ('4','319','359','1','','','0','0','{\"1\":{\"name\":\"Seu Nome\",\"value\":\"wesley\",\"id\":1,\"type\":\"name\",\"first\":\"\",\"middle\":\"\",\"last\":\"\"},\"19\":{\"name\":\"Cargo\",\"value\":\"COMERCIAL\",\"value_raw\":\"163\",\"id\":19,\"type\":\"select\",\"dynamic\":\"post_type\",\"dynamic_items\":163,\"dynamic_post_type\":\"cargos\"},\"8\":{\"name\":\"Telefone Celular\",\"value\":\"21000000\",\"id\":8,\"type\":\"phone\"},\"10\":{\"name\":\"Telefone Comercial\",\"value\":\"21000000\",\"id\":10,\"type\":\"phone\"},\"3\":{\"name\":\"Email Comercial\",\"value\":\"wes.andrade@ymail.com\",\"id\":3,\"type\":\"email\"},\"9\":{\"name\":\"Telefone Pessoal\",\"value\":\"\",\"id\":9,\"type\":\"phone\"},\"13\":{\"name\":\"Endere\\u00e7o\",\"value\":\"rua alberto pinto jr\",\"id\":13,\"type\":\"text\"},\"14\":{\"name\":\"N\\u00famero\",\"value\":\"322\",\"id\":14,\"type\":\"number\"},\"16\":{\"name\":\"CEP\",\"value\":\"21810190\",\"id\":16,\"type\":\"text\"},\"17\":{\"name\":\"Cidade\",\"value\":\"Selecione uma op\\u00e7\\u00e3o\",\"value_raw\":\"Selecione uma op\\u00e7\\u00e3o\",\"id\":17,\"type\":\"select\"},\"6\":{\"name\":\"Estado\",\"value\":\"Selecione uma op\\u00e7\\u00e3o\",\"value_raw\":\"Selecione uma op\\u00e7\\u00e3o\",\"id\":6,\"type\":\"select\"},\"18\":{\"name\":\"\\u00c9 assinante do Jornal Seguran\\u00e7a?\",\"value\":\"Sim\",\"value_raw\":\"Sim\",\"id\":18,\"type\":\"checkbox\"},\"11\":{\"name\":\"Email\",\"value\":\"wes.andrade@ymail.com\",\"id\":11,\"type\":\"email\"},\"4\":{\"name\":\"Password\",\"value\":\"**********\",\"id\":4,\"type\":\"password\"}}','','2018-09-05 06:50:15','0000-00-00 00:00:00','187.13.29.222','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','');
INSERT INTO `SERVMASK_PREFIX_wpforms_entries` VALUES ('5','319','364','1','','','0','0','{\"1\":{\"name\":\"Seu Nome\",\"value\":\"wesley\",\"id\":1,\"type\":\"name\",\"first\":\"\",\"middle\":\"\",\"last\":\"\"},\"19\":{\"name\":\"Cargo\",\"value\":\"ANALISTA RH\",\"value_raw\":\"159\",\"id\":19,\"type\":\"select\",\"dynamic\":\"post_type\",\"dynamic_items\":159,\"dynamic_post_type\":\"cargos\"},\"8\":{\"name\":\"Telefone Celular\",\"value\":\"21000000\",\"id\":8,\"type\":\"phone\"},\"10\":{\"name\":\"Telefone Comercial\",\"value\":\"21000000\",\"id\":10,\"type\":\"phone\"},\"3\":{\"name\":\"Email Comercial\",\"value\":\"wes.andrade@ymail.com\",\"id\":3,\"type\":\"email\"},\"9\":{\"name\":\"Telefone Pessoal\",\"value\":\"21000000\",\"id\":9,\"type\":\"phone\"},\"13\":{\"name\":\"Endere\\u00e7o\",\"value\":\"rua alberto pinto jr\",\"id\":13,\"type\":\"text\"},\"14\":{\"name\":\"N\\u00famero\",\"value\":\"66\",\"id\":14,\"type\":\"number\"},\"16\":{\"name\":\"CEP\",\"value\":\"21810190\",\"id\":16,\"type\":\"text\"},\"17\":{\"name\":\"Cidade\",\"value\":\"Selecione uma op\\u00e7\\u00e3o\",\"value_raw\":\"Selecione uma op\\u00e7\\u00e3o\",\"id\":17,\"type\":\"select\"},\"6\":{\"name\":\"Estado\",\"value\":\"Selecione uma op\\u00e7\\u00e3o\",\"value_raw\":\"Selecione uma op\\u00e7\\u00e3o\",\"id\":6,\"type\":\"select\"},\"18\":{\"name\":\"\\u00c9 assinante do Jornal Seguran\\u00e7a?\",\"value\":\"Sim\",\"value_raw\":\"Sim\",\"id\":18,\"type\":\"checkbox\"},\"11\":{\"name\":\"Email\",\"value\":\"wes.andrade@ymail.com\",\"id\":11,\"type\":\"email\"},\"4\":{\"name\":\"Password\",\"value\":\"**********\",\"id\":4,\"type\":\"password\"}}','','2018-09-05 07:17:31','0000-00-00 00:00:00','187.13.29.222','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36','');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_wpforms_entry_fields`;
CREATE TABLE `SERVMASK_PREFIX_wpforms_entry_fields` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entry_id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `form_id` (`form_id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('43','4','319','1','wesley','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('44','4','319','19','COMERCIAL','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('45','4','319','8','21000000','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('46','4','319','10','21000000','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('47','4','319','3','wes.andrade@ymail.com','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('48','4','319','13','rua alberto pinto jr','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('49','4','319','14','322','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('50','4','319','16','21810190','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('51','4','319','17','Selecione uma opção','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('52','4','319','6','Selecione uma opção','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('53','4','319','18','Sim','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('54','4','319','11','wes.andrade@ymail.com','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('55','4','319','4','**********','2018-09-05 06:50:15');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('56','5','319','1','wesley','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('57','5','319','19','ANALISTA RH','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('58','5','319','8','21000000','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('59','5','319','10','21000000','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('60','5','319','3','wes.andrade@ymail.com','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('61','5','319','9','21000000','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('62','5','319','13','rua alberto pinto jr','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('63','5','319','14','66','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('64','5','319','16','21810190','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('65','5','319','17','Selecione uma opção','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('66','5','319','6','Selecione uma opção','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('67','5','319','18','Sim','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('68','5','319','11','wes.andrade@ymail.com','2018-09-05 07:17:31');
INSERT INTO `SERVMASK_PREFIX_wpforms_entry_fields` VALUES ('69','5','319','4','**********','2018-09-05 07:17:31');
COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_wpforms_entry_meta`;
CREATE TABLE `SERVMASK_PREFIX_wpforms_entry_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entry_id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


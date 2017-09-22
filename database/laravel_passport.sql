/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.6.22-log : Database - laravel_pass
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel_pass` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `laravel_pass`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values ('1f731e312e91b7c05a7c918822d46210a9a2cd95db7ac9bdd5bcaeb8808b1fdc2fcfb8fa73764635',1,2,NULL,'[\"manage-order\",\"read-only-order\"]',0,'2017-09-22 05:52:14','2017-09-22 05:52:14','2017-09-22 06:07:12'),('28bf5e74a620753ecf3468cbc18cec915f8bc4f402ea765618a67614693feb8d0697bac91ae899e7',1,2,NULL,'[\"manage-order\",\"read-only-order\"]',0,'2017-09-22 08:41:12','2017-09-22 08:41:12','2017-09-22 08:56:08'),('55bd19268eeff21e90202cfaf8c468b7e9ac2db3cfa9a085d1e0cc9ba4e7d896eee02fbf08a28b8c',1,2,NULL,'[\"manage-order\",\"read-only-order\"]',0,'2017-09-22 09:03:53','2017-09-22 09:03:53','2017-09-22 09:18:50'),('5b5ffca12d2d7e6ee8b278ac6602d145d7505a143bbfcd9a1c66e6a266dd81f17f9eb486356bd30e',1,2,NULL,'[\"manage-order\",\"read-only-order\"]',0,'2017-09-22 07:33:01','2017-09-22 07:33:01','2017-09-22 07:47:57'),('7103317f47a4acabd7fc7a50a440d447f35bf1c6f4418b712854a2205da50e91ec0533ac9f6b3baa',1,2,NULL,'[\"manage-order\",\"read-only-order\"]',0,'2017-09-22 02:39:12','2017-09-22 02:39:12','2017-09-22 02:54:10'),('9e82af4b6e54c662c09214349acf536f4216df53c10ea8aee573a748597d5326fd3da10d381d4298',1,2,NULL,'[\"manage-order\",\"read-only-order\"]',0,'2017-09-21 13:34:43','2017-09-21 13:34:43','2017-09-21 13:49:39'),('b7e65f54dc8d607086c395456a5458b68537bbd50ad522ace9fe15f39b1a55f5b5aa6c43614eea84',1,2,NULL,'[\"manage-order\",\"read-only-order\"]',0,'2017-09-22 09:41:50','2017-09-22 09:41:50','2017-09-22 09:56:50'),('ca9ac54fafd727b3220ab8c4faaf44ec3d7007af4ff85afc33b672c57ad5b5e11788a01d30b27830',1,2,NULL,'[\"manage-order\",\"read-only-order\"]',0,'2017-09-21 11:48:18','2017-09-21 11:48:18','2017-09-21 12:03:18'),('e51744b732864d786fdcb7b972613179219c3b7aca9e7c9567008951d74bc827b7eaa543b6c96ccf',1,2,NULL,'[\"manage-order\",\"read-only-order\"]',0,'2017-09-22 06:41:41','2017-09-22 06:41:41','2017-09-22 06:56:41'),('feb0331dc97edb01b6bec88822da215fd22fc77fec09465a61a9d94b4c37b1469b91a35013600593',1,2,NULL,'[\"manage-order\",\"read-only-order\"]',0,'2017-09-22 07:03:48','2017-09-22 07:03:48','2017-09-22 07:18:47');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values (1,NULL,'Laravel Personal Access Client','nzizrvyDfzDTNSblWVeOsOv2EvyMxcqqmPkdUiGC','http://localhost',1,0,0,'2017-09-16 14:12:33','2017-09-16 14:12:33'),(2,NULL,'Laravel Password Grant Client','hvhS77RIPgdCLGzYx0YFQZvKdhXOyNxLg8EECO1s','http://localhost',0,1,0,'2017-09-16 14:12:33','2017-09-16 14:12:33');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values (1,1,'2017-09-16 14:12:33','2017-09-16 14:12:33');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

insert  into `oauth_refresh_tokens`(`id`,`access_token_id`,`revoked`,`expires_at`) values ('11418914796c2fde0376cb69c0264a2aaf60de406efe7cf2abc88fd1dcb8a3df23cb93223f62be82','ca9ac54fafd727b3220ab8c4faaf44ec3d7007af4ff85afc33b672c57ad5b5e11788a01d30b27830',0,'2017-10-21 11:48:19'),('2f1fd1b090474b70ae14d524a191bbcc728d0c9fb8b12bf362cc669e78646644084b538eaa5cd516','7103317f47a4acabd7fc7a50a440d447f35bf1c6f4418b712854a2205da50e91ec0533ac9f6b3baa',0,'2017-10-22 02:39:10'),('494621a61a16f7c71f7be095a43eed2bc2e432e15f9c26f0d11998ac6a87a431c232d369b04ec66b','9e82af4b6e54c662c09214349acf536f4216df53c10ea8aee573a748597d5326fd3da10d381d4298',0,'2017-10-21 13:34:40'),('5b21fdf357448ea700b5eda96e932bfee166e081aea38bc969c113a0299c73e0e207c06bd22cab5d','5b5ffca12d2d7e6ee8b278ac6602d145d7505a143bbfcd9a1c66e6a266dd81f17f9eb486356bd30e',0,'2017-10-22 07:32:58'),('833325c95aea861efd9d94dfc527411dc180f6eed9604bd9d7469df101bda361e679f616e46396f9','feb0331dc97edb01b6bec88822da215fd22fc77fec09465a61a9d94b4c37b1469b91a35013600593',0,'2017-10-22 07:03:47'),('8c23df277c76a75781926d268141b369f54864a54cde52cc941d7d074ea78b5c8c23432da3a9e7f8','28bf5e74a620753ecf3468cbc18cec915f8bc4f402ea765618a67614693feb8d0697bac91ae899e7',0,'2017-10-22 08:41:08'),('b461e589f8124a98275edb58fed4d1e078bd2570f7bd5a75dd5448b8b708b94cec8cdb6d8695378b','b7e65f54dc8d607086c395456a5458b68537bbd50ad522ace9fe15f39b1a55f5b5aa6c43614eea84',0,'2017-10-22 09:41:51'),('c2e6811052fecc6bdafd34041f418e16684d31469bcdf21375a1b6379201812e1bf62c16f917c399','1f731e312e91b7c05a7c918822d46210a9a2cd95db7ac9bdd5bcaeb8808b1fdc2fcfb8fa73764635',0,'2017-10-22 05:52:12'),('c4a61585ad4ee04cf20a74503a4ee9a4b9221ef4ec7e9763f7706c329c532a7d173c8ad635c6acde','e51744b732864d786fdcb7b972613179219c3b7aca9e7c9567008951d74bc827b7eaa543b6c96ccf',0,'2017-10-22 06:41:41'),('e7453c9458dd31593416da894099e79d19f1300210bc0bba7a58c6d65c7f42854238c5e08f1fb461','55bd19268eeff21e90202cfaf8c468b7e9ac2db3cfa9a085d1e0cc9ba4e7d896eee02fbf08a28b8c',0,'2017-10-22 09:03:51');

/*Table structure for table `tbl_permissions` */

DROP TABLE IF EXISTS `tbl_permissions`;

CREATE TABLE `tbl_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_type` enum('get','post','put','patch','delete','option') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_middleware` tinyint(1) DEFAULT '0',
  `middleware_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_permissions` */

insert  into `tbl_permissions`(`id`,`slug_name`,`namespace`,`controller_name`,`method_name`,`method_type`,`is_middleware`,`middleware_name`,`description`,`created_by`,`deleted_by`,`updated_by`,`deleted_at`,`created_at`,`updated_at`) values (1,'orders','\\Auth\\','OrderController','index','get',1,'auth:api',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'orders','\\Auth\\','OrderController','store','post',1,'auth:api',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'orders/{id}','\\Auth\\','OrderController','show','get',1,'auth:api',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'register','\\Auth\\','RegisterController','register','post',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'login','\\Auth\\','LoginController','login','post',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'refresh','\\Auth\\','LoginController','refresh','post',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'logout','\\Auth\\','LoginController','logout','post',1,'auth:api',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tbl_permssion_scopes` */

DROP TABLE IF EXISTS `tbl_permssion_scopes`;

CREATE TABLE `tbl_permssion_scopes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) DEFAULT NULL,
  `scope_id` int(10) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(10) DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_permssion_scopes` */

insert  into `tbl_permssion_scopes`(`id`,`permission_id`,`scope_id`,`created_by`,`created_at`,`updated_by`,`updated_at`,`deleted_by`,`deleted_at`) values (1,1,1,NULL,'2017-09-21 14:41:48',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(2,2,1,NULL,'2017-09-21 14:41:55',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(3,3,1,NULL,'2017-09-21 14:41:59',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(4,3,2,NULL,'2017-09-21 14:42:03',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00');

/*Table structure for table `tbl_reset_verify` */

DROP TABLE IF EXISTS `tbl_reset_verify`;

CREATE TABLE `tbl_reset_verify` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_password_reset` tinyint(1) DEFAULT '0',
  `deleted_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_reset_verify` */

/*Table structure for table `tbl_role_scopes` */

DROP TABLE IF EXISTS `tbl_role_scopes`;

CREATE TABLE `tbl_role_scopes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) DEFAULT NULL,
  `scope_id` int(10) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_role_scopes` */

insert  into `tbl_role_scopes`(`id`,`role_id`,`scope_id`,`created_by`,`created_at`,`updated_by`,`updated_at`,`deleted_by`,`deleted_at`) values (1,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,5,2,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tbl_roles` */

DROP TABLE IF EXISTS `tbl_roles`;

CREATE TABLE `tbl_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_roles` */

insert  into `tbl_roles`(`id`,`name`,`slug`,`is_admin`,`description`,`created_by`,`deleted_by`,`updated_by`,`deleted_at`,`created_at`,`updated_at`) values (1,'Super_admin','super_admin',1,'abcdssss',NULL,NULL,NULL,NULL,'2017-06-29 08:40:46','2017-07-10 05:48:48'),(2,'Admin','admin',1,NULL,NULL,NULL,NULL,NULL,'2017-06-29 08:40:46','2017-06-29 08:40:46'),(3,'Organization','organization',0,NULL,NULL,NULL,NULL,NULL,'2017-06-29 08:40:46','2017-06-29 08:40:46'),(4,'Tour_Admin','tour_admin',0,NULL,NULL,NULL,NULL,NULL,'2017-06-29 08:40:46','2017-06-29 08:40:46'),(5,'Player','player',0,NULL,NULL,NULL,NULL,NULL,'2017-06-29 08:40:46','2017-07-10 05:56:42');

/*Table structure for table `tbl_roles_user` */

DROP TABLE IF EXISTS `tbl_roles_user`;

CREATE TABLE `tbl_roles_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_by` int(10) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_index` (`role_id`),
  KEY `role_user_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_roles_user` */

insert  into `tbl_roles_user`(`id`,`role_id`,`user_id`,`created_by`,`deleted_by`,`updated_by`,`deleted_at`,`created_at`,`updated_at`) values (1,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,5,1,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tbl_scopes` */

DROP TABLE IF EXISTS `tbl_scopes`;

CREATE TABLE `tbl_scopes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `scope_name` varchar(255) DEFAULT NULL,
  `scope_desc` text,
  `created_by` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(10) DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_scopes` */

insert  into `tbl_scopes`(`id`,`scope_name`,`scope_desc`,`created_by`,`created_at`,`updated_by`,`updated_at`,`deleted_by`,`deleted_at`) values (1,'manage-order','Manage order scope',NULL,'2017-09-21 14:42:49',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00'),(2,'read-only-order','Read only order scope',NULL,'2017-09-21 14:43:06',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00');

/*Table structure for table `tbl_user_details` */

DROP TABLE IF EXISTS `tbl_user_details`;

CREATE TABLE `tbl_user_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `physically_challanged` tinyint(1) DEFAULT '0',
  `profile_image` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `suburb` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pin` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_user_details` */

/*Table structure for table `tbl_user_emails` */

DROP TABLE IF EXISTS `tbl_user_emails`;

CREATE TABLE `tbl_user_emails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0' COMMENT '0.un-verified 1.verified',
  `is_primary` tinyint(1) DEFAULT '0' COMMENT '0.rather than primary 1.primary ',
  `domain_name` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_user_emails` */

/*Table structure for table `tbl_user_phones` */

DROP TABLE IF EXISTS `tbl_user_phones`;

CREATE TABLE `tbl_user_phones` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `country_id` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_user_phones` */

/*Table structure for table `tbl_users` */

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  `last_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_users` */

insert  into `tbl_users`(`id`,`email`,`phone`,`firstname`,`lastname`,`password`,`username`,`status`,`created_at`,`created_by`,`updated_at`,`updated_by`,`deleted_at`,`deleted_by`,`last_password`) values (1,'Brijeshdubey@yahoo.com','9594116610','Brijesh','Dubey','$2y$10$G1UQDEfivOsFwyEe6J9Xp.xkz1llykQevIsWm01g/doxsrXtUd71u','BrijeshWebDev',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Brijeshtiwari@gmail.com','9920095019','Brijesh','Tiwari','$2y$10$YwK5wAe.pRb2zxNS67u.xeOlwqwGdIAOOUo9QzfUpXdkraVXLawHm','BrijeshTDev',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

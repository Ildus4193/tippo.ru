CREATE DATABASE  IF NOT EXISTS `tippo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tippo`;
-- MySQL dump 10.13  Distrib 5.5.16, for osx10.5 (i386)
--
-- Host: localhost    Database: tippo
-- ------------------------------------------------------
-- Server version	5.5.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `page_translations`
--

DROP TABLE IF EXISTS `page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_translations_on_page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_translations`
--

LOCK TABLES `page_translations` WRITE;
/*!40000 ALTER TABLE `page_translations` DISABLE KEYS */;
INSERT INTO `page_translations` VALUES (1,1,'en','main','Tippo','2011-12-14 02:41:30','2011-12-23 15:35:24'),(2,2,'en','Page not found',NULL,'2011-12-14 02:41:30','2011-12-14 02:41:30'),(4,4,'en','cards','Визитки','2011-12-14 03:01:35','2011-12-23 15:36:16'),(5,5,'en','friends','Наши друзья','2011-12-15 15:09:52','2011-12-23 18:51:27'),(6,6,'en','Друг-1','','2011-12-15 15:20:15','2011-12-15 15:20:15'),(7,7,'en','about','О нас','2011-12-15 16:55:01','2011-12-23 15:00:05'),(8,8,'en','contacts','Контакты','2011-12-23 13:27:29','2011-12-23 13:32:02'),(10,10,'en','vacancy','Вакансии','2011-12-23 16:15:35','2011-12-23 16:15:35'),(11,11,'en','News',NULL,'2011-12-23 18:36:18','2011-12-23 18:36:18'),(12,12,'en','Contact',NULL,'2011-12-23 18:36:20','2011-12-23 18:36:20'),(13,13,'en','Thank You',NULL,'2011-12-23 18:36:20','2011-12-23 18:36:20'),(14,14,'en','Privacy Policy',NULL,'2011-12-23 18:36:20','2011-12-23 18:36:20');
/*!40000 ALTER TABLE `page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plugins`
--

DROP TABLE IF EXISTS `user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_unique_user_plugins` (`user_id`,`name`),
  KEY `index_user_plugins_on_title` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plugins`
--

LOCK TABLES `user_plugins` WRITE;
/*!40000 ALTER TABLE `user_plugins` DISABLE KEYS */;
INSERT INTO `user_plugins` VALUES (39,1,'refinery_inquiries',0),(40,1,'refinery_images',1),(41,1,'refinerycms_news',2),(42,1,'refinery_settings',3),(43,1,'refinery_users',4),(44,1,'refinery_dashboard',5),(45,1,'refinery_pages',6),(46,1,'refinery_files',7),(47,1,'refinerycms_base',8),(48,1,'refinery_core',9),(49,1,'refinery_dialogs',10),(50,1,'refinery_i18n',11),(51,1,'refinery_generators',12);
/*!40000 ALTER TABLE `user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (1,1,'Page::Translation','','','','2011-12-14 02:41:34','2011-12-14 02:48:43'),(2,2,'Page::Translation',NULL,NULL,NULL,'2011-12-14 02:41:34','2011-12-14 02:41:34'),(4,4,'Page::Translation','','','','2011-12-14 03:01:35','2011-12-14 03:01:35'),(5,5,'Page::Translation','','','','2011-12-15 15:09:52','2011-12-15 15:09:52'),(6,6,'Page::Translation','','','','2011-12-15 15:20:15','2011-12-15 15:20:15'),(7,7,'Page::Translation','','','','2011-12-15 16:55:01','2011-12-15 16:55:01'),(8,8,'Page::Translation','','','','2011-12-23 13:27:29','2011-12-23 13:27:29'),(10,10,'Page::Translation','','','','2011-12-23 16:15:35','2011-12-23 16:15:35'),(11,11,'Page::Translation',NULL,NULL,NULL,'2011-12-23 18:36:18','2011-12-23 18:36:18'),(12,12,'Page::Translation',NULL,NULL,NULL,'2011-12-23 18:36:20','2011-12-23 18:36:20'),(13,13,'Page::Translation',NULL,NULL,NULL,'2011-12-23 18:36:20','2011-12-23 18:36:20'),(14,14,'Page::Translation',NULL,NULL,NULL,'2011-12-23 18:36:20','2011-12-23 18:36:20');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry_settings`
--

DROP TABLE IF EXISTS `inquiry_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inquiry_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `destroyable` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry_settings`
--

LOCK TABLES `inquiry_settings` WRITE;
/*!40000 ALTER TABLE `inquiry_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquiry_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_parts`
--

DROP TABLE IF EXISTS `page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_parts_on_id` (`id`),
  KEY `index_page_parts_on_page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_parts`
--

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` VALUES (3,2,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2011-12-14 02:41:30','2011-12-14 02:41:30'),(6,1,'slideshow','<div id=\"slides\" class=\"slide-show\">\r\n				<div class=\"slide-top\"></div>\r\n				<div class=\"slide-middle\">\r\n					<div>\r\n						<div class=\"slide-descr\">\r\n							<h2>Больше общения!</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n								Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д.\r\n								 Разместите на ваших следующих карточках только самое необходимое.\r\n								  Карточки TIPPO это отличный способ начать общение. \r\n							</p>\r\n							<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n							Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д. \r\n							</p>\r\n							<p class=\"detailed\">\r\n								<a href=\"javascript:;\">подробнее...&gt;</a>\r\n							</p>\r\n						</div>\r\n						<img src=\"/img/stub/main-slide.jpg\" />\r\n					</div>\r\n					<div>asdasdasdasdas asd asdas asdasdasd asasdasddas</div>\r\n					<div style=\"display: none;\"></div>\r\n					<div style=\"display: none;\"></div>\r\n				</div>\r\n				<div class=\"slide-bottom\"></div>\r\n				<div class=\"slide-nav\">\r\n					<div class=\"slide-nav-axis\">\r\n						<ul class=\"slide-nav-buttons\">\r\n							<li class=\"active\">\r\n								<a href=\"#1\"></a>\r\n							</li>\r\n							<li>\r\n								<a href=\"#2\"></a>\r\n							</li>\r\n						</ul>\r\n					</div>\r\n				</div>\r\n			</div>\r\n',0,'2011-12-14 02:48:43','2011-12-23 19:51:08'),(7,1,'teasers','<div class=\"small-news-cont\">\r\n				<div class=\"small-news\">\r\n					<div class=\"box news-box\">\r\n						<div class=\"box\">\r\n							<img src=\"/img/stub/middle-news-01.jpg\" />\r\n						</div>\r\n						<div class=\"news-info\">\r\n							<h2>У НАС ОТЛИЧНЫЕ НОВОСТИ</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели\r\n							 	видеть на ваших карточках. Эл. почта, номер мобильного \r\n							 	телефона, skype, icq,\r\n							 </p>\r\n							<div class=\"detailed\">\r\n								<a href=\"javascript:;\">подробнее...&gt;</a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"box news-box\">\r\n						<div class=\"box\">\r\n							<img src=\"/img/stub/middle-news-02.jpg\" />\r\n						</div>\r\n						<div class=\"news-info\">\r\n							<h2>У НАС ОТЛИЧНЫЕ НОВОСТИ</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели\r\n							 	видеть на ваших карточках. Эл. почта, номер мобильного \r\n							 	телефона, skype, icq,\r\n							 </p>\r\n							<div class=\"detailed\">\r\n								<a href=\"javascript:;\">подробнее...&gt;</a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"box news-box\">\r\n						<div class=\"box\">\r\n							<img src=\"/img/stub/middle-news-03.jpg\" />\r\n						</div>\r\n						<div class=\"news-info\">\r\n							<h2>У НАС ОТЛИЧНЫЕ НОВОСТИ</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели\r\n							 	видеть на ваших карточках. Эл. почта, номер мобильного \r\n							 	телефона, skype, icq,\r\n							 </p>\r\n							<div class=\"detailed\">\r\n								<a href=\"javascript:;\">подробнее...&gt;</a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"clear\"></div>\r\n				</div>\r\n			</div>\r\n',1,'2011-12-14 02:48:43','2011-12-23 19:51:08'),(8,4,'slideshow','<div class=\"slide-show\">\r\n				<div class=\"slide-top\"></div>\r\n				<div class=\"slide-middle\">\r\n					<div>\r\n						<div class=\"slide-descr\">\r\n							<h2>Больше общения!</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n								Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д.\r\n								 Разместите на ваших следующих карточках только самое необходимое.\r\n								  Карточки TIPPO это отличный способ начать общение. \r\n							</p>\r\n							<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n							Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д. \r\n							</p>\r\n							<p class=\"detailed\">\r\n								<a href=\"javascript:;\">подробнее...&gt;</a>\r\n							</p>\r\n						</div>\r\n						<img src=\"/img/stub/main-slide.jpg\" />\r\n					</div>\r\n					<div style=\"display: none;\"></div>\r\n					<div style=\"display: none;\"></div>\r\n					<div style=\"display: none;\"></div>\r\n				</div>\r\n				<div class=\"slide-bottom\"></div>\r\n				<div class=\"slide-nav\">\r\n					<div class=\"slide-nav-axis\">\r\n						<ul class=\"slide-nav-buttons\">\r\n							<li class=\"active\">\r\n								<a href=\"javascript:;\"></a>\r\n							</li>\r\n							<li>\r\n								<a href=\"javascript:;\"></a>\r\n							</li>\r\n							<li>\r\n								<a href=\"javascript:;\"></a>\r\n							</li>\r\n							<li>\r\n								<a href=\"javascript:;\"></a>\r\n							</li>\r\n						</ul>\r\n					</div>\r\n				</div>\r\n			</div>\r\n',0,'2011-12-14 03:01:35','2011-12-23 15:36:16'),(9,4,'main','<section class=\"info-box small-info-box\">\r\n				<div class=\"left-box\">\r\n					<ul>\r\n						<li><a href=\"javascript:;\"></a>\r\n</li>\r\n						<li class=\"active\"><a href=\"javascript:;\"></a>\r\n</li>\r\n						<li><a href=\"javascript:;\"></a>\r\n</li>\r\n						<li><a href=\"javascript:;\"></a>\r\n</li>\r\n					</ul>\r\n					<div class=\"box left-box-content\">\r\n						<h2>Больше общения</h2>\r\n						<h3>Business card</h3>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели \r\n							видеть на ваших карточках. Эл. почта, номер мобильного \r\n							телефона, skype, icq, страницы в социальных сетях и т.д. \r\n							Разместите на ваших следующих карточках только самое \r\n							необходимое. Карточки TIPPO это отличный способ начать общение. \r\n						</p>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть \r\n							на ваших карточках. Эл. почта, номер мобильного телефона, \r\n							skype, icq, страницы в социальных сетях и т.д. \r\n						</p>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть \r\n							на ваших карточках. Эл. почта, номер мобильного телефона, \r\n							skype, icq, страницы в социальных сетях и т.д. \r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"box middle-box\">\r\n					<table>\r\n						<tbody><tr>\r\n							<td style=\"width: 80px;\">\r\n								<img src=\"/img/scheme_01.png\" alt=\"1\" />\r\n							</td>\r\n							<td>\r\n								<p>Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках.</p>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td>\r\n								<img src=\"/img/scheme_02.png\" alt=\"2\" />\r\n							</td>\r\n							<td>\r\n								 <p>Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д.</p>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td>\r\n								<img src=\"/img/scheme_03.png\" alt=\"3\" />\r\n							</td>\r\n							<td>\r\n								<p>Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках.</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n</table>\r\n				</div>\r\n				<div class=\"right-box\">\r\n					<div class=\"box right-box-content\">\r\n						<h2>ТРЕБОВАНИЯ К ВИЗИТКАМ</h2>\r\n						<h3>Business card</h3>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели \r\n							видеть на ваших карточках. Эл. почта, номер мобильного \r\n							телефона, skype, icq, страницы в социальных сетях и т.д. \r\n							Разместите на ваших следующих карточках только самое \r\n							необходимое. Карточки TIPPO это отличный способ начать общение. \r\n						</p>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть \r\n							на ваших карточках. Эл. почта, номер мобильного телефона, \r\n							skype, icq, страницы в социальных сетях и т.д. \r\n						</p>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть \r\n							на ваших карточках. Эл. почта, номер мобильного телефона, \r\n							skype, icq, страницы в социальных сетях и т.д. \r\n						</p>\r\n					</div>\r\n					<ul>\r\n						<li>\r\n							<a class=\"r-tab-requirement\" href=\"javascript:;\"></a>\r\n						</li>\r\n						<li>\r\n							<a class=\"r-tab-price\" href=\"javascript:;\"></a>\r\n						</li>\r\n					</ul>\r\n				</div>\r\n			</section>\r\n			<section class=\"info-box usage-boxes\">\r\n				<div class=\"box box580 usage-box\">\r\n					<h2>КАК МОЖНО ИСПОЛЬЗОВАТЬ ВАШИ ВИЗИТКИ</h2>\r\n					<table>\r\n						<tbody><tr>\r\n							<td>\r\n								<img src=\"/img/stub/info_01.jpg\" />\r\n							</td>\r\n							<td>\r\n								<h3>Pocket portfolio</h3>\r\n								<p>Спросите своих друзей, какие контакты они\r\n									 бы хотели видеть на ваших карточках. Эл. \r\n									 почта, номер мобильного телефона, skype, \r\n									 icq, страницы в социальных сетях и т.д. \r\n									 Спросите своих друзей, какие контакты они \r\n									 бы хотели видеть на ваших карточках.\r\n								</p>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td>\r\n								<img src=\"/img/stub/info_02.jpg\" />\r\n							</td>\r\n							<td>\r\n								<h3>Личные визитные карты</h3>\r\n								<p>Спросите своих друзей, какие контакты они\r\n									 бы хотели видеть на ваших карточках. Эл. \r\n									 почта, номер мобильного телефона, skype, \r\n									 icq, страницы в социальных сетях и т.д.\r\n								</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n</table>\r\n				</div>\r\n				<div class=\"box\">\r\n					<h2>Заказать бесплатно 10 штук</h2>\r\n					<p>\r\n						Спросите своих друзей, какие контакты они бы хотели \r\n						видеть на ваших карточках. Эл. почта, номер мобильного \r\n						телефона, skype, icq, страницы в социальных сетях и т.д. \r\n						Разместите на ваших следующих карточках только самое необходимое. \r\n						Карточки TIPPO это отличный способ начать общение. \r\n						<br />\r\n						<br />\r\n					</p>\r\n					<img src=\"/img/stub/order-free-1.png\" />\r\n					<img src=\"/img/stub/order-free-2.png\" />\r\n				</div>\r\n			</section>\r\n			<section class=\"info-box info-hints\">\r\n				<div class=\"box box580 info-hint\">\r\n					<h2>ДЛЯ ЧЕГО НУЖНЫ BUSINESS CARDS</h2>\r\n					<p>\r\n						Спросите своих друзей, какие контакты они бы хотели\r\n						видеть на ваших карточках. Эл. почта, номер мобильного \r\n						телефона, skype, icq, страницы в социальных сетях и т.д. \r\n						Разместите на ваших следующих карточках только самое необходимое. \r\n						Карточки TIPPO это отличный способ начать общение. Спросите \r\n						своих друзей, какие контакты они бы хотели видеть на ваших \r\n						карточках. Эл. почта, номер мобильного телефона, skype, \r\n						icq, страницы в социальных сетях и т.д. Спросите своих \r\n						друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n						Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д.\r\n					</p> \r\n				</div>\r\n				<div class=\"box info-hint yay_\"></div>\r\n			</section>\r\n',1,'2011-12-15 14:53:14','2011-12-23 15:36:16'),(10,5,'main','<article class=\"main-content\">\r\n				<p>\r\n					Спросите своих друзей, какие контакты они бы хотели \r\n					видеть на ваших карточках. Эл. почта, номер мобильного \r\n					телефона, skype, icq, страницы в социальных сетях и т.д.\r\n					Разместите на ваших следующих карточках только самое \r\n					необходимое. Карточки TIPPO это отличный способ начать общение. \r\n					Спросите своих друзей, какие контакты они бы хотели видеть на \r\n					ваших карточках. Эл. почта, номер мобильного телефона, skype, \r\n					icq, страницы в социальных сетях и т.д.\r\n				</p>\r\n			</article>\r\n			<section class=\"kish-mish\">\r\n				<div class=\"col col1\">\r\n					<div class=\"box\">\r\n						<img src=\"/img/stub/kish-mish/01.jpg\" />\r\n						<div class=\"km-box-footer\">\r\n							<a class=\"logo\" href=\"/друг-1\"></a>\r\n							<a class=\"detailed\" href=\"/друг-1\">\r\n								подробнее...&gt;\r\n							</a>\r\n						</div>\r\n					</div>\r\n					<div class=\"box\">\r\n						<img src=\"/img/stub/kish-mish/05.jpg\" />\r\n						<div class=\"km-box-footer\">\r\n							<a class=\"logo\" href=\"/друг-1\"></a>\r\n							<a class=\"detailed\" href=\"/друг-1\">\r\n								подробнее...&gt;\r\n							</a>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"col col2\">\r\n					<div class=\"box\">\r\n						<img src=\"/img/stub/kish-mish/02.jpg\" />\r\n						<div class=\"km-box-footer\">\r\n							<a class=\"logo\" href=\"/друг-1\"></a>\r\n							<a class=\"detailed\" href=\"/друг-1\">\r\n								подробнее...&gt;\r\n							</a>\r\n						</div>\r\n					</div>\r\n					<div class=\"box\">\r\n						<img src=\"/img/stub/kish-mish/04.jpg\" />\r\n						<div class=\"km-box-footer\">\r\n							<a class=\"logo\" href=\"/друг-1\"></a>\r\n							<a class=\"detailed\" href=\"/друг-1\">\r\n								подробнее...&gt;\r\n							</a>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col col3\">\r\n					<div class=\"box\">\r\n						<img src=\"/img/stub/kish-mish/03.jpg\" />\r\n						<div class=\"km-box-footer\">\r\n							<a class=\"logo\" href=\"/друг-1\"></a>\r\n							<a class=\"detailed\" href=\"/друг-1\">\r\n								подробнее...&gt;\r\n							</a>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"clear\"></div>\r\n			</section>\r\n',0,'2011-12-15 15:09:52','2011-12-23 18:51:27'),(11,6,'main','<article class=\"main-content\">\r\n				<p>\r\n					Спросите своих друзей, какие контакты они бы хотели \r\n					видеть на ваших карточках. Эл. почта, номер мобильного \r\n					телефона, skype, icq, страницы в социальных сетях и т.д.\r\n					Разместите на ваших следующих карточках только самое \r\n					необходимое. Карточки TIPPO это отличный способ начать общение. \r\n					Спросите своих друзей, какие контакты они бы хотели видеть на \r\n					ваших карточках. Эл. почта, номер мобильного телефона, skype, \r\n					icq, страницы в социальных сетях и т.д.\r\n				</p>\r\n			</article>\r\n			<div id=\"wrapper1\">\r\n				<aside>\r\n					<div class=\"aside-logo\"></div>\r\n					<p>\r\n						420107, Россия, Казань<br />\r\n						ул. Островского, 87, офис 503\r\n					</p>\r\n					<p>\r\n						т. + 7 843 292 17 52<br />\r\n						&#160; &#160; + 7 909 309 19 44<br />\r\n						&#160; &#160; + 7 987 290 13 83<br />\r\n					</p>\r\n					<p>\r\n						e-mail: yay@tippo.ru\r\n					</p>\r\n				</aside>\r\n				<section class=\"second-col\">\r\n					<p>\r\n						Спросите своих друзей, какие контакты они бы хотели \r\n						видеть на ваших карточках. Эл. почта, номер мобильного \r\n						телефона, skype, icq, страницы в социальных сетях и т.д. \r\n						Разместите на ваших следующих карточках только самое \r\n						необходимое. Карточки TIPPO это отличный способ начать \r\n						общение. Спросите своих друзей, какие контакты они бы \r\n						хотели видеть на ваших карточках. Эл. почта, номер \r\n						мобильного телефона, skype, icq, страницы в социальных сетях и т.д. \r\n					</p>\r\n\r\n					<h3><a href=\"http://pixpromo.ru\">pixpromo.ru</a>\r\n</h3>\r\n					\r\n					<div class=\"photo-gallery\">\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"clear\"></div>\r\n					</div>\r\n				</section>\r\n				<div class=\"clear\"></div>\r\n			</div>\r\n',0,'2011-12-15 15:20:15','2011-12-15 15:20:15'),(12,7,'main','<section class=\"second-col\">\r\n					<div class=\"hr-dashed\"></div>\r\n					<p>\r\n						Спросите своих друзей, какие контакты они бы хотели\r\n					 	видеть на ваших карточках. Эл. почта, номер мобильного \r\n					 	телефона, skype, icq, страницы в социальных сетях и т.д. \r\n					 	Разместите на ваших следующих карточках только самое необходимое. \r\n					 	Карточки TIPPO это отличный способ начать общение. Спросите своих \r\n					 	друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n					 	Эл. почта, номер мобильного телефона, skype, icq, страницы в \r\n					 	социальных сетях и т.д.\r\n					 </p>\r\n					<div class=\"hr-dashed\"></div>\r\n					\r\n					<div class=\"chess-blocks\">\r\n						<div class=\"box white-box\">\r\n							<h2>БОЛЬШЕ ОБЩЕНИЯ</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели видеть\r\n								на ваших карточках. Эл. почта, номер мобильного телефона, \r\n								skype, icq, страницы в социальных сетях и т.д. Разместите на \r\n								ваших следующих карточках только самое необходимое. Карточки \r\n								TIPPO это отличный способ начать общение. Спросите своих друзей, \r\n								какие контакты они бы хотели видеть на ваших карточках. \r\n							</p>\r\n							<div class=\"arrow-gt\"></div>\r\n						</div>\r\n						<div class=\"box img-box\">\r\n							<img src=\"/img/stub/middle-news-01.jpg\" />\r\n						</div>\r\n						<div class=\"clear\"></div>\r\n					</div>\r\n					<div class=\"chess-blocks\">\r\n						<div class=\"box img-box\">\r\n							<img src=\"/img/stub/middle-news-02.jpg\" />\r\n						</div>\r\n						<div class=\"box white-box\">\r\n							<h2>БОЛЬШЕ ОБЩЕНИЯ</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели видеть\r\n								на ваших карточках. Эл. почта, номер мобильного телефона, \r\n								skype, icq, страницы в социальных сетях и т.д. Разместите на \r\n								ваших следующих карточках только самое необходимое. Карточки \r\n								TIPPO это отличный способ начать общение. Спросите своих друзей, \r\n								какие контакты они бы хотели видеть на ваших карточках. \r\n							</p>\r\n							<div class=\"arrow-lt\"></div>\r\n						</div>\r\n						<div class=\"clear\"></div>\r\n					</div>\r\n					<div class=\"hr-dashed\"></div>\r\n				</section>\r\n				<div class=\"clear\"></div>\r\n',0,'2011-12-15 16:55:01','2011-12-23 16:01:04'),(13,7,'aside','<aside>\r\n					<h1>О Tippo</h1>\r\n					<nav>\r\n						<ul>\r\n							<li class=\"active\">\r\n								<a href=\"/about\">О нас</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/news\">Новости</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/vacancy\">Вакансии</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/faq\">FAQ</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/contacts\">Контакты</a>\r\n							</li>\r\n						</ul>\r\n					</nav>\r\n					<div class=\"aside-email-form\">\r\n						<div class=\"aside-email-top\"></div>\r\n						<div class=\"aside-email-middle\">\r\n							<p>\r\n								Оставь свой e-mail и \r\n								узнай первым!\r\n							</p>\r\n							<form action=\"javascript:;\" method=\"post\">\r\n								<label for=\"id_name\">Ваше имя</label>\r\n								<input type=\"text\" name=\"name\" id=\"id_name\" />\r\n								<label for=\"id_email\">E-mail</label>\r\n								<input type=\"text\" name=\"email\" id=\"id_email\" />\r\n								<input type=\"image\" src=\"/img/blank.gif\" id=\"id_email_submit\" />\r\n							</form>\r\n						</div>\r\n						<div class=\"aside-email-bottom\"></div>\r\n					</div>\r\n				</aside>\r\n',1,'2011-12-15 16:55:01','2011-12-23 16:01:04'),(19,8,'aside','<aside>\r\n					<h1>О Tippo</h1>\r\n					<nav>\r\n						<ul>\r\n							<li>\r\n								<a href=\"/about\">О нас</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"news\">Новости</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/vacancy\">Вакансии</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/faq\">FAQ</a>\r\n							</li>\r\n							<li class=\"active\">\r\n								<a href=\"/contacts\">Контакты</a>\r\n							</li>\r\n						</ul>\r\n					</nav>\r\n				</aside>\r\n',0,'2011-12-23 16:00:21','2011-12-23 16:10:06'),(20,8,'main','<section class=\"second-col\">\r\n					<div class=\"hr-dashed\"></div>\r\n					<h2 style=\"margin-top: 20px;\">\r\n						КОНТАКТЫ\r\n					</h2>\r\n					<p>\r\n						Разместите на ваших следующих карточках только самое необходимое. \r\n						Карточки TIPPO это отличный способ начать общение. Спросите своих \r\n						друзей, какие контакты они бы хотели видеть на ваших карточках. Эл. \r\n						почта, номер мобильного телефона, skype, icq, страницы в социальных \r\n						сетях и т.д. \r\n					</p>\r\n					<p>\r\n						420107, Россия, Казань<br />\r\n						ул. Островского, 87, офис 503\r\n					</p>\r\n					<p>\r\n						т. + 7 843 292 17 52<br />\r\n						&#160; &#160; + 7 909 309 19 44<br />\r\n						&#160; &#160; + 7 987 290 13 83<br />\r\n					</p>\r\n					<p style=\"margin-bottom: 20px;\">\r\n						e-mail: yay@tippo.ru\r\n					</p>\r\n					<div class=\"hr-dashed\"></div>\r\n					<h2 style=\"margin-top: 20px;\">НАПИСАТЬ НАМ</h2>\r\n					<div class=\"feedback-form\">\r\n						<form action=\"javascript:;\" method=\"post\">\r\n							<label for=\"id_name\">Ваше имя</label>\r\n							<input type=\"text\" name=\"name\" id=\"id_name\" />\r\n							<label for=\"id_email\">E-mail</label>\r\n							<input type=\"text\" name=\"email\" id=\"id_email\" /><br />\r\n							<label for=\"id_message\">Сообщение</label>\r\n							<textarea id=\"id_message\" name=\"message\"></textarea>\r\n							<button class=\"feedback-submit\">ОТПРАВИТЬ</button>\r\n							<a class=\"feedback-attach\" href=\"javascript:;\">Прикрепить</a>\r\n						</form>\r\n					</div>\r\n				</section>',1,'2011-12-23 16:00:21','2011-12-23 16:10:06'),(21,10,'main','<section class=\"second-col vacancies\">\r\n					<div class=\"hr-dashed\"></div>\r\n					<p>\r\n						Спросите своих друзей, какие контакты они бы хотели \r\n						видеть на ваших карточках. Эл. почта, номер мобильного телефона, \r\n						skype, icq, страницы в социальных сетях и т.д. Разместите на ваших \r\n						следующих карточках только самое необходимое. Карточки TIPPO это \r\n						отличный способ начать общение. Спросите своих друзей, какие контакты \r\n						они бы хотели видеть на ваших карточках. Эл. почта, номер мобильного \r\n						телефона, skype, icq, страницы в социальных сетях и т.д. \r\n					</p>\r\n					<ul>\r\n						<li>\r\n							<span>менеджер</span>\r\n						</li>\r\n						<li>\r\n							<span>упаковщик</span>\r\n						</li>\r\n						<li class=\"active\">\r\n							<span>менеджер</span>\r\n							<div class=\"vac-descr\">\r\n								<div class=\"vac-top\"></div>\r\n								<p>\r\n									Спросите своих друзей, какие контакты они бы хотели видеть \r\n									на ваших карточках. Эл. почта, номер мобильного телефона, \r\n									skype, icq, страницы в социальных сетях и т.д. Разместите \r\n									на ваших следующих карточках только самое необходимое. \r\n									Карточки TIPPO это отличный способ начать общение. \r\n								</p>\r\n								<div class=\"vac-bottom\"></div>\r\n							</div>\r\n						</li>\r\n						<li>\r\n							<span>упаковщик</span>\r\n						</li>\r\n						<li>\r\n							<span>менеджер</span>\r\n						</li>\r\n						<li>\r\n							<span>упаковщик</span>\r\n						</li>\r\n						<li>\r\n							<span>менеджер</span>\r\n						</li>\r\n					</ul>\r\n				</section>',0,'2011-12-23 16:15:35','2011-12-23 16:15:36'),(22,10,'aside','<aside>\r\n					<h1>О Tippo</h1>\r\n					<nav>\r\n						<ul>\r\n							<li>\r\n								<a href=\"/about\">О нас</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/news\">Новости</a>\r\n							</li>\r\n							<li class=\"active\">\r\n								<a href=\"/vacancy\">Вакансии</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/faq\">FAQ</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/contacts\">Контакты</a>\r\n							</li>\r\n						</ul>\r\n					</nav>\r\n				</aside>\r\n',1,'2011-12-23 16:15:35','2011-12-23 16:15:36'),(23,11,'Body',NULL,NULL,'2011-12-23 18:36:18','2011-12-23 18:36:18'),(24,11,'Side Body',NULL,NULL,'2011-12-23 18:36:18','2011-12-23 18:36:18'),(25,12,'Body','<p>Get in touch with us. Just use the form below and we\'ll get back to you as soon as we can.</p>',0,'2011-12-23 18:36:20','2011-12-23 18:36:20'),(26,12,'Side Body','<p>163 Evergreen Terrace<br/>Happyville<br/>USA.<br/>Phone: 1-800 CALLUSNOW</p>',1,'2011-12-23 18:36:20','2011-12-23 18:36:20'),(27,13,'Body','<p>We\'ve received your inquiry and will get back to you with a response shortly.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2011-12-23 18:36:20','2011-12-23 18:36:20'),(28,14,'Body','<p>We respect your privacy. We do not market, rent or sell our email list to any outside parties.</p><p>We need your e-mail address so that we can ensure that the people using our forms are bona fide. It also allows us to send you e-mail newsletters and other communications, if you opt-in. Your postal address is required in order to send you information and pricing, if you request it.</p><p>Please call us at 123 456 7890 if you have any questions or concerns.</p>',0,'2011-12-23 18:36:20','2011-12-23 18:36:20');
/*!40000 ALTER TABLE `page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_item_translations`
--

DROP TABLE IF EXISTS `news_item_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_item_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_item_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `body` text,
  `external_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_news_item_translations_on_news_item_id` (`news_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_item_translations`
--

LOCK TABLES `news_item_translations` WRITE;
/*!40000 ALTER TABLE `news_item_translations` DISABLE KEYS */;
INSERT INTO `news_item_translations` VALUES (1,1,'en','<p>aasdadasdasasd</p>\r\n<p>asdas</p>\r\n<p>asd</p>\r\n<p>asdasdasdsd</p>',NULL,'Test','2011-12-23 18:52:41','2011-12-23 18:52:41');
/*!40000 ALTER TABLE `news_item_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_match` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `custom_title_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_depth` (`depth`),
  KEY `index_pages_on_id` (`id`),
  KEY `index_pages_on_lft` (`lft`),
  KEY `index_pages_on_parent_id` (`parent_id`),
  KEY `index_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,NULL,0,NULL,'2011-12-14 02:41:30','2011-12-23 19:51:08',1,'/',NULL,0,'text',0,0,1,4,NULL),(2,1,0,NULL,'2011-12-14 02:41:30','2011-12-14 02:41:30',0,NULL,'^/404$',0,'none',0,0,2,3,NULL),(4,NULL,2,NULL,'2011-12-14 03:01:35','2011-12-23 15:36:16',1,'',NULL,1,'text',0,0,5,6,NULL),(5,NULL,3,NULL,'2011-12-15 15:09:52','2011-12-23 18:51:27',1,'',NULL,1,'text',0,0,7,8,NULL),(6,NULL,4,NULL,'2011-12-15 15:20:15','2011-12-15 15:20:15',1,'',NULL,1,'none',0,0,9,10,NULL),(7,NULL,5,NULL,'2011-12-15 16:55:01','2011-12-23 16:01:04',1,'',NULL,1,'text',0,0,11,16,NULL),(8,7,6,NULL,'2011-12-23 13:27:29','2011-12-23 16:10:06',1,'',NULL,1,'text',0,0,12,13,NULL),(10,7,7,NULL,'2011-12-23 16:15:35','2011-12-23 16:15:35',1,'',NULL,1,'text',0,0,14,15,NULL),(11,NULL,6,NULL,'2011-12-23 18:36:18','2011-12-23 18:36:18',1,'/news','^/news.*$',0,'none',0,0,17,18,NULL),(12,NULL,7,NULL,'2011-12-23 18:36:20','2011-12-23 18:36:20',1,'/contact','^/(inquiries|contact).*$',0,'none',0,0,19,24,NULL),(13,12,0,NULL,'2011-12-23 18:36:20','2011-12-23 18:36:20',0,'/contact/thank_you','^/(inquiries|contact)/thank_you$',0,'none',0,0,20,21,NULL),(14,12,1,NULL,'2011-12-23 18:36:20','2011-12-23 18:36:20',0,NULL,NULL,1,'none',0,0,22,23,NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiries`
--

DROP TABLE IF EXISTS `inquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `spam` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_inquiries_on_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiries`
--

LOCK TABLES `inquiries` WRITE;
/*!40000 ALTER TABLE `inquiries` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','igor@ktlabs.ru','$2a$10$.Mk0DSbPvAhPJIjf3ldrduWweibSZbTOTKFvS3jrJgSpSeeU9XTc.',NULL,'2011-12-14 02:45:12','2011-12-23 20:04:24',NULL,'2011-12-23 20:04:24','2011-12-23 10:35:52','127.0.0.1','127.0.0.1',5,'nQJytpxCLT8pizQHXnJT','XGBNwntTAesBA7h2jWAs','2011-12-15 14:01:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20111212122803'),('20111212122804'),('20111212122805'),('20111212122806'),('20111212122807'),('20111212122808'),('20111212122809'),('20111212122810'),('20111212122811'),('20111212122812'),('20111212122813'),('20111212122814'),('20111212122815'),('20111212122816'),('20111212122817'),('20111212122818'),('20111212122819'),('20111223183534'),('20111223183535'),('20111223183536'),('20111223183537'),('20111223183538'),('20111223183539'),('20111223183554'),('20111223183555');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Refinery'),(2,'Superuser');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_settings`
--

DROP TABLE IF EXISTS `refinery_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `destroyable` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `scoping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `callback_proc_as_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_settings`
--

LOCK TABLES `refinery_settings` WRITE;
/*!40000 ALTER TABLE `refinery_settings` DISABLE KEYS */;
INSERT INTO `refinery_settings` VALUES (1,'use_marketable_urls','--- \"true\"\n',1,'2011-12-14 02:41:30','2011-12-14 02:41:30','pages',0,NULL,'text_area'),(2,'i18n_translation_enabled','--- \"true\"\n',1,'2011-12-14 02:41:30','2011-12-14 02:41:30','refinery',0,NULL,'text_area'),(3,'i18n_translation_default_frontend_locale','--- :en\n',1,'2011-12-14 02:41:30','2011-12-14 02:41:30','refinery',0,NULL,'text_area'),(5,'dragonfly_secret','--- 126d6db86ff80a3fe611cac8cdebde7320a6826b9503da4e\n',1,'2011-12-14 02:42:45','2011-12-14 02:42:45',NULL,0,NULL,'text_area'),(6,'approximate_ascii','--- \"false\"\n',1,'2011-12-14 02:42:45','2011-12-14 02:42:45','pages',0,NULL,'text_area'),(7,'strip_non_ascii','--- \"false\"\n',1,'2011-12-14 02:42:45','2011-12-14 02:42:45','pages',0,NULL,'text_area'),(8,'i18n_translation_locales','--- \n:de: Deutsch\n:lv: Latviski\n:rs: Srpski\n:nb: \"Norsk Bokm\\xC3\\xA5l\"\n:ru: !binary |\n  0KDRg9GB0YHQutC40Lk=\n\n:fr: \"Fran\\xC3\\xA7ais\"\n:sk: \"Slovensk\\xC3\\xBD\"\n:cs: !binary |\n  xIxlc2t5\n\n:el: !binary |\n  zpXOu867zrfOvc65zrrOrA==\n\n:sl: Slovenian\n:da: Dansk\n:en: English\n:\"zh-CN\": Simplified Chinese\n:sv: Svenska\n:jp: !binary |\n  5pel5pys6Kqe\n\n:es: \"Espa\\xC3\\xB1ol\"\n:\"zh-TW\": Traditional Chinese\n:pl: Polski\n:\"pt-BR\": \"Portugu\\xC3\\xAAs\"\n:it: Italiano\n:nl: Nederlands\n',1,'2011-12-14 02:44:52','2011-12-14 02:44:52','refinery',0,NULL,'text_area'),(9,'site_name','--- Tippo\n',1,'2011-12-14 02:44:53','2011-12-14 02:45:25',NULL,0,NULL,'text_area'),(10,'use_resource_caching','--- \"true\"\n',1,'2011-12-14 02:44:53','2011-12-14 02:44:53',NULL,0,NULL,'text_area'),(11,'use_google_ajax_libraries','--- \"false\"\n',1,'2011-12-14 02:44:53','2011-12-14 02:44:53',NULL,0,NULL,'text_area'),(12,'i18n_translation_default_locale','--- :en\n',1,'2011-12-14 02:45:13','2011-12-14 02:45:13','refinery',0,NULL,'text_area'),(13,'i18n_translation_current_locale','--- :ru\n',1,'2011-12-14 02:45:13','2011-12-23 18:54:36','refinery',0,NULL,'text_area'),(14,'i18n_translation_frontend_locales','--- \n- :en\n',1,'2011-12-14 02:45:13','2011-12-14 02:45:13','refinery',0,NULL,'text_area'),(15,'activity_show_limit','--- 7\n',1,'2011-12-14 02:45:14','2011-12-14 02:45:14',NULL,0,NULL,'text_area'),(16,'cache_pages_backend','--- \"false\"\n',1,'2011-12-14 02:45:31','2011-12-14 02:45:31',NULL,0,NULL,'text_area'),(17,'authenticity_token_on_frontend','--- \"true\"\n',1,'2011-12-14 02:45:37','2011-12-14 02:45:37',NULL,0,NULL,'text_area'),(18,'frontend_refinery_stylesheets_enabled','--- \"true\"\n',1,'2011-12-14 02:45:37','2011-12-14 02:45:37',NULL,0,NULL,'text_area'),(19,'new_page_parts','--- \"true\"\n',1,'2011-12-14 02:47:15','2011-12-14 02:47:15',NULL,0,NULL,'check_box'),(20,'default_page_parts','--- \n- Body\n- Side Body\n',1,'2011-12-14 03:01:03','2011-12-14 03:01:03',NULL,0,NULL,'text_area'),(21,'page_title','--- \n:page_title: \n  :wrap_if_not_chained: false\n  :class: \n  :tag: \n:chain_page_title: false\n:ancestors: \n  :class: ancestors\n  :separator: \" | \"\n  :tag: span\n',1,'2011-12-14 04:18:25','2011-12-14 04:18:25',NULL,0,NULL,'text_area'),(22,'tld_length','--- 1\n',1,'2011-12-23 10:20:55','2011-12-23 10:20:55',NULL,0,NULL,'text_area'),(23,'superuser_can_assign_roles','--- \"false\"\n',1,'2011-12-23 20:03:58','2011-12-23 20:03:58',NULL,0,NULL,'text_area');
/*!40000 ALTER TABLE `refinery_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_items`
--

DROP TABLE IF EXISTS `news_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `publish_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_news_items_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_items`
--

LOCK TABLES `news_items` WRITE;
/*!40000 ALTER TABLE `news_items` DISABLE KEYS */;
INSERT INTO `news_items` VALUES (1,'Test','<p>aasdadasdasasd</p>\r\n<p>asdas</p>\r\n<p>asd</p>\r\n<p>asdasdasdsd</p>','2011-12-23 18:52:00','2011-12-23 18:52:41','2011-12-23 18:52:41',NULL,NULL);
/*!40000 ALTER TABLE `news_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_part_translations`
--

DROP TABLE IF EXISTS `page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_part_translations_on_page_part_id` (`page_part_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_part_translations`
--

LOCK TABLES `page_part_translations` WRITE;
/*!40000 ALTER TABLE `page_part_translations` DISABLE KEYS */;
INSERT INTO `page_part_translations` VALUES (3,3,'en','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>','2011-12-14 02:41:30','2011-12-14 02:41:30'),(6,6,'en','<div id=\"slides\" class=\"slide-show\">\r\n				<div class=\"slide-top\"></div>\r\n				<div class=\"slide-middle\">\r\n					<div>\r\n						<div class=\"slide-descr\">\r\n							<h2>Больше общения!</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n								Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д.\r\n								 Разместите на ваших следующих карточках только самое необходимое.\r\n								  Карточки TIPPO это отличный способ начать общение. \r\n							</p>\r\n							<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n							Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д. \r\n							</p>\r\n							<p class=\"detailed\">\r\n								<a href=\"javascript:;\">подробнее...&gt;</a>\r\n							</p>\r\n						</div>\r\n						<img src=\"/img/stub/main-slide.jpg\" />\r\n					</div>\r\n					<div>asdasdasdasdas asd asdas asdasdasd asasdasddas</div>\r\n					<div style=\"display: none;\"></div>\r\n					<div style=\"display: none;\"></div>\r\n				</div>\r\n				<div class=\"slide-bottom\"></div>\r\n				<div class=\"slide-nav\">\r\n					<div class=\"slide-nav-axis\">\r\n						<ul class=\"slide-nav-buttons\">\r\n							<li class=\"active\">\r\n								<a href=\"#1\"></a>\r\n							</li>\r\n							<li>\r\n								<a href=\"#2\"></a>\r\n							</li>\r\n						</ul>\r\n					</div>\r\n				</div>\r\n			</div>\r\n','2011-12-14 02:48:43','2011-12-23 19:51:08'),(7,7,'en','<div class=\"small-news-cont\">\r\n				<div class=\"small-news\">\r\n					<div class=\"box news-box\">\r\n						<div class=\"box\">\r\n							<img src=\"/img/stub/middle-news-01.jpg\" />\r\n						</div>\r\n						<div class=\"news-info\">\r\n							<h2>У НАС ОТЛИЧНЫЕ НОВОСТИ</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели\r\n							 	видеть на ваших карточках. Эл. почта, номер мобильного \r\n							 	телефона, skype, icq,\r\n							 </p>\r\n							<div class=\"detailed\">\r\n								<a href=\"javascript:;\">подробнее...&gt;</a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"box news-box\">\r\n						<div class=\"box\">\r\n							<img src=\"/img/stub/middle-news-02.jpg\" />\r\n						</div>\r\n						<div class=\"news-info\">\r\n							<h2>У НАС ОТЛИЧНЫЕ НОВОСТИ</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели\r\n							 	видеть на ваших карточках. Эл. почта, номер мобильного \r\n							 	телефона, skype, icq,\r\n							 </p>\r\n							<div class=\"detailed\">\r\n								<a href=\"javascript:;\">подробнее...&gt;</a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"box news-box\">\r\n						<div class=\"box\">\r\n							<img src=\"/img/stub/middle-news-03.jpg\" />\r\n						</div>\r\n						<div class=\"news-info\">\r\n							<h2>У НАС ОТЛИЧНЫЕ НОВОСТИ</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели\r\n							 	видеть на ваших карточках. Эл. почта, номер мобильного \r\n							 	телефона, skype, icq,\r\n							 </p>\r\n							<div class=\"detailed\">\r\n								<a href=\"javascript:;\">подробнее...&gt;</a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"clear\"></div>\r\n				</div>\r\n			</div>\r\n','2011-12-14 02:48:43','2011-12-14 02:49:07'),(8,8,'en','<div class=\"slide-show\">\r\n				<div class=\"slide-top\"></div>\r\n				<div class=\"slide-middle\">\r\n					<div>\r\n						<div class=\"slide-descr\">\r\n							<h2>Больше общения!</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n								Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д.\r\n								 Разместите на ваших следующих карточках только самое необходимое.\r\n								  Карточки TIPPO это отличный способ начать общение. \r\n							</p>\r\n							<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n							Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д. \r\n							</p>\r\n							<p class=\"detailed\">\r\n								<a href=\"javascript:;\">подробнее...&gt;</a>\r\n							</p>\r\n						</div>\r\n						<img src=\"/img/stub/main-slide.jpg\" />\r\n					</div>\r\n					<div style=\"display: none;\"></div>\r\n					<div style=\"display: none;\"></div>\r\n					<div style=\"display: none;\"></div>\r\n				</div>\r\n				<div class=\"slide-bottom\"></div>\r\n				<div class=\"slide-nav\">\r\n					<div class=\"slide-nav-axis\">\r\n						<ul class=\"slide-nav-buttons\">\r\n							<li class=\"active\">\r\n								<a href=\"javascript:;\"></a>\r\n							</li>\r\n							<li>\r\n								<a href=\"javascript:;\"></a>\r\n							</li>\r\n							<li>\r\n								<a href=\"javascript:;\"></a>\r\n							</li>\r\n							<li>\r\n								<a href=\"javascript:;\"></a>\r\n							</li>\r\n						</ul>\r\n					</div>\r\n				</div>\r\n			</div>\r\n','2011-12-14 03:01:35','2011-12-14 03:02:04'),(9,9,'en','<section class=\"info-box small-info-box\">\r\n				<div class=\"left-box\">\r\n					<ul>\r\n						<li><a href=\"javascript:;\"></a>\r\n</li>\r\n						<li class=\"active\"><a href=\"javascript:;\"></a>\r\n</li>\r\n						<li><a href=\"javascript:;\"></a>\r\n</li>\r\n						<li><a href=\"javascript:;\"></a>\r\n</li>\r\n					</ul>\r\n					<div class=\"box left-box-content\">\r\n						<h2>Больше общения</h2>\r\n						<h3>Business card</h3>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели \r\n							видеть на ваших карточках. Эл. почта, номер мобильного \r\n							телефона, skype, icq, страницы в социальных сетях и т.д. \r\n							Разместите на ваших следующих карточках только самое \r\n							необходимое. Карточки TIPPO это отличный способ начать общение. \r\n						</p>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть \r\n							на ваших карточках. Эл. почта, номер мобильного телефона, \r\n							skype, icq, страницы в социальных сетях и т.д. \r\n						</p>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть \r\n							на ваших карточках. Эл. почта, номер мобильного телефона, \r\n							skype, icq, страницы в социальных сетях и т.д. \r\n						</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"box middle-box\">\r\n					<table>\r\n						<tbody><tr>\r\n							<td style=\"width: 80px;\">\r\n								<img src=\"/img/scheme_01.png\" alt=\"1\" />\r\n							</td>\r\n							<td>\r\n								<p>Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках.</p>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td>\r\n								<img src=\"/img/scheme_02.png\" alt=\"2\" />\r\n							</td>\r\n							<td>\r\n								 <p>Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д.</p>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td>\r\n								<img src=\"/img/scheme_03.png\" alt=\"3\" />\r\n							</td>\r\n							<td>\r\n								<p>Спросите своих друзей, какие контакты они бы хотели видеть на ваших карточках.</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n</table>\r\n				</div>\r\n				<div class=\"right-box\">\r\n					<div class=\"box right-box-content\">\r\n						<h2>ТРЕБОВАНИЯ К ВИЗИТКАМ</h2>\r\n						<h3>Business card</h3>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели \r\n							видеть на ваших карточках. Эл. почта, номер мобильного \r\n							телефона, skype, icq, страницы в социальных сетях и т.д. \r\n							Разместите на ваших следующих карточках только самое \r\n							необходимое. Карточки TIPPO это отличный способ начать общение. \r\n						</p>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть \r\n							на ваших карточках. Эл. почта, номер мобильного телефона, \r\n							skype, icq, страницы в социальных сетях и т.д. \r\n						</p>\r\n						<p>\r\n							Спросите своих друзей, какие контакты они бы хотели видеть \r\n							на ваших карточках. Эл. почта, номер мобильного телефона, \r\n							skype, icq, страницы в социальных сетях и т.д. \r\n						</p>\r\n					</div>\r\n					<ul>\r\n						<li>\r\n							<a class=\"r-tab-requirement\" href=\"javascript:;\"></a>\r\n						</li>\r\n						<li>\r\n							<a class=\"r-tab-price\" href=\"javascript:;\"></a>\r\n						</li>\r\n					</ul>\r\n				</div>\r\n			</section>\r\n			<section class=\"info-box usage-boxes\">\r\n				<div class=\"box box580 usage-box\">\r\n					<h2>КАК МОЖНО ИСПОЛЬЗОВАТЬ ВАШИ ВИЗИТКИ</h2>\r\n					<table>\r\n						<tbody><tr>\r\n							<td>\r\n								<img src=\"/img/stub/info_01.jpg\" />\r\n							</td>\r\n							<td>\r\n								<h3>Pocket portfolio</h3>\r\n								<p>Спросите своих друзей, какие контакты они\r\n									 бы хотели видеть на ваших карточках. Эл. \r\n									 почта, номер мобильного телефона, skype, \r\n									 icq, страницы в социальных сетях и т.д. \r\n									 Спросите своих друзей, какие контакты они \r\n									 бы хотели видеть на ваших карточках.\r\n								</p>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td>\r\n								<img src=\"/img/stub/info_02.jpg\" />\r\n							</td>\r\n							<td>\r\n								<h3>Личные визитные карты</h3>\r\n								<p>Спросите своих друзей, какие контакты они\r\n									 бы хотели видеть на ваших карточках. Эл. \r\n									 почта, номер мобильного телефона, skype, \r\n									 icq, страницы в социальных сетях и т.д.\r\n								</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n</table>\r\n				</div>\r\n				<div class=\"box\">\r\n					<h2>Заказать бесплатно 10 штук</h2>\r\n					<p>\r\n						Спросите своих друзей, какие контакты они бы хотели \r\n						видеть на ваших карточках. Эл. почта, номер мобильного \r\n						телефона, skype, icq, страницы в социальных сетях и т.д. \r\n						Разместите на ваших следующих карточках только самое необходимое. \r\n						Карточки TIPPO это отличный способ начать общение. \r\n						<br />\r\n						<br />\r\n					</p>\r\n					<img src=\"/img/stub/order-free-1.png\" />\r\n					<img src=\"/img/stub/order-free-2.png\" />\r\n				</div>\r\n			</section>\r\n			<section class=\"info-box info-hints\">\r\n				<div class=\"box box580 info-hint\">\r\n					<h2>ДЛЯ ЧЕГО НУЖНЫ BUSINESS CARDS</h2>\r\n					<p>\r\n						Спросите своих друзей, какие контакты они бы хотели\r\n						видеть на ваших карточках. Эл. почта, номер мобильного \r\n						телефона, skype, icq, страницы в социальных сетях и т.д. \r\n						Разместите на ваших следующих карточках только самое необходимое. \r\n						Карточки TIPPO это отличный способ начать общение. Спросите \r\n						своих друзей, какие контакты они бы хотели видеть на ваших \r\n						карточках. Эл. почта, номер мобильного телефона, skype, \r\n						icq, страницы в социальных сетях и т.д. Спросите своих \r\n						друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n						Эл. почта, номер мобильного телефона, skype, icq, страницы в социальных сетях и т.д.\r\n					</p> \r\n				</div>\r\n				<div class=\"box info-hint yay_\"></div>\r\n			</section>\r\n','2011-12-15 14:53:14','2011-12-15 14:53:14'),(10,10,'en','<article class=\"main-content\">\r\n				<p>\r\n					Спросите своих друзей, какие контакты они бы хотели \r\n					видеть на ваших карточках. Эл. почта, номер мобильного \r\n					телефона, skype, icq, страницы в социальных сетях и т.д.\r\n					Разместите на ваших следующих карточках только самое \r\n					необходимое. Карточки TIPPO это отличный способ начать общение. \r\n					Спросите своих друзей, какие контакты они бы хотели видеть на \r\n					ваших карточках. Эл. почта, номер мобильного телефона, skype, \r\n					icq, страницы в социальных сетях и т.д.\r\n				</p>\r\n			</article>\r\n			<section class=\"kish-mish\">\r\n				<div class=\"col col1\">\r\n					<div class=\"box\">\r\n						<img src=\"/img/stub/kish-mish/01.jpg\" />\r\n						<div class=\"km-box-footer\">\r\n							<a class=\"logo\" href=\"/друг-1\"></a>\r\n							<a class=\"detailed\" href=\"/друг-1\">\r\n								подробнее...&gt;\r\n							</a>\r\n						</div>\r\n					</div>\r\n					<div class=\"box\">\r\n						<img src=\"/img/stub/kish-mish/05.jpg\" />\r\n						<div class=\"km-box-footer\">\r\n							<a class=\"logo\" href=\"/друг-1\"></a>\r\n							<a class=\"detailed\" href=\"/друг-1\">\r\n								подробнее...&gt;\r\n							</a>\r\n						</div>\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"col col2\">\r\n					<div class=\"box\">\r\n						<img src=\"/img/stub/kish-mish/02.jpg\" />\r\n						<div class=\"km-box-footer\">\r\n							<a class=\"logo\" href=\"/друг-1\"></a>\r\n							<a class=\"detailed\" href=\"/друг-1\">\r\n								подробнее...&gt;\r\n							</a>\r\n						</div>\r\n					</div>\r\n					<div class=\"box\">\r\n						<img src=\"/img/stub/kish-mish/04.jpg\" />\r\n						<div class=\"km-box-footer\">\r\n							<a class=\"logo\" href=\"/друг-1\"></a>\r\n							<a class=\"detailed\" href=\"/друг-1\">\r\n								подробнее...&gt;\r\n							</a>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col col3\">\r\n					<div class=\"box\">\r\n						<img src=\"/img/stub/kish-mish/03.jpg\" />\r\n						<div class=\"km-box-footer\">\r\n							<a class=\"logo\" href=\"/друг-1\"></a>\r\n							<a class=\"detailed\" href=\"/друг-1\">\r\n								подробнее...&gt;\r\n							</a>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"clear\"></div>\r\n			</section>\r\n','2011-12-15 15:09:52','2011-12-15 15:39:05'),(11,11,'en','<article class=\"main-content\">\r\n				<p>\r\n					Спросите своих друзей, какие контакты они бы хотели \r\n					видеть на ваших карточках. Эл. почта, номер мобильного \r\n					телефона, skype, icq, страницы в социальных сетях и т.д.\r\n					Разместите на ваших следующих карточках только самое \r\n					необходимое. Карточки TIPPO это отличный способ начать общение. \r\n					Спросите своих друзей, какие контакты они бы хотели видеть на \r\n					ваших карточках. Эл. почта, номер мобильного телефона, skype, \r\n					icq, страницы в социальных сетях и т.д.\r\n				</p>\r\n			</article>\r\n			<div id=\"wrapper1\">\r\n				<aside>\r\n					<div class=\"aside-logo\"></div>\r\n					<p>\r\n						420107, Россия, Казань<br />\r\n						ул. Островского, 87, офис 503\r\n					</p>\r\n					<p>\r\n						т. + 7 843 292 17 52<br />\r\n						&#160; &#160; + 7 909 309 19 44<br />\r\n						&#160; &#160; + 7 987 290 13 83<br />\r\n					</p>\r\n					<p>\r\n						e-mail: yay@tippo.ru\r\n					</p>\r\n				</aside>\r\n				<section class=\"second-col\">\r\n					<p>\r\n						Спросите своих друзей, какие контакты они бы хотели \r\n						видеть на ваших карточках. Эл. почта, номер мобильного \r\n						телефона, skype, icq, страницы в социальных сетях и т.д. \r\n						Разместите на ваших следующих карточках только самое \r\n						необходимое. Карточки TIPPO это отличный способ начать \r\n						общение. Спросите своих друзей, какие контакты они бы \r\n						хотели видеть на ваших карточках. Эл. почта, номер \r\n						мобильного телефона, skype, icq, страницы в социальных сетях и т.д. \r\n					</p>\r\n\r\n					<h3><a href=\"http://pixpromo.ru\">pixpromo.ru</a>\r\n</h3>\r\n					\r\n					<div class=\"photo-gallery\">\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"part\">\r\n							<img src=\"/img/blank.gif\" />\r\n						</div>\r\n						<div class=\"clear\"></div>\r\n					</div>\r\n				</section>\r\n				<div class=\"clear\"></div>\r\n			</div>\r\n','2011-12-15 15:20:15','2011-12-15 15:20:15'),(12,12,'en','<section class=\"second-col\">\r\n					<div class=\"hr-dashed\"></div>\r\n					<p>\r\n						Спросите своих друзей, какие контакты они бы хотели\r\n					 	видеть на ваших карточках. Эл. почта, номер мобильного \r\n					 	телефона, skype, icq, страницы в социальных сетях и т.д. \r\n					 	Разместите на ваших следующих карточках только самое необходимое. \r\n					 	Карточки TIPPO это отличный способ начать общение. Спросите своих \r\n					 	друзей, какие контакты они бы хотели видеть на ваших карточках. \r\n					 	Эл. почта, номер мобильного телефона, skype, icq, страницы в \r\n					 	социальных сетях и т.д.\r\n					 </p>\r\n					<div class=\"hr-dashed\"></div>\r\n					\r\n					<div class=\"chess-blocks\">\r\n						<div class=\"box white-box\">\r\n							<h2>БОЛЬШЕ ОБЩЕНИЯ</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели видеть\r\n								на ваших карточках. Эл. почта, номер мобильного телефона, \r\n								skype, icq, страницы в социальных сетях и т.д. Разместите на \r\n								ваших следующих карточках только самое необходимое. Карточки \r\n								TIPPO это отличный способ начать общение. Спросите своих друзей, \r\n								какие контакты они бы хотели видеть на ваших карточках. \r\n							</p>\r\n							<div class=\"arrow-gt\"></div>\r\n						</div>\r\n						<div class=\"box img-box\">\r\n							<img src=\"/img/stub/middle-news-01.jpg\" />\r\n						</div>\r\n						<div class=\"clear\"></div>\r\n					</div>\r\n					<div class=\"chess-blocks\">\r\n						<div class=\"box img-box\">\r\n							<img src=\"/img/stub/middle-news-02.jpg\" />\r\n						</div>\r\n						<div class=\"box white-box\">\r\n							<h2>БОЛЬШЕ ОБЩЕНИЯ</h2>\r\n							<p>\r\n								Спросите своих друзей, какие контакты они бы хотели видеть\r\n								на ваших карточках. Эл. почта, номер мобильного телефона, \r\n								skype, icq, страницы в социальных сетях и т.д. Разместите на \r\n								ваших следующих карточках только самое необходимое. Карточки \r\n								TIPPO это отличный способ начать общение. Спросите своих друзей, \r\n								какие контакты они бы хотели видеть на ваших карточках. \r\n							</p>\r\n							<div class=\"arrow-lt\"></div>\r\n						</div>\r\n						<div class=\"clear\"></div>\r\n					</div>\r\n					<div class=\"hr-dashed\"></div>\r\n				</section>\r\n				<div class=\"clear\"></div>\r\n','2011-12-15 16:55:01','2011-12-15 16:55:46'),(13,13,'en','<aside>\r\n					<h1>О Tippo</h1>\r\n					<nav>\r\n						<ul>\r\n							<li class=\"active\">\r\n								<a href=\"/about\">О нас</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/news\">Новости</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/vacancy\">Вакансии</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/faq\">FAQ</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/contacts\">Контакты</a>\r\n							</li>\r\n						</ul>\r\n					</nav>\r\n					<div class=\"aside-email-form\">\r\n						<div class=\"aside-email-top\"></div>\r\n						<div class=\"aside-email-middle\">\r\n							<p>\r\n								Оставь свой e-mail и \r\n								узнай первым!\r\n							</p>\r\n							<form action=\"javascript:;\" method=\"post\">\r\n								<label for=\"id_name\">Ваше имя</label>\r\n								<input type=\"text\" name=\"name\" id=\"id_name\" />\r\n								<label for=\"id_email\">E-mail</label>\r\n								<input type=\"text\" name=\"email\" id=\"id_email\" />\r\n								<input type=\"image\" src=\"/img/blank.gif\" id=\"id_email_submit\" />\r\n							</form>\r\n						</div>\r\n						<div class=\"aside-email-bottom\"></div>\r\n					</div>\r\n				</aside>\r\n','2011-12-15 16:55:01','2011-12-23 16:01:04'),(19,19,'en','<aside>\r\n					<h1>О Tippo</h1>\r\n					<nav>\r\n						<ul>\r\n							<li>\r\n								<a href=\"/about\">О нас</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"news\">Новости</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/vacancy\">Вакансии</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/faq\">FAQ</a>\r\n							</li>\r\n							<li class=\"active\">\r\n								<a href=\"/contacts\">Контакты</a>\r\n							</li>\r\n						</ul>\r\n					</nav>\r\n				</aside>\r\n','2011-12-23 16:00:21','2011-12-23 16:10:06'),(20,20,'en','<section class=\"second-col\">\r\n					<div class=\"hr-dashed\"></div>\r\n					<h2 style=\"margin-top: 20px;\">\r\n						КОНТАКТЫ\r\n					</h2>\r\n					<p>\r\n						Разместите на ваших следующих карточках только самое необходимое. \r\n						Карточки TIPPO это отличный способ начать общение. Спросите своих \r\n						друзей, какие контакты они бы хотели видеть на ваших карточках. Эл. \r\n						почта, номер мобильного телефона, skype, icq, страницы в социальных \r\n						сетях и т.д. \r\n					</p>\r\n					<p>\r\n						420107, Россия, Казань<br />\r\n						ул. Островского, 87, офис 503\r\n					</p>\r\n					<p>\r\n						т. + 7 843 292 17 52<br />\r\n						&#160; &#160; + 7 909 309 19 44<br />\r\n						&#160; &#160; + 7 987 290 13 83<br />\r\n					</p>\r\n					<p style=\"margin-bottom: 20px;\">\r\n						e-mail: yay@tippo.ru\r\n					</p>\r\n					<div class=\"hr-dashed\"></div>\r\n					<h2 style=\"margin-top: 20px;\">НАПИСАТЬ НАМ</h2>\r\n					<div class=\"feedback-form\">\r\n						<form action=\"javascript:;\" method=\"post\">\r\n							<label for=\"id_name\">Ваше имя</label>\r\n							<input type=\"text\" name=\"name\" id=\"id_name\" />\r\n							<label for=\"id_email\">E-mail</label>\r\n							<input type=\"text\" name=\"email\" id=\"id_email\" /><br />\r\n							<label for=\"id_message\">Сообщение</label>\r\n							<textarea id=\"id_message\" name=\"message\"></textarea>\r\n							<button class=\"feedback-submit\">ОТПРАВИТЬ</button>\r\n							<a class=\"feedback-attach\" href=\"javascript:;\">Прикрепить</a>\r\n						</form>\r\n					</div>\r\n				</section>','2011-12-23 16:00:21','2011-12-23 16:05:47'),(21,21,'en','<section class=\"second-col vacancies\">\r\n					<div class=\"hr-dashed\"></div>\r\n					<p>\r\n						Спросите своих друзей, какие контакты они бы хотели \r\n						видеть на ваших карточках. Эл. почта, номер мобильного телефона, \r\n						skype, icq, страницы в социальных сетях и т.д. Разместите на ваших \r\n						следующих карточках только самое необходимое. Карточки TIPPO это \r\n						отличный способ начать общение. Спросите своих друзей, какие контакты \r\n						они бы хотели видеть на ваших карточках. Эл. почта, номер мобильного \r\n						телефона, skype, icq, страницы в социальных сетях и т.д. \r\n					</p>\r\n					<ul>\r\n						<li>\r\n							<span>менеджер</span>\r\n						</li>\r\n						<li>\r\n							<span>упаковщик</span>\r\n						</li>\r\n						<li class=\"active\">\r\n							<span>менеджер</span>\r\n							<div class=\"vac-descr\">\r\n								<div class=\"vac-top\"></div>\r\n								<p>\r\n									Спросите своих друзей, какие контакты они бы хотели видеть \r\n									на ваших карточках. Эл. почта, номер мобильного телефона, \r\n									skype, icq, страницы в социальных сетях и т.д. Разместите \r\n									на ваших следующих карточках только самое необходимое. \r\n									Карточки TIPPO это отличный способ начать общение. \r\n								</p>\r\n								<div class=\"vac-bottom\"></div>\r\n							</div>\r\n						</li>\r\n						<li>\r\n							<span>упаковщик</span>\r\n						</li>\r\n						<li>\r\n							<span>менеджер</span>\r\n						</li>\r\n						<li>\r\n							<span>упаковщик</span>\r\n						</li>\r\n						<li>\r\n							<span>менеджер</span>\r\n						</li>\r\n					</ul>\r\n				</section>','2011-12-23 16:15:35','2011-12-23 16:15:35'),(22,22,'en','<aside>\r\n					<h1>О Tippo</h1>\r\n					<nav>\r\n						<ul>\r\n							<li>\r\n								<a href=\"/about\">О нас</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/news\">Новости</a>\r\n							</li>\r\n							<li class=\"active\">\r\n								<a href=\"/vacancy\">Вакансии</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/faq\">FAQ</a>\r\n							</li>\r\n							<li>\r\n								<a href=\"/contacts\">Контакты</a>\r\n							</li>\r\n						</ul>\r\n					</nav>\r\n				</aside>\r\n','2011-12-23 16:15:35','2011-12-23 16:15:35'),(23,23,'en',NULL,'2011-12-23 18:36:18','2011-12-23 18:36:18'),(24,24,'en',NULL,'2011-12-23 18:36:18','2011-12-23 18:36:18'),(25,25,'en','<p>Get in touch with us. Just use the form below and we\'ll get back to you as soon as we can.</p>','2011-12-23 18:36:20','2011-12-23 18:36:20'),(26,26,'en','<p>163 Evergreen Terrace<br/>Happyville<br/>USA.<br/>Phone: 1-800 CALLUSNOW</p>','2011-12-23 18:36:20','2011-12-23 18:36:20'),(27,27,'en','<p>We\'ve received your inquiry and will get back to you with a response shortly.</p><p><a href=\'/\'>Return to the home page</a></p>','2011-12-23 18:36:20','2011-12-23 18:36:20'),(28,28,'en','<p>We respect your privacy. We do not market, rent or sell our email list to any outside parties.</p><p>We need your e-mail address so that we can ensure that the people using our forms are bona fide. It also allows us to send you e-mail newsletters and other communications, if you opt-in. Your postal address is required in order to send you information and pricing, if you request it.</p><p>Please call us at 123 456 7890 if you have any questions or concerns.</p>','2011-12-23 18:36:20','2011-12-23 18:36:20');
/*!40000 ALTER TABLE `page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sluggable_id` int(11) DEFAULT NULL,
  `sequence` int(11) NOT NULL DEFAULT '1',
  `sluggable_type` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_slugs_on_n_s_s_and_s` (`name`,`sluggable_type`,`scope`,`sequence`),
  KEY `index_slugs_on_sluggable_id` (`sluggable_id`),
  KEY `index_slugs_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'home',1,1,'Page',NULL,'2011-12-14 02:41:30','en'),(2,'page-not-found',2,1,'Page',NULL,'2011-12-14 02:41:30','en'),(4,'admin',1,1,'User',NULL,'2011-12-14 02:45:12','en'),(5,'главная',1,1,'Page',NULL,'2011-12-14 03:00:57','en'),(6,'визитки',4,1,'Page',NULL,'2011-12-14 03:01:35','en'),(7,'наши-друзья',5,1,'Page',NULL,'2011-12-15 15:09:52','en'),(8,'друг-1',6,1,'Page',NULL,'2011-12-15 15:20:15','en'),(9,'о-нас',7,1,'Page',NULL,'2011-12-15 16:55:01','en'),(10,'контакты',8,1,'Page',NULL,'2011-12-23 13:27:29','en'),(11,'contacts',8,1,'Page',NULL,'2011-12-23 13:32:02','en'),(14,'asdasd',7,1,'Page',NULL,'2011-12-23 14:59:48','en'),(15,'about',7,1,'Page',NULL,'2011-12-23 15:00:05','en'),(16,'main',1,1,'Page',NULL,'2011-12-23 15:35:24','en'),(17,'cards',4,1,'Page',NULL,'2011-12-23 15:36:16','en'),(18,'vacancy',10,1,'Page',NULL,'2011-12-23 16:15:35','en'),(19,'news-page',11,1,'Page',NULL,'2011-12-23 18:36:18','en'),(20,'contact-page',12,1,'Page',NULL,'2011-12-23 18:36:20','en'),(21,'thank-you',13,1,'Page',NULL,'2011-12-23 18:36:20','en'),(22,'privacy-policy',14,1,'Page',NULL,'2011-12-23 18:36:20','en'),(23,'friends',5,1,'Page',NULL,'2011-12-23 18:47:45','en'),(24,'test',1,1,'NewsItem',NULL,'2011-12-23 18:52:41','en'),(25,'admin',1,1,'User',NULL,'2011-12-23 20:04:24','ru');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-12-24  0:07:44

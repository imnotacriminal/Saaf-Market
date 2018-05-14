-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: saaf
-- ------------------------------------------------------
-- Server version	5.5.57-0+deb7u1

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
-- Table structure for table `admin_logs`
--

DROP TABLE IF EXISTS `admin_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_msg` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_logs`
--

LOCK TABLES `admin_logs` WRITE;
/*!40000 ALTER TABLE `admin_logs` DISABLE KEYS */;
INSERT INTO `admin_logs` VALUES (1,'User dongsdongs tried getting into the admin panel w/o admin perms!','14/08/2017 19:39:24'),(10,'User dongsdongs tried getting into the admin panel w/o admin perms!','14/08/2017 20:11:22'),(11,'User  tried getting into the admin panel w/o admin perms!','15/08/2017 03:13:45'),(12,'User  tried getting into the admin panel w/o admin perms!','15/08/2017 17:18:13'),(13,'User  tried getting into the admin panel w/o admin perms!','15/08/2017 17:18:15'),(14,'User  tried getting into the admin panel w/o admin perms!','15/08/2017 21:32:40'),(15,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:26'),(16,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:26'),(17,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:26'),(18,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:26'),(19,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:26'),(20,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:27'),(21,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:27'),(22,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:27'),(23,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:27'),(24,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:27'),(25,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:54'),(26,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:54'),(27,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:54'),(28,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:54'),(29,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:54'),(30,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:54'),(31,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:54'),(32,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:54'),(33,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:54'),(34,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:54'),(35,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:57'),(36,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:57'),(37,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:57'),(38,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:57'),(39,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:57'),(40,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:57'),(41,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:57'),(42,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:57'),(43,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:57'),(44,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:43:57'),(45,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:01'),(46,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:01'),(47,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:01'),(48,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:02'),(49,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:02'),(50,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:02'),(51,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:02'),(52,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:02'),(53,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:02'),(54,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:02'),(55,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 13:44:27'),(56,'User  tried getting into the admin panel w/o admin perms!','19/08/2017 17:39:03'),(57,'User  tried getting into the admin panel w/o admin perms!','20/08/2017 13:10:51'),(58,'User  tried getting into the admin panel w/o admin perms!','20/08/2017 17:43:29'),(59,'User  tried getting into the admin panel w/o admin perms!','21/08/2017 23:20:16'),(60,'User hehehackme tried getting into the admin panel w/o admin perms!','27/08/2017 23:50:19'),(61,'User  tried getting into the admin panel w/o admin perms!','31/08/2017 21:41:44'),(62,'Userdongsdongs changed his password using the recovery key','05/09/2017 19:52:31'),(63,'User  tried getting into the admin panel w/o admin perms!','06/09/2017 21:05:46'),(64,'User  tried getting into the admin panel w/o admin perms!','15/09/2017 11:22:15'),(65,'User  tried getting into the admin panel w/o admin perms!','16/09/2017 16:18:15'),(66,'User  tried getting into the admin panel w/o admin perms!','16/09/2017 19:36:08'),(67,'User  tried getting into the admin panel w/o admin perms!','16/09/2017 20:48:28'),(68,'User  tried getting into the admin panel w/o admin perms!','17/09/2017 20:04:27'),(69,'User  tried getting into the admin panel w/o admin perms!','18/09/2017 18:10:30'),(70,'User  tried getting into the admin panel w/o admin perms!','30/09/2017 14:03:15'),(71,'User  tried getting into the admin panel w/o admin perms!','04/10/2017 16:26:08'),(72,'User  tried getting into the admin panel w/o admin perms!','05/10/2017 18:15:48'),(73,'User  tried getting into the admin panel w/o admin perms!','07/10/2017 11:14:28'),(74,'User  tried getting into the admin panel w/o admin perms!','12/10/2017 18:42:34'),(75,'User: dongsdongs changed his password using the recovery key','21/10/2017 10:10:50'),(76,'User: dongsdongs changed his password using the recovery key','21/10/2017 10:11:32');
/*!40000 ALTER TABLE `admin_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ban_list`
--

DROP TABLE IF EXISTS `ban_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ban_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ban_lifted` tinyint(1) NOT NULL,
  `ban_message` varchar(255) NOT NULL,
  `ban_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban_list`
--

LOCK TABLES `ban_list` WRITE;
/*!40000 ALTER TABLE `ban_list` DISABLE KEYS */;
INSERT INTO `ban_list` VALUES (5,11,1,'dongs','20/08/2017 19:09:13'),(6,9,1,'dongs','20/08/2017 19:12:32'),(7,9,1,'dongs','20/08/2017 19:41:36'),(8,11,1,'haha donderop','24/08/2017 12:22:20'),(9,14,1,'hahaha doei','06/09/2017 21:05:17');
/*!40000 ALTER TABLE `ban_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btc_val`
--

DROP TABLE IF EXISTS `btc_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btc_val` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency` varchar(255) NOT NULL,
  `latest_price` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btc_val`
--

LOCK TABLES `btc_val` WRITE;
/*!40000 ALTER TABLE `btc_val` DISABLE KEYS */;
INSERT INTO `btc_val` VALUES (1,'EURO','4980.56'),(2,'USD','5843.01'),(3,'GBP','4427.37'),(4,'CAD','7389.92'),(5,'AUD','7482.61');
/*!40000 ALTER TABLE `btc_val` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `enabled` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Drugs',1),(2,'Digital goods',1),(3,'Services',1),(4,'Other',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_categories`
--

DROP TABLE IF EXISTS `forum_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cato_name` varchar(255) NOT NULL,
  `cato_desc` varchar(25) NOT NULL,
  `cato_enabled` tinyint(1) DEFAULT NULL,
  `allowed_to_post` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_categories`
--

LOCK TABLES `forum_categories` WRITE;
/*!40000 ALTER TABLE `forum_categories` DISABLE KEYS */;
INSERT INTO `forum_categories` VALUES (1,'Test cato','Test catoTest cato',1,1);
/*!40000 ALTER TABLE `forum_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_replies`
--

DROP TABLE IF EXISTS `forum_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `cato_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply_text` text,
  `reply_date` varchar(255) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_replies`
--

LOCK TABLES `forum_replies` WRITE;
/*!40000 ALTER TABLE `forum_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_topics`
--

DROP TABLE IF EXISTS `forum_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cato_id` int(11) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `topic_text` text,
  `topic_posted` varchar(255) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `topic_locked` tinyint(1) NOT NULL,
  `topic_pinned` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_topics`
--

LOCK TABLES `forum_topics` WRITE;
/*!40000 ALTER TABLE `forum_topics` DISABLE KEYS */;
INSERT INTO `forum_topics` VALUES (1,1,'1',NULL,'123',123,0,1),(2,1,'1',NULL,'123',123,0,1);
/*!40000 ALTER TABLE `forum_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_messages`
--

DROP TABLE IF EXISTS `order_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_message` text,
  `message_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_messages`
--

LOCK TABLES `order_messages` WRITE;
/*!40000 ALTER TABLE `order_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `product_price` decimal(65,30) NOT NULL,
  `product_quantity` tinyint(2) NOT NULL,
  `order_type` tinyint(1) NOT NULL,
  `order_status` tinyint(1) NOT NULL,
  `order_message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10,1,11,11,'26/10/2017 17:07',0.000010000000000000000000000000,1,2,1,'-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAy6Tk9Cx7Y/IAQgAg8PiMqBQKFoksJL68Zd1snUUZa/fsHK6+PryFsOoY4F1\nn6eXt93B4xYRRqqt1IAtC/HmQOTvqtbehE8WQ7dph+YW/BD+ZV6s8jDF8eidKeDo\ngAn/vOntZb7Y6PgM0K/ZklCiKwfkRyY+KN3gpuvfjnXz7li7VurYMLYKG/AmBLfu\niZSe2SG1eeZi0jgdsB8LLtagpyYSG1ogLzv8FQ4RlfaL6FqTw01m2Dy/Zb0XnV/2\nFajeFYuPFeV4k74l8613zQXJfkZdAAlIvnxUPqiRPij8ysmIlgmqPcAtFv+tNOk1\nOyxBG07QBkVDjZ5D5UDjbSmKF5l64NDnMTfOqiADK8keWZpiBHfXj5jLY7PpyEBq\nQUN+jeJ033NgapbrXCAI\n=QFvB\n-----END PGP MESSAGE-----\n'),(11,1,11,11,'26/10/2017 17:08',0.000020000000000000000000000000,2,2,1,'-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAy6Tk9Cx7Y/IAQf+LD4NZOJRbEPKBE83muAPV11v6NVNhiCFGX1S4E03ic0s\nJdnXd/3P8cy40HMAFr5gK74rrUB9RO9cW3WuT/AtegOC8sFBlPeXhttECe3W9Zsw\nEgl9CJqM3dulJDha8OxGWM4HOQNerri7Z1+EZncgG+VBlq6OcPeWv4ZW9NDx7SDl\naZVa8pDfYZZaCRHZ0gYu8g3KYquIoJfvoRk2YPzJxt6h4Vtq0ehtS85XjEkH8WkD\nXS8yK7i2W2QI1N97iVFnxeiMkNe6aVM6fQszTo9Fz9xrym1rVXb1XATWXXvhy5h7\nyY+JYaEGq852lMKSPrFPIptQaZDMCUtsaWzQtBYxNskjTOCjRKIXrgOiphkxCU9H\nkztJqM6D+C2TmHKB91CAgfi+RgA=\n=0eiO\n-----END PGP MESSAGE-----\n');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `private_msg`
--

DROP TABLE IF EXISTS `private_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_type` tinyint(1) NOT NULL,
  `pm_read` tinyint(4) DEFAULT NULL,
  `sent_from` varchar(100) NOT NULL,
  `sent_to` varchar(100) NOT NULL,
  `pm_subject` varchar(255) NOT NULL,
  `pm_msg` text NOT NULL,
  `pm_senton` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_msg`
--

LOCK TABLES `private_msg` WRITE;
/*!40000 ALTER TABLE `private_msg` DISABLE KEYS */;
INSERT INTO `private_msg` VALUES (1,1,NULL,'jemoeder','dongsdongs','HEy, asdfasdfjasdfasdfasdfasdf','-----BEGIN PGP MESSAGE-----\r\nVersion: GnuPG v1.4.12 (GNU/Linux)\r\n\r\nhQEMAyZUsoePewuWAQf+LWDBOunhyAUCrVWy349xc9Ru6akzpcsoZTJi99Bze0Vz\r\nXYxF4Vz1l2LJgL5eWhqfAK0+7FPLOtQoWnabnNxtVRN3uifnnYhPRIqMtN0gochP\r\noCV82MHn+Yh27A6Ctk9R4yk//TyKr6gOnF3+Mwbtkr99dDOdjP0rJiEM3RVqKSjE\r\nHg7kF1DCAJk2sHIrhXh9d4cs5xfS3Kz0jBCmtTiHmHaDgqbXJlSDjJJmhj0kPbwJ\r\nVvwvHm5MhsSeJ73kdRhHyJbySmKoAkScWcnH7OrETde0wXX9copDwYQL2KaTg5+B\r\nrARN3FfxQln7Dn/80jO8S5DX+TZnoA+IOkqZXMs208kdHpvGZ4fVKXl+2WfnTt1w\r\nQmoTwwAPISdB/myKC+4=\r\n=rQJA\r\n-----END PGP MESSAGE-----\r\n','06/09/2017 18:21:15'),(2,2,NULL,'dongsdongs','jemoeder','hehedongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf+MjuWGw6C9Bb7pcPqSPxRupm33KhO9M6tL1SbbjItyaEO\nRhU+8HM5WOkvO9CwT0H8cdvj2tLcw/NpllA+IocwJMnewyKj0KECXbyNU3xBnpWf\n7SKUlWrXXdwZTvkKpwLDweIm6vMfPkIBmepKXYZz4TY5PC51Gxfi4SDgUg9KK/t+\nQbkwsU1SbDeEmmK0JuD/Q/msOmPRuU08r23XHrhzZaoPXFUADXhdnEddBrBxnH/b\nBGbOdt+ZSE+8uiqPJEXgjsgOCMORfuiXudpfEkJ9RbCh7iES/scQxKUhUeSfr9uw\nMalpF8CTruuKMz/0jnN+LfEX2C/hYvcTCvy+lXFWnskkjFVLqyMDd5xOyLShCATs\nQV4z95CP49gS0p4eJvAD9Scs+prw\n=2Q3c\n-----END PGP MESSAGE-----\n','01/10/2017 19:00:34'),(3,1,1,'dongsdongs','jemoeder','hahadongs','','01/10/2017 19:45:02'),(4,1,1,'dongsdongs','jemoeder','hahadongs','','01/10/2017 19:45:56');
/*!40000 ALTER TABLE `private_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `private_msg_reply`
--

DROP TABLE IF EXISTS `private_msg_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_msg_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pm_id` int(11) NOT NULL,
  `pm_read` tinyint(4) DEFAULT NULL,
  `sent_from` varchar(100) NOT NULL,
  `pm_msg` text NOT NULL,
  `pm_senton` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_msg_reply`
--

LOCK TABLES `private_msg_reply` WRITE;
/*!40000 ALTER TABLE `private_msg_reply` DISABLE KEYS */;
INSERT INTO `private_msg_reply` VALUES (62,10,NULL,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf/QI+XX0PXRsRfwK6VPyWFh20RcWw8aa8qjVOjRGnm6G5O\nYOs6Q1wkp4QwQxdiEPXGx5111LRQfRKp4MGObUMda0coj3lXdHSxfafszF5AQpfh\nHDW1iVcWqPjCq7e6hQJis1/W1B8F51pQnw4zQl5Kq8k3L3kXrBY98MPV660jNtvn\n3WGZf6C928O20zW/R0RQ2QPzg6k+NAYqa0hFIIinGhe6lTpvTS4LVNDs0mIZALoP\nWB+S+dNXawXLWemw6kptAvN4r8QFwL2P2VZZNZNWwtpEV+zDn+Wegz75UQXfba2m\nLqCASv1MWR/SSc2sAt5Pvsvpdoy9aHBN/1Yd2AAt2skcc3K4sNwwdvpWWw3xeHZh\nOlNs2lNIvvcisUmKgQ==\n=dQ4q\n-----END PGP MESSAGE-----\n','06/09/2017 18:21:15'),(63,9,NULL,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf/Vm+YoO3+mW1SBEK3GJ8w83PZoG8KAuLTeB4CtOY/Ng9u\n/x0TVEzkzpxQHXCBi6VJQEZ6IOhTyAD2tUYVPkqfsU++8nTn9neyOmqWIjRpesxB\n1+vkBsLWBG7vC4SUKLPdoF5RK6WVk+v3xaP4fWeGPYC4krVmh6AdBMjD3Y+BOijH\nEAqWao6NwkE1kLHNGOWiWf5qDeeFyR7tlBV7qLhUJNgsJ6uQnwkwtQ9k8VdkaNu9\n2F+fYPJe2AqZxl2y9L6GFEw2nUeMRcSFYPvGIxOZDUa7Q5YN6VSh8TkDLJkGJ2LK\nqmnv1ZA3ASj/qdmDKiMIHv5wL8mO3/MVBQcAiMcn88kex287YrZr29ls3q7acjYg\nSOxMPZMiUbIa7wBnJLS/\n=HiaB\n-----END PGP MESSAGE-----\n','06/09/2017 18:21:39'),(64,9,NULL,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf+OKKwQEP+eXci5wtehh5WWPisTlptPx2bJ9KtetXyN/4s\nRffqnzoaWCfzTLJMkMDPLlF2T1L/Q8DiGxwJFoq7hfiZaWFIiBLiJK34F5QELm4C\nbvg+yuJeCM7D38/+0xZ6uON8uEdqdzxBUc3eB3qGDtrp9/wBz5RNNUekr48S+dmO\n8UpEbjqAleeRtG2zFJsnxqRKHrpJdhEARi+VjVfD9Ha2V2cfC0Gk4IOOQrjqyms0\nN0xZtw+pXF+LhXRppryX/KdXlVv1rHh6dcxfrkturO0BfqxgCzmI4zWDZbLZuQdq\nDwYKq5VUrwbYNpEAvpy3ET/UEhUG/nNy7ffPVWYAIMke5bsDkWJNP/jOJ2+2PLTz\nOHBfdbER1daJNzg/eAmT\n=QlPj\n-----END PGP MESSAGE-----\n','06/09/2017 18:22:17'),(65,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf/eAACJeKQ3xmjuh1WVhfcByt+8ASndcWp0Ih8iFLBcJiW\n/yAbw54eOgVhrSWZQ8uTqJzT93DZ1RZTu+680l9D7vVjB8TWW4tpzz8gV6OQ5g1B\nt9XW3/El//TBTv3yxoJoWcePvg0IeyChA9ZMAFgys9EVL7RLcNMCwdD75jLI3Xwv\naFn3c/3vI2QzdZj4AbXswuqS4D2v3sqevCFhzPGUVzLdsuAjJacu+eswcOQjPWT5\nD7dd0EwVmHeVFbfPlPrSK0MBXPrFpOKml9VuObcol5mEoVdSOH37Ly9rwOpPbAP1\nn46Km4wnZmNqI6qWIMuXDXgv1gCRx43PaNypfIsqicke2RfQEly1c4nMw/dwBYtP\nCkFaGatgfvsqX5u82JwQ\n=pXVW\n-----END PGP MESSAGE-----\n','06/09/2017 18:27:25'),(66,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf8C0DQ0SuEzcGdRw7g7RGJH4i7wozsPhlWBdKXsjbQfYdJ\nmvGV7MmwZU9WNMzjV3DL2y5ZjmM8N6Jz8c/6PK8H+/rEOXHLSlPvYAmUB39WeYwN\ny4Y6oC5eNWCAgS96kVTyn6xYW72VF2zRIfGUfDnimBYMgYO9UUQ0PuXNlP6X4fvB\n8GDjN2EdDqHtO3EB49BDG3fMNfUFE7EwxyHBCUbTZl4/xcmEw1sFUbrtDgtXHTt4\nE+07EuygmpW0QGOF1SPeywEE4bwrbmgHnaGS6dDiUKgWGsA3goFQ2g1xUbB594rS\n5Mdqtl0JPdtQzBYKcbh+9+1vl9QYzRGvnl0ETVLGKMkiegddRzskOLufmjGwja8t\nbrGHhVagO/34YjMeFtu9vw0BWg==\n=wDyf\n-----END PGP MESSAGE-----\n','06/09/2017 21:00:16'),(67,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf7ByvrM/QOf0r+Q91S1dzzQkVAjDDHiKdH7093fgOZCsly\ntJ30Io71thNPVgcIs49XIkFdab5WEEJsy72U9jeer6bTn6hyREUu+uf5L1so4Ejw\n9eJ1eZpNMCDRpL0UYBthyAD/HuTFMfMVP5P6ONBzD1wu7W87KgxQBOEkgCJrNL/i\nNF8jChkTZC/pwoGfULSb2aiaboB1AsA1HoKptfHkmJbEsGHMABeOQgs1b57ecBRk\niUm92nWtnx9rKWPGCWzGm0ybC21nJ90vaaQLYyLvBGi0idrThE0yUkuRtSNUx7TI\n8MVJzY1i5fafnGCD6JFC4CboJ7qQkg8pZmMTk80ZgskdEopImgPXE/ENyccFBYsW\n3pZ0ePNdR6DFpp4F+oc=\n=tvcn\n-----END PGP MESSAGE-----\n','21/09/2017 18:25:16'),(68,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf/fD5QjsgHJxArDMprzP5p/9Qz/DG45j70oehjHZq5Ta7P\ng98T+lkqLPFme7cu3UNgaCGF0F5JMLgLpsZPfEYeQdlbWOZh0LwVEAG+tv5/oKEE\nhz415D/zpNz/oDXURBHeqOeu4Qr2pK/CuU3L7hReWQtn81ovX9CUr8DR6zXHWMvW\nBV6ywwS6GZTP9/RpgMVqVv01pgA+JXa8v3eoZxvCg4Fd1ofR51J3Pcgm8kai+WrF\nTmkmJH8c1dLHSj4c/SXVR+wARLA8WMqra2tbOQOnvOw5m/J4Wo7S35/7itiotdVn\nN6d1hWETue+F3F+2lzIQPjOTKTYBbTKrMZXEIkWR0ske/yFPzdyf+T2TMlEAnk50\nG1FZQgpWiSSY1I3F7nA1\n=IOw8\n-----END PGP MESSAGE-----\n','21/09/2017 18:25:54'),(69,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf7BU/FYjiFk2MmYZOkvciOG0DYJ5Wug3IxsK5jiSmpMziV\nJ8vD5ffftAmJPmbcQXyYSnI735WYDl17A7gHQAbzZqpO2bmsnXrxdsDhZqoIjmo7\nBdOwr7tKBIxwI4AeVwqO1xaqdKZVmmdKIbbLvzCby3hs8VZQwIbpoLn3he5BpoJa\nNEhCie2uGnNs/8L6L6JCIEBd0CEFWxfvNEHBIhiz+Q8inBIzydl/XiFGWkswqQ0b\n8EcaS/xnM5VQ3lfAhfMZ8MjvgDgxZABn35zry55R7p0T5oiES6yTWmxF+cfyi07L\nYSxgHquqaBoY7PaXIpdLEXw0GDTUtDD437wUwN8SE8keXN5d6isZaAZ4UgFyQ1z9\nzzfcERHzstxl0QzE3Y7R\n=D3xT\n-----END PGP MESSAGE-----\n','21/09/2017 18:26:02'),(70,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf/Wbmite6JiAHB+7090GouB16Q9oJRzBKE62u/L4YQX/Nj\nEe2hgF51SOc+oOPjJRqe7YPYtO3soIoaV7Pczl6rwJAxax0fb1rzwVy3XqPyZNTC\nLOgzBVMnOVsQqYh4tL2YcBGtAbEWWhQrWy2DpxKXWVrbnb8OVbKGr7/DleSDvBSt\np6NvZXN0DRawkubSur0ooIa4LA4LespMfCAlSdXSoIR47bUFAI7vCNtxFYRxKADh\n49+NOx82Alg5XeMIlK5kzHL/puVY9ZIL22msDVsiX5tAMKohlhqL9vtpSsdng5Qu\nxpWD9xiHT6uE0agvwWIhbP/7emzLvvDu8lbYu50hAMke5b2M9a/8+E5zcKYGvuHU\nhainfK/OLDUdE5amVqEB\n=4I15\n-----END PGP MESSAGE-----\n','21/09/2017 18:26:15'),(71,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf/Xev/twQSERLGSd2ucnC8nyTTnDW73tTWNArAdtLq5ECI\n24EfJUCum9A4Uf62b6KtA2KKnLp/8gqTyj/ckVVx+Plc1GG5Ftd1PTRlndNj0N3H\nzPdcbAm785xmoZ+L0pDj07m+mXrfePV537MtXMuCXALnm6mdTLzH3siA7sM4APK5\n3qsQ+kdtXauEsfE4UTI/uxgbtZMtzvIrP1g10QR8bUZrt8yIL/WNpfIQr+iKBeYs\nR97mhtsQh96Ej85Zf74F3to9zISTXqR1CI5UTrOEiWkliIdtL73Q57X1zNX1r0zZ\ndZKfq4UYACvl+TmN/PT7h7R+QJvHs1JgffVYZrk3NMkeFICDsCKKStVRIFp/+/JK\nAY9h7WX0Cn8HJ0TefWaF\n=szT2\n-----END PGP MESSAGE-----\n','21/09/2017 18:33:07'),(72,1,1,'jemoeder','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyNC+RTlYEuZAQf8CLNZ1J9a7rsscHdYMQNb8JWlJUHGw+iLLM0sHfvENYpN\nFh76+obCb/dGLiCloZnlbadoQlCt/9q40wTZEZfVBf3fud4LP5J8qRLFxXFlPzr3\n5LPMrqYzT8weJnSx3s/91d2S8UkwFJTgYaUTAgGt1pbIKiUMaZW5/8jqfL6EvGsC\niptujTCbuQI0TEl8MlD+RK3jEjBu4JoDKp9q5F8uyYt7JvTouhxKt0S0b+V8mGlb\n5UuYz5r9Kt8zIqTX7r8eVHHi5BVNFcjy3vv8Pr8xjIe+MshFjF2FHHfBG9cLxn+S\ntbYzZ/KfEMGYuIwQ/7By43V/eyb4d0Rfo4bM1fYLbckeoDm6AAZtUFOBQwRnYQ2C\n2yWAuA5hJWOijseFa9H9\n=djnj\n-----END PGP MESSAGE-----\n','21/09/2017 19:59:19'),(73,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf8CsDE1HdqnwFyO47OjPUXOXaPYqskZO5NsqfH/ZkjN13j\nnITVzjloARY3og5v8pA2II7Bkv4OjxZjxI54BUbFY++Ow9Mxc9/riRQ7fBcZJ2bN\nvo4ULoDndHbnxX/UnxBSD0F5zt9xaQwXc81Gcwoz35kJGyvRjErozpXZqXw8kb+2\nd/BBQjfhLBuPqWOwBpVRpPxRO4LqaTORmkRl3DL1wzH9FtlhES8Y9HsUvk4cRLXU\nPAJWpV+XI62pdPqkWZ6tIVsPb5DNFm1yXo3+hfz2m1b/cP/swjGsFfi2QRn9FVxm\nlqGtMy2I4ddsrLz+tmJU/AUa/GNFAX0eznlV+yFJdMkeQ0PWZng1K62ibSngoMMZ\nOJ90ONa8MEnwRZmF/6X4\n=JpFr\n-----END PGP MESSAGE-----\n','21/09/2017 20:05:11'),(74,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf/UNTY68ZQX6PZ/SQiQSSvT1b07Wif/ksT30PoaIrTUMsg\nT2ai1eF/vgH1VaFwSfIfvo9PCgqhkVT8U1At4c5O3vcKcGUdgguoPQgSqSkvRTCq\nsXz02Mh9bFSzmQgtgj/t/sGq98ugYsqcwsYh8eFrV7x4gG80dAcyEF6fTJLzNcps\njbQTOWHoO9GfjAzT40C/PwREngTvIgZ3Q9KHwwV5mxDXDe/pgvZ32z+gbU9DGEs4\nwdQjMyslq+UOrT+o58H4aiMwoJp8gTc0uC0COdiTFsOggzHk+gNCEfg1CJKpwgO2\nvicyxQQwVjFf+ODtQ271+hDIB06wgPJf++gZvPGw0Mkf7wl0iJFGr5LOGHUbt2ah\nvHefHxix09AM5EuJVPU8cQ==\n=1/K2\n-----END PGP MESSAGE-----\n','26/09/2017 11:57:44'),(75,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf/daTKYgj6sPFgndErzUtkR0TtTUDC+SMlXCtJ411hhBeD\nSr9NE5Z5F0qBg56RlyyBiiYE6aCaOtAv92PCaEg2D5uAiYmksTzMMUCGNdGmuASc\ncHarGsYR9CsjvN1BL7jyTECRAFSDxzS2b1NqcGQzVYJIS9YOLZPdvHs7gOObTFM/\nRcSBxY1cLLjhLV5UstX4t0SeCP7vO8bMuwolexvAANlVPgc+hIuFQrLJiQR2t46H\nShnxEkMaimv+c/zX9sow+Ue+UZpWMe4W5u4UmvgcwJHtiwf66gsoQdg3hzW7lKaU\n0GwJ9mnbeN3iWE4/jR2pxbWqygdi++XvvcJ0kxKevskfbWyKu8+7nXbYmfOC96T4\nY9c9AuilM8COiq0HW8U8tQ==\n=7SN0\n-----END PGP MESSAGE-----\n','30/09/2017 16:35:48'),(76,1,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf/Z27OjokqeyiXsdQ9g3ldP89B9yqkn032acUza/TnL4cP\nJn1iiUISzpCuaZTWO1GWKFT0XGzyC77/zLACZL8AEjPyucAkRvUFQtUSMOWQMXWi\ntwI23xBEzml3VC1hK/SkiltjS1uatcFgb7Fqgmnt639giAL0zbuGl5q7EFq+MbDc\nAtlm6akJj/8YO+cR4EBjyVexD8YMqCAzkVhlsjYWU+7+D+07uMXwTLt3Z15QPfvN\na1twOZN7HKbP6wiRWIfqdraY0obKk+408V2JOxWyyBr8ejTUt9RXN9V9LYqoFrPs\nuo/rnwniHM4Hp4UOy4CXf/dVz/WU+Lx2fknGbaZsL8kdct86tYVJmgxCo2u+bKxS\nxNpDtriSf4RkvZz7hWY=\n=uOF+\n-----END PGP MESSAGE-----\n','01/10/2017 19:41:44'),(77,2,1,'dongsdongs','-----BEGIN PGP MESSAGE-----\nVersion: GnuPG v1.4.12 (GNU/Linux)\n\nhQEMAyZUsoePewuWAQf+J6zwil/A4BvlUx5LwMAhvKx3ZIPN9OZakmM/xABSOZIU\nVE35NfGXU34M9fqffltIRD+00T/6jbw1z8pwo9u0spWe6kaqI25Th1oj2I090mdX\nGdOZ/ofxliWpssUPjZ4nQTDHc6aIRcokNjud1cA/xHUbKMlfDXH/YHdp/EBtTDUp\nHGR7B1m/UQ2x1rw9MFaonD/MDvknxLDjMz5UaOS8WgAjxQu4grswRxcZvWobvrRO\nk0HlYPvh7AonGMHSyYhqVFx0XFZAqHFA/OESI4nWnMTupRCxXCICmyLI0RYIdsSb\nHSQam92vs09BleLzJBFWio2+4al/oKG2IxBT666reckdmQ9WRaDZjq6tutUosAYj\nRuv7ahrUM7ZTSywp58s=\n=BcLW\n-----END PGP MESSAGE-----\n','01/10/2017 19:41:53');
/*!40000 ALTER TABLE `private_msg_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review`
--

DROP TABLE IF EXISTS `product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review`
--

LOCK TABLES `product_review` WRITE;
/*!40000 ALTER TABLE `product_review` DISABLE KEYS */;
INSERT INTO `product_review` VALUES (1,1,11,11,5,'haha good review','05/08/2017'),(2,1,11,11,1,'haha good review','05/08/2017'),(3,1,11,11,5,'haha good review','05/08/2017');
/*!40000 ALTER TABLE `product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featured` tinyint(1) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_description` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `ShipsFrom` varchar(255) NOT NULL,
  `ShipsTo` varchar(255) NOT NULL,
  `price` decimal(65,30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tags` text NOT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `code` varchar(12) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `Category` int(11) NOT NULL,
  `SubCategory` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1,'testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'testetset22','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,3),(2,1,2,'2','','2','2','2',0.000010000000000000000000000000,11,'22',0,'2',NULL,NULL,NULL,NULL,2,4),(3,1,3,'2','','2','2','2',0.000010000000000000000000000000,11,'22',0,'3',NULL,NULL,NULL,NULL,2,NULL),(5,1,3,'2','','2','2','2',0.000010000000000000000000000000,11,'22',0,'1699',NULL,NULL,NULL,NULL,2,NULL),(7,1,3,'weed','','test','2','2',0.000010000000000000000000000000,11,'22',0,'12322',NULL,NULL,NULL,NULL,1,3),(8,1,1,'12','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'testetset223','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,9),(11,1,1,'2323testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'12','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,9),(12,1,3,'testetset123','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'13','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,9),(14,1,3,'testetset22244','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'14','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,9),(15,1,3,'hahhahadf','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'15','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,9),(16,1,3,'testetsetasssssss','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'16','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,9),(17,1,3,'testetsetsszaqwre','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'17','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,9),(18,1,1,'testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'18','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,3),(19,1,1,'testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'19','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,3),(20,1,1,'testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'20','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,3),(21,1,1,'testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'21','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,3),(23,1,1,'testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'22','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,3),(24,1,1,'testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'23','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,3),(25,1,1,'testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'24','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,3),(26,1,1,'testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'25','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,3),(27,1,1,'testetset','Some high quality bs mans','testetsettestetset','The Netherlands','Worldwide',0.000010000000000000000000000000,11,'hehhe hehehe hehehe hehehe',0,'26','http://cdn-mf0.heartyhosting.com/sites/mensfitness.com/files/styles/wide_videos/public/marijuana-dispensary-holding-weed-1280.jpg?itok=fAYlnutR','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg','https://thumbs.dreamstime.com/z/dried-marijuana-bud-visible-thc-28822136.jpg',1,3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_text`
--

DROP TABLE IF EXISTS `site_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_text`
--

LOCK TABLES `site_text` WRITE;
/*!40000 ALTER TABLE `site_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `enabled` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,1,'Barbiturates',1),(2,1,'Benzos',1),(3,1,'Cannabis',1),(4,1,'Dissociatives',1),(5,1,'Ecstasy',1),(6,1,'Opioids',1),(7,1,'Prescription',1),(8,1,'Psychedelics',1),(9,1,'Steroids',1),(10,1,'Stimulants',1),(11,1,'Weight loss',1),(12,2,'Data',1),(13,2,'E-books',1),(14,2,'Erotica',1),(15,2,'Fraud',1),(16,2,'Security',1),(17,2,'Software',1),(18,3,'Hacking',1),(19,3,'IDs & Passports',1),(20,3,'Money',1),(21,3,'Cash out',0),(22,3,'Other',1),(23,2,'Other',1),(24,4,'Counterfeits',1),(25,4,'Electronics',1),(26,4,'Jewellery',1),(27,4,'Lab Supplies',1),(28,4,'Defense',1),(29,4,'Miscellaneous',1);
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_comments`
--

DROP TABLE IF EXISTS `ticket_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_read` tinyint(1) DEFAULT NULL,
  `comment` text NOT NULL,
  `comment_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_comments`
--

LOCK TABLES `ticket_comments` WRITE;
/*!40000 ALTER TABLE `ticket_comments` DISABLE KEYS */;
INSERT INTO `ticket_comments` VALUES (49,10,11,1,'Hello <u>jemoeder</u>,<br><br>This ticket has been set as <b>closed</b>. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!<br><br>Kind Regards,<br>The Amber Road Support team.','01/09/2017 10:58:04'),(50,10,11,1,'asfd','01/09/2017 10:58:13'),(51,8,11,1,'sdfgsdfg','01/09/2017 10:58:37'),(52,11,11,1,'asdfsadfasdf','01/09/2017 11:02:27'),(53,10,11,1,'hehe','01/09/2017 11:26:17'),(54,10,11,1,'heh','01/09/2017 11:27:10'),(55,10,11,1,'ge','01/09/2017 11:27:13'),(56,10,11,1,'xd','01/09/2017 11:27:19'),(57,10,11,1,'zzz','01/09/2017 11:27:31'),(58,10,11,1,'ff','01/09/2017 11:27:46'),(59,10,11,1,'z','01/09/2017 11:27:58'),(60,1,11,NULL,'das','03/09/2017 10:53:19'),(61,2,11,NULL,'Hello <u>dongsdongs</u>,<br><br>This ticket has been set as <b>closed</b>. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!<br><br>Kind Regards,<br>The Amber Road Support team.','06/09/2017 21:09:31'),(62,2,11,NULL,'This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!This ticket has been set as closed. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!','06/09/2017 21:09:42'),(63,4,11,NULL,'Hello <u>dongsdongs</u>,<br><br>This ticket has been set as <b>closed</b>. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!<br><br>Kind Regards,<br>The Amber Road Support team.','15/09/2017 08:12:41'),(64,8,11,NULL,'Hello <u>jemoeder</u>,<br><br>This ticket has been set as <b>closed</b>. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!<br><br>Kind Regards,<br>The Amber Road Support team.','15/09/2017 08:12:45'),(65,9,11,NULL,'Hello <u>hehehackme</u>,<br><br>This ticket has been set as <b>closed</b>. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!<br><br>Kind Regards,<br>The Amber Road Support team.','15/09/2017 08:12:49'),(66,1,11,NULL,'Hello <u>dongsdongs</u>,<br><br>This ticket has been set as <b>closed</b>. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!<br><br>Kind Regards,<br>The Amber Road Support team.','15/09/2017 08:12:57'),(67,11,11,1,'Hello <u>jemoeder</u>,<br><br>This ticket has been set as <b>closed</b>. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!<br><br>Kind Regards,<br>The Amber Road Support team.','15/09/2017 08:13:02'),(68,11,11,1,'Hello <u>jemoeder</u>,<br><br>This ticket has been set as <b>closed</b>. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!<br><br>Kind Regards,<br>The Amber Road Support team.','15/09/2017 08:13:35'),(69,6,11,NULL,'Hello <u>dongsdongs</u>,<br><br>This ticket has been set as <b>closed</b>. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!<br><br>Kind Regards,<br>The Amber Road Support team.','15/09/2017 08:13:43'),(70,6,11,NULL,'This ticket has been reopend','15/09/2017 08:14:38'),(71,6,11,NULL,'Hello <u>dongsdongs</u>,<br><br>This ticket has been set as <b>closed</b>. If you have any other questions regarding The Amber Road feel free to sumbit a new support ticket!<br><br>Kind Regards,<br>The Amber Road Support team.','15/09/2017 08:16:13'),(72,2,11,NULL,'This ticket has been reopend','16/09/2017 18:42:27'),(73,2,11,NULL,'xcDFASDFASDF','30/09/2017 00:17:13'),(74,12,11,1,'sadfsadf','30/09/2017 00:18:27'),(75,3,11,NULL,'asdf','21/10/2017 20:28:44'),(76,3,11,NULL,'asdf','21/10/2017 20:28:47');
/*!40000 ALTER TABLE `ticket_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `ticket_type` int(1) NOT NULL,
  `ticket_issue` varchar(255) NOT NULL,
  `ticket_comment` text NOT NULL,
  `ticket_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,11,0,2,'I have a issue with the planet br0','<h4>I have a issue with the planet br0</h4>','17/08/2017 23:21:26'),(2,11,1,2,'I have a issue with the planet br0','<h4>I have a issue with the planet br0</h4>','17/08/2017 23:21:26'),(3,11,0,1,'<h4> je kanker moeder</h4>','<h4> je kanker moeder</h4>','22/08/2017 00:09:45'),(4,11,0,1,'<h4> je kanker moeder</h4>','<h4> je kanker moeder</h4>','22/08/2017 00:09:47'),(5,11,0,1,'test','test','22/08/2017 00:16:54'),(6,11,0,1,'ffff','<script>alert(\"asdf\");</script>','22/08/2017 00:23:59'),(7,12,0,1,'<h4> je kanker moeder</h4>','<h4> je kanker moeder</h4>','22/08/2017 01:15:15'),(8,14,0,1,'test','test','24/08/2017 23:32:13'),(9,17,0,1,'test test','testsetset','27/08/2017 22:58:00'),(10,14,0,1,'PLease help!','test','31/08/2017 20:21:27'),(11,14,0,1,'safsdfasdfasdf','testt','01/09/2017 11:02:17'),(12,22,1,1,'123','please help xd','30/09/2017 00:18:13'),(13,23,1,1,'fasdfsda','fasdfadsf','13/10/2017 22:11:22');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `btc_addr` varchar(35) DEFAULT NULL,
  `site_balance` varchar(255) DEFAULT NULL,
  `escrow_balance` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `profile_pin_hash` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `date_joined` varchar(255) DEFAULT NULL,
  `last_online` varchar(255) DEFAULT NULL,
  `is_vendor` tinyint(1) DEFAULT '0',
  `shop_info` text,
  `2fa_status` tinyint(1) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `pgp_public_key` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'dongs','',NULL,NULL,'b6fab94d0abac18a177398ef2ef9a81cdfc8e5bd3d65893cb4a97f968ea4d574','8df5ed0ef397fa4ada277e9f5e8e5d8eeacc50beb1de38dcae762557d9f3084e',0,'','',0,'------------------LOLDONGS----------------\r\n\r\nSUck a dick man!\r\n------------------LOLDONGS----------------\r\n',1,0,'-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: BCPG C# v1.6.1.0\r\n\r\nmQENBFmeJdMBCACdC15Q84rGcqeaTLzgZHsCh6ffMAmhi/jzG6DBhe7U5830ul2B\r\nO/JuLGA+PT82VlJcnLO+YaJl7GDE2QXY3dgaQG2oN9wMGubvO8PipRsYSxPKSNBl\r\nOocuWErkT9wcAYI/RlFVxpvb0rSJN81O6BW+TozHLlTUkA/WoGCdMl5xmgpVEtz9\r\nNIGtn6C0NgJoMSSSanhVvjgkLq1G6NALvR8LBsGPuWFYhNaNjaVgsvHrXIeMBbzh\r\nae2FW6KpFBHxcUwNhkIwBzvHXGaR/34ZDR5rmb4AyggTnl2CMo7mK/sgSQtmLOi3\r\nSz0UnGxuILoQl67PqB/eExyar+EeYPNV52tbABEBAAG0F2thbmtlcmRpbmdAamVt\r\nb2VkZXIuY29tiQEcBBABAgAGBQJZniXTAAoJED4jr847+MUAnQsH/14sXpIR26V4\r\nuC+uQ7S4RnintJdHTq3rIxUerWmpojr+AOdzfc6ZkPIf6phoQZ2iUWMQMX0rLZZW\r\nfbRvVYZGFnY9eFLYRckQGT0JSnTCpHFPsgoyYXwCbQBQcGXAwAaGwG/Q1kpWyiKy\r\nulbi/XpJCOhL5Az/muVPj6lwbSQU/Hmyryr646iZX9yQHGLh6pTHYripNB1oygvK\r\nB9dxWeE0KION89ojSehSJuQ2kO7EgSE+xaw7qxar8dZXpNTZiWWZNqwQQCZ2MgvU\r\nyEOq8M52SvQxxXZ2NUbRSIh5v3jAi3oziR6jx7l02ebZtAMXqonSZIGhMGk6d6CN\r\nF6s2pZC/I/c=\r\n=wblH\r\n-----END PGP PUBLIC KEY BLOCK-----'),(10,'testtest','',NULL,NULL,'f7c1fc4a24f639bd4732aae2e87299da3be165e0fc47ee26779b1f924d1c64f4','f7c1fc4a24f639bd4732aae2e87299da3be165e0fc47ee26779b1f924d1c64f4',0,'','',0,NULL,0,0,NULL),(11,'dongsdongs','.1B83pwSMAvWoqF9wgBQmqcYwPhW39McMuw','0.00002',NULL,'53492467a3a9afec1646f5f69a8ddf44f8eb098e14d433d0004b83c9089fe921','53492467a3a9afec1646f5f69a8ddf44f8eb098e14d433d0004b83c9089fe921',1,'15/09/2017','30/12/2017',1,'------------------LOLDONGS----------------\r\n\r\nSUck a dick man!\r\n------------------LOLDONGS----------------\r\n',1,1,'-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: BCPG C# v1.6.1.0\r\n\r\nmQENBFnb9HgBCACHCNO0HFuk0tPX2mB4DbzxcvzSf6rsIIIhAb82shBH1JD5jUsz\r\nA0IhHHoZgAvvoYPt4r7n4tHDUfIi5o5G9PFvASxo8awLH5VcP2+cvwFkSPX+C8AW\r\nyiwT0Zw9iugp0BBkbYWIoEfnGdCoqVEON0YBvUGWkLA8GWbhCqGwxZ3d6GmbWJ5B\r\n2Uyl/Py4X+1flMWwww9/gbD6QNHXztASk69Mu1viK5aTV5DSk4fjH7SvVj7Evd38\r\nfdwIe52c5rvZpb+XORmngHtIs8fMLze2AlJMXIyod9DDzwlVjc3pTGBsJW8PJQeb\r\npwnlcWL2SuKqN6XX3GblzSI9EUPLYAUp4UM7ABEBAAG0EWplbWFtbWVAZG9uZ3Mu\r\nY29tiQEcBBABAgAGBQJZ2/R4AAoJEC6Tk9Cx7Y/IMdgH/A1bWmNMRMJqukOUorUT\r\n2fk7OV46eAtlN4RmJxah/27JsTPR+GqhSp3ZLafdXZ4foxuevmRCAGRRwR4nDbo8\r\nHuBdx5vqsS5OQzO04X6WpNls9p4HrIIkftxUwHCLLhflGfkB+5H1FAIvTZStOu4P\r\njlpIgkAWjsqOgAtQO7M6qkHVqnSsarRcBvLVxT1Pm706ClLE+1f/EgQOjxsqy8wg\r\nYW93hakQOK+qvObhjd3k3u5XMXf2dnz2FpLMOHnWsbrdslVWLLqRbYU8BOrQzOrr\r\ndm0qnppSf2e3FhZGGmE3mYLvPT+y0jV22DCDzmhdQlrXlM0FZ2AOm5PFdYPTopnL\r\nP/M=\r\n=wRLT\r\n-----END PGP PUBLIC KEY BLOCK-----\r\n'),(12,'heheheh','',NULL,NULL,'edd2949db05a7a69971a576cc1e276e298e4e7630fd57e297510247ee3443fd8','edd2949db05a7a69971a576cc1e276e298e4e7630fd57e297510247ee3443fd8',0,'','',0,NULL,0,0,NULL),(14,'jemoeder','','1337',NULL,'1f03e2176fe67021eb944dd07e29908be597ac157b4d6cad2ca1bdba993a808a','1f03e2176fe67021eb944dd07e29908be597ac157b4d6cad2ca1bdba993a808a',0,'','13/12/2017',0,NULL,0,0,NULL),(15,'ewahoer','',NULL,NULL,'d86000bdd4fb165f73530eb54568380bbdcbb5a3dbafb21c3606f619ba321db2','d86000bdd4fb165f73530eb54568380bbdcbb5a3dbafb21c3606f619ba321db2',0,'','',0,NULL,0,0,NULL),(16,'hehedongs','',NULL,NULL,'e0567328c02e823f86f6982adf6015ef9eba370ad5a28c48f7345260af43b405','e0567328c02e823f86f6982adf6015ef9eba370ad5a28c48f7345260af43b405',0,'','',0,NULL,0,0,NULL),(17,'hehehackme','',NULL,NULL,'9e5291ac3e561949b163200fd2be2a6317fca9b42a581287cf127db3c96ad104','9e5291ac3e561949b163200fd2be2a6317fca9b42a581287cf127db3c96ad104',0,'','',0,NULL,0,0,NULL),(18,'asdfasd','',NULL,NULL,'224bf78639464ef5a91643ae8e1eccfd7a43954dde07b22817589954c25ce6f7','224bf78639464ef5a91643ae8e1eccfd7a43954dde07b22817589954c25ce6f7',0,'','',0,NULL,0,0,NULL),(19,'saafsaaf','',NULL,NULL,'61a44e4eb3f3c1725f8772d9e1ddf7dc56f60217e1dd040ce256bd8290a2fdaa','61a44e4eb3f3c1725f8772d9e1ddf7dc56f60217e1dd040ce256bd8290a2fdaa',0,'29/08/2017','29/08/2017',0,NULL,0,0,NULL),(20,'watisdit','',NULL,NULL,'c70a52aabf090b109add1b0b799f4a44dcda7dbfd19b56a783dbaea8972c86fa','c70a52aabf090b109add1b0b799f4a44dcda7dbfd19b56a783dbaea8972c86fa',0,'29/08/2017','29/08/2017',0,NULL,0,0,NULL),(21,'hoerenzoon','',NULL,NULL,'0ac7781574523b5a85c65b836987d4063e4bc3aa0a86f25f3b327041174575f7','37007a554308007d52ff7f907a6d6c92ab32e8169eb9420428dfb71a89022ded',0,'31/08/2017','',0,NULL,0,0,NULL),(22,'hahaxd','',NULL,NULL,'37804b5686f5d0fd740b26f651aa460cdafa927368552abd517f2aec009faece','37804b5686f5d0fd740b26f651aa460cdafa927368552abd517f2aec009faece',0,'30/09/2017','30/09/2017',0,NULL,0,0,NULL),(23,'dongsdongsdongsdongs','','',NULL,'753aca1fcad3d5d8d0130ab85ec3306e36520b7a27d5c91df8f1789e7e743031','53492467a3a9afec1646f5f69a8ddf44f8eb098e14d433d0004b83c9089fe921',0,'12/10/2017','26/10/2017',0,NULL,0,0,'-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: BCPG C# v1.6.1.0\r\n\r\nmQENBFmeJdMBCACdC15Q84rGcqeaTLzgZHsCh6ffMAmhi/jzG6DBhe7U5830ul2B\r\nO/JuLGA+PT82VlJcnLO+YaJl7GDE2QXY3dgaQG2oN9wMGubvO8PipRsYSxPKSNBl\r\nOocuWErkT9wcAYI/RlFVxpvb0rSJN81O6BW+TozHLlTUkA/WoGCdMl5xmgpVEtz9\r\nNIGtn6C0NgJoMSSSanhVvjgkLq1G6NALvR8LBsGPuWFYhNaNjaVgsvHrXIeMBbzh\r\nae2FW6KpFBHxcUwNhkIwBzvHXGaR/34ZDR5rmb4AyggTnl2CMo7mK/sgSQtmLOi3\r\nSz0UnGxuILoQl67PqB/eExyar+EeYPNV52tbABEBAAG0F2thbmtlcmRpbmdAamVt\r\nb2VkZXIuY29tiQEcBBABAgAGBQJZniXTAAoJED4jr847+MUAnQsH/14sXpIR26V4\r\nuC+uQ7S4RnintJdHTq3rIxUerWmpojr+AOdzfc6ZkPIf6phoQZ2iUWMQMX0rLZZW\r\nfbRvVYZGFnY9eFLYRckQGT0JSnTCpHFPsgoyYXwCbQBQcGXAwAaGwG/Q1kpWyiKy\r\nulbi/XpJCOhL5Az/muVPj6lwbSQU/Hmyryr646iZX9yQHGLh6pTHYripNB1oygvK\r\nB9dxWeE0KION89ojSehSJuQ2kO7EgSE+xaw7qxar8dZXpNTZiWWZNqwQQCZ2MgvU\r\nyEOq8M52SvQxxXZ2NUbRSIh5v3jAi3oziR6jx7l02ebZtAMXqonSZIGhMGk6d6CN\r\nF6s2pZC/I/c=\r\n=wblH\r\n-----END PGP PUBLIC KEY BLOCK-----'),(24,'hehejemoeder','',NULL,NULL,'d5d4d62b7d840858eb31f9aaab3319f745650cbcce270af7ecac2457368fa199','d5d4d62b7d840858eb31f9aaab3319f745650cbcce270af7ecac2457368fa199',0,'21/10/2017','',0,NULL,0,0,NULL),(25,'hehedosn','',NULL,NULL,'9a862e5180c519deb6c9f582ff5e10cbcb5decc053be0ef2035ee2cb14bcc53a','7465c1215b1d1e94fabade96d2d4a1c85ed441d9d4f3d6923c11283742252391',0,'21/10/2017','',0,NULL,0,0,NULL),(26,'asdfsadfasdf','',NULL,NULL,'9b02fda4604e83d18e75b827e3731ac48230280c6da4fc2102d0293fccfc4c3e','09d8fa06c06be985229158df106624b4b1fa63822197921ae8ec9ccbd314af4d',0,'21/10/2017','21/10/2017',0,NULL,0,0,NULL),(28,'asdasdasd','',NULL,NULL,'16690e4e2f7f3a9bd16e2a1d4a049e2ae63c9df22a1b6da2fe7be45ddafd1f07','16690e4e2f7f3a9bd16e2a1d4a049e2ae63c9df22a1b6da2fe7be45ddafd1f07',0,'21/10/2017','',0,NULL,0,0,NULL),(30,'suckmykankerdick','',NULL,NULL,'a13da7166e80b075929395248f2c3e964022a401bf255c369946f092d473d7dc','a13da7166e80b075929395248f2c3e964022a401bf255c369946f092d473d7dc',0,'21/10/2017','21/10/2017',0,NULL,0,0,NULL),(31,'1234','',NULL,NULL,'08eba4a437565e1903ae6227db8d718c232870190fc7ea8d71bbf3334c52520f','08eba4a437565e1903ae6227db8d718c232870190fc7ea8d71bbf3334c52520f',0,'22/10/2017','22/10/2017',0,NULL,0,0,NULL),(32,'ewaewaewa',NULL,NULL,NULL,'4e91d0cce33b45268b468a5cae093329e3ec585c7f544b51eb7c572e45fe574b','4e91d0cce33b45268b468a5cae093329e3ec585c7f544b51eb7c572e45fe574b',0,'19/11/2017','19/11/2017',0,NULL,NULL,NULL,NULL),(33,'do1',NULL,NULL,NULL,'5b148d6b2ea1bca52d91b84dd27425f89c65e0b325eb606e2dcf6e55780aba31','5b148d6b2ea1bca52d91b84dd27425f89c65e0b325eb606e2dcf6e55780aba31',0,'23/11/2017',NULL,0,NULL,NULL,NULL,NULL),(34,'dongsdongs1',NULL,NULL,NULL,'53492467a3a9afec1646f5f69a8ddf44f8eb098e14d433d0004b83c9089fe921','53492467a3a9afec1646f5f69a8ddf44f8eb098e14d433d0004b83c9089fe921',0,'23/11/2017',NULL,0,NULL,NULL,NULL,NULL),(35,'hehehe',NULL,NULL,NULL,'e389bd88f2a11aba70a0c7aa66c51c4868b38594f643c3f2169270abce15c8da','e389bd88f2a11aba70a0c7aa66c51c4868b38594f643c3f2169270abce15c8da',0,'23/11/2017',NULL,0,NULL,NULL,NULL,NULL),(36,'HEHEHEEH1',NULL,NULL,NULL,'cb396457753e01a81370acfffddd818509b8234a2680ea7024420809cf38ada0','cb396457753e01a81370acfffddd818509b8234a2680ea7024420809cf38ada0',0,'23/11/2017',NULL,0,NULL,NULL,NULL,NULL),(37,'dongsdongs2',NULL,NULL,NULL,'d21818e3441689ddc27fc3e04f342b958e554668a75e574a390efd049271a7bf','d21818e3441689ddc27fc3e04f342b958e554668a75e574a390efd049271a7bf',0,'23/11/2017',NULL,0,NULL,NULL,NULL,NULL),(38,'nomakta',NULL,NULL,NULL,'d5bee3de6e67adad059163afbb929e6177ff58e5c54f0fda37e885ed3423721e','e09669f0b5fcb1a1c11d681c97fa9c83638e6105339f0b4071fdd06dc3e0859f',0,'23/11/2017','23/11/2017',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-02 15:05:08

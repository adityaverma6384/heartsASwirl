-- MySQL dump 10.13  Distrib 5.1.72, for apple-darwin13.0.0 (i386)
--
-- Host: nas    Database: heartsASwirl
-- ------------------------------------------------------
-- Server version	5.1.36

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (4,'Bank of America Checking');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add account',7,'add_account'),(20,'Can change account',7,'change_account'),(21,'Can delete account',7,'delete_account'),(22,'Can add finishedgoodsinventory',8,'add_finishedgoodsinventory'),(23,'Can change finishedgoodsinventory',8,'change_finishedgoodsinventory'),(24,'Can delete finishedgoodsinventory',8,'delete_finishedgoodsinventory'),(25,'Can add finishedgoodsinventoryitem',9,'add_finishedgoodsinventoryitem'),(26,'Can change finishedgoodsinventoryitem',9,'change_finishedgoodsinventoryitem'),(27,'Can delete finishedgoodsinventoryitem',9,'delete_finishedgoodsinventoryitem'),(28,'Can add finishedgoodsinventorytype',10,'add_finishedgoodsinventorytype'),(29,'Can change finishedgoodsinventorytype',10,'change_finishedgoodsinventorytype'),(30,'Can delete finishedgoodsinventorytype',10,'delete_finishedgoodsinventorytype'),(31,'Can add finishedgoodsmaterialsused',11,'add_finishedgoodsmaterialsused'),(32,'Can change finishedgoodsmaterialsused',11,'change_finishedgoodsmaterialsused'),(33,'Can delete finishedgoodsmaterialsused',11,'delete_finishedgoodsmaterialsused'),(34,'Can add materialsinventory',12,'add_materialsinventory'),(35,'Can change materialsinventory',12,'change_materialsinventory'),(36,'Can delete materialsinventory',12,'delete_materialsinventory'),(37,'Can add materialsinventoryitem',13,'add_materialsinventoryitem'),(38,'Can change materialsinventoryitem',13,'change_materialsinventoryitem'),(39,'Can delete materialsinventoryitem',13,'delete_materialsinventoryitem'),(40,'Can add role',14,'add_role'),(41,'Can change role',14,'change_role'),(42,'Can delete role',14,'delete_role'),(43,'Can add transaction',15,'add_transaction'),(44,'Can change transaction',15,'change_transaction'),(45,'Can delete transaction',15,'delete_transaction'),(46,'Can add unit',16,'add_unit'),(47,'Can change unit',16,'change_unit'),(48,'Can delete unit',16,'delete_unit'),(49,'Can add user',17,'add_user'),(50,'Can change user',17,'change_user'),(51,'Can delete user',17,'delete_user'),(52,'Can add log entry',18,'add_logentry'),(53,'Can change log entry',18,'change_logentry'),(54,'Can delete log entry',18,'delete_logentry');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$6T8yobrn6REh$d6Uwxvw7vwnXBpdrWDdJnxFFfIO31Cl7ZGmLFMg8Vjk=','2014-01-19 06:52:34',1,'lanceh','','','lvhutchinson@gmail.com',1,1,'2014-01-19 06:31:42');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-01-20 03:40:31',1,16,'1','Unit object',1,''),(2,'2014-01-20 03:41:14',1,16,'1','Unit object',2,'No fields changed.'),(3,'2014-01-20 03:43:24',1,16,'1','each',2,'No fields changed.'),(4,'2014-01-20 03:51:51',1,13,'1','MaterialsInventoryItem object',1,''),(5,'2014-01-20 03:52:29',1,13,'1','Trinket 1',2,'No fields changed.'),(6,'2014-01-20 05:54:15',1,7,'4','Account object',1,''),(7,'2014-01-20 05:55:09',1,15,'1','Transaction object',1,''),(8,'2014-01-20 06:01:28',1,12,'4','Trinket 1 quantity of 10.0',1,''),(9,'2014-01-20 06:01:53',1,12,'4','Trinket 1 quantity of 10.0',2,'No fields changed.'),(10,'2014-01-20 06:04:50',1,10,'1','necklace',1,''),(11,'2014-01-20 06:06:04',1,9,'2','Pretty thing made from trinkets.',1,''),(12,'2014-01-20 06:06:12',1,9,'2','Pretty thing made from trinkets.',2,'No fields changed.'),(13,'2014-01-20 06:07:50',1,8,'2','Pretty thing made from trinkets. quantity 1',1,''),(14,'2014-01-20 06:07:58',1,8,'2','Pretty thing made from trinkets. quantity 1',2,'No fields changed.'),(15,'2014-01-20 06:09:49',1,11,'2','Pretty thing made from trinkets.',1,''),(16,'2014-01-20 06:09:58',1,11,'2','Pretty thing made from trinkets.',2,'No fields changed.'),(17,'2014-01-20 06:42:15',1,12,'4','Trinket 1 quantity of 11.0',2,'Changed quantity.'),(18,'2014-01-20 06:42:20',1,12,'4','Trinket 1 quantity of 10.0',2,'Changed quantity.'),(19,'2014-01-20 06:42:21',1,12,'4','Trinket 1 quantity of 10.0',2,'Changed quantity.'),(20,'2014-01-20 06:42:23',1,12,'4','Trinket 1 quantity of 10.0',2,'No fields changed.'),(21,'2014-01-20 06:57:03',1,13,'2','Trinket 2',1,''),(22,'2014-01-20 06:57:38',1,12,'5','Trinket 2 quantity of 50.0',1,''),(23,'2014-01-20 06:57:48',1,12,'5','Trinket 2 quantity of 50.0',2,'No fields changed.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'account','inventory','account'),(8,'finishedgoodsinventory','inventory','finishedgoodsinventory'),(9,'finishedgoodsinventoryitem','inventory','finishedgoodsinventoryitem'),(10,'finishedgoodsinventorytype','inventory','finishedgoodsinventorytype'),(11,'finishedgoodsmaterialsused','inventory','finishedgoodsmaterialsused'),(12,'materialsinventory','inventory','materialsinventory'),(13,'materialsinventoryitem','inventory','materialsinventoryitem'),(14,'role','inventory','role'),(15,'transaction','inventory','transaction'),(16,'unit','inventory','unit'),(17,'user','inventory','user'),(18,'log entry','admin','logentry');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('14x5s9x8m4uifq9bsfszzf1o0rzqd0gl','YjgzOTk5ZDExMDljZjFjZmQxOTRkM2U3MDJjNzBhZTM0MTU0MDQzYzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2014-02-02 06:52:34');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finishedGoodsInventory`
--

DROP TABLE IF EXISTS `finishedGoodsInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finishedGoodsInventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finishedGoodsInventoryItemId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finishedGoodsInventoryItemId` (`finishedGoodsInventoryItemId`),
  CONSTRAINT `finishedGoodsInventory_ibfk_2` FOREIGN KEY (`finishedGoodsInventoryItemId`) REFERENCES `finishedGoodsInventoryItem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finishedGoodsInventory`
--

LOCK TABLES `finishedGoodsInventory` WRITE;
/*!40000 ALTER TABLE `finishedGoodsInventory` DISABLE KEYS */;
INSERT INTO `finishedGoodsInventory` VALUES (2,2,1);
/*!40000 ALTER TABLE `finishedGoodsInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finishedGoodsInventoryItem`
--

DROP TABLE IF EXISTS `finishedGoodsInventoryItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finishedGoodsInventoryItem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `finishedGoodsInventoryItem_ibfk_2` FOREIGN KEY (`typeId`) REFERENCES `finishedGoodsInventoryType` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finishedGoodsInventoryItem`
--

LOCK TABLES `finishedGoodsInventoryItem` WRITE;
/*!40000 ALTER TABLE `finishedGoodsInventoryItem` DISABLE KEYS */;
INSERT INTO `finishedGoodsInventoryItem` VALUES (2,1,'Pretty thing made from trinkets.','http://www.google.com');
/*!40000 ALTER TABLE `finishedGoodsInventoryItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finishedGoodsInventoryType`
--

DROP TABLE IF EXISTS `finishedGoodsInventoryType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finishedGoodsInventoryType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finishedGoodsInventoryType`
--

LOCK TABLES `finishedGoodsInventoryType` WRITE;
/*!40000 ALTER TABLE `finishedGoodsInventoryType` DISABLE KEYS */;
INSERT INTO `finishedGoodsInventoryType` VALUES (1,'necklace','A thing that goes around your neck and looks pretty.');
/*!40000 ALTER TABLE `finishedGoodsInventoryType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finishedGoodsMaterialsUsed`
--

DROP TABLE IF EXISTS `finishedGoodsMaterialsUsed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finishedGoodsMaterialsUsed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finishedGoodsInventoryItemId` int(11) NOT NULL,
  `materialsInventoryItemId` int(11) NOT NULL,
  `quantityUsed` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `materialsInventoryItemId` (`materialsInventoryItemId`),
  KEY `finishedGoodsInventoryItemId` (`finishedGoodsInventoryItemId`),
  CONSTRAINT `finishedGoodsMaterialsUsed_ibfk_3` FOREIGN KEY (`finishedGoodsInventoryItemId`) REFERENCES `finishedGoodsInventoryItem` (`id`),
  CONSTRAINT `finishedGoodsMaterialsUsed_ibfk_2` FOREIGN KEY (`materialsInventoryItemId`) REFERENCES `materialsInventoryItem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finishedGoodsMaterialsUsed`
--

LOCK TABLES `finishedGoodsMaterialsUsed` WRITE;
/*!40000 ALTER TABLE `finishedGoodsMaterialsUsed` DISABLE KEYS */;
INSERT INTO `finishedGoodsMaterialsUsed` VALUES (2,2,1,2);
/*!40000 ALTER TABLE `finishedGoodsMaterialsUsed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialsInventory`
--

DROP TABLE IF EXISTS `materialsInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialsInventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materialsInventoryItemId` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `transactionId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `materialsInventoryItemId` (`materialsInventoryItemId`),
  KEY `transactionId` (`transactionId`),
  CONSTRAINT `materialsInventory_ibfk_3` FOREIGN KEY (`transactionId`) REFERENCES `transaction` (`id`),
  CONSTRAINT `materialsInventory_ibfk_2` FOREIGN KEY (`materialsInventoryItemId`) REFERENCES `materialsInventoryItem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialsInventory`
--

LOCK TABLES `materialsInventory` WRITE;
/*!40000 ALTER TABLE `materialsInventory` DISABLE KEYS */;
INSERT INTO `materialsInventory` VALUES (4,1,10,1),(5,2,50,1);
/*!40000 ALTER TABLE `materialsInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialsInventoryItem`
--

DROP TABLE IF EXISTS `materialsInventoryItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialsInventoryItem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unitId` int(11) NOT NULL,
  `pricePerUnit` float NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `dateLastPurchased` date NOT NULL,
  `dateLastUsed` date NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unitId` (`unitId`),
  CONSTRAINT `materialsInventoryItem_ibfk_2` FOREIGN KEY (`unitId`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialsInventoryItem`
--

LOCK TABLES `materialsInventoryItem` WRITE;
/*!40000 ALTER TABLE `materialsInventoryItem` DISABLE KEYS */;
INSERT INTO `materialsInventoryItem` VALUES (1,1,1,'A cool little trinket that goes on a thingy.','https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&docid=oaaa0jCnewVx1M&tbnid=lyGvQ11KZSUBDM:&ved=0CAUQjRw&url=https%3A%2F%2Fplus.google.com%2F103206621581094983301&ei=P53cUq_zJZDiyAGGmIB4&bvm=bv.59568121,d.aWc&psig=AFQjCNHoI_q-b_vN21byHvedPlUkja8DAQ&ust=1390276262285775','2014-01-19','2014-01-19','Trinket 1'),(2,1,1,'Nifty thingy.','blah','2014-01-19','2014-01-19','Trinket 2');
/*!40000 ALTER TABLE `materialsInventoryItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `amount` float NOT NULL,
  `accountId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`accountId`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'2014-01-19','Michael\'s store purchases.',0,4);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'each');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(128) NOT NULL,
  `displayName` varchar(128) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-21 16:44:26

-- phpMyAdmin SQL Dump
-- version 3.3.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2014 at 03:08 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.26

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `heartsASwirl`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `account`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_group`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add account', 7, 'add_account'),
(20, 'Can change account', 7, 'change_account'),
(21, 'Can delete account', 7, 'delete_account'),
(22, 'Can add finishedgoodsinventory', 8, 'add_finishedgoodsinventory'),
(23, 'Can change finishedgoodsinventory', 8, 'change_finishedgoodsinventory'),
(24, 'Can delete finishedgoodsinventory', 8, 'delete_finishedgoodsinventory'),
(25, 'Can add finishedgoodsinventoryitem', 9, 'add_finishedgoodsinventoryitem'),
(26, 'Can change finishedgoodsinventoryitem', 9, 'change_finishedgoodsinventoryitem'),
(27, 'Can delete finishedgoodsinventoryitem', 9, 'delete_finishedgoodsinventoryitem'),
(28, 'Can add finishedgoodsinventorytype', 10, 'add_finishedgoodsinventorytype'),
(29, 'Can change finishedgoodsinventorytype', 10, 'change_finishedgoodsinventorytype'),
(30, 'Can delete finishedgoodsinventorytype', 10, 'delete_finishedgoodsinventorytype'),
(31, 'Can add finishedgoodsmaterialsused', 11, 'add_finishedgoodsmaterialsused'),
(32, 'Can change finishedgoodsmaterialsused', 11, 'change_finishedgoodsmaterialsused'),
(33, 'Can delete finishedgoodsmaterialsused', 11, 'delete_finishedgoodsmaterialsused'),
(34, 'Can add materialsinventory', 12, 'add_materialsinventory'),
(35, 'Can change materialsinventory', 12, 'change_materialsinventory'),
(36, 'Can delete materialsinventory', 12, 'delete_materialsinventory'),
(37, 'Can add materialsinventoryitem', 13, 'add_materialsinventoryitem'),
(38, 'Can change materialsinventoryitem', 13, 'change_materialsinventoryitem'),
(39, 'Can delete materialsinventoryitem', 13, 'delete_materialsinventoryitem'),
(40, 'Can add role', 14, 'add_role'),
(41, 'Can change role', 14, 'change_role'),
(42, 'Can delete role', 14, 'delete_role'),
(43, 'Can add transaction', 15, 'add_transaction'),
(44, 'Can change transaction', 15, 'change_transaction'),
(45, 'Can delete transaction', 15, 'delete_transaction'),
(46, 'Can add unit', 16, 'add_unit'),
(47, 'Can change unit', 16, 'change_unit'),
(48, 'Can delete unit', 16, 'delete_unit'),
(49, 'Can add user', 17, 'add_user'),
(50, 'Can change user', 17, 'change_user'),
(51, 'Can delete user', 17, 'delete_user'),
(52, 'Can add log entry', 18, 'add_logentry'),
(53, 'Can change log entry', 18, 'change_logentry'),
(54, 'Can delete log entry', 18, 'delete_logentry');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$10000$6T8yobrn6REh$d6Uwxvw7vwnXBpdrWDdJnxFFfIO31Cl7ZGmLFMg8Vjk=', '2014-01-19 06:52:34', 1, 'lanceh', '', '', 'lvhutchinson@gmail.com', 1, 1, '2014-01-19 06:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_user_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_user_user_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `django_admin_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'account', 'inventory', 'account'),
(8, 'finishedgoodsinventory', 'inventory', 'finishedgoodsinventory'),
(9, 'finishedgoodsinventoryitem', 'inventory', 'finishedgoodsinventoryitem'),
(10, 'finishedgoodsinventorytype', 'inventory', 'finishedgoodsinventorytype'),
(11, 'finishedgoodsmaterialsused', 'inventory', 'finishedgoodsmaterialsused'),
(12, 'materialsinventory', 'inventory', 'materialsinventory'),
(13, 'materialsinventoryitem', 'inventory', 'materialsinventoryitem'),
(14, 'role', 'inventory', 'role'),
(15, 'transaction', 'inventory', 'transaction'),
(16, 'unit', 'inventory', 'unit'),
(17, 'user', 'inventory', 'user'),
(18, 'log entry', 'admin', 'logentry');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('14x5s9x8m4uifq9bsfszzf1o0rzqd0gl', 'YjgzOTk5ZDExMDljZjFjZmQxOTRkM2U3MDJjNzBhZTM0MTU0MDQzYzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-02-02 06:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `finishedGoodsInventory`
--

CREATE TABLE IF NOT EXISTS `finishedGoodsInventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finishedGoodsInventoryItemId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finishedGoodsInventoryItemId` (`finishedGoodsInventoryItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `finishedGoodsInventory`
--


-- --------------------------------------------------------

--
-- Table structure for table `finishedGoodsInventoryItem`
--

CREATE TABLE IF NOT EXISTS `finishedGoodsInventoryItem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `finishedGoodsInventoryItem`
--


-- --------------------------------------------------------

--
-- Table structure for table `finishedGoodsInventoryType`
--

CREATE TABLE IF NOT EXISTS `finishedGoodsInventoryType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `finishedGoodsInventoryType`
--


-- --------------------------------------------------------

--
-- Table structure for table `finishedGoodsMaterialsUsed`
--

CREATE TABLE IF NOT EXISTS `finishedGoodsMaterialsUsed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finishedGoodsInventoryItemId` int(11) NOT NULL,
  `materialsInventoryItemId` int(11) NOT NULL,
  `quantityUsed` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `materialsInventoryItemId` (`materialsInventoryItemId`),
  KEY `finishedGoodsInventoryItemId` (`finishedGoodsInventoryItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `finishedGoodsMaterialsUsed`
--


-- --------------------------------------------------------

--
-- Table structure for table `materialsInventory`
--

CREATE TABLE IF NOT EXISTS `materialsInventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materialsInventoryItemId` int(11) NOT NULL,
  `quantity` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `materialsInventoryItemId` (`materialsInventoryItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `materialsInventory`
--


-- --------------------------------------------------------

--
-- Table structure for table `materialsInventoryItem`
--

CREATE TABLE IF NOT EXISTS `materialsInventoryItem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unitId` int(11) NOT NULL,
  `pricePerUnit` float NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `dateLastPurchased` date NOT NULL,
  `dateLastUsed` date NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unitId` (`unitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `materialsInventoryItem`
--


-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `role`
--


-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `amount` float NOT NULL,
  `accountId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `transaction`
--


-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `unit`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(128) NOT NULL,
  `displayName` varchar(128) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `finishedGoodsInventory`
--
ALTER TABLE `finishedGoodsInventory`
  ADD CONSTRAINT `finishedGoodsInventory_ibfk_2` FOREIGN KEY (`finishedGoodsInventoryItemId`) REFERENCES `finishedGoodsInventoryItem` (`id`);

--
-- Constraints for table `finishedGoodsInventoryItem`
--
ALTER TABLE `finishedGoodsInventoryItem`
  ADD CONSTRAINT `finishedGoodsInventoryItem_ibfk_2` FOREIGN KEY (`typeId`) REFERENCES `finishedGoodsInventoryType` (`id`);

--
-- Constraints for table `finishedGoodsMaterialsUsed`
--
ALTER TABLE `finishedGoodsMaterialsUsed`
  ADD CONSTRAINT `finishedGoodsMaterialsUsed_ibfk_3` FOREIGN KEY (`finishedGoodsInventoryItemId`) REFERENCES `finishedGoodsInventoryItem` (`id`),
  ADD CONSTRAINT `finishedGoodsMaterialsUsed_ibfk_2` FOREIGN KEY (`materialsInventoryItemId`) REFERENCES `materialsInventoryItem` (`id`);

--
-- Constraints for table `materialsInventory`
--
ALTER TABLE `materialsInventory`
  ADD CONSTRAINT `materialsInventory_ibfk_2` FOREIGN KEY (`materialsInventoryItemId`) REFERENCES `materialsInventoryItem` (`id`);

--
-- Constraints for table `materialsInventoryItem`
--
ALTER TABLE `materialsInventoryItem`
  ADD CONSTRAINT `materialsInventoryItem_ibfk_2` FOREIGN KEY (`unitId`) REFERENCES `unit` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`);

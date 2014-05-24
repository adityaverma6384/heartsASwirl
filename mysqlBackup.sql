-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 24, 2014 at 02:17 PM
-- Server version: 5.1.72
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


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
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `name`) VALUES
(4, 'Bank of America Checking'),
(5, 'Cash'),
(6, 'Advertising Supplies'),
(7, 'Materials'),
(8, 'Supplies');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

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
(54, 'Can delete log entry', 18, 'delete_logentry'),
(55, 'Can add account type', 19, 'add_accounttype'),
(56, 'Can change account type', 19, 'change_accounttype'),
(57, 'Can delete account type', 19, 'delete_accounttype'),
(58, 'Can add account', 20, 'add_account'),
(59, 'Can change account', 20, 'change_account'),
(60, 'Can delete account', 20, 'delete_account'),
(61, 'Can add transaction', 21, 'add_transaction'),
(62, 'Can change transaction', 21, 'change_transaction'),
(63, 'Can delete transaction', 21, 'delete_transaction'),
(64, 'Can add entry type', 22, 'add_entrytype'),
(65, 'Can change entry type', 22, 'change_entrytype'),
(66, 'Can delete entry type', 22, 'delete_entrytype'),
(67, 'Can add entry', 23, 'add_entry'),
(68, 'Can change entry', 23, 'change_entry'),
(69, 'Can delete entry', 23, 'delete_entry'),
(70, 'Can add finished goods inventory', 25, 'add_finishedgoodsinventory'),
(71, 'Can change finished goods inventory', 25, 'change_finishedgoodsinventory'),
(72, 'Can delete finished goods inventory', 25, 'delete_finishedgoodsinventory'),
(73, 'Can add finished goods inventory item', 26, 'add_finishedgoodsinventoryitem'),
(74, 'Can change finished goods inventory item', 26, 'change_finishedgoodsinventoryitem'),
(75, 'Can delete finished goods inventory item', 26, 'delete_finishedgoodsinventoryitem'),
(76, 'Can add finished goods inventory type', 27, 'add_finishedgoodsinventorytype'),
(77, 'Can change finished goods inventory type', 27, 'change_finishedgoodsinventorytype'),
(78, 'Can delete finished goods inventory type', 27, 'delete_finishedgoodsinventorytype'),
(79, 'Can add finished goods materials used', 24, 'add_finishedgoodsmaterialsused'),
(80, 'Can change finished goods materials used', 24, 'change_finishedgoodsmaterialsused'),
(81, 'Can delete finished goods materials used', 24, 'delete_finishedgoodsmaterialsused'),
(82, 'Can add materials inventory', 28, 'add_materialsinventory'),
(83, 'Can change materials inventory', 28, 'change_materialsinventory'),
(84, 'Can delete materials inventory', 28, 'delete_materialsinventory'),
(85, 'Can add materials inventory item', 29, 'add_materialsinventoryitem'),
(86, 'Can change materials inventory item', 29, 'change_materialsinventoryitem'),
(87, 'Can delete materials inventory item', 29, 'delete_materialsinventoryitem'),
(88, 'Can add unit', 30, 'add_unit'),
(89, 'Can change unit', 30, 'change_unit'),
(90, 'Can delete unit', 30, 'delete_unit');

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
(1, 'pbkdf2_sha256$10000$6T8yobrn6REh$d6Uwxvw7vwnXBpdrWDdJnxFFfIO31Cl7ZGmLFMg8Vjk=', '2014-05-24 20:10:04', 1, 'lanceh', '', '', 'lvhutchinson@gmail.com', 1, 1, '2014-01-19 06:31:42');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=389 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2014-01-20 03:40:31', 1, 16, '1', 'Unit object', 1, ''),
(2, '2014-01-20 03:41:14', 1, 16, '1', 'Unit object', 2, 'No fields changed.'),
(3, '2014-01-20 03:43:24', 1, 16, '1', 'each', 2, 'No fields changed.'),
(4, '2014-01-20 03:51:51', 1, 13, '1', 'MaterialsInventoryItem object', 1, ''),
(5, '2014-01-20 03:52:29', 1, 13, '1', 'Trinket 1', 2, 'No fields changed.'),
(6, '2014-01-20 05:54:15', 1, 7, '4', 'Account object', 1, ''),
(7, '2014-01-20 05:55:09', 1, 15, '1', 'Transaction object', 1, ''),
(8, '2014-01-20 06:01:28', 1, 12, '4', 'Trinket 1 quantity of 10.0', 1, ''),
(9, '2014-01-20 06:01:53', 1, 12, '4', 'Trinket 1 quantity of 10.0', 2, 'No fields changed.'),
(10, '2014-01-20 06:04:50', 1, 10, '1', 'necklace', 1, ''),
(11, '2014-01-20 06:06:04', 1, 9, '2', 'Pretty thing made from trinkets.', 1, ''),
(12, '2014-01-20 06:06:12', 1, 9, '2', 'Pretty thing made from trinkets.', 2, 'No fields changed.'),
(13, '2014-01-20 06:07:50', 1, 8, '2', 'Pretty thing made from trinkets. quantity 1', 1, ''),
(14, '2014-01-20 06:07:58', 1, 8, '2', 'Pretty thing made from trinkets. quantity 1', 2, 'No fields changed.'),
(15, '2014-01-20 06:09:49', 1, 11, '2', 'Pretty thing made from trinkets.', 1, ''),
(16, '2014-01-20 06:09:58', 1, 11, '2', 'Pretty thing made from trinkets.', 2, 'No fields changed.'),
(17, '2014-01-20 06:42:15', 1, 12, '4', 'Trinket 1 quantity of 11.0', 2, 'Changed quantity.'),
(18, '2014-01-20 06:42:20', 1, 12, '4', 'Trinket 1 quantity of 10.0', 2, 'Changed quantity.'),
(19, '2014-01-20 06:42:21', 1, 12, '4', 'Trinket 1 quantity of 10.0', 2, 'Changed quantity.'),
(20, '2014-01-20 06:42:23', 1, 12, '4', 'Trinket 1 quantity of 10.0', 2, 'No fields changed.'),
(21, '2014-01-20 06:57:03', 1, 13, '2', 'Trinket 2', 1, ''),
(22, '2014-01-20 06:57:38', 1, 12, '5', 'Trinket 2 quantity of 50.0', 1, ''),
(23, '2014-01-20 06:57:48', 1, 12, '5', 'Trinket 2 quantity of 50.0', 2, 'No fields changed.'),
(24, '2014-01-30 21:24:13', 1, 15, '2', '2014-01-30  deposit', 1, ''),
(25, '2014-01-30 21:34:00', 1, 15, '1', '2014-01-19  Michael''s store purchases.', 2, 'Changed amount.'),
(26, '2014-02-01 02:37:20', 1, 7, '5', 'Cash', 1, ''),
(27, '2014-02-01 02:37:28', 1, 7, '6', 'Advertising Supplies', 1, ''),
(28, '2014-02-01 02:37:44', 1, 7, '7', 'Materials', 1, ''),
(29, '2014-02-01 02:38:12', 1, 7, '8', 'Supplies', 1, ''),
(30, '2014-02-02 01:06:06', 1, 20, '1', 'cash', 1, ''),
(31, '2014-02-02 02:21:24', 1, 20, '2', 'owner''s equity', 1, ''),
(32, '2014-02-02 02:22:18', 1, 20, '2', 'Owner''s Equity', 2, 'Changed number, type and description.'),
(33, '2014-02-02 02:22:26', 1, 20, '1', 'Cash', 2, 'Changed description.'),
(34, '2014-02-02 02:29:01', 1, 20, '2', 'Owner''s Equity', 2, 'Changed number.'),
(35, '2014-02-02 02:29:07', 1, 20, '1', 'Cash', 2, 'Changed number.'),
(36, '2014-02-02 05:16:18', 1, 20, '3', 'Raw Materials Inventory', 1, ''),
(37, '2014-02-02 05:16:39', 1, 20, '4', 'Work In Process Inventory', 1, ''),
(38, '2014-02-02 05:16:50', 1, 20, '5', 'Finished Goods Inventory', 1, ''),
(39, '2014-02-02 05:18:17', 1, 20, '6', 'Advertising Supplies', 1, ''),
(40, '2014-02-02 05:24:29', 1, 20, '7', 'Sales Tax Payable', 1, ''),
(41, '2014-02-02 05:25:12', 1, 20, '8', 'Sales Revenue', 1, ''),
(42, '2014-02-02 05:26:40', 1, 20, '9', 'Supplies Expense', 1, ''),
(43, '2014-02-02 07:13:31', 1, 20, '10', 'test', 1, ''),
(44, '2014-02-02 07:13:54', 1, 20, '10', 'test', 3, ''),
(45, '2014-02-02 07:15:09', 1, 21, '1', 'Test', 1, ''),
(46, '2014-02-02 07:15:36', 1, 23, '1', 'Entry object', 1, ''),
(47, '2014-02-02 07:15:54', 1, 23, '2', 'Entry object', 1, ''),
(48, '2014-02-03 04:13:59', 1, 20, '11', 'Cost of Goods Sold', 1, ''),
(49, '2014-02-08 00:56:52', 1, 29, '2', 'Trinket 2', 3, ''),
(50, '2014-02-08 00:56:52', 1, 29, '1', 'Trinket 1', 3, ''),
(51, '2014-02-08 00:58:46', 1, 29, '3', 'silver rose links', 1, ''),
(52, '2014-02-08 00:59:14', 1, 29, '4', 'antique copper leaf charms', 1, ''),
(53, '2014-02-08 00:59:54', 1, 21, '2', 'Hobby Lobby', 1, ''),
(54, '2014-02-08 01:00:52', 1, 28, '6', 'silver rose links quantity of 8.0', 1, ''),
(55, '2014-02-08 01:45:16', 1, 28, '6', 'silver rose links quantity of 8.0', 2, 'Changed price_per_unit.'),
(56, '2014-02-08 01:45:36', 1, 28, '6', 'silver rose links quantity of 8.0', 2, 'Changed price_per_unit.'),
(57, '2014-02-08 01:45:48', 1, 28, '6', 'silver rose links quantity of 8.0', 2, 'Changed price_per_unit.'),
(58, '2014-02-08 01:46:10', 1, 28, '6', 'silver rose links quantity of 8.0', 2, 'Changed price_per_unit.'),
(59, '2014-02-08 01:46:18', 1, 28, '6', 'silver rose links quantity of 8.0', 2, 'No fields changed.'),
(60, '2014-02-08 01:47:08', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 1, ''),
(61, '2014-02-08 01:47:15', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 2, 'Changed price_per_unit.'),
(62, '2014-02-08 01:47:20', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 2, 'Changed price_per_unit.'),
(63, '2014-02-08 01:47:26', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 2, 'Changed price_per_unit.'),
(64, '2014-02-08 01:47:31', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 2, 'No fields changed.'),
(65, '2014-02-08 01:53:51', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 2, 'Changed price_per_unit.'),
(66, '2014-02-08 01:53:52', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 2, 'No fields changed.'),
(67, '2014-02-08 01:54:16', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 2, 'Changed price_per_unit.'),
(68, '2014-02-08 01:54:17', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 2, 'No fields changed.'),
(69, '2014-02-08 01:57:08', 1, 21, '3', 'Michael''s 2014-01-20', 1, ''),
(70, '2014-02-08 01:57:49', 1, 30, '2', 'feet', 1, ''),
(71, '2014-02-08 01:58:06', 1, 29, '5', '20 gauge gunmetal wire', 1, ''),
(72, '2014-02-08 01:59:07', 1, 28, '8', '20 gauge gunmetal wire quantity of 18', 1, ''),
(73, '2014-02-08 01:59:20', 1, 28, '8', '20 gauge gunmetal wire quantity of 18.0', 2, 'Changed price_per_unit.'),
(74, '2014-02-08 01:59:50', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 2, 'Changed price_per_unit.'),
(75, '2014-02-08 01:59:52', 1, 28, '7', 'antique copper leaf charms quantity of 6.0', 2, 'No fields changed.'),
(76, '2014-02-08 02:00:26', 1, 29, '6', 'black discs with polka dots', 1, ''),
(77, '2014-02-08 02:00:53', 1, 28, '9', 'black discs with polka dots quantity of 18', 1, ''),
(78, '2014-02-08 02:01:32', 1, 29, '7', 'silver flower ear studs', 1, ''),
(79, '2014-02-08 02:01:56', 1, 28, '10', 'silver flower ear studs quantity of 2', 1, ''),
(80, '2014-02-08 02:02:27', 1, 21, '4', 'The Beaded Iris 2014-01-20', 1, ''),
(81, '2014-02-08 02:02:51', 1, 29, '8', 'gunmetal magnetic clasps', 1, ''),
(82, '2014-02-08 02:02:59', 1, 28, '11', 'gunmetal magnetic clasps quantity of 3', 1, ''),
(83, '2014-02-08 02:03:25', 1, 29, '9', 'grey/green striped rectangles', 1, ''),
(84, '2014-02-08 02:03:46', 1, 28, '12', 'grey/green striped rectangles quantity of 15', 1, ''),
(85, '2014-02-08 02:04:25', 1, 29, '10', 'blue/green mottled pentagons', 1, ''),
(86, '2014-02-08 02:05:00', 1, 28, '13', 'blue/green mottled pentagons quantity of 34', 1, ''),
(87, '2014-02-08 02:05:29', 1, 29, '11', 'pale yellow ribbed discs', 1, ''),
(88, '2014-02-08 02:06:06', 1, 28, '14', 'pale yellow ribbed discs quantity of 66', 1, ''),
(89, '2014-02-08 02:06:35', 1, 29, '12', 'milky rose 6mm czech', 1, ''),
(90, '2014-02-08 02:07:02', 1, 28, '15', 'milky rose 6mm czech quantity of 25', 1, ''),
(91, '2014-02-08 02:08:06', 1, 29, '13', 'burgundy ovals', 1, ''),
(92, '2014-02-08 02:08:27', 1, 28, '16', 'burgundy ovals quantity of 25', 1, ''),
(93, '2014-02-08 02:08:44', 1, 29, '14', 'clear ovals', 1, ''),
(94, '2014-02-08 02:09:09', 1, 28, '17', 'clear ovals quantity of 25', 1, ''),
(95, '2014-02-08 02:09:36', 1, 29, '15', 'small clear AB roundelles', 1, ''),
(96, '2014-02-08 02:10:00', 1, 28, '18', 'small clear AB roundelles quantity of 79', 1, ''),
(97, '2014-02-08 02:12:04', 1, 29, '16', 'red diamond polka dot pendant', 1, ''),
(98, '2014-02-08 02:12:23', 1, 28, '19', 'red diamond polka dot pendant quantity of 1', 1, ''),
(99, '2014-02-08 02:13:05', 1, 29, '17', 'black diamond polka dot pendant', 1, ''),
(100, '2014-02-08 02:13:22', 1, 28, '20', 'black diamond polka dot pendant quantity of 1', 1, ''),
(101, '2014-02-08 02:13:39', 1, 29, '18', 'purple diamond polka dot pendant', 1, ''),
(102, '2014-02-08 02:13:52', 1, 28, '21', 'purple diamond polka dot pendant quantity of 1', 1, ''),
(103, '2014-02-08 02:14:15', 1, 29, '19', 'purple oblong with stars', 1, ''),
(104, '2014-02-08 02:14:24', 1, 28, '22', 'purple oblong with stars quantity of 1', 1, ''),
(105, '2014-02-08 02:15:13', 1, 21, '5', 'JoAnn 2014-01-23', 1, ''),
(106, '2014-02-08 02:15:36', 1, 29, '20', 'mountain blue medium roundelles', 1, ''),
(107, '2014-02-08 02:15:58', 1, 28, '23', 'mountain blue medium roundelles quantity of 80', 1, ''),
(108, '2014-02-08 02:16:21', 1, 29, '21', 'purple polka dot rounds', 1, ''),
(109, '2014-02-08 02:16:40', 1, 28, '24', 'purple polka dot rounds quantity of 16', 1, ''),
(110, '2014-02-08 02:17:05', 1, 29, '22', 'emerald green large roundelles', 1, ''),
(111, '2014-02-08 02:17:29', 1, 28, '25', 'emerald green large roundelles quantity of 30', 1, ''),
(112, '2014-02-08 02:17:33', 1, 28, '25', 'emerald green large roundelles quantity of 30.0', 2, 'No fields changed.'),
(113, '2014-02-08 02:18:11', 1, 29, '23', '26 gauge gunmetal wire', 1, ''),
(114, '2014-02-08 02:18:50', 1, 28, '26', '26 gauge gunmetal wire quantity of 180', 1, ''),
(115, '2014-02-08 02:19:05', 1, 29, '24', 'stone discs', 1, ''),
(116, '2014-02-08 02:19:28', 1, 28, '27', 'stone discs quantity of 22', 1, ''),
(117, '2014-02-08 02:19:40', 1, 29, '25', 'orange splatter large rounds', 1, ''),
(118, '2014-02-08 02:19:59', 1, 28, '28', 'orange splatter large rounds quantity of 14', 1, ''),
(119, '2014-02-08 02:20:02', 1, 28, '28', 'orange splatter large rounds quantity of 14.0', 2, 'No fields changed.'),
(120, '2014-02-08 02:21:01', 1, 29, '26', 'large clear faceted shapes', 1, ''),
(121, '2014-02-08 02:21:26', 1, 28, '29', 'large clear faceted shapes quantity of 13', 1, ''),
(122, '2014-02-08 02:21:57', 1, 21, '6', 'Michael''s 2014-01-23', 1, ''),
(123, '2014-02-08 02:22:28', 1, 29, '27', '4mm rainbow bicones', 1, ''),
(124, '2014-02-08 02:22:45', 1, 28, '30', '4mm rainbow bicones quantity of 70', 1, ''),
(125, '2014-02-08 02:23:06', 1, 29, '28', '5mm clear frosted melons', 1, ''),
(126, '2014-02-08 02:23:36', 1, 28, '31', '5mm clear frosted melons quantity of 32', 1, ''),
(127, '2014-02-08 02:24:01', 1, 21, '7', 'Hobby Lobby 2014-01-28', 1, ''),
(128, '2014-02-08 02:24:28', 1, 29, '29', 'copper head pins', 1, ''),
(129, '2014-02-08 02:24:54', 1, 28, '32', 'copper head pins quantity of 30', 1, ''),
(130, '2014-02-08 02:25:12', 1, 29, '30', 'topaz/pink 4mm Czech', 1, ''),
(131, '2014-02-08 02:25:32', 1, 28, '33', 'topaz/pink 4mm Czech quantity of 22', 1, ''),
(132, '2014-02-08 02:26:00', 1, 29, '31', 'silver leaf wrapper purple pearls', 1, ''),
(133, '2014-02-08 02:26:19', 1, 28, '34', 'silver leaf wrapper purple pearls quantity of 11', 1, ''),
(134, '2014-02-08 02:27:58', 1, 29, '31', 'silver leaf wrapped purple pearls', 2, 'Changed name.'),
(135, '2014-02-08 02:28:27', 1, 29, '32', 'clear AB drops', 1, ''),
(136, '2014-02-08 02:29:41', 1, 28, '35', 'clear AB drops quantity of 24', 1, ''),
(137, '2014-02-08 02:29:58', 1, 29, '33', 'metal teardrop leaf/branch pendant', 1, ''),
(138, '2014-02-08 02:30:18', 1, 28, '36', 'metal teardrop leaf/branch pendant quantity of 1', 1, ''),
(139, '2014-02-08 02:30:33', 1, 29, '34', 'metal loop pendant', 1, ''),
(140, '2014-02-08 02:30:50', 1, 28, '37', 'metal loop pendant quantity of 2', 1, ''),
(141, '2014-02-08 02:31:30', 1, 21, '8', 'Michael''s 2014-02-01', 1, ''),
(142, '2014-02-08 02:31:46', 1, 29, '35', 'silver magnetic clasps', 1, ''),
(143, '2014-02-08 02:32:18', 1, 28, '38', 'silver magnetic clasps quantity of 4', 1, ''),
(144, '2014-02-08 03:14:03', 1, 21, '9', 'Initial Import 2014-01-01', 1, ''),
(145, '2014-02-08 03:16:58', 1, 29, '36', '6mm rose matte glass pearls', 1, ''),
(146, '2014-02-08 03:19:52', 1, 28, '39', '6mm rose matte glass pearls quantity of 155', 1, ''),
(147, '2014-02-08 03:21:10', 1, 29, '37', '3mm heishi turquoise', 1, ''),
(148, '2014-02-08 03:23:22', 1, 28, '40', '3mm heishi turquoise quantity of 101', 1, ''),
(149, '2014-02-08 03:23:40', 1, 29, '38', '3mm heishi jet', 1, ''),
(150, '2014-02-08 03:24:34', 1, 28, '41', '3mm heishi jet quantity of 60', 1, ''),
(151, '2014-02-08 03:30:38', 1, 29, '39', 'emerald 4mm Swarovski bicone', 1, ''),
(152, '2014-02-08 03:30:46', 1, 28, '42', 'emerald 4mm Swarovski bicone quantity of 1', 1, ''),
(153, '2014-02-08 03:31:10', 1, 29, '40', 'emerald 6mm Swarovski bicone', 1, ''),
(154, '2014-02-08 03:31:22', 1, 28, '43', 'emerald 6mm Swarovski bicone quantity of 15', 1, ''),
(155, '2014-02-08 03:32:55', 1, 29, '41', 'forest green 4mm pearls', 1, ''),
(156, '2014-02-08 03:33:09', 1, 28, '44', 'forest green 4mm pearls quantity of 8', 1, ''),
(157, '2014-02-08 03:34:25', 1, 29, '42', 'emerald 6mm Czech faceted', 1, ''),
(158, '2014-02-08 03:34:46', 1, 28, '45', 'emerald 6mm Czech faceted quantity of 14', 1, ''),
(159, '2014-02-08 03:39:09', 1, 29, '43', '8mm green shell round', 1, ''),
(160, '2014-02-08 03:39:23', 1, 28, '46', '8mm green shell round quantity of 16', 1, ''),
(161, '2014-02-08 03:39:57', 1, 29, '44', 'dark green 6mm stone', 1, ''),
(162, '2014-02-08 03:40:10', 1, 28, '47', 'dark green 6mm stone quantity of 22', 1, ''),
(163, '2014-02-08 03:40:12', 1, 28, '47', 'dark green 6mm stone quantity of 22.0', 2, 'No fields changed.'),
(164, '2014-02-08 03:40:52', 1, 29, '45', 'green Czech tulips', 1, ''),
(165, '2014-02-08 03:41:07', 1, 28, '48', 'green Czech tulips quantity of 8', 1, ''),
(166, '2014-02-08 03:42:13', 1, 29, '46', 'dark green shapes', 1, ''),
(167, '2014-02-08 03:42:28', 1, 28, '49', 'dark green shapes quantity of 10', 1, ''),
(168, '2014-02-08 03:43:08', 1, 29, '47', 'green with gold small leaves', 1, ''),
(169, '2014-02-08 03:43:25', 1, 28, '50', 'green with gold small leaves quantity of 3', 1, ''),
(170, '2014-02-08 03:43:47', 1, 29, '48', 'large emerald hearts', 1, ''),
(171, '2014-02-08 03:43:57', 1, 28, '51', 'large emerald hearts quantity of 2', 1, ''),
(172, '2014-02-08 03:45:36', 1, 29, '49', 'oriental trading glass hearts', 1, ''),
(173, '2014-02-08 03:49:31', 1, 29, '50', 'small bright green discs', 1, ''),
(174, '2014-02-08 03:50:11', 1, 28, '52', 'small bright green discs quantity of 24', 1, ''),
(175, '2014-02-08 03:52:58', 1, 29, '51', '6mm adventurine', 1, ''),
(176, '2014-02-08 03:53:21', 1, 28, '53', '6mm adventurine quantity of 40', 1, ''),
(177, '2014-02-08 03:56:54', 1, 29, '52', 'lime green with pink roses', 1, ''),
(178, '2014-02-08 03:57:06', 1, 28, '54', 'lime green with pink roses quantity of 1', 1, ''),
(179, '2014-02-08 03:57:29', 1, 29, '53', 'medium green Czech tulips', 1, ''),
(180, '2014-02-08 03:57:38', 1, 28, '55', 'medium green Czech tulips quantity of 3', 1, ''),
(181, '2014-02-08 03:58:27', 1, 29, '54', 'medium green ovals', 1, ''),
(182, '2014-02-08 03:59:27', 1, 28, '56', 'medium green ovals quantity of 23', 1, ''),
(183, '2014-02-08 04:00:14', 1, 29, '55', 'small lime green top drilled discs', 1, ''),
(184, '2014-02-08 04:00:22', 1, 28, '57', 'small lime green top drilled discs quantity of 6', 1, ''),
(185, '2014-02-08 04:01:48', 1, 29, '56', 'medium green 6mm stone', 1, ''),
(186, '2014-02-08 04:02:01', 1, 28, '58', 'medium green 6mm stone quantity of 20', 1, ''),
(187, '2014-02-08 04:02:40', 1, 29, '57', '8mm bright green stone', 1, ''),
(188, '2014-02-08 04:02:56', 1, 28, '59', '8mm bright green stone quantity of 23', 1, ''),
(189, '2014-02-08 04:04:16', 1, 29, '58', 'erinite 6mm Swarovski bicone', 1, ''),
(190, '2014-02-08 04:04:38', 1, 28, '60', 'erinite 6mm Swarovski bicone quantity of 5', 1, ''),
(191, '2014-02-08 04:07:07', 1, 29, '59', 'green Czech leaves with silver veins', 1, ''),
(192, '2014-02-08 04:07:15', 1, 28, '61', 'green Czech leaves with silver veins quantity of 8', 1, ''),
(193, '2014-02-08 04:07:52', 1, 29, '60', '8mm adventurine', 1, ''),
(194, '2014-02-08 04:08:04', 1, 28, '62', '8mm adventurine quantity of 37', 1, ''),
(195, '2014-02-08 04:08:56', 1, 28, '61', 'green Czech leaves with silver veins quantity of 10', 2, 'Changed quantity.'),
(196, '2014-02-08 04:09:14', 1, 29, '61', 'green tulips', 1, ''),
(197, '2014-02-08 04:09:41', 1, 28, '63', 'green tulips quantity of 7', 1, ''),
(198, '2014-02-08 04:10:39', 1, 29, '62', 'sage faceted large roundelles', 1, ''),
(199, '2014-02-08 04:10:48', 1, 28, '64', 'sage faceted large roundelles quantity of 22', 1, ''),
(200, '2014-02-08 04:11:50', 1, 29, '63', 'olive green polka dots', 1, ''),
(201, '2014-02-08 04:11:58', 1, 28, '65', 'olive green polka dots quantity of 12', 1, ''),
(202, '2014-02-08 04:12:46', 1, 29, '64', 'sage gogi berries', 1, ''),
(203, '2014-02-08 04:12:52', 1, 28, '66', 'sage gogi berries quantity of 10', 1, ''),
(204, '2014-02-08 04:13:11', 1, 29, '65', 'sage disc pearls', 1, ''),
(205, '2014-02-08 04:13:25', 1, 28, '67', 'sage disc pearls quantity of 8', 1, ''),
(206, '2014-02-08 04:14:02', 1, 29, '66', 'olive heart with black spots', 1, ''),
(207, '2014-02-08 04:14:08', 1, 28, '68', 'olive heart with black spots quantity of 1', 1, ''),
(208, '2014-02-08 04:18:07', 1, 29, '67', 'dark purple oblong twists', 1, ''),
(209, '2014-02-08 04:19:35', 1, 28, '69', 'dark purple oblong twists quantity of 21', 1, ''),
(210, '2014-02-08 04:19:58', 1, 29, '68', 'dark purple 6mm Czech', 1, ''),
(211, '2014-02-08 04:20:42', 1, 28, '70', 'dark purple 6mm Czech quantity of 41', 1, ''),
(212, '2014-02-08 04:22:39', 1, 29, '69', 'copper and purple roses', 1, ''),
(213, '2014-02-08 04:22:54', 1, 28, '71', 'copper and purple roses quantity of 17', 1, ''),
(214, '2014-02-08 04:23:50', 1, 29, '70', 'metallic purple large roundelles', 1, ''),
(215, '2014-02-08 04:26:46', 1, 28, '72', 'metallic purple large roundelles quantity of 28', 1, ''),
(216, '2014-02-08 04:27:34', 1, 29, '71', 'purple roundelles with flower center', 1, ''),
(217, '2014-02-08 04:27:50', 1, 28, '73', 'purple roundelles with flower center quantity of 8', 1, ''),
(218, '2014-02-08 04:28:27', 1, 29, '72', 'AB purple large roundelles', 1, ''),
(219, '2014-02-08 04:28:35', 1, 28, '74', 'AB purple large roundelles quantity of 6', 1, ''),
(220, '2014-02-08 04:29:16', 1, 29, '73', 'dark purple rectangles', 1, ''),
(221, '2014-02-08 04:29:30', 1, 28, '75', 'dark purple rectangles quantity of 15', 1, ''),
(222, '2014-02-08 04:30:30', 1, 29, '74', 'purple medium roundelles', 1, ''),
(223, '2014-02-08 04:30:42', 1, 28, '76', 'purple medium roundelles quantity of 6', 1, ''),
(224, '2014-02-08 04:31:33', 1, 29, '75', '6mm metallic bicones', 1, ''),
(225, '2014-02-08 04:31:56', 1, 28, '77', '6mm metallic bicones quantity of 4', 1, ''),
(226, '2014-02-08 04:32:24', 1, 29, '76', 'dark purple puffed rectangles', 1, ''),
(227, '2014-02-08 04:32:57', 1, 28, '78', 'dark purple puffed rectangles quantity of 16', 1, ''),
(228, '2014-02-08 04:33:30', 1, 29, '77', 'purple double holed shell shapes', 1, ''),
(229, '2014-02-08 04:33:41', 1, 28, '79', 'purple double holed shell shapes quantity of 14', 1, ''),
(230, '2014-02-08 04:35:26', 1, 29, '78', 'amethyst 4mm bicone', 1, ''),
(231, '2014-02-08 04:35:53', 1, 28, '80', 'amethyst 4mm bicone quantity of 4', 1, ''),
(232, '2014-02-08 04:36:15', 1, 29, '79', '4mm purple stone rounds', 1, ''),
(233, '2014-02-08 04:36:55', 1, 28, '81', '4mm purple stone rounds quantity of 48', 1, ''),
(234, '2014-02-08 04:37:58', 1, 29, '80', 'rose peach 5mm Swarovski bicone', 1, ''),
(235, '2014-02-08 04:38:11', 1, 28, '82', 'rose peach 5mm Swarovski bicone quantity of 22', 1, ''),
(236, '2014-02-08 04:39:04', 1, 29, '81', 'silk 6mm Swarovski bicone', 1, ''),
(237, '2014-02-08 04:39:15', 1, 28, '83', 'silk 6mm Swarovski bicone quantity of 15', 1, ''),
(238, '2014-02-08 04:39:57', 1, 29, '82', 'tiny freshwater pearls', 1, ''),
(239, '2014-02-08 04:40:13', 1, 28, '84', 'tiny freshwater pearls quantity of 44', 1, ''),
(240, '2014-02-08 04:41:03', 1, 29, '83', 'peach small freshwater pearls', 1, ''),
(241, '2014-02-08 04:41:38', 1, 28, '85', 'peach small freshwater pearls quantity of 34', 1, ''),
(242, '2014-02-08 04:43:16', 1, 29, '84', 'freshwater pearls', 1, ''),
(243, '2014-02-08 04:47:03', 1, 28, '86', 'freshwater pearls quantity of 101', 1, ''),
(244, '2014-02-08 04:47:33', 1, 29, '85', 'shell flat hexagons', 1, ''),
(245, '2014-02-08 04:47:42', 1, 28, '87', 'shell flat hexagons quantity of 7', 1, ''),
(246, '2014-02-08 04:48:23', 1, 29, '86', 'peach Czech glass leaves', 1, ''),
(247, '2014-02-08 04:48:55', 1, 28, '88', 'peach Czech glass leaves quantity of 33', 1, ''),
(248, '2014-02-15 23:23:09', 1, 29, '87', 'amethyst tiny faceted rounds', 1, ''),
(249, '2014-02-15 23:23:33', 1, 28, '89', 'amethyst tiny faceted rounds quantity of 51', 1, ''),
(250, '2014-02-15 23:25:12', 1, 29, '88', 'medium purple roundelles', 1, ''),
(251, '2014-02-15 23:25:42', 1, 28, '90', 'medium purple roundelles quantity of 2', 1, ''),
(252, '2014-02-15 23:26:19', 1, 29, '89', '4mm purple/copper rounds', 1, ''),
(253, '2014-02-15 23:26:44', 1, 28, '91', '4mm purple/copper rounds quantity of 3', 1, ''),
(254, '2014-02-15 23:28:02', 1, 29, '90', '4mm smooth purple bicones', 1, ''),
(255, '2014-02-15 23:28:10', 1, 28, '92', '4mm smooth purple bicones quantity of 50', 1, ''),
(256, '2014-02-15 23:30:00', 1, 29, '91', '4mm purple/white striped rounds', 1, ''),
(257, '2014-02-15 23:30:08', 1, 28, '93', '4mm purple/white striped rounds quantity of 6', 1, ''),
(258, '2014-02-15 23:33:55', 1, 29, '92', 'peach art deco lilies', 1, ''),
(259, '2014-02-15 23:34:09', 1, 28, '94', 'peach art deco lilies quantity of 13', 1, ''),
(260, '2014-02-15 23:36:13', 1, 29, '93', '4mm champagne Czech', 1, ''),
(261, '2014-02-15 23:36:47', 1, 28, '95', '4mm champagne Czech quantity of 11', 1, ''),
(262, '2014-02-15 23:37:40', 1, 29, '94', '6mm peach discs', 1, ''),
(263, '2014-02-15 23:37:51', 1, 28, '96', '6mm peach discs quantity of 11', 1, ''),
(264, '2014-02-15 23:38:30', 1, 29, '95', 'mauve hexagons', 1, ''),
(265, '2014-02-15 23:39:10', 1, 29, '96', 'mauve pentagon', 1, ''),
(266, '2014-02-15 23:39:26', 1, 28, '97', 'mauve pentagon quantity of 19', 1, ''),
(267, '2014-02-15 23:39:46', 1, 29, '95', 'mauve hexagons', 3, ''),
(268, '2014-02-15 23:40:05', 1, 29, '96', 'mauve pentagons', 2, 'Changed name.'),
(269, '2014-02-15 23:40:38', 1, 29, '97', '4mm peach pearls', 1, ''),
(270, '2014-02-15 23:40:56', 1, 28, '98', '4mm peach pearls quantity of 6', 1, ''),
(271, '2014-02-15 23:41:14', 1, 29, '98', '4mm peach rounds', 1, ''),
(272, '2014-02-15 23:41:30', 1, 28, '99', '4mm peach rounds quantity of 11', 1, ''),
(273, '2014-02-15 23:43:17', 1, 29, '99', 'peach large drop lillies', 1, ''),
(274, '2014-02-15 23:43:45', 1, 28, '100', 'peach large drop lillies quantity of 4', 1, ''),
(275, '2014-02-15 23:45:48', 1, 29, '100', 'medium peach freshwater pearls', 1, ''),
(276, '2014-02-15 23:47:41', 1, 28, '101', 'medium peach freshwater pearls quantity of 39', 1, ''),
(277, '2014-02-15 23:48:15', 1, 28, '86', 'freshwater pearls quantity of 101.0', 2, 'Changed price_per_unit.'),
(278, '2014-02-15 23:49:14', 1, 29, '101', '8mm peach discs', 1, ''),
(279, '2014-02-15 23:49:30', 1, 28, '102', '8mm peach discs quantity of 27', 1, ''),
(280, '2014-02-15 23:50:32', 1, 29, '102', 'striped peach shapes', 1, ''),
(281, '2014-02-15 23:50:49', 1, 28, '103', 'striped peach shapes quantity of 26', 1, ''),
(282, '2014-02-15 23:51:55', 1, 29, '103', 'peach/green rounds', 1, ''),
(283, '2014-02-15 23:52:11', 1, 28, '104', 'peach/green rounds quantity of 12', 1, ''),
(284, '2014-02-15 23:52:38', 1, 28, '104', 'peach/green rounds quantity of 14', 2, 'Changed quantity.'),
(285, '2014-02-15 23:53:11', 1, 29, '104', '8mm peach Czech', 1, ''),
(286, '2014-02-15 23:53:47', 1, 28, '105', '8mm peach Czech quantity of 1', 1, ''),
(287, '2014-02-15 23:54:14', 1, 29, '105', '8mm peach lampworks', 1, ''),
(288, '2014-02-15 23:54:24', 1, 28, '106', '8mm peach lampworks quantity of 1', 1, ''),
(289, '2014-02-15 23:55:38', 1, 29, '106', '4mm amethyst Czech', 1, ''),
(290, '2014-02-15 23:55:48', 1, 28, '107', '4mm amethyst Czech quantity of 13', 1, ''),
(291, '2014-02-15 23:56:56', 1, 29, '107', 'medium lavender freshwater pearls', 1, ''),
(292, '2014-02-15 23:57:22', 1, 28, '108', 'medium lavender freshwater pearls quantity of 47', 1, ''),
(293, '2014-02-15 23:59:02', 1, 29, '108', 'purple freshwater pearls', 1, ''),
(294, '2014-02-16 00:00:45', 1, 28, '109', 'purple freshwater pearls quantity of 49', 1, ''),
(295, '2014-02-16 00:02:11', 1, 29, '109', 'purple/blue cubes', 1, ''),
(296, '2014-02-16 00:02:48', 1, 28, '110', 'purple/blue cubes quantity of 35', 1, ''),
(297, '2014-02-16 00:03:43', 1, 29, '110', '6mm amethyst rounds', 1, ''),
(298, '2014-02-16 00:04:04', 1, 28, '111', '6mm amethyst rounds quantity of 49', 1, ''),
(299, '2014-02-16 00:04:45', 1, 29, '111', 'dusty purple rectangles', 1, ''),
(300, '2014-02-16 00:05:59', 1, 28, '112', 'dusty purple rectangles quantity of 2', 1, ''),
(301, '2014-02-16 00:06:16', 1, 28, '75', 'dark purple rectangles quantity of 15.0', 2, 'Changed price_per_unit.'),
(302, '2014-02-16 00:07:13', 1, 29, '112', '6mm periwinkle bicones', 1, ''),
(303, '2014-02-16 00:07:27', 1, 28, '113', '6mm periwinkle bicones quantity of 10', 1, ''),
(304, '2014-02-16 00:07:58', 1, 28, '113', '6mm periwinkle bicones quantity of 11', 2, 'Changed quantity.'),
(305, '2014-02-16 00:08:25', 1, 29, '113', 'dusty purple geometrics', 1, ''),
(306, '2014-02-16 00:08:41', 1, 28, '114', 'dusty purple geometrics quantity of 14', 1, ''),
(307, '2014-02-16 00:09:31', 1, 29, '114', 'purple rounds with glitter swirl', 1, ''),
(308, '2014-02-16 00:09:52', 1, 28, '115', 'purple rounds with glitter swirl quantity of 12', 1, ''),
(309, '2014-02-16 00:10:20', 1, 29, '115', 'periwinkle/silver rounds', 1, ''),
(310, '2014-02-16 00:10:42', 1, 28, '116', 'periwinkle/silver rounds quantity of 3', 1, ''),
(311, '2014-02-16 00:11:10', 1, 29, '116', 'purple striped heart', 1, ''),
(312, '2014-02-16 00:11:19', 1, 28, '117', 'purple striped heart quantity of 1', 1, ''),
(313, '2014-02-16 00:12:40', 1, 29, '117', 'large purple bracelet centers', 1, ''),
(314, '2014-02-16 00:13:24', 1, 28, '118', 'large purple bracelet centers quantity of 4', 1, ''),
(315, '2014-02-16 00:14:55', 1, 29, '118', 'padparadscha 6mm Swarovski bicone', 1, ''),
(316, '2014-02-16 00:15:11', 1, 28, '119', 'padparadscha 6mm Swarovski bicone quantity of 9', 1, ''),
(317, '2014-02-16 00:15:57', 1, 29, '119', 'amber/orange puffed discs', 1, ''),
(318, '2014-02-16 00:16:37', 1, 28, '120', 'amber/orange puffed discs quantity of 34', 1, ''),
(319, '2014-02-16 00:17:38', 1, 29, '120', 'hyacinth AB 6mm Swarovski bicone', 1, ''),
(320, '2014-02-16 00:17:49', 1, 28, '121', 'hyacinth AB 6mm Swarovski bicone quantity of 20', 1, ''),
(321, '2014-02-16 00:18:44', 1, 29, '121', 'carnelian horses', 1, ''),
(322, '2014-02-16 00:18:51', 1, 28, '122', 'carnelian horses quantity of 1', 1, ''),
(323, '2014-02-16 00:21:12', 1, 29, '122', 'carnelian ovals', 1, ''),
(324, '2014-02-16 00:21:26', 1, 28, '123', 'carnelian ovals quantity of 5', 1, ''),
(325, '2014-02-16 00:25:51', 1, 29, '123', 'orange teardrops', 1, ''),
(326, '2014-02-16 00:26:19', 1, 28, '124', 'orange teardrops quantity of 10', 1, ''),
(327, '2014-02-16 00:27:14', 1, 29, '124', 'orange swirl puffed triangles', 1, ''),
(328, '2014-02-16 00:27:45', 1, 28, '125', 'orange swirl puffed triangles quantity of 34', 1, ''),
(329, '2014-02-16 00:28:20', 1, 29, '125', 'orange diamonds', 1, ''),
(330, '2014-02-16 00:29:08', 1, 28, '126', 'orange diamonds quantity of 23', 1, ''),
(331, '2014-02-16 00:30:19', 1, 29, '126', 'dusty orange oblong', 1, ''),
(332, '2014-02-16 00:30:33', 1, 28, '127', 'dusty orange oblong quantity of 8', 1, ''),
(333, '2014-02-16 00:31:10', 1, 29, '127', 'orange faceted ovals', 1, ''),
(334, '2014-02-16 00:31:41', 1, 28, '128', 'orange faceted ovals quantity of 7', 1, ''),
(335, '2014-02-16 00:32:34', 1, 29, '128', '6mm dusty orange bicones', 1, ''),
(336, '2014-02-16 00:32:58', 1, 28, '129', '6mm dusty orange bicones quantity of 20', 1, ''),
(337, '2014-02-16 00:33:09', 1, 28, '129', '6mm dusty orange bicones quantity of 20.0', 2, 'Changed price_per_unit.'),
(338, '2014-02-16 00:33:52', 1, 29, '129', 'orange AB large roundelles', 1, ''),
(339, '2014-02-16 00:34:19', 1, 28, '130', 'orange AB large roundelles quantity of 5', 1, ''),
(340, '2014-02-16 00:34:50', 1, 29, '130', '8mm orange faceted rounds', 1, ''),
(341, '2014-02-16 00:35:07', 1, 28, '131', '8mm orange faceted rounds quantity of 10', 1, ''),
(342, '2014-02-16 00:35:30', 1, 29, '131', '6mm orange Czech', 1, ''),
(343, '2014-02-16 00:36:18', 1, 28, '132', '6mm orange Czech quantity of 11', 1, ''),
(344, '2014-02-16 00:47:40', 1, 29, '132', '6mm peridot Swarovski bicone', 1, ''),
(345, '2014-02-16 00:48:16', 1, 28, '133', '6mm peridot Swarovski bicone quantity of 12', 1, ''),
(346, '2014-02-16 00:48:47', 1, 29, '133', '4mm peridot Swarovski bicone', 1, ''),
(347, '2014-02-16 00:49:00', 1, 28, '134', '4mm peridot Swarovski bicone quantity of 14', 1, ''),
(348, '2014-02-16 00:49:43', 1, 29, '134', 'lampworks cats', 1, ''),
(349, '2014-02-16 00:49:57', 1, 28, '135', 'lampworks cats quantity of 1', 1, ''),
(350, '2014-02-16 00:50:57', 1, 29, '135', 'large matte light green shapes', 1, ''),
(351, '2014-02-16 00:52:05', 1, 28, '136', 'large matte light green shapes quantity of 38', 1, ''),
(352, '2014-02-16 00:52:19', 1, 29, '136', 'small matte light green shapes', 1, ''),
(353, '2014-02-16 00:52:38', 1, 28, '137', 'small matte light green shapes quantity of 20', 1, ''),
(354, '2014-02-16 00:53:29', 1, 29, '137', 'opaque seafoam green oblong', 1, ''),
(355, '2014-02-16 00:54:46', 1, 28, '138', 'opaque seafoam green oblong quantity of 37', 1, ''),
(356, '2014-02-16 00:56:41', 1, 29, '138', 'light green faceted small roundelles', 1, ''),
(357, '2014-02-16 01:00:04', 1, 28, '139', 'light green faceted small roundelles quantity of 87', 1, ''),
(358, '2014-02-16 01:00:48', 1, 29, '139', 'green bracelet center', 1, ''),
(359, '2014-02-16 01:00:57', 1, 28, '140', 'green bracelet center quantity of 1', 1, ''),
(360, '2014-02-16 01:02:49', 1, 29, '140', 'blue/white swirl oblong', 1, ''),
(361, '2014-02-16 01:02:59', 1, 28, '141', 'blue/white swirl oblong quantity of 6', 1, ''),
(362, '2014-02-16 01:03:25', 1, 29, '141', '8mm leaf green bicones', 1, ''),
(363, '2014-02-16 01:04:23', 1, 28, '142', '8mm leaf green bicones quantity of 39', 1, ''),
(364, '2014-02-16 01:04:50', 1, 29, '142', 'olive green leaf w/ gold veins', 1, ''),
(365, '2014-02-16 01:04:59', 1, 28, '143', 'olive green leaf w/ gold veins quantity of 1', 1, ''),
(366, '2014-02-16 01:05:24', 1, 29, '143', '4mm aqua cracked glass', 1, ''),
(367, '2014-02-16 01:07:17', 1, 28, '144', '4mm aqua cracked glass quantity of 86', 1, ''),
(368, '2014-02-16 01:11:18', 1, 29, '144', '5mm clear frosted melons', 1, ''),
(369, '2014-02-16 01:12:30', 1, 28, '145', '5mm clear frosted melons quantity of 96', 1, ''),
(370, '2014-02-16 01:14:00', 1, 29, '145', 'opaque white medium roundelles', 1, ''),
(371, '2014-02-16 01:17:03', 1, 28, '146', 'opaque white medium roundelles quantity of 44', 1, ''),
(372, '2014-02-16 01:17:24', 1, 28, '147', 'opaque white medium roundelles quantity of 22', 1, ''),
(373, '2014-02-16 01:18:18', 1, 29, '146', 'stone roses', 1, ''),
(374, '2014-02-16 01:18:30', 1, 28, '148', 'stone roses quantity of 1', 1, ''),
(375, '2014-02-16 01:20:40', 1, 29, '147', 'frosted clear large roundelles', 1, ''),
(376, '2014-02-16 01:21:02', 1, 28, '149', 'frosted clear large roundelles quantity of 2', 1, ''),
(377, '2014-02-16 01:21:17', 1, 29, '148', 'opaque white large roundelles', 1, ''),
(378, '2014-02-16 01:21:38', 1, 28, '150', 'opaque white large roundelles quantity of 8', 1, ''),
(379, '2014-02-16 01:22:12', 1, 29, '149', 'large freshwater pearls', 1, ''),
(380, '2014-02-16 01:23:36', 1, 28, '151', 'large freshwater pearls quantity of 45', 1, ''),
(381, '2014-02-16 01:24:40', 1, 28, '134', '4mm peridot Swarovski bicone quantity of 15.0', 2, 'Changed quantity.'),
(382, '2014-02-16 01:25:02', 1, 28, '133', '6mm peridot Swarovski bicone quantity of 18.0', 2, 'Changed quantity.'),
(383, '2014-02-16 01:26:12', 1, 29, '150', 'peridot Swarovski leaf pendant', 1, ''),
(384, '2014-02-16 01:26:39', 1, 28, '152', 'peridot Swarovski leaf pendant quantity of 1', 1, ''),
(385, '2014-02-16 01:27:48', 1, 29, '151', '6mm crackle rock round', 1, ''),
(386, '2014-02-16 01:27:59', 1, 28, '153', '6mm crackle rock round quantity of 73', 1, ''),
(387, '2014-02-16 01:28:59', 1, 29, '152', 'carved white rounds', 1, ''),
(388, '2014-02-16 01:29:13', 1, 28, '154', 'carved white rounds quantity of 4', 1, '');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

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
(18, 'log entry', 'admin', 'logentry'),
(19, 'account type', 'finances', 'accounttype'),
(20, 'account', 'finances', 'account'),
(21, 'transaction', 'finances', 'transaction'),
(22, 'entry type', 'finances', 'entrytype'),
(23, 'entry', 'finances', 'entry'),
(24, 'finished goods materials used', 'finances', 'finishedgoodsmaterialsused'),
(25, 'finished goods inventory', 'finances', 'finishedgoodsinventory'),
(26, 'finished goods inventory item', 'finances', 'finishedgoodsinventoryitem'),
(27, 'finished goods inventory type', 'finances', 'finishedgoodsinventorytype'),
(28, 'materials inventory', 'finances', 'materialsinventory'),
(29, 'materials inventory item', 'finances', 'materialsinventoryitem'),
(30, 'unit', 'finances', 'unit');

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
('14x5s9x8m4uifq9bsfszzf1o0rzqd0gl', 'YjgzOTk5ZDExMDljZjFjZmQxOTRkM2U3MDJjNzBhZTM0MTU0MDQzYzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-02-02 06:52:34'),
('b0k4cy49qz9nuoi1zxk0cqgnelbrbinw', 'YjgzOTk5ZDExMDljZjFjZmQxOTRkM2U3MDJjNzBhZTM0MTU0MDQzYzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-02-04 23:49:18'),
('5dfkvefpgxkcc1lkul2e3emxzaids09y', 'YjgzOTk5ZDExMDljZjFjZmQxOTRkM2U3MDJjNzBhZTM0MTU0MDQzYzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-02-13 21:23:05'),
('myygenrvgclcwdjy09cb6pcia5hk4fvn', 'YjgzOTk5ZDExMDljZjFjZmQxOTRkM2U3MDJjNzBhZTM0MTU0MDQzYzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-02-22 00:52:40'),
('8prhxj4of0tal9pn7u9u0vtp98lz8he1', 'YjgzOTk5ZDExMDljZjFjZmQxOTRkM2U3MDJjNzBhZTM0MTU0MDQzYzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-06-07 20:10:04');

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
-- Table structure for table `finances_account`
--

CREATE TABLE IF NOT EXISTS `finances_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `description` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finances_account_403d8ff3` (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `finances_account`
--

INSERT INTO `finances_account` (`id`, `number`, `type_id`, `description`) VALUES
(1, 1000, 1, 'Cash'),
(2, 3000, 3, 'Owner''s Equity'),
(3, 1100, 1, 'Raw Materials Inventory'),
(4, 1101, 1, 'Work In Process Inventory'),
(5, 1102, 1, 'Finished Goods Inventory'),
(6, 1200, 1, 'Advertising Supplies'),
(7, 2000, 2, 'Sales Tax Payable'),
(8, 4000, 4, 'Sales Revenue'),
(9, 5000, 5, 'Supplies Expense'),
(11, 5001, 5, 'Cost of Goods Sold');

-- --------------------------------------------------------

--
-- Table structure for table `finances_accounttype`
--

CREATE TABLE IF NOT EXISTS `finances_accounttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `positive_credit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `finances_accounttype`
--

INSERT INTO `finances_accounttype` (`id`, `name`, `positive_credit`) VALUES
(1, 'asset', 0),
(2, 'liability', 1),
(3, 'equity', 1),
(4, 'revenue', 1),
(5, 'expense', 0);

-- --------------------------------------------------------

--
-- Table structure for table `finances_entry`
--

CREATE TABLE IF NOT EXISTS `finances_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finances_entry_0f45431a` (`transaction_id`),
  KEY `finances_entry_403d8ff3` (`type_id`),
  KEY `finances_entry_93025c2f` (`account_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `finances_entry`
--

INSERT INTO `finances_entry` (`id`, `transaction_id`, `type_id`, `account_id`, `amount`) VALUES
(1, 1, 1, 1, 50.00),
(2, 1, 2, 2, 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `finances_entrytype`
--

CREATE TABLE IF NOT EXISTS `finances_entrytype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `finances_entrytype`
--

INSERT INTO `finances_entrytype` (`id`, `name`) VALUES
(1, 'debit'),
(2, 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `finances_transaction`
--

CREATE TABLE IF NOT EXISTS `finances_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `description` varchar(256) NOT NULL,
  `notes` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `finances_transaction`
--

INSERT INTO `finances_transaction` (`id`, `date`, `description`, `notes`) VALUES
(1, '2014-02-02', 'Test', ''),
(2, '2014-01-01', 'Hobby Lobby', ''),
(3, '2014-01-20', 'Michael''s', ''),
(4, '2014-01-20', 'The Beaded Iris', ''),
(5, '2014-01-23', 'JoAnn', ''),
(6, '2014-01-23', 'Michael''s', ''),
(7, '2014-01-28', 'Hobby Lobby', ''),
(8, '2014-02-01', 'Michael''s', ''),
(9, '2014-01-01', 'Initial Import', '');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `finishedGoodsInventory`
--

INSERT INTO `finishedGoodsInventory` (`id`, `finishedGoodsInventoryItemId`, `quantity`) VALUES
(2, 2, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `finishedGoodsInventoryItem`
--

INSERT INTO `finishedGoodsInventoryItem` (`id`, `typeId`, `description`, `photo`) VALUES
(2, 1, 'Pretty thing made from trinkets.', 'http://www.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `finishedGoodsInventoryType`
--

CREATE TABLE IF NOT EXISTS `finishedGoodsInventoryType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `finishedGoodsInventoryType`
--

INSERT INTO `finishedGoodsInventoryType` (`id`, `name`, `description`) VALUES
(1, 'necklace', 'A thing that goes around your neck and looks pretty.');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `materialsInventory`
--

CREATE TABLE IF NOT EXISTS `materialsInventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materialsInventoryItemId` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `pricePerUnit` float NOT NULL,
  `transactionId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `materialsInventoryItemId` (`materialsInventoryItemId`),
  KEY `transactionId` (`transactionId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Dumping data for table `materialsInventory`
--

INSERT INTO `materialsInventory` (`id`, `materialsInventoryItemId`, `quantity`, `pricePerUnit`, `transactionId`) VALUES
(6, 3, 8, 0.2, 2),
(7, 4, 6, 0.2667, 2),
(8, 5, 18, 0.2134, 3),
(9, 6, 18, 0.1421, 3),
(10, 7, 2, 1.07, 3),
(11, 8, 3, 1.07, 4),
(12, 9, 15, 0.214, 4),
(13, 10, 34, 0.118, 4),
(14, 11, 66, 0.0365, 4),
(15, 12, 25, 0.0963, 4),
(16, 13, 25, 0.0963, 4),
(17, 14, 25, 0.0749, 4),
(18, 15, 79, 0.0508, 4),
(19, 16, 1, 0.8025, 4),
(20, 17, 1, 0.8025, 4),
(21, 18, 1, 0.8025, 4),
(22, 19, 1, 0.8025, 4),
(23, 20, 80, 0.0531, 5),
(24, 21, 16, 0.0649, 5),
(25, 22, 30, 0.1066, 5),
(26, 23, 180, 0.0106, 5),
(27, 24, 22, 0.2417, 5),
(28, 25, 14, 0.1903, 5),
(29, 26, 13, 0.3696, 5),
(30, 27, 70, 0.0306, 6),
(31, 28, 32, 0.0599, 6),
(32, 29, 30, 0.071, 7),
(33, 30, 22, 0.0482, 7),
(34, 31, 11, 0.1936, 7),
(35, 32, 24, 0.0664, 7),
(36, 33, 1, 1.3161, 7),
(37, 34, 2, 0.7865, 7),
(38, 35, 4, 0.7998, 8),
(39, 36, 155, 0.0112, 9),
(40, 37, 101, 0.01, 9),
(41, 38, 60, 0.01, 9),
(42, 39, 1, 0.0963, 9),
(43, 40, 15, 0.0963, 9),
(44, 41, 8, 0.01, 9),
(45, 42, 14, 0.0764, 9),
(46, 43, 16, 0.04, 9),
(47, 44, 22, 0.04, 9),
(48, 45, 8, 0.06, 9),
(49, 46, 10, 0.1, 9),
(50, 47, 3, 0.06, 9),
(51, 48, 2, 0.5, 9),
(52, 50, 24, 0.01, 9),
(53, 51, 40, 0.0372, 9),
(54, 52, 1, 0.12, 9),
(55, 53, 3, 0.06, 9),
(56, 54, 23, 0.08, 9),
(57, 55, 6, 0.03, 9),
(58, 56, 20, 0.05, 9),
(59, 57, 23, 0.08, 9),
(60, 58, 5, 0.1798, 9),
(61, 59, 10, 0.214, 9),
(62, 60, 37, 0.0208, 9),
(63, 61, 7, 0.1689, 9),
(64, 62, 22, 0.1115, 9),
(65, 63, 12, 0.1921, 9),
(66, 64, 10, 0.06, 9),
(67, 65, 8, 0.08, 9),
(68, 66, 1, 0.5, 9),
(69, 67, 21, 0.0968, 9),
(70, 68, 41, 0.0764, 9),
(71, 69, 17, 0.1315, 9),
(72, 70, 28, 0.1115, 9),
(73, 71, 8, 0.1115, 9),
(74, 72, 6, 0.1115, 9),
(75, 73, 15, 0.09, 9),
(76, 74, 6, 0.05, 9),
(77, 75, 4, 0.05, 9),
(78, 76, 16, 0.09, 9),
(79, 77, 14, 0.05, 9),
(80, 78, 4, 0.0399, 9),
(81, 79, 48, 0.03, 9),
(82, 80, 22, 0.107, 9),
(83, 81, 15, 0.1798, 9),
(84, 82, 44, 0.0419, 9),
(85, 83, 34, 0.0457, 9),
(86, 84, 101, 0.0955, 9),
(87, 85, 7, 0.08, 9),
(88, 86, 33, 0.15, 9),
(89, 87, 51, 0.0457, 9),
(90, 88, 2, 0.0249, 9),
(91, 89, 3, 0.02, 9),
(92, 90, 50, 0.02, 9),
(93, 91, 6, 0.02, 9),
(94, 92, 13, 0.2739, 9),
(95, 93, 11, 0.0482, 9),
(96, 94, 11, 0.04, 9),
(97, 96, 19, 0.04, 9),
(98, 97, 6, 0.01, 9),
(99, 98, 11, 0.01, 9),
(100, 99, 4, 0.7958, 9),
(101, 100, 39, 0.0955, 9),
(102, 101, 27, 0.07, 9),
(103, 102, 26, 0.07, 9),
(104, 103, 14, 0.06, 9),
(105, 104, 1, 0.09, 9),
(106, 105, 1, 0.12, 9),
(107, 106, 13, 0.0482, 9),
(108, 107, 47, 0.0681, 9),
(109, 108, 49, 0.1, 9),
(110, 109, 35, 0.0238, 9),
(111, 110, 49, 0.0459, 9),
(112, 111, 2, 0.09, 9),
(113, 112, 11, 0.06, 9),
(114, 113, 14, 0.06, 9),
(115, 114, 12, 0.08, 9),
(116, 115, 3, 0.08, 9),
(117, 116, 1, 0.11, 9),
(118, 117, 4, 0.6634, 9),
(119, 118, 9, 0.1498, 9),
(120, 119, 34, 0.096, 9),
(121, 120, 20, 0.2226, 9),
(122, 121, 1, 4.28, 9),
(123, 122, 5, 0.6433, 9),
(124, 123, 10, 0.15, 9),
(125, 124, 34, 0.0437, 9),
(126, 125, 23, 0.06, 9),
(127, 126, 8, 0.08, 9),
(128, 127, 7, 0.09, 9),
(129, 128, 20, 0.08, 9),
(130, 129, 5, 0.09, 9),
(131, 130, 10, 0.11, 9),
(132, 131, 11, 0.07, 9),
(133, 132, 18, 0.14, 9),
(134, 133, 15, 0.0963, 9),
(135, 134, 1, 1.5943, 9),
(136, 135, 38, 0.09, 9),
(137, 136, 20, 0.05, 9),
(138, 137, 37, 0.04, 9),
(139, 138, 87, 0.0535, 9),
(140, 139, 1, 0.62, 9),
(141, 140, 6, 0.08, 9),
(142, 141, 39, 0.06, 9),
(143, 142, 1, 0.09, 9),
(144, 143, 86, 0.03, 9),
(145, 144, 96, 0.0599, 9),
(146, 145, 44, 0.0511, 9),
(147, 145, 22, 0.0727, 9),
(148, 146, 1, 2.14, 9),
(149, 147, 2, 0.0626, 9),
(150, 148, 8, 0.08, 9),
(151, 149, 45, 0.1924, 9),
(152, 150, 1, 1.6478, 9),
(153, 151, 73, 0.1052, 9),
(154, 152, 4, 0.06, 9);

-- --------------------------------------------------------

--
-- Table structure for table `materialsInventoryItem`
--

CREATE TABLE IF NOT EXISTS `materialsInventoryItem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unitId` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `dateLastPurchased` date NOT NULL,
  `dateLastUsed` date NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unitId` (`unitId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=153 ;

--
-- Dumping data for table `materialsInventoryItem`
--

INSERT INTO `materialsInventoryItem` (`id`, `unitId`, `description`, `photo`, `dateLastPurchased`, `dateLastUsed`, `name`) VALUES
(4, 1, 'none', 'none', '2014-02-07', '2000-01-01', 'antique copper leaf charms'),
(3, 1, 'None', 'None', '2014-02-07', '2000-01-01', 'silver rose links'),
(5, 2, 'none', 'none', '2014-01-20', '2014-02-07', '20 gauge gunmetal wire'),
(6, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'black discs with polka dots'),
(7, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'silver flower ear studs'),
(8, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'gunmetal magnetic clasps'),
(9, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'grey/green striped rectangles'),
(10, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'blue/green mottled pentagons'),
(11, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'pale yellow ribbed discs'),
(12, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'milky rose 6mm czech'),
(13, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'burgundy ovals'),
(14, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'clear ovals'),
(15, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'small clear AB roundelles'),
(16, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'red diamond polka dot pendant'),
(17, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'black diamond polka dot pendant'),
(18, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'purple diamond polka dot pendant'),
(19, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'purple oblong with stars'),
(20, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'mountain blue medium roundelles'),
(21, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'purple polka dot rounds'),
(22, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'emerald green large roundelles'),
(23, 2, 'none', 'none', '2014-02-07', '2014-02-07', '26 gauge gunmetal wire'),
(24, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'stone discs'),
(25, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'orange splatter large rounds'),
(26, 1, '2 hearts, 1 square, 10 geometric', 'none', '2014-02-07', '2014-02-07', 'large clear faceted shapes'),
(27, 1, 'none', 'none', '2014-02-07', '2014-02-07', '4mm rainbow bicones'),
(28, 1, 'none', 'none', '2014-02-07', '2014-02-07', '5mm clear frosted melons'),
(29, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'copper head pins'),
(30, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'topaz/pink 4mm Czech'),
(31, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'silver leaf wrapped purple pearls'),
(32, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'clear AB drops'),
(33, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'metal teardrop leaf/branch pendant'),
(34, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'metal loop pendant'),
(35, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'silver magnetic clasps'),
(36, 1, 'none', 'none', '2014-01-01', '2014-01-01', '6mm rose matte glass pearls'),
(37, 1, 'none', 'none', '2014-01-01', '2014-01-01', '3mm heishi turquoise'),
(38, 1, 'none', 'none', '2014-01-01', '2014-01-01', '3mm heishi jet'),
(39, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'emerald 4mm Swarovski bicone'),
(40, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'emerald 6mm Swarovski bicone'),
(41, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'forest green 4mm pearls'),
(42, 1, 'none', 'none', '2014-02-07', '2014-02-07', 'emerald 6mm Czech faceted'),
(43, 1, 'none', 'none', '2014-01-01', '2014-01-01', '8mm green shell round'),
(44, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'dark green 6mm stone'),
(45, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'green Czech tulips'),
(46, 1, '3 cubes, 4 waves, 3 discs', 'none', '2014-01-01', '2014-01-01', 'dark green shapes'),
(47, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'green with gold small leaves'),
(48, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'large emerald hearts'),
(49, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'oriental trading glass hearts'),
(50, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'small bright green discs'),
(51, 1, 'none', 'none', '2014-01-01', '2014-01-01', '6mm adventurine'),
(52, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'lime green with pink roses'),
(53, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'medium green Czech tulips'),
(54, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'medium green ovals'),
(55, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'small lime green top drilled discs'),
(56, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'medium green 6mm stone'),
(57, 1, 'none', 'none', '2014-01-01', '2014-01-01', '8mm bright green stone'),
(58, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'erinite 6mm Swarovski bicone'),
(59, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'green Czech leaves with silver veins'),
(60, 1, 'none', 'none', '2014-01-01', '2014-01-01', '8mm adventurine'),
(61, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'green tulips'),
(62, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'sage faceted large roundelles'),
(63, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'olive green polka dots'),
(64, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'sage gogi berries'),
(65, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'sage disc pearls'),
(66, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'olive heart with black spots'),
(67, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'dark purple oblong twists'),
(68, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'dark purple 6mm Czech'),
(69, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'copper and purple roses'),
(70, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'metallic purple large roundelles'),
(71, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'purple roundelles with flower center'),
(72, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'AB purple large roundelles'),
(73, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'dark purple rectangles'),
(74, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'purple medium roundelles'),
(75, 1, 'none', 'none', '2014-01-01', '2014-01-01', '6mm metallic bicones'),
(76, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'dark purple puffed rectangles'),
(77, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'purple double holed shell shapes'),
(78, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'amethyst 4mm bicone'),
(79, 1, 'none', 'none', '2014-01-01', '2014-01-01', '4mm purple stone rounds'),
(80, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'rose peach 5mm Swarovski bicone'),
(81, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'silk 6mm Swarovski bicone'),
(82, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'tiny freshwater pearls'),
(83, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'peach small freshwater pearls'),
(84, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'freshwater pearls'),
(85, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'shell flat hexagons'),
(86, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'peach Czech glass leaves'),
(87, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'amethyst tiny faceted rounds'),
(88, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'medium purple roundelles'),
(89, 1, 'none', 'none', '2014-01-01', '2014-01-01', '4mm purple/copper rounds'),
(90, 1, 'none', 'none', '2014-01-01', '2014-01-01', '4mm smooth purple bicones'),
(91, 1, 'none', 'none', '2014-01-01', '2014-01-01', '4mm purple/white striped rounds'),
(92, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'peach art deco lilies'),
(93, 1, 'none', 'none', '2014-01-01', '2014-01-01', '4mm champagne Czech'),
(94, 1, 'none', 'none', '2014-01-01', '2014-01-01', '6mm peach discs'),
(97, 1, 'none', 'none', '2014-01-01', '2014-01-01', '4mm peach pearls'),
(96, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'mauve pentagons'),
(98, 1, 'none', 'none', '2014-01-01', '2014-01-01', '4mm peach rounds'),
(99, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'peach large drop lillies'),
(100, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'medium peach freshwater pearls'),
(101, 1, 'none', 'none', '2014-01-01', '2014-01-01', '8mm peach discs'),
(102, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'striped peach shapes'),
(103, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'peach/green rounds'),
(104, 1, 'none', 'none', '2014-01-01', '2014-01-01', '8mm peach Czech'),
(105, 1, 'none', 'none', '2014-01-01', '2014-01-01', '8mm peach lampworks'),
(106, 1, 'none', 'none', '2014-01-01', '2014-01-01', '4mm amethyst Czech'),
(107, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'medium lavender freshwater pearls'),
(108, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'purple freshwater pearls'),
(109, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'purple/blue cubes'),
(110, 1, 'none', 'none', '2014-01-01', '2014-01-01', '6mm amethyst rounds'),
(111, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'dusty purple rectangles'),
(112, 1, 'none', 'none', '2014-01-01', '2014-01-01', '6mm periwinkle bicones'),
(113, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'dusty purple geometrics'),
(114, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'purple rounds with glitter swirl'),
(115, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'periwinkle/silver rounds'),
(116, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'purple striped heart'),
(117, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'large purple bracelet centers'),
(118, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'padparadscha 6mm Swarovski bicone'),
(119, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'amber/orange puffed discs'),
(120, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'hyacinth AB 6mm Swarovski bicone'),
(121, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'carnelian horses'),
(122, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'carnelian ovals'),
(123, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'orange teardrops'),
(124, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'orange swirl puffed triangles'),
(125, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'orange diamonds'),
(126, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'dusty orange oblong'),
(127, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'orange faceted ovals'),
(128, 1, 'none', 'none', '2014-01-01', '2014-01-01', '6mm dusty orange bicones'),
(129, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'orange AB large roundelles'),
(130, 1, 'none', 'none', '2014-01-01', '2014-01-01', '8mm orange faceted rounds'),
(131, 1, 'none', 'none', '2014-01-01', '2014-01-01', '6mm orange Czech'),
(132, 1, 'none', 'none', '2014-01-01', '2014-01-01', '6mm peridot Swarovski bicone'),
(133, 1, 'none', 'none', '2014-01-01', '2014-01-01', '4mm peridot Swarovski bicone'),
(134, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'lampworks cats'),
(135, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'large matte light green shapes'),
(136, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'small matte light green shapes'),
(137, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'opaque seafoam green oblong'),
(138, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'light green faceted small roundelles'),
(139, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'green bracelet center'),
(140, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'blue/white swirl oblong'),
(141, 1, 'none', 'none', '2014-01-01', '2014-01-01', '8mm leaf green bicones'),
(142, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'olive green leaf w/ gold veins'),
(143, 1, 'none', 'none', '2014-01-01', '2014-01-01', '4mm aqua cracked glass'),
(144, 1, 'none', 'none', '2014-01-01', '2014-01-01', '5mm clear frosted melons'),
(145, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'opaque white medium roundelles'),
(146, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'stone roses'),
(147, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'frosted clear large roundelles'),
(148, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'opaque white large roundelles'),
(149, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'large freshwater pearls'),
(150, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'peridot Swarovski leaf pendant'),
(151, 1, 'none', 'none', '2014-01-01', '2014-01-01', '6mm crackle rock round'),
(152, 1, 'none', 'none', '2014-01-01', '2014-01-01', 'carved white rounds');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `date`, `description`, `amount`, `accountId`) VALUES
(1, '2014-01-19', 'Michael''s store purchases.', -30, 4),
(2, '2014-01-30', 'deposit', 500, 4);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `name`) VALUES
(1, 'each'),
(2, 'feet');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

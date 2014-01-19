-- phpMyAdmin SQL Dump
-- version 3.3.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2014 at 02:01 PM
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
CREATE DATABASE `heartsASwirl` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `heartsASwirl`;

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

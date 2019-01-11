-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: Project
-- ------------------------------------------------------
-- Server version	5.6.31

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
-- Table structure for table `Customer_Order_Details`
--

DROP TABLE IF EXISTS `Customer_Order_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer_Order_Details` (
  `Order_ID` varchar(12) NOT NULL,
  `Customer_ID` varchar(11) NOT NULL,
  `Tracking_ID` varchar(12) NOT NULL,
  `order_Status` varchar(11) NOT NULL,
  `date_order_placed` datetime NOT NULL,
  `date_order_delivered` datetime NOT NULL,
  `Order_cost` int(10) unsigned NOT NULL,
  `SellerID` varchar(12) NOT NULL,
  `Card_number` varchar(15) NOT NULL,
  PRIMARY KEY (`Order_ID`,`SellerID`,`Customer_ID`),
  UNIQUE KEY `Order_ID_UNIQUE` (`Order_ID`),
  UNIQUE KEY `Customer_ID_UNIQUE` (`Customer_ID`),
  UNIQUE KEY `Tracking_ID_UNIQUE` (`Tracking_ID`),
  UNIQUE KEY `Card_number_UNIQUE` (`Card_number`),
  KEY `SellerID_idx` (`SellerID`),
  CONSTRAINT `Seller_ID12` FOREIGN KEY (`SellerID`) REFERENCES `Seller` (`SellerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `customerID12` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`CustomerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_Order_Details`
--

LOCK TABLES `Customer_Order_Details` WRITE;
/*!40000 ALTER TABLE `Customer_Order_Details` DISABLE KEYS */;
INSERT INTO `Customer_Order_Details` VALUES ('123456589101','12345678910','123456789101','Delivered','2018-04-27 13:19:30','2018-04-27 13:19:37',1000,'123456789101','12345678911234'),('234565891011','23456789101','456789101123','Delivered','2018-04-27 13:19:31','2018-04-27 13:19:39',1000,'234567891011','345678910134567'),('345658910111','34567891012','123678910145','Delivered','2018-04-27 13:19:32','2018-04-27 13:19:38',1000,'345678910121','234567891023456');
/*!40000 ALTER TABLE `Customer_Order_Details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-27 15:46:28

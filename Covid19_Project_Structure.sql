-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: database251covid.crhpcoqeujnf.us-east-2.rds.amazonaws.com    Database: Covid19_Project
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Handsanitizer`
--

DROP TABLE IF EXISTS `Handsanitizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Handsanitizer` (
  `PID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Price` int(11) NOT NULL,
  `Volume` int(11) NOT NULL,
  PRIMARY KEY (`PID`),
  UNIQUE KEY `PID_UNIQUE` (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Location` (
  `routeID` int(10) unsigned NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `longtitude` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `province` varchar(15) NOT NULL,
  `district` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`routeID`),
  UNIQUE KEY `routeID_UNIQUE` (`routeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Mask`
--

DROP TABLE IF EXISTS `Mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mask` (
  `PID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Price` int(10) NOT NULL,
  `Type` varchar(10) NOT NULL COMMENT 'N95, Carbon, Surgical',
  PRIMARY KEY (`PID`),
  UNIQUE KEY `PID_UNIQUE` (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PatientsInfo`
--

DROP TABLE IF EXISTS `PatientsInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PatientsInfo` (
  `Patient_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Last_Updated_Date` varchar(15) NOT NULL,
  `Confirmed_Date` varchar(15) NOT NULL,
  `Status` varchar(10) NOT NULL COMMENT 'Active, Recovered, Death',
  `RouteID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Patient_ID`),
  UNIQUE KEY `idPatientsInfo_UNIQUE` (`Patient_ID`),
  KEY `RouteID_idx` (`RouteID`),
  CONSTRAINT `RouteID` FOREIGN KEY (`RouteID`) REFERENCES `Location` (`routeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Stockhand`
--

DROP TABLE IF EXISTS `Stockhand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stockhand` (
  `PID` int(10) unsigned NOT NULL,
  `StoreID` int(10) unsigned NOT NULL,
  `Stock` int(10) NOT NULL,
  PRIMARY KEY (`PID`,`StoreID`),
  KEY `StoreID_idx` (`StoreID`),
  CONSTRAINT `PID` FOREIGN KEY (`PID`) REFERENCES `Handsanitizer` (`PID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `StoreID` FOREIGN KEY (`StoreID`) REFERENCES `StoreInfo` (`StoreID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Stockmask`
--

DROP TABLE IF EXISTS `Stockmask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stockmask` (
  `PID` int(10) unsigned NOT NULL,
  `StoreID` int(10) unsigned NOT NULL,
  `Stock` int(10) NOT NULL,
  PRIMARY KEY (`PID`,`StoreID`),
  KEY `StoreIDF_idx` (`StoreID`),
  CONSTRAINT `PIDF` FOREIGN KEY (`PID`) REFERENCES `Mask` (`PID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `StoreIDF` FOREIGN KEY (`StoreID`) REFERENCES `StoreInfo` (`StoreID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StoreInfo`
--

DROP TABLE IF EXISTS `StoreInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StoreInfo` (
  `StoreID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Last_Updated_Date` varchar(15) NOT NULL,
  `RouteID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`StoreID`),
  KEY `RouteID_idx` (`RouteID`),
  CONSTRAINT `RouteIDstore` FOREIGN KEY (`RouteID`) REFERENCES `Location` (`routeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-17 16:05:42

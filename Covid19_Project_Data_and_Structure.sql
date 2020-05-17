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
-- Dumping data for table `Handsanitizer`
--

LOCK TABLES `Handsanitizer` WRITE;
/*!40000 ALTER TABLE `Handsanitizer` DISABLE KEYS */;
INSERT INTO `Handsanitizer` VALUES (1,50,50),(2,100,100),(3,70,50),(4,55,50),(5,75,50),(6,200,150),(7,80,10),(8,130,50),(9,110,50),(10,300,400),(11,80,500),(12,40,60),(13,60,90),(14,40,30),(15,50,100),(16,80,100),(17,100,50),(18,70,80),(19,90,70),(20,60,80),(21,90,600),(22,75,300),(23,120,25),(24,90,100),(25,90,55),(26,75,75),(27,80,100),(28,90,125),(29,50,30),(30,40,40),(31,50,50),(32,60,75),(33,80,90),(34,80,125),(35,50,100),(36,30,50),(37,150,300),(38,100,200),(39,75,100),(40,50,75),(41,40,50),(42,60,100),(43,70,120),(44,80,100),(45,60,90),(46,20,50),(47,25,50),(48,30,45),(49,60,100),(50,75,200),(51,80,100),(52,150,500),(53,80,150),(54,100,180),(55,75,150),(56,100,200),(57,80,100),(58,70,100),(59,150,250),(60,100,300),(61,125,400),(62,120,200),(63,80,120),(64,75,150),(65,80,100),(66,80,130),(67,100,125),(68,40,50),(69,45,70),(70,65,100),(71,80,125),(72,75,160),(73,80,150),(74,90,180),(75,125,200),(76,80,145),(77,60,100),(78,75,125),(79,60,80),(80,80,100),(81,100,175),(82,80,200),(83,50,80),(84,75,100),(85,80,200),(86,30,150),(87,45,90),(88,50,100),(89,75,125),(90,80,175),(91,75,100),(92,65,120),(93,60,125),(94,50,75),(95,40,150),(96,80,80),(97,50,50),(98,85,90),(99,90,150),(100,100,150);
/*!40000 ALTER TABLE `Handsanitizer` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
INSERT INTO `Location` VALUES (1,'13.756406723049','100.53382715235','Phyathai','Bangkok','Phayathai'),(2,'18.783642942060','98.985269870864','Chiang mai','Chiang mai','Suthep'),(3,'6.8703732203154','101.25454744349','Pattani','Pattani','Kamiyo'),(4,'12.894658405796','100.93869050990','Pattaya','Chonburi','-'),(5,'15.039656564120','100.54077754313','Baan mi','Lopburi','Sanam Chaeng'),(6,'13.729018511289','100.50357183467','Khlong San','Bangkok','Khlong Ton Sai'),(7,'13.823342181572','100.55000623713','Chatuchak','Bangkok','Chandrakasem'),(8,'13.763451270206','100.56030591975','Din daeng','Bangkok','Din daeng'),(9,'13.716761562815','100.53507169734','Sathon','Bangkok','Thung Wat Don'),(10,'13.729353631921','100.64346643145','Suan Luang','Bangkok','Suan Luang'),(11,'18.783642942060','98.985269870864','Chiang mai','Chiang mai','Phra Sing'),(12,'6.8703732203154','101.25454744349','Pattani','Pattani','Talu Bo'),(13,'12.737663746465','101.08140246465','Ban Chang','Rayong','Samnak Thon'),(14,'12.737654168488','101.08140256456','Ban Chang','Rayong','Pla'),(15,'13.729018511289','100.50357183467','Khlong San','Bangkok','Khlong Ton Sai'),(16,'14.065112546453','100.60255041542','Khlong Luang','pathum thani','Khlong Nueng'),(17,'13.916146844669','100.65546461453','Sai Mai','Bangkok ','O Ngoen'),(18,'13.916145645662','100.65546465976','Sai Mai','Bangkok ','O Ngeon'),(19,'13.702340464653','100.75943954678','Bang Phli','Samut prakan','Nong Prue'),(20,'13.702378987898','100.75947888974','Bang Phli','Samut prakan','Nong Prue'),(21,'17.168692787526','104.15677684564','Sakon nakhon','Sakon nakhon','Khamin'),(22,'17.168697989874','104.15677874895','Sakon nakhon','Sakon nakhon','Khamin'),(23,'13.730488874239','100.58722886552','Watthana','Bangkok','Khlong Tan Nuea'),(24,'13.730488887496','100.58727846589','Watthana','Bangkok','Khlong Tan Nuea'),(25,'13.780833468645','100.51667686556','Dusit','Bangkok','Dusit'),(26,'13.780887489568','100.51808631253','Dusit','Bangkok','Dusit'),(27,'19.359217842135','98.442576856358','Pai','Mae Hong Son','Wiang Tai'),(28,'19.359284565451','98.442558465489','Pai','Mae Hong Son','Wiang Tai'),(29,'16.823295524562','100.26415987878','Phitsanulok','Phitsanulok','Wangnamkoo'),(30,'16.823226498468','100.26417946589','Phitsanulok','Phitsanulok','Wangnamkoo'),(31,'14.010929546545','99.974976464354','Kamphaeng Saen','Nakhon Pathom','Kamphaeng Saen'),(32,'14.010928789756','99.974976464354','Kamphaeng Saen','Nakhon Pathom','Kamphaeng Saen'),(33,'14.008425878878','99.968950546532','Rang phikul','Nakhon Pathom','Kamphaeng Saen'),(34,'7.8781814564545','98.383588454554','Talat Nuea','Phuket','Mueang Phuket'),(35,'7.8781817885455','98.383587878657','Talat Nuea','Phuket','Mueang Phuket'),(36,'7.8569134984854','98.375814878554','Phuket','Phuket','Mueang Phuket'),(37,'7.856945645676','98.375801231231','Phuket','Phuket','Mueang Phuket'),(38,'14.654409874874','99.914609848944','Thale Bok','Suphan Buri','Don Chedi'),(39,'14.652006452345','99.914604564654','Don Chedi','Suphan Buri','Don Chedi'),(40,'14.654564462654','99.914602315656','Thale Bok','Suphan Buri','Don Chedi'),(41,'14.652006452345','99.914604564654','Don Chedi','Suphan Buri','Don Chedi'),(42,'9.5005409848645','98.943802465445','Pak Mak','Surat Thani','Chaiya'),(43,'9.5005409544454','98.943845645456','Pak Mak','Surat Thani','Chaiya'),(44,'9.3896698454612','99.193227255461','Talat Chaiya','Surat Thani','Chaiya'),(45,'9.3896665456424','99.193246446487','Talat Chaiya','Surat Thani','Chaiya'),(46,'14.537638897489','103.62953187874','Khu Tan','Changwat Surin','Kap Choeng'),(47,'14.537665656996','103.62948556448','Khu Tan','Changwat Surin','Kap Choeng'),(48,'14.529619849845','103.53279498789','Khok Takhian','Changwat Surin','Kap Choeng'),(49,'14.529617478645','103.53274865465','Khok Takhian','Changwat Surin','Kap Choeng'),(50,'14.529183456564','103.53195165484','Takhian','Changwat Surin','Kap Choeng'),(51,'17.772414656566','102.76673845122','Khai Bok Wan','Nong Khai','Mueang Nong Kha'),(52,'17.772419895684','102.76673878765','Khai Bok Wan','Nong Khai','Mueang Nong Kha'),(53,'17.839511452457','102.70700745454','Mueang Mi','Nong Khai','Mueang Nong Kha'),(54,'17.839514544568','102.70700464568','Mueang Mi','Nong Khai','Mueang Nong Kha'),(55,'17.619045864568','102.66289687645','Ban Fang','Nong Khai','Mueang Nong Kha'),(56,'15.891922564845','105.32445486468','Na Tan','Ubon Ratchathan','Na Tan'),(57,'15.891924854655','105.32445867674','Na Tan','Ubon Ratchathan','Na Tan'),(58,'15.960885876545','105.28236584664','Kong Phon','Ubon Ratchathan','Na Tan'),(59,'15.960864565652','105.28236854645','Kong Phon','Ubon Ratchathan','Na Tan'),(60,'15.933813865454','105.34074845655','Phalan','Ubon Ratchathan','Na Tan'),(61,'17.894685554163','101.65874454884','Chiang Khan','Nan','Chiang Klang'),(62,'17.894684964894','101.65874494945','Chiang Khan','Nan','Chiang Klang'),(63,'19.287287564655','100.86310546897','Chiang Klang','Nan','Chiang Klang'),(64,'19.287285535464','100.86312134546','Chiang Klang','Nan','Chiang Klang'),(65,'19.309353855454','100.86207985543','Puea','Nan','Chiang Klang'),(66,'17.895802231567','103.80157702317','Tha Kok Daeng','Bueng Kan','Seka'),(67,'17.895868451235','103.80152369845','Tha Kok Daeng','Bueng Kan','Seka'),(68,'17.849014258963','103.75828414785','Sang','Bueng Kan','Seka'),(69,'17.849025634687','103.75828552146','Sang','Bueng Kan','Seka'),(70,'18.118077263248','103.93369778991','Ban Tong','Bueng Kan','Seka'),(71,'6.2796132121586','101.50022422545','Tamayung','Narathiwat','Si Sakhon'),(72,'6.2796185697464','101.50022656548','Tamayung','Narathiwat','Si Sakhon'),(73,'7.7223686546564',' 99.88515946544','Si Banphot','Narathiwat','Si Sakhon'),(74,'7.7223754544527',' 99.88515245452','Si Banphot','Narathiwat','Si Sakhon'),(75,'6.2339459569554','101.5018298486','Sa Ko','Narathiwat','Si Sakhon'),(76,'13.895433879464','100.4078699846','Bang Rak Phatth','Nonthaburi','Bang Bua Thong'),(77,'13.895435864794','100.4078654746','Bang Rak Phatth','Nonthaburi','Bang Bua Thong'),(78,'13.902816456452','100.3519113154','Bang Khu Rat','Nonthaburi','Bang Bua Thong'),(79,'13.902854634584','100.3519546558','Bang Khu Rat','Nonthaburi','Bang Bua Thong'),(80,'13.933757546541','100.3631344554','Phimon Rat','Nonthaburi','Bang Bua Thong'),(81,'15.755262456457','100.2585304532','Thap Krit Tai','Nakhon Sawan','Chum Saeng'),(82,'15.755245664587','100.2585454568','Thap Krit Tai','Nakhon Sawan','Chum Saeng'),(83,'15.809097523584','100.2435324554','Khok Mo','Nakhon Sawan','Chum Saeng'),(84,'15.809096544654','100.2435345658','Khok Mo','Nakhon Sawan','Chum Saeng'),(85,'15.867844654524','100.2720975564','Koei Chai','Nakhon Sawan','Chum Saeng'),(86,'15.787345452457','100.0749024547','Ban Kaeng','Nakhon Sawan','Chum Saeng'),(87,'15.787345456487','100.0749046465','Ban Kaeng','Nakhon Sawan','Chum Saeng'),(88,'16.261345455677','102.3581084532','Nong Sang','Nakhon Phanom',' Na Kae'),(89,'16.261345464564','102.3581456465','Nong Sang','Nakhon Phanom',' Na Kae'),(90,'15.251240454425','104.7142744534','Nong Bo','Nakhon Phanom',' Na Kae'),(91,'17.238264245468','99.25111646345','Mae Salit','Tak','Ban Tak'),(92,'17.238264565484','99.25111898657','Mae Salit','Tak','Ban Tak'),(93,'17.063901564461','99.04935556465','Ko Taphao','Tak','Ban Tak'),(94,'17.016875545513','99.00305953318','Thung Kracho','Tak','Ban Tak'),(95,'17.016874654636','99.00305765321','Thung Kracho','Tak','Ban Tak'),(96,'12.371324656651','102.4472412313','Thung Nonsi','Trat','Khao Saming'),(97,'12.469843131545','102.4415072312','Thep Nimit','Trat','Khao Saming'),(98,'12.371656455655','102.4475465512','Thung Nonsi','Trat','Khao Saming'),(99,'12.469856532385','102.4415645845','Thep Nimit','Trat','Khao Saming'),(100,'12.459912979985','102.4990788845','Wang Takhian','Trat','Khao Saming');
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Mask`
--

LOCK TABLES `Mask` WRITE;
/*!40000 ALTER TABLE `Mask` DISABLE KEYS */;
INSERT INTO `Mask` VALUES (1,50,'N95'),(2,40,'Carbon'),(3,30,'Surgical'),(4,80,'Surgical'),(5,100,'Carbon'),(6,70,'N95'),(7,200,'Surgical'),(8,100,'Carbon'),(9,140,'Surgical'),(10,60,'N95'),(11,80,'Surgical'),(12,60,'Carbon'),(13,80,'Carbon'),(14,75,'N95'),(15,50,'Surgical'),(16,100,'Surgical'),(17,90,'Carbon'),(18,90,'Carbon'),(19,80,'N95'),(20,70,'Surgical'),(21,75,'Surgical'),(22,60,'Carbon'),(23,50,'Carbon'),(24,80,'Carbon'),(25,90,'Surgical'),(26,95,'Surgical'),(27,100,'Surgical'),(28,60,'N95'),(29,50,'Carbon'),(30,60,'Carbon'),(31,80,'Carbon'),(32,50,'Surgical'),(33,60,'Surgical'),(34,75,'Surgical'),(35,45,'N95'),(36,80,'Carbon'),(37,80,'Carbon'),(38,45,'Surgical'),(39,70,'Surgical'),(40,45,'Carbon'),(41,80,'Carbon'),(42,90,'Surgical'),(43,50,'N95'),(44,40,'Surgical'),(45,60,'Surgical'),(46,90,'N95'),(47,85,'Carbon'),(48,80,'Surgical'),(49,75,'Surgical'),(50,40,'N95'),(51,30,'Carbon'),(52,60,'Surgical'),(53,75,'Surgical'),(54,45,'N95'),(55,65,'Carbon'),(56,70,'Surgical'),(57,80,'Surgical'),(58,90,'N95'),(59,65,'Carbon'),(60,90,'Carbon'),(61,70,'N95'),(62,75,'Surgical'),(63,60,'Surgical'),(64,55,'Surgical'),(65,60,'Surgical'),(66,40,'N95'),(67,30,'Carbon'),(68,35,'Carbon'),(69,45,'N95'),(70,65,'N95'),(71,75,'Surgical'),(72,35,'Surgical'),(73,70,'Carbon'),(74,65,'Carbon'),(75,80,'N95'),(76,40,'Surgical'),(77,80,'Surgical'),(78,50,'Surgical'),(79,60,'N95'),(80,90,'Carbon'),(81,50,'Carbon'),(82,70,'Surgical'),(83,80,'Surgical'),(84,65,'Surgical'),(85,75,'Surgical'),(86,80,'Carbon'),(87,40,'Surgical'),(88,65,'Carbon'),(89,80,'N95'),(90,60,'N95'),(91,70,'Surgical'),(92,60,'Surgical'),(93,55,'Surgical'),(94,50,'Surgical'),(95,65,'N95'),(96,45,'N95'),(97,80,'Surgical'),(98,65,'Carbon'),(99,55,'Carbon'),(100,45,'N95');
/*!40000 ALTER TABLE `Mask` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `PatientsInfo`
--

LOCK TABLES `PatientsInfo` WRITE;
/*!40000 ALTER TABLE `PatientsInfo` DISABLE KEYS */;
INSERT INTO `PatientsInfo` VALUES (1,'06/04/2020','03/04/2020','R',6),(2,'06/04/2020','03/04/2020','D',7),(3,'06/04/2020','03/04/2020','A',8),(4,'06/04/2020','04/04/2020','R',9),(5,'06/04/2020','04/04/2020','D',10),(6,'09/04/2020','04/04/2020','A',6),(7,'09/04/2020','04/04/2020','R',7),(8,'09/04/2020','05/04/2020','A',8),(9,'09/04/2020','05/04/2020','D',9),(10,'09/04/2020','06/04/2020','R',10),(11,'09/04/2020','06/04/2020','A',16),(12,'09/04/2020','06/04/2020','R',17),(13,'09/04/2020','06/04/2020','D',18),(14,'09/04/2020','06/04/2020','A',19),(15,'09/04/2020','06/04/2020','A',20),(16,'08/04/2020','07/04/2020','A',16),(17,'08/04/2020','07/04/2020','A',17),(18,'08/04/2020','07/04/2020','R',18),(19,'08/04/2020','07/04/2020','A',19),(20,'08/04/2020','07/04/2020','D',20),(21,'10/04/2020','08/04/2020','A',26),(22,'10/04/2020','08/04/2020','A',27),(23,'10/04/2020','08/04/2020','A',28),(24,'10/04/2020','08/04/2020','R',29),(25,'10/04/2020','08/04/2020','D',30),(26,'11/04/2020','09/04/2020','A',26),(27,'11/04/2020','09/04/2020','A',27),(28,'11/04/2020','09/04/2020','D',28),(29,'11/04/2020','09/04/2020','R',29),(30,'11/04/2020','09/04/2020','A',30),(31,'12/04/2020','09/04/2020','A',36),(32,'12/04/2020','09/04/2020','A',36),(33,'12/04/2020','09/04/2020','A',37),(34,'12/04/2020','09/04/2020','R',37),(35,'12/04/2020','09/04/2020','A',38),(36,'13/04/2020','10/04/2020','D',38),(37,'13/04/2020','10/04/2020','A',38),(38,'13/04/2020','10/04/2020','R',39),(39,'13/04/2020','10/04/2020','A',40),(40,'13/04/2020','10/04/2020','R',40),(41,'14/04/2020','10/04/2020','A',46),(42,'14/04/2020','10/04/2020','A',46),(43,'14/04/2020','10/04/2020','D',47),(44,'14/04/2020','10/04/2020','A',47),(45,'14/04/2020','10/04/2020','R',48),(46,'15/04/2020','11/04/2020','R',48),(47,'15/04/2020','11/04/2020','A',49),(48,'15/04/2020','11/04/2020','A',50),(49,'15/04/2020','11/04/2020','A',50),(50,'15/04/2020','11/04/2020','A',50),(51,'16/04/2020','11/04/2020','A',56),(52,'16/04/2020','11/04/2020','A',56),(53,'16/04/2020','11/04/2020','A',57),(54,'16/04/2020','11/04/2020','D',57),(55,'16/04/2020','11/04/2020','R',58),(56,'17/04/2020','11/04/2020','R',58),(57,'17/04/2020','11/04/2020','A',58),(58,'17/04/2020','11/04/2020','A',59),(59,'17/04/2020','12/04/2020','R',60),(60,'17/04/2020','12/04/2020','A',60),(61,'18/04/2020','12/04/2020','D',66),(62,'18/04/2020','12/04/2020','A',66),(63,'18/04/2020','12/04/2020','A',67),(64,'18/04/2020','12/04/2020','R',67),(65,'18/04/2020','12/04/2020','R',68),(66,'18/04/2020','12/04/2020','A',68),(67,'18/04/2020','13/04/2020','A',69),(68,'18/04/2020','13/04/2020','A',69),(69,'18/04/2020','13/04/2020','D',70),(70,'18/04/2020','13/04/2020','R',70),(71,'19/04/2020','13/04/2020','A',76),(72,'19/04/2020','13/04/2020','A',76),(73,'19/04/2020','13/04/2020','A',76),(74,'19/04/2020','13/04/2020','D',77),(75,'19/04/2020','13/04/2020','A',78),(76,'20/04/2020','14/04/2020','R',79),(77,'20/04/2020','14/04/2020','R',79),(78,'20/04/2020','14/04/2020','A',80),(79,'20/04/2020','14/04/2020','A',80),(80,'20/04/2020','14/04/2020','A',80),(81,'20/04/2020','14/04/2020','A',86),(82,'20/04/2020','14/04/2020','A',86),(83,'20/04/2020','14/04/2020','D',87),(84,'21/04/2020','15/04/2020','R',88),(85,'21/04/2020','15/04/2020','R',88),(86,'21/04/2020','15/04/2020','A',88),(87,'21/04/2020','15/04/2020','A',89),(88,'21/04/2020','15/04/2020','A',89),(89,'21/04/2020','15/04/2020','A',90),(90,'21/04/2020','15/04/2020','A',90),(91,'22/04/2020','16/04/2020','D',96),(92,'22/04/2020','16/04/2020','D',96),(93,'23/04/2020','16/04/2020','A',97),(94,'23/04/2020','16/04/2020','A',97),(95,'23/04/2020','16/04/2020','A',98),(96,'23/04/2020','16/04/2020','A',98),(97,'24/04/2020','17/04/2020','R',99),(98,'24/04/2020','17/04/2020','R',99),(99,'25/04/2020','17/04/2020','A',100),(100,'25/04/2020','17/04/2020','A',100);
/*!40000 ALTER TABLE `PatientsInfo` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Stockhand`
--

LOCK TABLES `Stockhand` WRITE;
/*!40000 ALTER TABLE `Stockhand` DISABLE KEYS */;
INSERT INTO `Stockhand` VALUES (1,1,25),(1,61,58),(2,2,50),(2,62,15),(3,3,40),(3,63,85),(4,4,50),(4,63,125),(5,5,80),(5,64,80),(6,1,80),(6,64,90),(7,1,50),(7,65,95),(8,2,90),(8,66,100),(9,4,75),(9,66,80),(10,4,60),(10,67,55),(11,6,75),(11,68,60),(12,6,100),(12,69,80),(13,7,60),(13,69,56),(14,7,80),(14,70,90),(15,8,85),(15,71,80),(16,8,90),(16,72,55),(17,9,60),(17,72,60),(18,9,55),(18,73,80),(19,10,50),(19,73,55),(20,9,40),(20,74,80),(21,11,40),(21,75,85),(22,12,50),(22,75,90),(23,12,60),(23,76,120),(24,11,45),(24,77,150),(25,11,45),(25,77,160),(26,13,60),(26,78,50),(27,14,80),(27,79,180),(28,15,80),(28,80,56),(29,14,30),(29,80,60),(30,15,30),(30,81,80),(31,16,25),(31,81,55),(32,16,55),(32,82,70),(33,17,45),(33,82,90),(34,17,65),(34,83,100),(35,18,50),(35,84,55),(36,19,55),(36,85,60),(37,20,45),(37,86,80),(38,21,40),(38,86,75),(39,21,50),(39,87,80),(40,22,36),(40,87,81),(41,23,35),(41,88,56),(42,23,20),(42,88,36),(43,24,70),(43,89,78),(44,25,55),(44,90,90),(45,25,60),(45,90,85),(46,26,65),(46,91,45),(47,26,55),(47,92,57),(48,27,90),(48,92,88),(49,28,60),(49,93,75),(50,29,45),(50,93,50),(51,29,45),(51,94,78),(52,30,40),(52,95,80),(53,31,50),(53,95,40),(54,31,60),(54,96,80),(55,32,75),(55,97,40),(56,33,50),(56,98,60),(57,33,55),(57,98,55),(58,34,45),(58,99,45),(59,34,60),(59,99,60),(60,35,60),(60,100,85),(61,36,90),(62,37,55),(63,37,55),(64,38,20),(65,39,80),(66,39,60),(67,40,55),(68,41,80),(69,41,35),(70,42,40),(71,42,36),(72,43,80),(73,44,60),(74,44,60),(75,45,75),(76,46,80),(77,46,90),(78,47,50),(79,47,40),(80,48,35),(81,49,70),(82,49,35),(83,49,35),(84,50,90),(85,51,60),(86,51,65),(87,52,45),(88,52,80),(89,53,90),(90,53,84),(91,53,25),(92,54,36),(93,55,45),(94,55,65),(95,56,80),(96,57,80),(97,58,41),(98,59,45),(99,59,63),(100,60,78);
/*!40000 ALTER TABLE `Stockhand` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Stockmask`
--

LOCK TABLES `Stockmask` WRITE;
/*!40000 ALTER TABLE `Stockmask` DISABLE KEYS */;
INSERT INTO `Stockmask` VALUES (1,1,80),(1,61,25),(2,2,70),(2,62,30),(3,3,50),(3,63,52),(4,4,60),(4,63,24),(5,5,50),(5,64,50),(6,1,40),(6,64,80),(7,3,60),(7,65,75),(8,4,50),(8,65,80),(9,4,70),(9,66,75),(10,4,60),(10,67,80),(11,6,80),(11,67,79),(12,7,50),(12,68,65),(13,6,40),(13,69,80),(14,6,30),(14,69,75),(15,8,60),(15,70,70),(16,8,75),(16,71,45),(17,9,80),(17,71,50),(18,10,100),(18,72,63),(19,9,70),(19,73,60),(20,10,60),(20,74,50),(21,11,60),(21,75,80),(22,12,55),(22,75,90),(23,11,30),(23,76,60),(24,12,30),(24,76,55),(25,13,30),(25,77,45),(26,14,40),(26,78,50),(27,14,40),(27,79,45),(28,14,50),(28,79,35),(29,15,50),(29,80,20),(30,15,90),(30,81,50),(31,16,75),(31,81,75),(32,16,70),(32,82,80),(33,16,100),(33,83,75),(34,17,80),(34,84,80),(35,17,75),(35,85,60),(36,18,80),(36,85,65),(37,19,50),(37,86,45),(38,19,50),(38,86,40),(39,20,90),(39,87,80),(40,21,80),(40,87,52),(41,21,85),(41,87,52),(42,22,90),(42,88,50),(43,22,100),(43,88,47),(44,22,60),(44,89,60),(45,23,75),(45,90,55),(46,24,80),(46,91,75),(47,24,90),(47,91,70),(48,25,40),(48,92,80),(49,26,45),(49,93,55),(50,27,50),(50,93,40),(51,28,40),(51,93,45),(52,28,45),(52,94,55),(53,29,50),(53,94,60),(54,30,45),(54,95,70),(55,30,60),(55,96,75),(56,31,65),(56,96,55),(57,31,40),(57,97,80),(58,32,20),(58,98,45),(59,33,70),(59,99,25),(60,34,80),(60,99,30),(61,35,60),(61,99,75),(62,36,70),(62,100,50),(63,37,10),(63,98,55),(64,37,35),(65,37,40),(66,38,30),(67,38,35),(68,39,40),(69,40,45),(70,41,60),(71,42,65),(72,42,35),(73,43,20),(74,44,25),(75,45,30),(76,45,75),(77,45,80),(78,46,85),(79,46,35),(80,47,50),(81,48,45),(82,48,50),(83,49,78),(84,50,53),(85,51,60),(86,52,42),(87,52,45),(88,53,50),(89,54,55),(90,54,60),(91,55,65),(92,56,70),(93,57,45),(94,57,40),(95,57,35),(96,58,60),(97,59,40),(98,59,45),(99,60,20),(100,60,100);
/*!40000 ALTER TABLE `Stockmask` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `StoreInfo`
--

LOCK TABLES `StoreInfo` WRITE;
/*!40000 ALTER TABLE `StoreInfo` DISABLE KEYS */;
INSERT INTO `StoreInfo` VALUES (1,'AAA','04/04/2020',1),(2,'SDV','04/04/2020',2),(3,'CVB','04/04/2020',3),(4,'DRH','05/04/2020',4),(5,'EBR','05/04/2020',5),(6,'FFF','06/04/2020',6),(7,'GGG','06/04/2020',7),(8,'HIK','06/04/2020',8),(9,'ING','07/04/2020',9),(10,'JPP','07/04/2020',10),(11,'KOO','08/04/2020',11),(12,'MNM','08/04/2020',12),(13,'NNB','09/04/2020',13),(14,'OIO','09/04/2020',14),(15,'OOO','09/04/2020',15),(16,'POP','10/04/2020',16),(17,'LIL','10/04/2020',17),(18,'JIK','10/04/2020',18),(19,'KJL','10/04/2020',19),(20,'TOT','11/04/2020',20),(21,'YFF','11/04/2020',21),(22,'UYU','11/04/2020',22),(23,'YHY','11/04/2020',23),(24,'QAW','11/04/2020',24),(25,'ZXC','11/04/2020',25),(26,'DOO','12/04/2020',26),(27,'QAZ','12/04/2020',27),(28,'WSD','12/04/2020',28),(29,'OPI','12/04/2020',29),(30,'YGT','12/04/2020',30),(31,'WWE','13/04/2020',31),(32,'BBV','13/04/2020',32),(33,'SXS','13/04/2020',33),(34,'YYT','13/04/2020',34),(35,'QWE','13/04/2020',35),(36,'POU','13/04/2020',36),(37,'PHG','14/04/2020',37),(38,'SZX','14/04/2020',38),(39,'KIH','14/04/2020',39),(40,'WSD','14/04/2020',40),(41,'VBN','15/04/2020',41),(42,'ZAQ','15/04/2020',42),(43,'PPP','15/04/2020',43),(44,'TGB','15/04/2020',44),(45,'VGF','15/04/2020',45),(46,'AQW','15/04/2020',46),(47,'AQE','16/04/2020',47),(48,'POM','16/04/2020',48),(49,'VBB','16/04/2020',49),(50,'GGH','16/04/2020',50),(51,'GBG','17/04/2020',51),(52,'SXX','17/04/2020',52),(53,'NMN','17/04/2020',53),(54,'CVB','17/04/2020',54),(55,'EDX','18/04/2020',55),(56,'XCC','18/04/2020',56),(57,'POU','18/04/2020',57),(58,'JNH','18/04/2020',58),(59,'SGF','18/04/2020',59),(60,'RET','19/04/2020',60),(61,'CVS','20/04/2020',61),(62,'VGT','20/04/2020',62),(63,'BNM','20/04/2020',63),(64,'NJI','21/04/2020',64),(65,'LMC','21/04/2020',65),(66,'XBC','22/04/2020',66),(67,'VFG','22/04/2020',67),(68,'SWE','22/04/2020',68),(69,'JUJ','22/04/2020',69),(70,'RFD','22/04/2020',70),(71,'UIU','23/04/2020',71),(72,'XCF','23/04/2020',72),(73,'COJ','23/04/2020',73),(74,'NBM','23/04/2020',74),(75,'VHO','23/04/2020',75),(76,'MKM','24/04/2020',76),(77,'KOI','24/04/2020',77),(78,'WSD','24/04/2020',78),(79,'MJM','24/04/2020',79),(80,'TRY','24/04/2020',80),(81,'FKO','25/04/2020',81),(82,'FKP','25/04/2020',82),(83,'DES','25/04/2020',83),(84,'ZXS','25/04/2020',84),(85,'LOL','25/04/2020',85),(86,'RYG','26/04/2020',86),(87,'MKM','26/04/2020',87),(88,'KJM','26/04/2020',88),(89,'ASX','26/04/2020',89),(90,'QVF','26/04/2020',90),(91,'BMK','27/04/2020',91),(92,'FDE','27/04/2020',92),(93,'NMK','27/04/2020',93),(94,'VFV','27/04/2020',94),(95,'CGT','28/04/2020',95),(96,'DFK','29/04/2020',96),(97,'CDE','29/04/2020',97),(98,'WER','29/04/2020',98),(99,'MKL','30/04/2020',99),(100,'CFT','30/04/2020',100);
/*!40000 ALTER TABLE `StoreInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-17 16:00:56

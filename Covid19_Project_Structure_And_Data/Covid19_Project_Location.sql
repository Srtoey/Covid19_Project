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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-12  1:04:40

-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: sportive
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `ground_id` int(11) DEFAULT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `country` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `player_id` (`player_id`),
  UNIQUE KEY `ground_id` (`ground_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,NULL,'','Turku','12345','Finland'),(2,2,NULL,'','Turku','12345','Finland'),(3,3,NULL,'','Turku','12345','Finland'),(4,4,NULL,'','Turku','12345','Finland'),(5,5,NULL,'','Turku','12345','Finland'),(6,6,NULL,'','Turku','12345','Finland'),(7,7,NULL,'','Turku','12345','Finland'),(8,8,NULL,'','Turku','12345','Finland'),(9,9,NULL,'','Turku','12345','Finland'),(10,10,NULL,'','Turku','12345','Finland'),(11,11,NULL,'','Turku','12345','Finland'),(12,12,NULL,'','Turku','12345','Finland'),(13,13,NULL,'','Turku','12345','Finland'),(14,14,NULL,'','Turku','12345','Finland'),(15,15,NULL,'','Turku','12345','Finland'),(16,16,NULL,'','Turku','12345','Finland'),(17,17,NULL,'','Turku','12345','Finland'),(18,18,NULL,'','Turku','12345','Finland'),(19,19,NULL,'','Turku','12345','Finland'),(20,20,NULL,'','Turku','12345','Finland'),(21,21,NULL,'','Turku','12345','Finland'),(22,22,NULL,'','Turku','12345','Finland'),(23,23,NULL,'','Turku','12345','Finland'),(24,24,NULL,'','Turku','12345','Finland'),(25,25,NULL,'','Turku','12345','Finland'),(26,26,NULL,'','Turku','12345','Finland'),(27,27,NULL,'','Turku','12345','Finland'),(28,28,NULL,'','Turku','12345','Finland'),(29,29,NULL,'','Turku','12345','Finland'),(30,30,NULL,'','Turku','12345','Finland'),(31,31,NULL,'','Turku','12345','Finland'),(32,32,NULL,'','Turku','12345','Finland'),(33,33,NULL,'','Turku','12345','Finland'),(34,34,NULL,'','Turku','12345','Finland'),(35,35,NULL,'','Turku','12345','Finland'),(36,36,NULL,'','Turku','12345','Finland'),(37,37,NULL,'','Turku','12345','Finland'),(38,38,NULL,'','Turku','12345','Finland'),(39,39,NULL,'','Turku','12345','Finland'),(40,40,NULL,'','Turku','12345','Finland'),(41,41,NULL,'','Turku','12345','Finland'),(42,42,NULL,'','Turku','12345','Finland'),(43,43,NULL,'','Turku','12345','Finland'),(44,44,NULL,'','Turku','12345','Finland'),(45,45,NULL,'','Turku','12345','Finland'),(46,46,NULL,'','Turku','12345','Finland'),(47,47,NULL,'','Turku','12345','Finland'),(48,48,NULL,'','Turku','12345','Finland'),(49,49,NULL,'','Turku','12345','Finland'),(50,50,NULL,'','Turku','12345','Finland'),(51,NULL,1,'Lallintie 12','Helsinki','700','Finland'),(52,NULL,2,'Heteniityntie 2 a','Helsinki','960','Finland'),(53,NULL,3,'Rantakartanontie 14','Helsinki','910','Finland'),(54,NULL,4,'Kontulankaari 15','Helsinki','940','Finland'),(55,NULL,5,'Makelankatu 70','Helsinki','610','Finland'),(56,NULL,6,'Helsinginkatu 23','Helsinki','510','Finland'),(57,NULL,7,'Helsinki','Helsinki','980','Finland'),(58,NULL,8,'Tampere','Tampere','350','Finland'),(59,NULL,9,'Turku','Turku','2540','Finland'),(60,NULL,10,'Vassa','Vassa','325324','Finland'),(61,NULL,11,'Espoo','Espoo','982340','Finland'),(62,51,NULL,'','turku','12345','Finland'),(63,52,NULL,'','turku','12345','Finland'),(64,53,NULL,'','turku','12345','Finland');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerFrom_id` int(11) NOT NULL,
  `playerTo_id` int(11) DEFAULT NULL,
  `groupTo_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatgroups`
--

DROP TABLE IF EXISTS `chatgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chatgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text,
  `creator_id` int(11) DEFAULT NULL,
  `started` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatgroups`
--

LOCK TABLES `chatgroups` WRITE;
/*!40000 ALTER TABLE `chatgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatgroups_players`
--

DROP TABLE IF EXISTS `chatgroups_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chatgroups_players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chatgroups_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chatgroups_id` (`chatgroups_id`,`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatgroups_players`
--

LOCK TABLES `chatgroups_players` WRITE;
/*!40000 ALTER TABLE `chatgroups_players` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatgroups_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocation`
--

DROP TABLE IF EXISTS `geolocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `geolocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address_id` (`address_id`),
  UNIQUE KEY `player_id` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocation`
--

LOCK TABLES `geolocation` WRITE;
/*!40000 ALTER TABLE `geolocation` DISABLE KEYS */;
INSERT INTO `geolocation` VALUES (1,1,NULL,0,0),(2,NULL,1,1234,4321),(3,2,NULL,0,0),(4,NULL,2,60.03217596764739,22.01222816103053),(5,3,NULL,0,0),(6,NULL,3,60.12963071175693,22.175016150163096),(7,4,NULL,0,0),(8,NULL,4,60.25536131270773,22.012283415061766),(9,5,NULL,0,0),(10,NULL,5,60.27526369385463,22.081329366200055),(11,6,NULL,0,0),(12,NULL,6,60.29219044292512,22.002184186253533),(13,7,NULL,0,0),(14,NULL,7,60.37934382949079,22.250737129564822),(15,8,NULL,0,0),(16,NULL,8,60.26389457079326,22.07028081591022),(17,9,NULL,0,0),(18,NULL,9,60.459109896174226,22.083089541676003),(19,10,NULL,0,0),(20,NULL,10,60.04612938406768,22.20295318300903),(21,11,NULL,0,0),(22,NULL,11,60.217311012319335,22.00512621798489),(23,12,NULL,0,0),(24,NULL,12,60.44730268348803,22.02346557977186),(25,13,NULL,0,0),(26,NULL,13,60.370262238947866,22.012439821394874),(27,14,NULL,0,0),(28,NULL,14,60.4317195327667,22.169096970143812),(29,15,NULL,0,0),(30,NULL,15,60.00639714143011,22.01278691317326),(31,16,NULL,0,0),(32,NULL,16,60.41224345796338,22.199738629543713),(33,17,NULL,0,0),(34,NULL,17,60.15197489568884,22.03337831502061),(35,18,NULL,0,0),(36,NULL,18,60.171955851225704,22.200047814718744),(37,19,NULL,0,0),(38,NULL,19,60.398653740296496,22.13363530189645),(39,20,NULL,0,0),(40,NULL,20,60.1841908729583,22.167109496987372),(41,21,NULL,0,0),(42,NULL,21,60.10538097325568,22.118794386135594),(43,22,NULL,0,0),(44,NULL,22,60.15037361233709,22.17774967579405),(45,23,NULL,0,0),(46,NULL,23,60.11898813890371,22.149194774229485),(47,24,NULL,0,0),(48,NULL,24,60.45413941054919,22.08728536771355),(49,25,NULL,0,0),(50,NULL,25,60.45112170474371,22.135003671398447),(51,26,NULL,0,0),(52,NULL,26,60.182963406548986,22.17973033602834),(53,27,NULL,0,0),(54,NULL,27,60.02397217420809,22.17142688186258),(55,28,NULL,0,0),(56,NULL,28,60.21552903833057,22.21167161366021),(57,29,NULL,0,0),(58,NULL,29,60.37027606318317,22.136858869049302),(59,30,NULL,0,0),(60,NULL,30,60.06644213741961,22.071748560793353),(61,31,NULL,0,0),(62,NULL,31,60.15661168545133,22.219229344059794),(63,32,NULL,0,0),(64,NULL,32,60.04514143644544,22.096558467648624),(65,33,NULL,0,0),(66,NULL,33,60.23793979253668,22.19367261799463),(67,34,NULL,0,0),(68,NULL,34,60.28858553711429,22.138223830145698),(69,35,NULL,0,0),(70,NULL,35,60.19515810764703,22.21862432448588),(71,36,NULL,0,0),(72,NULL,36,60.429011961828785,22.168025295757168),(73,37,NULL,0,0),(74,NULL,37,60.3098416159312,22.258526915555887),(75,38,NULL,0,0),(76,NULL,38,60.17330242116152,22.17722346316509),(77,39,NULL,0,0),(78,NULL,39,60.32815862219095,22.07878987029307),(79,40,NULL,0,0),(80,NULL,40,60.11052423159036,22.03265907348582),(81,41,NULL,0,0),(82,NULL,41,60.25038800483229,22.197165315841104),(83,42,NULL,0,0),(84,NULL,42,60.432710033415376,22.036672272871897),(85,43,NULL,0,0),(86,NULL,43,60.196893818185906,22.166333489748972),(87,44,NULL,0,0),(88,NULL,44,60.099347938690016,22.157930898253916),(89,45,NULL,0,0),(90,NULL,45,60.09035750519989,22.004572833673596),(91,46,NULL,0,0),(92,NULL,46,60.32023601767287,22.082876650280436),(93,47,NULL,0,0),(94,NULL,47,60.41084216634349,22.211566478536916),(95,48,NULL,0,0),(96,NULL,48,60.323214382317595,22.183596693091182),(97,49,NULL,0,0),(98,NULL,49,60.37189368701664,22.12592634689073),(99,50,NULL,0,0),(100,NULL,50,60.221890221477295,22.119807368794337),(101,51,NULL,61.669309,23.582924),(102,52,NULL,60.218297,25.136506),(103,53,NULL,60.215369,25.097991),(104,54,NULL,60.244375,25.082909),(105,55,NULL,60.206969,24.94375),(106,56,NULL,60.459274,22.273022),(107,57,NULL,60.205891,24.929147),(108,58,NULL,61.51496,23.764362),(109,59,NULL,60.461027,22.260415),(110,60,NULL,59.92627,30.320232),(111,61,NULL,60.215785,24.655198),(112,62,NULL,0,0),(113,NULL,51,0,0),(114,63,NULL,0,0),(115,NULL,52,0,0),(116,64,NULL,0,0),(117,NULL,53,0,0);
/*!40000 ALTER TABLE `geolocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ground`
--

DROP TABLE IF EXISTS `ground`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ground` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `details` varchar(200) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ground`
--

LOCK TABLES `ground` WRITE;
/*!40000 ALTER TABLE `ground` DISABLE KEYS */;
INSERT INTO `ground` VALUES (1,'Ala-malmin Liikuntapuisto','','http://sportiveconnects.com/','1234568695','',5),(2,'Heteniityn Urheilukentta','','http://sportiveconnects.com/','1234568695','',5),(3,'Puotilankentta','','http://sportiveconnects.com/','1234568695','',5),(4,'Vesalan Liikuntapuisto','','http://sportiveconnects.com/','1234568695','',5),(5,'Kapylan Liikuntapuisto','','http://sportiveconnects.com/','1234568695','',5),(6,'Brahenkentan tekojaakentta','','http://sportiveconnects.com/','1234568695','',5),(7,'Hartwall','','http://sportiveconnects.com/','1234568695','',5),(8,'Tampere','','','','',5),(9,'Turku','','http://sportiveconnects.com/','1234568695','',5),(10,'Vassa','','http://sportiveconnects.com/','1234568695','',5),(11,'Espoo','','http://sportiveconnects.com/','1234568695','',5);
/*!40000 ALTER TABLE `ground` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openinghours`
--

DROP TABLE IF EXISTS `openinghours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `openinghours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ground_id` int(11) DEFAULT NULL,
  `days` varchar(3) NOT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openinghours`
--

LOCK TABLES `openinghours` WRITE;
/*!40000 ALTER TABLE `openinghours` DISABLE KEYS */;
INSERT INTO `openinghours` VALUES (1,1,'Mon','07:00:00','21:00:00'),(2,1,'Tue','07:00:00','21:00:00'),(3,1,'Wed','07:00:00','21:00:00'),(4,1,'Thu','07:00:00','21:00:00'),(5,1,'Fri','07:00:00','21:00:00'),(6,1,'Sat','07:00:00','18:00:00'),(7,1,'Sun','12:00:00','18:00:00'),(8,2,'Mon','07:00:00','21:00:00'),(9,2,'Tue','07:00:00','21:00:00'),(10,2,'Wed','07:00:00','21:00:00'),(11,2,'Thu','07:00:00','21:00:00'),(12,2,'Fri','07:00:00','21:00:00'),(13,2,'Sat','07:00:00','18:00:00'),(14,2,'Sun','12:00:00','18:00:00'),(15,3,'Mon','07:00:00','21:00:00'),(16,3,'Tue','07:00:00','21:00:00'),(17,3,'Wed','07:00:00','21:00:00'),(18,3,'Thu','07:00:00','21:00:00'),(19,3,'Fri','07:00:00','21:00:00'),(20,3,'Sat','07:00:00','18:00:00'),(21,3,'Sun','12:00:00','18:00:00'),(22,4,'Mon','07:00:00','21:00:00'),(23,4,'Tue','07:00:00','21:00:00'),(24,4,'Wed','07:00:00','21:00:00'),(25,4,'Thu','07:00:00','21:00:00'),(26,4,'Fri','07:00:00','21:00:00'),(27,4,'Sat','07:00:00','18:00:00'),(28,4,'Sun','12:00:00','18:00:00'),(29,5,'Mon','07:00:00','21:00:00'),(30,5,'Tue','07:00:00','21:00:00'),(31,5,'Wed','07:00:00','21:00:00'),(32,5,'Thu','07:00:00','21:00:00'),(33,5,'Fri','07:00:00','21:00:00'),(34,5,'Sat','07:00:00','18:00:00'),(35,5,'Sun','12:00:00','18:00:00'),(36,6,'Mon','07:00:00','21:00:00'),(37,6,'Tue','07:00:00','21:00:00'),(38,6,'Wed','07:00:00','21:00:00'),(39,6,'Thu','07:00:00','21:00:00'),(40,6,'Fri','07:00:00','21:00:00'),(41,6,'Sat','07:00:00','18:00:00'),(42,6,'Sun','12:00:00','18:00:00'),(43,7,'Mon','07:00:00','21:00:00'),(44,7,'Tue','07:00:00','21:00:00'),(45,7,'Wed','07:00:00','21:00:00'),(46,7,'Thu','07:00:00','21:00:00'),(47,7,'Fri','07:00:00','21:00:00'),(48,7,'Sat','07:00:00','18:00:00'),(49,7,'Sun','12:00:00','18:00:00'),(50,8,'Mon','07:00:00','21:00:00'),(51,8,'Tue','07:00:00','21:00:00'),(52,8,'Wed','07:00:00','21:00:00'),(53,8,'Thu','07:00:00','21:00:00'),(54,8,'Fri','07:00:00','21:00:00'),(55,8,'Sat','07:00:00','18:00:00'),(56,8,'Sun','12:00:00','18:00:00'),(57,9,'Mon','07:00:00','21:00:00'),(58,9,'Tue','07:00:00','21:00:00'),(59,9,'Wed','07:00:00','21:00:00'),(60,9,'Thu','07:00:00','21:00:00'),(61,9,'Fri','07:00:00','21:00:00'),(62,9,'Sat','07:00:00','18:00:00'),(63,9,'Sun','12:00:00','18:00:00'),(64,10,'Mon','07:00:00','21:00:00'),(65,10,'Tue','07:00:00','21:00:00'),(66,10,'Wed','07:00:00','21:00:00'),(67,10,'Thu','07:00:00','21:00:00'),(68,10,'Fri','07:00:00','21:00:00'),(69,10,'Sat','07:00:00','18:00:00'),(70,10,'Sun','12:00:00','18:00:00'),(71,11,'Mon','07:00:00','21:00:00'),(72,11,'Tue','07:00:00','21:00:00'),(73,11,'Wed','07:00:00','21:00:00'),(74,11,'Thu','07:00:00','21:00:00'),(75,11,'Fri','07:00:00','21:00:00'),(76,11,'Sat','07:00:00','18:00:00'),(77,11,'Sun','12:00:00','18:00:00');
/*!40000 ALTER TABLE `openinghours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(1) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'1e58563bf5138ea3fffa06c91aaa70','aman@aman.fi','$2a$12$5qJEvmrITDY79xfIT/I9d.GCGlVRcMeb0LvtiBN.FVLvTzD88.CHa','Aman','Yadav','2011-12-16','M','2016-04-05 10:04:47'),(2,'2c71af50a4141889122782779e29ab','ryan@ryan.fi','$2a$12$FJSAEhGi88I2s1pYDyMrsOmD1vZ50psiqTwr3SUJFiEoi1Co4Vm3S','RYAN','an.','1986-03-19','M','2016-04-05 10:01:03'),(3,'dd0bbe0fd03e35be634cf1d43cf6cf','shanker@shanker.fi','$2a$12$a82gjs3NyqR23UpWMF.E2epQfg8OPJVvKxQJEWBL0MadDOQaOzoIe','SHANKER','anker.','2003-10-16','M','2016-04-05 10:01:03'),(4,'a0d8140b37cc630192cfbf018a94e8','abhinay@abhinay.fi','$2a$12$JX9OKItjVmis1VrTDZUgmuZuRCWTFadKDXTdCbtEpbm4ulFry/B4m','ABHINAY','hinay.','2011-10-04','M','2016-04-05 10:01:03'),(5,'0fb7f18838f64bca1b34aa42f1e0ee','tanika@tanika.fi','$2a$12$3G34wgl9TEYcbSfX.Va3.OQbl7nq9iVk/q0cWjI9sMieY.mBq8mB.','TANIKA','nika.','2000-05-03','M','2016-04-05 10:01:03'),(6,'fb26c43d8489b84c0d4930c9729f2b','molly@molly.fi','$2a$12$172snGkaszYb.C11PPoBXuZAqAZs6p6h2.J8bZnyF4Xrt2HBXmYWO','MOLLY','lly.','1999-04-25','M','2016-04-05 10:01:03'),(7,'f057812e2eccf700aa2f26a629cfc4','bernetta@bernetta.fi','$2a$12$qJPB.EoDmYUZI42j3FetI.qPdB80qCOq2tgYH9H/Hk1gB66qEWRQy','BERNETTA','rnetta.','1997-10-19','M','2016-04-05 10:01:03'),(8,'a00cc0adf421a33a61b7d0120685a9','stacy@stacy.fi','$2a$12$ecLKrWUngzzM56c/dptymOjtYEmUpYk.T3plht43JY6L.I2yXmQqS','STACY','acy.','1994-02-11','M','2016-04-05 10:01:03'),(9,'f195f58ea1c82a0a2de1d71110d64c','augustine@augustine.fi','$2a$12$LXBW0jukks5gfjnt14U6beNT.CqwatsaEAllYZLSyoyFOwdkXBF4G','AUGUSTINE','gustine.','1987-10-25','M','2016-04-05 10:01:03'),(10,'8bb9ccf9d4c1c9ac2a85397f395b1c','rey@rey.fi','$2a$12$7mJMMizxxCj0uwd07NlkMeTaU6NtZ7eEJh9Ty1RukwICUk6A1t5vu','REY','y.','2001-02-27','M','2016-04-05 10:01:03'),(11,'386e1b1321e4dabd640cc35bdc9d9c','charolette@charolette.fi','$2a$12$InZVNE3B/M18pnLYLDwg1u9bJk45Oz9wE.g0uiW2ojl.BN2ovmkE.','CHAROLETTE','arolette.','2000-06-17','M','2016-04-05 10:01:03'),(12,'8645e77296a278712fd28e7773ca5b','rita@rita.fi','$2a$12$M5ObnXcTPOkbKuK5JkyK1eHERg2UA.CrBW13wz9VuD6heYKTEGdhC','RITA','ta.','2008-06-14','M','2016-04-05 10:01:03'),(13,'5739e890f63735335ddc1a609f95a1','alfredia@alfredia.fi','$2a$12$QL49a.Rvw/dBTwRIpxXL4uOIfX5QG0sMLvPvWsjF/T9VMOBV9RwTm','ALFREDIA','fredia.','2008-08-22','M','2016-04-05 10:01:03'),(14,'a998f705a6524f789998f755310438','kerry@kerry.fi','$2a$12$LcEpF99TEFJPTMAOJ84KO.MN3UBKqIvA7S1.FD.X6C2PEFXhza7Ga','KERRY','rry.','1998-12-06','M','2016-04-05 10:01:03'),(15,'4db716f6c0ab6e21414ba8f5b6034d','gretta@gretta.fi','$2a$12$bt8Hci/52Xl/tFp5C4mUmenSdTPvR1sItzrpw6WzKywcFgHl4GiEC','GRETTA','etta.','1990-07-20','M','2016-04-05 10:01:03'),(16,'fb24943006dadcf2884103cb46f118','alyse@alyse.fi','$2a$12$ppqwcP8hYHqVrBtfJN/eD.wX1Ce4whWaab4VNrfNaNkms7UNvREhC','ALYSE','yse.','2007-12-04','M','2016-04-05 10:01:03'),(17,'93d2ccf8e09132467e4203418f062f','verlene@verlene.fi','$2a$12$HUbui3irPaXNsr0skKYXbOZebpOekSW1V6Gb16CS2cbuhiWOslRsy','VERLENE','rlene.','2008-07-02','M','2016-04-05 10:01:03'),(18,'7e23c52a99e4365f8ae7fc9aba20ef','kandy@kandy.fi','$2a$12$riQCPoxZkFVS3DuLYcR91ezi163fXD1VjmOPVkOdEMXBtRGK6cPqm','KANDY','ndy.','2001-08-09','M','2016-04-05 10:01:03'),(19,'ed2381a0f2419b5d9e3656fe29ad3a','alba@alba.fi','$2a$12$VzjiHMF5TM8HLA/70TTlDObhny84YoMb1Ga5nwwE8L7w/LhTZzkJG','ALBA','ba.','1995-04-28','M','2016-04-05 10:01:03'),(20,'a4de90e0aa48aee8b13f4489a0d4d8','sharie@sharie.fi','$2a$12$ZkXQU6n8wt5242MtXe4x4eaPgUoKDrlC2zTxOBFMQe6jKFZE.JjhK','SHARIE','arie.','1986-01-28','M','2016-04-05 10:01:03'),(21,'189294ad8ab8f5ea5afa47931cd3fa','jolynn@jolynn.fi','$2a$12$f31CtAhQe8GuzQLQWyZCsO6GYT.yRoty1n3zupCnazGpTfG0TaZSy','JOLYNN','lynn.','2002-03-14','M','2016-04-05 10:01:03'),(22,'73dd804dae56249ec9d3bf8fc12e3f','patrice@patrice.fi','$2a$12$19MHqxBkow.BXv0vZOUG8OuYNqxTCXCpFoLObBIdc2zmGddf/KEKi','PATRICE','trice.','1995-07-18','M','2016-04-05 10:01:03'),(23,'e93f1e35e5c0155962be949d03f89a','sueann@sueann.fi','$2a$12$OP7OMDr9jCilCX7Zu3vX7OVMkCrisxcwceEUxBzupi/9DIvkymV0S','SUEANN','eann.','2002-04-20','M','2016-04-05 10:01:03'),(24,'5ce0b56cc0c7dfd4b83da82d92d9d9','sheryll@sheryll.fi','$2a$12$iLZ2YQf5dpX8LCAisSipReCFDlfLiZ3Wu5uin7yjvZirlTTl2Sldu','SHERYLL','eryll.','2007-03-14','M','2016-04-05 10:01:03'),(25,'5b88e807de1ac1bc1cc42fc235b320','francesco@francesco.fi','$2a$12$2ag8Ac4HgVB8HkJuxn39FeR2RJi7HXU7KtKgwxiM7CzTGiEI52aJO','FRANCESCO','ancesco.','1988-03-15','M','2016-04-05 10:01:03'),(26,'27814c5d19fb19a94c07bb608aecc8','gerard@gerard.fi','$2a$12$sER3GTsv2wYUk42pQmOZpOocFO3PERslxe4CC2aoYeHbSV9cpxUXe','GERARD','rard.','1996-04-02','M','2016-04-05 10:01:03'),(27,'0c3cf0340fbe781d59fffe02871ee7','kanesha@kanesha.fi','$2a$12$B47fx2ICngms/b6EM6IW7.L2NZ0i9Bnm40xoYI4ERzNXIOPMinsh.','KANESHA','nesha.','2001-12-05','M','2016-04-05 10:01:03'),(28,'7784c34692ed48eac1a9a9376968f2','danny@danny.fi','$2a$12$bYe0GKDQqcibI/L7QeBYzuhEh1E7RThfvt/JyliaXrDfyKLKQkhKS','DANNY','nny.','2001-11-23','M','2016-04-05 10:01:03'),(29,'3b647cc5e1b51870e6d3aee945d6a1','caroyln@caroyln.fi','$2a$12$ub1qfqQeKSm.Uqq1WDofeug2j6G2ICUG3zVTddnmeELQwthZ1/PGq','CAROYLN','royln.','2014-11-26','M','2016-04-05 10:01:03'),(30,'c78540c6b2644658d940b002490334','fredric@fredric.fi','$2a$12$Wnhna4qNzNWh3o6BZeQpiuGqGGcHsP9Zr7SVvW7Io4tRt5o4xqoUG','FREDRIC','edric.','2015-04-26','M','2016-04-05 10:01:03'),(31,'3cdb374a355d3ed3102ba94f7c0bb7','randa@randa.fi','$2a$12$RwKic38Q2ve3eUMS.Yjx9uw28tFEmmrfsM8E.dAT7.993hzH.rlBu','RANDA','nda.','1992-11-11','M','2016-04-05 10:01:03'),(32,'5773d8b97f4345856270e574521069','rachael@rachael.fi','$2a$12$5kiyp8fNWXiycnlSeZgtk.DP44/V0DIFC2M0U2v7dPOAu6Wm/n1u.','RACHAEL','chael.','1996-04-06','M','2016-04-05 10:01:03'),(33,'8a6844f1b3a1f269691f3de887787d','avelina@avelina.fi','$2a$12$yStK/lNIgJuGnSo9oLTLHOqOGussOADA0Irvww2UL8e2vmvuK95zS','AVELINA','elina.','1991-09-03','M','2016-04-05 10:01:03'),(34,'f09f5910a36ce8ab0ef22c6ec2f69b','samatha@samatha.fi','$2a$12$183BU.hNHd7p/9UlwVCsUO9vAk6.W54XZLFPr5ONvHlyec8L/.Bku','SAMATHA','matha.','1991-08-16','M','2016-04-05 10:01:03'),(35,'d00d84e880074c7e38c1ef44fdb0a0','heidi@heidi.fi','$2a$12$sZOWfpe7tD3Ai./.SHuC2OQAbZaVbpAMS5JjznfHdGO2Sb8/iDaaa','HEIDI','idi.','2007-04-21','M','2016-04-05 10:01:03'),(36,'c563459887274d51954d9bb8f1703a','hannah@hannah.fi','$2a$12$L4yEsb4DlyaOw5XQfqBRPeDbhtPEAuIToAoMG9YA/7tIcIhjgJow6','HANNAH','nnah.','1986-10-27','M','2016-04-05 10:01:03'),(37,'f082903b94c7dbe46a00a4a522d3f8','leisa@leisa.fi','$2a$12$Y4b4dR91WL5w6KZMOy6uWefayN/W5tCb5RvNkxeW0RNw3N/hsOPc.','LEISA','isa.','2007-01-03','M','2016-04-05 10:01:03'),(38,'28da7db7bcf9123f8ffefed932220a','yevette@yevette.fi','$2a$12$4aUeFvp/f2Q6NwMUXsJsQe32WLqiJd9DR200Izy.YN57eviGO8py2','YEVETTE','vette.','1990-05-13','M','2016-04-05 10:01:03'),(39,'d4fb197006764017ed0f0a4aff9d8a','noah@noah.fi','$2a$12$3YWejagYpMUFhxqJZ4VU6e8bAIQY/tKGNUygzqIryY0JoLIPSMCPe','NOAH','ah.','2003-11-21','M','2016-04-05 10:01:03'),(40,'9cd63a7c4cce915704f7719338b5f5','jenice@jenice.fi','$2a$12$Om18iyIRa7eOPrRNUTlQ/ujlYVKnaS08tNnREDwXXQrK7MJL76oV2','JENICE','nice.','1987-03-25','M','2016-04-05 10:01:03'),(41,'e83ca298f1e2b03fbb08ad132e07c2','caitlin@caitlin.fi','$2a$12$6/H6YYaG42K2U9PMRMB6wuD0PZXn8IBYF78MQl.dorc5JbPCb9J/6','CAITLIN','itlin.','1992-04-12','M','2016-04-05 10:01:03'),(42,'2830265b55867e7de611800e1e76a5','susannah@susannah.fi','$2a$12$BEwv2RR7pTbem2enX9C4Mujqj9GEBBknHgefO/qDY2NfuuZ3wpqIO','SUSANNAH','sannah.','1986-12-04','M','2016-04-05 10:01:03'),(43,'29ef5d710ca6641bf26af0359eb341','joette@joette.fi','$2a$12$RRFutuI.M8c10CuhkCPI6eAkmtkcp6gWz9jZNmWc6PwkLKEf8u9tC','JOETTE','ette.','2012-06-21','M','2016-04-05 10:01:03'),(44,'ad9dbad9e0f0cb18475f3b40d51480','terica@terica.fi','$2a$12$B./CG.RfkjmBcXK12kSYhe5WeiBwKs7lKhEtW1mB8o44PvfGydAnu','TERICA','rica.','2014-01-04','M','2016-04-05 10:01:03'),(45,'6bfe0dc3d4d00a5c00609d165c9134','mechelle@mechelle.fi','$2a$12$qZjgHwCKvAKq3rjXtxIXN.AftNbJt.buET3ZmccQlFjIcZwsxckJ6','MECHELLE','chelle.','1988-07-06','M','2016-04-05 10:01:03'),(46,'c7faba0aba13fc6f97cb402a015fc5','deja@deja.fi','$2a$12$wf97favNWMPZcaGXKQJxMOp5boHLFSd7aaR7CFLSEFTKiUpJHiL.C','DEJA','ja.','2011-11-22','M','2016-04-05 10:01:03'),(47,'a9c773bd2ca3334d2756e22a7f73b7','erasmo@erasmo.fi','$2a$12$09aqGqMF5ifbACorRcBsyO7dkhYLfF6.odeWGstrue3biW3z72y.6','ERASMO','asmo.','1991-05-17','M','2016-04-05 10:01:03'),(48,'3e49e3c22802ce84378abc8c6887dd','deane@deane.fi','$2a$12$zcGcTKo1TwNsLdGwZCI94.krM/z.uYnMFntgDqlaDhivQSK/4te4a','DEANE','ane.','2008-07-02','M','2016-04-05 10:01:03'),(49,'3e9cb5b3f5de3ff566b86c5e882118','loyce@loyce.fi','$2a$12$d26b.h.EtMDIX18P65VGd.gdJI4T9X2WBS8kT5/m7BfqphVpWO3ka','LOYCE','yce.','2000-02-09','M','2016-04-05 10:01:03'),(50,'c932a4c8e87f610d619a4d90c35143','zula@zula.fi','$2a$12$RyzMmRjCpI4YcIhHf4U3x.tgKs7FftGh45MGy3okgXBk2aoIaWrqa','ZULA','la.','1994-03-02','M','2016-04-05 10:01:03'),(51,'7401b39d37a3f2cd0709e4c758db2a','testn@aman.fi','$2a$12$HQFWpKnwxSEM4b09ENoCkuOXdD/kNzqnxSosmEzWRkSn7xkgFGkPC','','','2000-02-22','','2016-04-05 14:01:44'),(52,'7a8cc73dc89f5f8b6284a8c82f2cb4','testsn@aman.fi','$2a$12$jXKrHANkCnuTwmKjE.akJekeTWpWkj0IlRslM.XZZwgHJ4tf.fyse','','','2000-02-22','','2016-04-05 14:03:01'),(53,'33d7386dbc6e6734fca5a85d9ddd08','testsn@amand.fi','$2a$12$VwAR4ichELOoiEk4tQugv.C6J2HvP144IChh3zpRwt4vaNnGmVVRC','','','2000-02-22','','2016-04-05 14:03:54');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_swipeLeftPlayers`
--

DROP TABLE IF EXISTS `player_swipeLeftPlayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `player_swipeLeftPlayers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_player_id` int(11) NOT NULL,
  `to_player_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_player_id` (`from_player_id`,`to_player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_swipeLeftPlayers`
--

LOCK TABLES `player_swipeLeftPlayers` WRITE;
/*!40000 ALTER TABLE `player_swipeLeftPlayers` DISABLE KEYS */;
INSERT INTO `player_swipeLeftPlayers` VALUES (1,1,15),(2,15,1);
/*!40000 ALTER TABLE `player_swipeLeftPlayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfoliopictures`
--

DROP TABLE IF EXISTS `portfoliopictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `portfoliopictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfoliopictures`
--

LOCK TABLES `portfoliopictures` WRITE;
/*!40000 ALTER TABLE `portfoliopictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfoliopictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES (1,1,'Football',2,'I am perfect in this game. :D'),(2,1,'Basketball',4,'I am perfect in this game. :D'),(3,1,'Cricket',1,'I am perfect in this game. :D'),(4,1,'Baseball',1,'I am perfect in this game. :D'),(5,1,'Volleyball',2,'I am perfect in this game. :D'),(6,1,'Ice Hockey',3,'I am perfect in this game. :D'),(7,2,'Football',3,'I am perfect in this game. :D'),(8,2,'Basketball',3,'I am perfect in this game. :D'),(9,2,'Cricket',1,'I am perfect in this game. :D'),(10,2,'Baseball',3,'I am perfect in this game. :D'),(11,2,'Volleyball',3,'I am perfect in this game. :D'),(12,2,'Ice Hockey',4,'I am perfect in this game. :D'),(13,3,'Football',2,'I am perfect in this game. :D'),(14,3,'Basketball',4,'I am perfect in this game. :D'),(15,3,'Cricket',0,'I am perfect in this game. :D'),(16,3,'Baseball',2,'I am perfect in this game. :D'),(17,3,'Volleyball',4,'I am perfect in this game. :D'),(18,3,'Ice Hockey',3,'I am perfect in this game. :D'),(19,4,'Football',0,'I am perfect in this game. :D'),(20,4,'Basketball',2,'I am perfect in this game. :D'),(21,4,'Cricket',4,'I am perfect in this game. :D'),(22,4,'Baseball',0,'I am perfect in this game. :D'),(23,4,'Volleyball',1,'I am perfect in this game. :D'),(24,4,'Ice Hockey',4,'I am perfect in this game. :D'),(25,5,'Football',0,'I am perfect in this game. :D'),(26,5,'Basketball',0,'I am perfect in this game. :D'),(27,5,'Cricket',4,'I am perfect in this game. :D'),(28,5,'Baseball',1,'I am perfect in this game. :D'),(29,5,'Volleyball',1,'I am perfect in this game. :D'),(30,5,'Ice Hockey',2,'I am perfect in this game. :D'),(31,6,'Football',2,'I am perfect in this game. :D'),(32,6,'Basketball',1,'I am perfect in this game. :D'),(33,6,'Cricket',0,'I am perfect in this game. :D'),(34,6,'Baseball',2,'I am perfect in this game. :D'),(35,6,'Volleyball',0,'I am perfect in this game. :D'),(36,6,'Ice Hockey',0,'I am perfect in this game. :D'),(37,7,'Football',1,'I am perfect in this game. :D'),(38,7,'Basketball',0,'I am perfect in this game. :D'),(39,7,'Cricket',4,'I am perfect in this game. :D'),(40,7,'Baseball',1,'I am perfect in this game. :D'),(41,7,'Volleyball',4,'I am perfect in this game. :D'),(42,7,'Ice Hockey',2,'I am perfect in this game. :D'),(43,8,'Football',1,'I am perfect in this game. :D'),(44,8,'Basketball',1,'I am perfect in this game. :D'),(45,8,'Cricket',2,'I am perfect in this game. :D'),(46,8,'Baseball',0,'I am perfect in this game. :D'),(47,8,'Volleyball',1,'I am perfect in this game. :D'),(48,8,'Ice Hockey',4,'I am perfect in this game. :D'),(49,9,'Football',2,'I am perfect in this game. :D'),(50,9,'Basketball',1,'I am perfect in this game. :D'),(51,9,'Cricket',2,'I am perfect in this game. :D'),(52,9,'Baseball',1,'I am perfect in this game. :D'),(53,9,'Volleyball',1,'I am perfect in this game. :D'),(54,9,'Ice Hockey',3,'I am perfect in this game. :D'),(55,10,'Football',0,'I am perfect in this game. :D'),(56,10,'Basketball',2,'I am perfect in this game. :D'),(57,10,'Cricket',4,'I am perfect in this game. :D'),(58,10,'Baseball',3,'I am perfect in this game. :D'),(59,10,'Volleyball',3,'I am perfect in this game. :D'),(60,10,'Ice Hockey',3,'I am perfect in this game. :D'),(61,11,'Football',4,'I am perfect in this game. :D'),(62,11,'Basketball',0,'I am perfect in this game. :D'),(63,11,'Cricket',2,'I am perfect in this game. :D'),(64,11,'Baseball',3,'I am perfect in this game. :D'),(65,11,'Volleyball',1,'I am perfect in this game. :D'),(66,11,'Ice Hockey',3,'I am perfect in this game. :D'),(67,12,'Football',2,'I am perfect in this game. :D'),(68,12,'Basketball',1,'I am perfect in this game. :D'),(69,12,'Cricket',2,'I am perfect in this game. :D'),(70,12,'Baseball',0,'I am perfect in this game. :D'),(71,12,'Volleyball',3,'I am perfect in this game. :D'),(72,12,'Ice Hockey',1,'I am perfect in this game. :D'),(73,13,'Football',0,'I am perfect in this game. :D'),(74,13,'Basketball',4,'I am perfect in this game. :D'),(75,13,'Cricket',3,'I am perfect in this game. :D'),(76,13,'Baseball',0,'I am perfect in this game. :D'),(77,13,'Volleyball',0,'I am perfect in this game. :D'),(78,13,'Ice Hockey',4,'I am perfect in this game. :D'),(79,14,'Football',4,'I am perfect in this game. :D'),(80,14,'Basketball',2,'I am perfect in this game. :D'),(81,14,'Cricket',4,'I am perfect in this game. :D'),(82,14,'Baseball',0,'I am perfect in this game. :D'),(83,14,'Volleyball',3,'I am perfect in this game. :D'),(84,14,'Ice Hockey',2,'I am perfect in this game. :D'),(85,15,'Football',2,'I am perfect in this game. :D'),(86,15,'Basketball',2,'I am perfect in this game. :D'),(87,15,'Cricket',2,'I am perfect in this game. :D'),(88,15,'Baseball',3,'I am perfect in this game. :D'),(89,15,'Volleyball',3,'I am perfect in this game. :D'),(90,15,'Ice Hockey',4,'I am perfect in this game. :D'),(91,16,'Football',1,'I am perfect in this game. :D'),(92,16,'Basketball',2,'I am perfect in this game. :D'),(93,16,'Cricket',2,'I am perfect in this game. :D'),(94,16,'Baseball',0,'I am perfect in this game. :D'),(95,16,'Volleyball',2,'I am perfect in this game. :D'),(96,16,'Ice Hockey',4,'I am perfect in this game. :D'),(97,17,'Football',3,'I am perfect in this game. :D'),(98,17,'Basketball',1,'I am perfect in this game. :D'),(99,17,'Cricket',1,'I am perfect in this game. :D'),(100,17,'Baseball',4,'I am perfect in this game. :D'),(101,17,'Volleyball',1,'I am perfect in this game. :D'),(102,17,'Ice Hockey',2,'I am perfect in this game. :D'),(103,18,'Football',3,'I am perfect in this game. :D'),(104,18,'Basketball',4,'I am perfect in this game. :D'),(105,18,'Cricket',1,'I am perfect in this game. :D'),(106,18,'Baseball',2,'I am perfect in this game. :D'),(107,18,'Volleyball',0,'I am perfect in this game. :D'),(108,18,'Ice Hockey',2,'I am perfect in this game. :D'),(109,19,'Football',3,'I am perfect in this game. :D'),(110,19,'Basketball',3,'I am perfect in this game. :D'),(111,19,'Cricket',0,'I am perfect in this game. :D'),(112,19,'Baseball',1,'I am perfect in this game. :D'),(113,19,'Volleyball',4,'I am perfect in this game. :D'),(114,19,'Ice Hockey',4,'I am perfect in this game. :D'),(115,20,'Football',3,'I am perfect in this game. :D'),(116,20,'Basketball',2,'I am perfect in this game. :D'),(117,20,'Cricket',4,'I am perfect in this game. :D'),(118,20,'Baseball',4,'I am perfect in this game. :D'),(119,20,'Volleyball',1,'I am perfect in this game. :D'),(120,20,'Ice Hockey',3,'I am perfect in this game. :D'),(121,21,'Football',1,'I am perfect in this game. :D'),(122,21,'Basketball',2,'I am perfect in this game. :D'),(123,21,'Cricket',3,'I am perfect in this game. :D'),(124,21,'Baseball',1,'I am perfect in this game. :D'),(125,21,'Volleyball',3,'I am perfect in this game. :D'),(126,21,'Ice Hockey',4,'I am perfect in this game. :D'),(127,22,'Football',2,'I am perfect in this game. :D'),(128,22,'Basketball',2,'I am perfect in this game. :D'),(129,22,'Cricket',3,'I am perfect in this game. :D'),(130,22,'Baseball',1,'I am perfect in this game. :D'),(131,22,'Volleyball',1,'I am perfect in this game. :D'),(132,22,'Ice Hockey',0,'I am perfect in this game. :D'),(133,23,'Football',0,'I am perfect in this game. :D'),(134,23,'Basketball',4,'I am perfect in this game. :D'),(135,23,'Cricket',3,'I am perfect in this game. :D'),(136,23,'Baseball',2,'I am perfect in this game. :D'),(137,23,'Volleyball',3,'I am perfect in this game. :D'),(138,23,'Ice Hockey',3,'I am perfect in this game. :D'),(139,24,'Football',2,'I am perfect in this game. :D'),(140,24,'Basketball',3,'I am perfect in this game. :D'),(141,24,'Cricket',3,'I am perfect in this game. :D'),(142,24,'Baseball',0,'I am perfect in this game. :D'),(143,24,'Volleyball',1,'I am perfect in this game. :D'),(144,24,'Ice Hockey',0,'I am perfect in this game. :D'),(145,25,'Football',4,'I am perfect in this game. :D'),(146,25,'Basketball',1,'I am perfect in this game. :D'),(147,25,'Cricket',3,'I am perfect in this game. :D'),(148,25,'Baseball',1,'I am perfect in this game. :D'),(149,25,'Volleyball',4,'I am perfect in this game. :D'),(150,25,'Ice Hockey',2,'I am perfect in this game. :D'),(151,26,'Football',3,'I am perfect in this game. :D'),(152,26,'Basketball',0,'I am perfect in this game. :D'),(153,26,'Cricket',2,'I am perfect in this game. :D'),(154,26,'Baseball',1,'I am perfect in this game. :D'),(155,26,'Volleyball',4,'I am perfect in this game. :D'),(156,26,'Ice Hockey',2,'I am perfect in this game. :D'),(157,27,'Football',3,'I am perfect in this game. :D'),(158,27,'Basketball',0,'I am perfect in this game. :D'),(159,27,'Cricket',1,'I am perfect in this game. :D'),(160,27,'Baseball',3,'I am perfect in this game. :D'),(161,27,'Volleyball',2,'I am perfect in this game. :D'),(162,27,'Ice Hockey',0,'I am perfect in this game. :D'),(163,28,'Football',1,'I am perfect in this game. :D'),(164,28,'Basketball',1,'I am perfect in this game. :D'),(165,28,'Cricket',0,'I am perfect in this game. :D'),(166,28,'Baseball',2,'I am perfect in this game. :D'),(167,28,'Volleyball',3,'I am perfect in this game. :D'),(168,28,'Ice Hockey',2,'I am perfect in this game. :D'),(169,29,'Football',0,'I am perfect in this game. :D'),(170,29,'Basketball',2,'I am perfect in this game. :D'),(171,29,'Cricket',2,'I am perfect in this game. :D'),(172,29,'Baseball',2,'I am perfect in this game. :D'),(173,29,'Volleyball',2,'I am perfect in this game. :D'),(174,29,'Ice Hockey',4,'I am perfect in this game. :D'),(175,30,'Football',2,'I am perfect in this game. :D'),(176,30,'Basketball',0,'I am perfect in this game. :D'),(177,30,'Cricket',0,'I am perfect in this game. :D'),(178,30,'Baseball',4,'I am perfect in this game. :D'),(179,30,'Volleyball',0,'I am perfect in this game. :D'),(180,30,'Ice Hockey',3,'I am perfect in this game. :D'),(181,31,'Football',3,'I am perfect in this game. :D'),(182,31,'Basketball',2,'I am perfect in this game. :D'),(183,31,'Cricket',4,'I am perfect in this game. :D'),(184,31,'Baseball',0,'I am perfect in this game. :D'),(185,31,'Volleyball',0,'I am perfect in this game. :D'),(186,31,'Ice Hockey',4,'I am perfect in this game. :D'),(187,32,'Football',2,'I am perfect in this game. :D'),(188,32,'Basketball',1,'I am perfect in this game. :D'),(189,32,'Cricket',2,'I am perfect in this game. :D'),(190,32,'Baseball',3,'I am perfect in this game. :D'),(191,32,'Volleyball',0,'I am perfect in this game. :D'),(192,32,'Ice Hockey',3,'I am perfect in this game. :D'),(193,33,'Football',3,'I am perfect in this game. :D'),(194,33,'Basketball',0,'I am perfect in this game. :D'),(195,33,'Cricket',0,'I am perfect in this game. :D'),(196,33,'Baseball',3,'I am perfect in this game. :D'),(197,33,'Volleyball',2,'I am perfect in this game. :D'),(198,33,'Ice Hockey',4,'I am perfect in this game. :D'),(199,34,'Football',3,'I am perfect in this game. :D'),(200,34,'Basketball',0,'I am perfect in this game. :D'),(201,34,'Cricket',4,'I am perfect in this game. :D'),(202,34,'Baseball',1,'I am perfect in this game. :D'),(203,34,'Volleyball',3,'I am perfect in this game. :D'),(204,34,'Ice Hockey',1,'I am perfect in this game. :D'),(205,35,'Football',0,'I am perfect in this game. :D'),(206,35,'Basketball',4,'I am perfect in this game. :D'),(207,35,'Cricket',2,'I am perfect in this game. :D'),(208,35,'Baseball',0,'I am perfect in this game. :D'),(209,35,'Volleyball',4,'I am perfect in this game. :D'),(210,35,'Ice Hockey',0,'I am perfect in this game. :D'),(211,36,'Football',1,'I am perfect in this game. :D'),(212,36,'Basketball',3,'I am perfect in this game. :D'),(213,36,'Cricket',2,'I am perfect in this game. :D'),(214,36,'Baseball',1,'I am perfect in this game. :D'),(215,36,'Volleyball',0,'I am perfect in this game. :D'),(216,36,'Ice Hockey',3,'I am perfect in this game. :D'),(217,37,'Football',3,'I am perfect in this game. :D'),(218,37,'Basketball',4,'I am perfect in this game. :D'),(219,37,'Cricket',1,'I am perfect in this game. :D'),(220,37,'Baseball',1,'I am perfect in this game. :D'),(221,37,'Volleyball',1,'I am perfect in this game. :D'),(222,37,'Ice Hockey',1,'I am perfect in this game. :D'),(223,38,'Football',4,'I am perfect in this game. :D'),(224,38,'Basketball',0,'I am perfect in this game. :D'),(225,38,'Cricket',4,'I am perfect in this game. :D'),(226,38,'Baseball',0,'I am perfect in this game. :D'),(227,38,'Volleyball',3,'I am perfect in this game. :D'),(228,38,'Ice Hockey',4,'I am perfect in this game. :D'),(229,39,'Football',3,'I am perfect in this game. :D'),(230,39,'Basketball',1,'I am perfect in this game. :D'),(231,39,'Cricket',1,'I am perfect in this game. :D'),(232,39,'Baseball',2,'I am perfect in this game. :D'),(233,39,'Volleyball',4,'I am perfect in this game. :D'),(234,39,'Ice Hockey',3,'I am perfect in this game. :D'),(235,40,'Football',1,'I am perfect in this game. :D'),(236,40,'Basketball',3,'I am perfect in this game. :D'),(237,40,'Cricket',2,'I am perfect in this game. :D'),(238,40,'Baseball',1,'I am perfect in this game. :D'),(239,40,'Volleyball',1,'I am perfect in this game. :D'),(240,40,'Ice Hockey',3,'I am perfect in this game. :D'),(241,41,'Football',1,'I am perfect in this game. :D'),(242,41,'Basketball',1,'I am perfect in this game. :D'),(243,41,'Cricket',0,'I am perfect in this game. :D'),(244,41,'Baseball',0,'I am perfect in this game. :D'),(245,41,'Volleyball',3,'I am perfect in this game. :D'),(246,41,'Ice Hockey',1,'I am perfect in this game. :D'),(247,42,'Football',0,'I am perfect in this game. :D'),(248,42,'Basketball',2,'I am perfect in this game. :D'),(249,42,'Cricket',3,'I am perfect in this game. :D'),(250,42,'Baseball',3,'I am perfect in this game. :D'),(251,42,'Volleyball',2,'I am perfect in this game. :D'),(252,42,'Ice Hockey',3,'I am perfect in this game. :D'),(253,43,'Football',4,'I am perfect in this game. :D'),(254,43,'Basketball',4,'I am perfect in this game. :D'),(255,43,'Cricket',0,'I am perfect in this game. :D'),(256,43,'Baseball',2,'I am perfect in this game. :D'),(257,43,'Volleyball',3,'I am perfect in this game. :D'),(258,43,'Ice Hockey',3,'I am perfect in this game. :D'),(259,44,'Football',0,'I am perfect in this game. :D'),(260,44,'Basketball',3,'I am perfect in this game. :D'),(261,44,'Cricket',3,'I am perfect in this game. :D'),(262,44,'Baseball',2,'I am perfect in this game. :D'),(263,44,'Volleyball',3,'I am perfect in this game. :D'),(264,44,'Ice Hockey',0,'I am perfect in this game. :D'),(265,45,'Football',0,'I am perfect in this game. :D'),(266,45,'Basketball',4,'I am perfect in this game. :D'),(267,45,'Cricket',3,'I am perfect in this game. :D'),(268,45,'Baseball',2,'I am perfect in this game. :D'),(269,45,'Volleyball',1,'I am perfect in this game. :D'),(270,45,'Ice Hockey',3,'I am perfect in this game. :D'),(271,46,'Football',4,'I am perfect in this game. :D'),(272,46,'Basketball',4,'I am perfect in this game. :D'),(273,46,'Cricket',1,'I am perfect in this game. :D'),(274,46,'Baseball',4,'I am perfect in this game. :D'),(275,46,'Volleyball',4,'I am perfect in this game. :D'),(276,46,'Ice Hockey',2,'I am perfect in this game. :D'),(277,47,'Football',1,'I am perfect in this game. :D'),(278,47,'Basketball',4,'I am perfect in this game. :D'),(279,47,'Cricket',2,'I am perfect in this game. :D'),(280,47,'Baseball',1,'I am perfect in this game. :D'),(281,47,'Volleyball',0,'I am perfect in this game. :D'),(282,47,'Ice Hockey',3,'I am perfect in this game. :D'),(283,48,'Football',0,'I am perfect in this game. :D'),(284,48,'Basketball',3,'I am perfect in this game. :D'),(285,48,'Cricket',0,'I am perfect in this game. :D'),(286,48,'Baseball',3,'I am perfect in this game. :D'),(287,48,'Volleyball',3,'I am perfect in this game. :D'),(288,48,'Ice Hockey',0,'I am perfect in this game. :D'),(289,49,'Football',1,'I am perfect in this game. :D'),(290,49,'Basketball',2,'I am perfect in this game. :D'),(291,49,'Cricket',2,'I am perfect in this game. :D'),(292,49,'Baseball',3,'I am perfect in this game. :D'),(293,49,'Volleyball',1,'I am perfect in this game. :D'),(294,49,'Ice Hockey',2,'I am perfect in this game. :D'),(295,50,'Football',3,'I am perfect in this game. :D'),(296,50,'Basketball',2,'I am perfect in this game. :D'),(297,50,'Cricket',3,'I am perfect in this game. :D'),(298,50,'Baseball',0,'I am perfect in this game. :D'),(299,50,'Volleyball',0,'I am perfect in this game. :D'),(300,50,'Ice Hockey',1,'I am perfect in this game. :D');
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profilepictures`
--

DROP TABLE IF EXISTS `profilepictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profilepictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profilepictures`
--

LOCK TABLES `profilepictures` WRITE;
/*!40000 ALTER TABLE `profilepictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `profilepictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sportsoption`
--

DROP TABLE IF EXISTS `sportsoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sportsoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ground_id` int(11) DEFAULT NULL,
  `sporting_option` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sportsoption`
--

LOCK TABLES `sportsoption` WRITE;
/*!40000 ALTER TABLE `sportsoption` DISABLE KEYS */;
INSERT INTO `sportsoption` VALUES (1,1,'footbal'),(2,1,'basketball'),(3,1,'cricket'),(4,1,'baseball'),(5,1,'volleyball'),(6,1,'racket'),(7,1,'squad'),(8,2,'footbal'),(9,2,'basketball'),(10,2,'cricket'),(11,2,'baseball'),(12,2,'volleyball'),(13,2,'racket'),(14,2,'squad'),(15,3,'footbal'),(16,3,'basketball'),(17,3,'cricket'),(18,3,'baseball'),(19,3,'volleyball'),(20,3,'racket'),(21,3,'squad'),(22,4,'footbal'),(23,4,'basketball'),(24,4,'cricket'),(25,4,'baseball'),(26,4,'volleyball'),(27,4,'racket'),(28,4,'squad'),(29,5,'footbal'),(30,5,'basketball'),(31,5,'cricket'),(32,5,'baseball'),(33,5,'volleyball'),(34,5,'racket'),(35,5,'squad'),(36,6,'footbal'),(37,6,'basketball'),(38,6,'cricket'),(39,6,'baseball'),(40,6,'volleyball'),(41,6,'racket'),(42,6,'squad'),(43,7,'footbal'),(44,7,'basketball'),(45,7,'cricket'),(46,7,'baseball'),(47,7,'volleyball'),(48,7,'racket'),(49,7,'squad'),(50,8,'footbal'),(51,8,'basketball'),(52,8,'cricket'),(53,8,'baseball'),(54,8,'volleyball'),(55,8,'racket'),(56,8,'squad'),(57,9,'footbal'),(58,9,'basketball'),(59,9,'cricket'),(60,9,'baseball'),(61,9,'volleyball'),(62,9,'racket'),(63,9,'squad'),(64,10,'footbal'),(65,10,'basketball'),(66,10,'cricket'),(67,10,'baseball'),(68,10,'volleyball'),(69,10,'racket'),(70,10,'squad'),(71,11,'footbal'),(72,11,'basketball'),(73,11,'cricket'),(74,11,'baseball'),(75,11,'volleyball'),(76,11,'racket'),(77,11,'squad');
/*!40000 ALTER TABLE `sportsoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersrating`
--

DROP TABLE IF EXISTS `usersrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usersrating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preferenceid_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `player_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `preferenceid_id` (`preferenceid_id`,`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersrating`
--

LOCK TABLES `usersrating` WRITE;
/*!40000 ALTER TABLE `usersrating` DISABLE KEYS */;
INSERT INTO `usersrating` VALUES (1,1,0,'test',45),(2,2,4,'test',20),(3,3,0,'test',22),(4,4,0,'test',8),(5,5,1,'test',9),(6,6,1,'test',17),(7,7,3,'test',35),(8,8,1,'test',10),(9,9,4,'test',33),(10,10,1,'test',34),(11,11,0,'test',46),(12,12,3,'test',23),(13,13,4,'test',48),(14,14,4,'test',32),(15,15,4,'test',49),(16,16,3,'test',24),(17,17,2,'test',6),(18,18,1,'test',49),(19,19,3,'test',22),(20,20,1,'test',16),(21,21,0,'test',30),(22,22,2,'test',25),(23,23,2,'test',7),(24,24,1,'test',48),(25,25,0,'test',4),(26,26,2,'test',20),(27,27,4,'test',30),(28,28,4,'test',33),(29,29,4,'test',20),(30,30,3,'test',25),(31,31,1,'test',8),(32,32,2,'test',33),(33,33,2,'test',20),(34,34,4,'test',19),(35,35,3,'test',15),(36,36,2,'test',44),(37,37,0,'test',26),(38,38,0,'test',2),(39,39,1,'test',38),(40,40,1,'test',32),(41,41,3,'test',31),(42,42,1,'test',29),(43,43,0,'test',13),(44,44,4,'test',20),(45,45,0,'test',14),(46,46,3,'test',17),(47,47,4,'test',33),(48,48,3,'test',35),(49,49,0,'test',50),(50,50,4,'test',36),(51,51,4,'test',38),(52,52,4,'test',11),(53,53,1,'test',1),(54,54,3,'test',16),(55,55,4,'test',2),(56,56,4,'test',37),(57,57,0,'test',9),(58,58,4,'test',32),(59,59,2,'test',46),(60,60,4,'test',35),(61,61,2,'test',35),(62,62,0,'test',28),(63,63,0,'test',14),(64,64,3,'test',8),(65,65,0,'test',23),(66,66,2,'test',27),(67,67,0,'test',1),(68,68,4,'test',26),(69,69,1,'test',48),(70,70,0,'test',37),(71,71,3,'test',17),(72,72,2,'test',14),(73,73,4,'test',2),(74,74,0,'test',47),(75,75,4,'test',23),(76,76,4,'test',48),(77,77,4,'test',18),(78,78,4,'test',8),(79,79,0,'test',12),(80,80,0,'test',41),(81,81,2,'test',9),(82,82,1,'test',19),(83,83,1,'test',45),(84,84,2,'test',6),(85,85,1,'test',24),(86,86,1,'test',26),(87,87,4,'test',49),(88,88,2,'test',39),(89,89,1,'test',5),(90,90,2,'test',48),(91,91,1,'test',22),(92,92,4,'test',27),(93,93,4,'test',22),(94,94,3,'test',33),(95,95,4,'test',13),(96,96,3,'test',37),(97,97,1,'test',40),(98,98,1,'test',37),(99,99,2,'test',31),(100,100,3,'test',24),(101,101,0,'test',48),(102,102,3,'test',18),(103,103,4,'test',27),(104,104,1,'test',3),(105,105,2,'test',17),(106,106,1,'test',32),(107,107,4,'test',40),(108,108,0,'test',30),(109,109,3,'test',3),(110,110,3,'test',8),(111,111,2,'test',47),(112,112,1,'test',9),(113,113,4,'test',7),(114,114,3,'test',34),(115,115,1,'test',26),(116,116,2,'test',21),(117,117,4,'test',37),(118,118,1,'test',14),(119,119,2,'test',16),(120,120,3,'test',19),(121,121,4,'test',23),(122,122,0,'test',50),(123,123,0,'test',4),(124,124,1,'test',29),(125,125,2,'test',50),(126,126,3,'test',8),(127,127,4,'test',32),(128,128,0,'test',1),(129,129,0,'test',49),(130,130,3,'test',29),(131,131,4,'test',10),(132,132,1,'test',32),(133,133,1,'test',21),(134,134,2,'test',8),(135,135,3,'test',46),(136,136,3,'test',49),(137,137,1,'test',30),(138,138,2,'test',42),(139,139,3,'test',37),(140,140,3,'test',2),(141,141,1,'test',23),(142,142,4,'test',30),(143,143,3,'test',1),(144,144,0,'test',15),(145,145,3,'test',43),(146,146,0,'test',38),(147,147,0,'test',26),(148,148,4,'test',27),(149,149,1,'test',44),(150,150,2,'test',23),(151,151,2,'test',32),(152,152,4,'test',16),(153,153,2,'test',38),(154,154,0,'test',24),(155,155,4,'test',49),(156,156,1,'test',17),(157,157,4,'test',18),(158,158,2,'test',46),(159,159,3,'test',16),(160,160,2,'test',23),(161,161,4,'test',35),(162,162,2,'test',11),(163,163,3,'test',21),(164,164,4,'test',1),(165,165,4,'test',25),(166,166,2,'test',7),(167,167,4,'test',6),(168,168,3,'test',30),(169,169,3,'test',14),(170,170,2,'test',24),(171,171,3,'test',22),(172,172,2,'test',49),(173,173,1,'test',5),(174,174,2,'test',45),(175,175,4,'test',43),(176,176,2,'test',44),(177,177,3,'test',14),(178,178,3,'test',45),(179,179,4,'test',31),(180,180,2,'test',32),(181,181,4,'test',29),(182,182,0,'test',40),(183,183,0,'test',37),(184,184,2,'test',35),(185,185,4,'test',7),(186,186,1,'test',47),(187,187,4,'test',5),(188,188,2,'test',35),(189,189,4,'test',6),(190,190,1,'test',21),(191,191,3,'test',48),(192,192,3,'test',10),(193,193,0,'test',30),(194,194,1,'test',50),(195,195,4,'test',1),(196,196,4,'test',13),(197,197,3,'test',23),(198,198,1,'test',32),(199,199,3,'test',28),(200,200,0,'test',19),(201,201,0,'test',24),(202,202,3,'test',3),(203,203,3,'test',37),(204,204,0,'test',30),(205,205,0,'test',1),(206,206,4,'test',32),(207,207,1,'test',33),(208,208,2,'test',15),(209,209,2,'test',33),(210,210,4,'test',40),(211,211,4,'test',11),(212,212,4,'test',21),(213,213,2,'test',49),(214,214,0,'test',15),(215,215,2,'test',17),(216,216,1,'test',4),(217,217,2,'test',29),(218,218,4,'test',47),(219,219,3,'test',38),(220,220,3,'test',16),(221,221,0,'test',24),(222,222,0,'test',1),(223,223,1,'test',33),(224,224,3,'test',9),(225,225,4,'test',35),(226,226,1,'test',4),(227,227,0,'test',32),(228,228,3,'test',15),(229,229,2,'test',9),(230,230,0,'test',3),(231,231,0,'test',38),(232,232,2,'test',3),(233,233,1,'test',3),(234,234,3,'test',29),(235,235,2,'test',16),(236,236,1,'test',42),(237,237,3,'test',33),(238,238,4,'test',50),(239,239,0,'test',34),(240,240,0,'test',43),(241,241,4,'test',3),(242,242,3,'test',29),(243,243,2,'test',27),(244,244,0,'test',22),(245,245,0,'test',45),(246,246,1,'test',21),(247,247,4,'test',35),(248,248,1,'test',45),(249,249,1,'test',9),(250,250,1,'test',11),(251,251,1,'test',38),(252,252,3,'test',34),(253,253,3,'test',34),(254,254,1,'test',7),(255,255,2,'test',19),(256,256,2,'test',47),(257,257,0,'test',13),(258,258,4,'test',1),(259,259,0,'test',16),(260,260,0,'test',15),(261,261,4,'test',47),(262,262,0,'test',30),(263,263,1,'test',38),(264,264,2,'test',17),(265,265,0,'test',23),(266,266,4,'test',2),(267,267,2,'test',23),(268,268,1,'test',36),(269,269,4,'test',41),(270,270,2,'test',37),(271,271,1,'test',22),(272,272,2,'test',38),(273,273,3,'test',27),(274,274,2,'test',20),(275,275,3,'test',10),(276,276,1,'test',5),(277,277,4,'test',19),(278,278,0,'test',20),(279,279,2,'test',3),(280,280,4,'test',26),(281,281,3,'test',32),(282,282,3,'test',45),(283,283,3,'test',14),(284,284,0,'test',9),(285,285,1,'test',28),(286,286,1,'test',38),(287,287,2,'test',36),(288,288,2,'test',24),(289,289,2,'test',26),(290,290,1,'test',7),(291,291,1,'test',48),(292,292,2,'test',16),(293,293,4,'test',43),(294,294,3,'test',24),(295,295,4,'test',15),(296,296,4,'test',18),(297,297,2,'test',7),(298,298,0,'test',12),(299,299,3,'test',31),(300,300,2,'test',49);
/*!40000 ALTER TABLE `usersrating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-18 19:52:12

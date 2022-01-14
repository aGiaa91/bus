-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: bus
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Nis Ekspres'),(5,'Lasta'),(8,'Jedinstvo Vranje'),(9,'Simplon Zaguzane'),(10,'Kanis Leskovac'),(11,'Auto Kodeks');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departures`
--

DROP TABLE IF EXISTS `departures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_of_departure` time DEFAULT NULL,
  `time_of_arrival` time DEFAULT NULL,
  `departure_station` varchar(256) DEFAULT NULL,
  `arrival_station` varchar(256) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `available_seats` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `date_of_departure` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `departures_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departures`
--

LOCK TABLES `departures` WRITE;
/*!40000 ALTER TABLE `departures` DISABLE KEYS */;
INSERT INTO `departures` VALUES (1,'15:19:49','18:19:49','Beograd','Nis',1500,29,1,'2022-01-07'),(2,'18:19:49','21:19:49','Beograd','Nis',1500,13,1,'2022-01-07'),(3,'21:19:49','00:19:49','Nis','Beograd',1500,37,1,'2022-01-07'),(4,'19:19:49','21:19:49','Beograd','Novi Sad',1000,37,1,'2022-01-07'),(5,'23:19:49','01:19:49','Beograd','Novi Sad',1000,22,1,'2022-01-07'),(6,'15:27:20','18:27:20','Beograd','Nis',1500,37,1,'2022-01-08'),(7,'18:27:20','21:27:20','Beograd','Nis',1500,32,1,'2022-01-08'),(8,'21:27:20','00:27:20','Nis','Beograd',1500,37,1,'2022-01-08'),(9,'19:27:20','21:27:20','Beograd','Novi Sad',1000,37,1,'2022-01-08'),(10,'23:27:20','01:27:20','Beograd','Novi Sad',1000,37,1,'2022-01-08'),(11,'15:28:24','18:28:24','Beograd','Nis',1500,37,1,'2022-01-09'),(12,'18:28:24','21:28:24','Beograd','Nis',1500,37,1,'2022-01-09'),(13,'21:28:24','00:28:24','Nis','Beograd',1500,37,1,'2022-01-09'),(14,'19:28:24','21:28:24','Beograd','Novi Sad',1000,37,1,'2022-01-09'),(15,'23:28:24','01:28:24','Beograd','Novi Sad',1000,37,1,'2022-01-09'),(16,'15:28:43','18:28:43','Beograd','Nis',1500,37,1,'2022-01-10'),(17,'18:28:43','21:28:43','Beograd','Nis',1500,37,1,'2022-01-10'),(18,'21:28:43','00:28:43','Nis','Beograd',1500,32,1,'2022-01-10'),(19,'19:28:43','21:28:43','Beograd','Novi Sad',1000,37,1,'2022-01-10'),(20,'23:28:43','01:28:43','Beograd','Novi Sad',1000,37,1,'2022-01-10'),(21,'16:32:01','19:32:01','Beograd','Nis',1450,35,5,'2022-01-10'),(22,'19:32:01','22:32:01','Beograd','Nis',1400,35,5,'2022-01-10'),(23,'22:32:01','01:32:01','Nis','Beograd',1450,35,5,'2022-01-10'),(24,'20:32:01','22:32:01','Beograd','Novi Sad',980,35,5,'2022-01-10'),(25,'01:32:01','03:32:01','Beograd','Novi Sad',980,35,5,'2022-01-10'),(26,'16:32:20','19:32:20','Beograd','Nis',1450,35,5,'2022-01-09'),(27,'19:32:20','22:32:20','Beograd','Nis',1400,35,5,'2022-01-09'),(28,'22:32:20','01:32:20','Nis','Beograd',1450,35,5,'2022-01-09'),(29,'20:32:20','22:32:20','Beograd','Novi Sad',980,35,5,'2022-01-09'),(30,'01:32:20','03:32:20','Beograd','Novi Sad',980,35,5,'2022-01-09'),(31,'16:32:35','19:32:35','Beograd','Nis',1450,35,5,'2022-01-08'),(32,'19:32:35','22:32:35','Beograd','Nis',1400,35,5,'2022-01-08'),(33,'22:32:35','01:32:35','Nis','Beograd',1450,35,5,'2022-01-08'),(34,'20:32:35','22:32:35','Beograd','Novi Sad',980,35,5,'2022-01-08'),(35,'01:32:35','03:32:35','Beograd','Novi Sad',980,35,5,'2022-01-08'),(36,'16:33:50','19:33:50','Beograd','Nis',1450,19,5,'2022-01-07'),(37,'19:33:50','22:33:50','Beograd','Nis',1400,35,5,'2022-01-07'),(38,'22:33:50','01:33:50','Nis','Beograd',1450,35,5,'2022-01-07'),(39,'20:33:50','22:33:50','Beograd','Novi Sad',980,35,5,'2022-01-07'),(40,'01:33:50','03:33:50','Beograd','Novi Sad',980,21,5,'2022-01-07'),(41,'17:36:59','20:36:59','Beograd','Nis',1420,-3,8,'2022-01-07'),(42,'23:36:59','02:36:59','Beograd','Nis',1380,25,9,'2022-01-07'),(43,'20:36:59','23:36:59','Nis','Beograd',1300,25,9,'2022-01-07'),(44,'19:36:59','21:36:59','Beograd','Novi Sad',1100,22,8,'2022-01-07'),(45,'20:36:59','22:36:59','Beograd','Novi Sad',1150,25,9,'2022-01-07'),(46,'17:37:17','20:37:17','Beograd','Nis',1420,22,8,'2022-01-08'),(47,'23:37:17','02:37:17','Beograd','Nis',1380,25,9,'2022-01-08'),(48,'20:37:17','23:37:17','Nis','Beograd',1300,25,9,'2022-01-08'),(49,'19:37:17','21:37:17','Beograd','Novi Sad',1100,22,8,'2022-01-08'),(50,'20:37:17','22:37:17','Beograd','Novi Sad',1150,25,9,'2022-01-08'),(51,'17:37:32','20:37:32','Beograd','Nis',1420,22,8,'2022-01-09'),(52,'23:37:32','02:37:32','Beograd','Nis',1380,25,9,'2022-01-09'),(53,'20:37:32','23:37:32','Nis','Beograd',1300,25,9,'2022-01-09'),(54,'19:37:32','21:37:32','Beograd','Novi Sad',1100,22,8,'2022-01-09'),(55,'20:37:32','22:37:32','Beograd','Novi Sad',1150,25,9,'2022-01-09'),(56,'17:37:47','20:37:47','Beograd','Nis',1420,22,8,'2022-01-10'),(57,'23:37:47','02:37:47','Beograd','Nis',1380,25,9,'2022-01-10'),(58,'20:37:47','23:37:47','Nis','Beograd',1300,25,9,'2022-01-10'),(59,'19:37:47','21:37:47','Beograd','Novi Sad',1100,22,8,'2022-01-10'),(60,'20:37:47','22:37:47','Beograd','Novi Sad',1150,25,9,'2022-01-10'),(61,'00:39:20','03:39:20','Beograd','Nis',1420,24,11,'2022-01-10'),(62,'23:39:20','02:39:20','Beograd','Nis',1380,27,10,'2022-01-10'),(63,'20:39:20','23:39:20','Nis','Beograd',1300,27,10,'2022-01-10'),(64,'19:39:20','21:39:20','Beograd','Novi Sad',1100,24,11,'2022-01-10'),(65,'20:39:20','22:39:20','Beograd','Novi Sad',1150,27,10,'2022-01-10'),(66,'00:39:41','03:39:41','Beograd','Nis',1420,24,11,'2022-01-09'),(67,'23:39:41','02:39:41','Beograd','Nis',1380,27,10,'2022-01-09'),(68,'20:39:41','23:39:41','Nis','Beograd',1300,27,10,'2022-01-09'),(69,'19:39:41','21:39:41','Beograd','Novi Sad',1100,24,11,'2022-01-09'),(70,'20:39:41','22:39:41','Beograd','Novi Sad',1150,27,10,'2022-01-09'),(71,'00:39:57','03:39:57','Beograd','Nis',1420,24,11,'2022-01-08'),(72,'23:39:57','02:39:57','Beograd','Nis',1380,27,10,'2022-01-08'),(73,'20:39:57','23:39:57','Nis','Beograd',1300,27,10,'2022-01-08'),(74,'19:39:57','21:39:57','Beograd','Novi Sad',1100,24,11,'2022-01-08'),(75,'20:39:57','22:39:57','Beograd','Novi Sad',1150,27,10,'2022-01-08'),(76,'00:40:20','03:40:20','Beograd','Nis',1420,0,11,'2022-01-07'),(77,'23:40:20','02:40:20','Beograd','Nis',1380,27,10,'2022-01-07'),(78,'20:40:20','23:40:20','Nis','Beograd',1300,27,10,'2022-01-07'),(79,'19:40:20','21:40:20','Beograd','Novi Sad',1100,24,11,'2022-01-07'),(80,'20:40:20','22:40:20','Beograd','Novi Sad',1150,27,10,'2022-01-07');
/*!40000 ALTER TABLE `departures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departure_id` int NOT NULL,
  `price` double DEFAULT NULL,
  `return_ticket` tinyint(1) DEFAULT '0',
  `number_of_tickets` int DEFAULT NULL,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(256) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departure_id` (`departure_id`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`departure_id`) REFERENCES `departures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-14 18:09:35

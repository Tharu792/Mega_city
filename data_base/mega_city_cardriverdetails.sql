CREATE DATABASE  IF NOT EXISTS `mega_city` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mega_city`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mega_city
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `cardriverdetails`
--

DROP TABLE IF EXISTS `cardriverdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardriverdetails` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `car_model` varchar(100) NOT NULL,
  `car_number` varchar(20) NOT NULL,
  `car_type` varchar(50) NOT NULL,
  `capacity` int NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `driver_nic` varchar(15) NOT NULL,
  `car_image` varchar(255) NOT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE KEY `car_number` (`car_number`),
  UNIQUE KEY `license_number` (`license_number`),
  UNIQUE KEY `driver_nic` (`driver_nic`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardriverdetails`
--

LOCK TABLES `cardriverdetails` WRITE;
/*!40000 ALTER TABLE `cardriverdetails` DISABLE KEYS */;
INSERT INTO `cardriverdetails` VALUES (5,'toyota','aa','van',99,'aaaa','3333','12345678909765','123456098765432','altocar.png'),(6,'susuki','BBC-5555','van',111,'kkkkkkk','22222222222','333333333333','555555555555','home.jpg');
/*!40000 ALTER TABLE `cardriverdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-13  2:17:50

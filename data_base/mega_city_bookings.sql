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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `pickup_location` varchar(255) NOT NULL,
  `dropoff_location` varchar(255) NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` time NOT NULL,
  `distance` double NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `total_cost` double NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (23,'akila','0771122333','kandy','colombo','2025-03-10','17:30:00',94.73,'Wagon-R',17051.4,13,'Pending'),(24,'nadun','0772030450','matale','naula','2025-03-06','18:30:00',1.31,'Alto',196.5,13,'Pending'),(25,'sachindika','0740102030','millawana','pallepola','2025-03-04','17:30:00',4.65,'Wagon-R',930.0000000000001,13,'Pending'),(26,'tharu','0771122333','matale','naula','2025-03-06','18:15:00',1.31,'Tuk Tuk',131,13,'Completed'),(27,'akila','0771122333','matale','kandy','2025-03-10','17:01:00',45.13,'Tuk Tuk',4513,13,'Pending'),(28,'tharu','12345676','colomb','kandy','2025-03-13','19:00:00',1125.01,'Tuk Tuk',90000.8,13,'Pending'),(29,'tharu','011','naula','matale','2025-03-08','17:01:00',1.31,'Tuk Tuk',131,13,'Pending'),(30,'tharu','0771122333','matale','naula','2025-03-11','17:10:00',1.31,'Tuk Tuk',131,13,'Pending'),(31,'akila','0776170241','naula','kandy','2025-03-07','19:10:00',46.07,'Tuk Tuk',4607,13,'Completed'),(49,'tharu','0776170241','matale','colombo','2025-03-13','15:04:00',122.66,'Tuk Tuk',9812.8,21,'Pending'),(55,'tharu','0772233444','naula','matale','2025-03-14','21:30:00',1.31,'Tuk Tuk',131,21,'Pending');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-13  2:17:51

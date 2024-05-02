-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: drone_sim
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `crop_rotation`
--

DROP TABLE IF EXISTS `crop_rotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crop_rotation` (
  `rot_id` int NOT NULL,
  `plot_id` int NOT NULL,
  `crop_id` int DEFAULT NULL,
  PRIMARY KEY (`rot_id`,`plot_id`),
  KEY `plot_id` (`plot_id`),
  KEY `crop_id` (`crop_id`),
  CONSTRAINT `crop_rotation_ibfk_1` FOREIGN KEY (`plot_id`) REFERENCES `plots` (`plot_id`),
  CONSTRAINT `crop_rotation_ibfk_2` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`crop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop_rotation`
--

LOCK TABLES `crop_rotation` WRITE;
/*!40000 ALTER TABLE `crop_rotation` DISABLE KEYS */;
INSERT INTO `crop_rotation` VALUES (1,1,1),(2,3,1),(3,2,1),(4,4,1),(6,1,1),(7,3,1),(11,4,1),(12,1,1),(1,2,2),(2,1,2),(3,4,2),(4,3,2),(5,2,2),(7,1,2),(8,3,2),(10,4,2),(11,2,2),(12,4,2),(13,4,2),(1,4,3),(2,2,3),(3,3,3),(4,2,3),(5,3,3),(6,2,3),(7,2,3),(8,1,3),(10,1,3),(11,3,3),(1,3,4),(2,4,4),(4,1,4),(5,4,4),(10,2,4),(11,1,4),(13,2,4),(3,1,5),(7,4,5),(8,4,5),(10,3,5),(12,2,18),(13,3,18),(5,1,19),(8,2,19),(12,3,19),(6,4,20),(6,3,23),(13,1,25);
/*!40000 ALTER TABLE `crop_rotation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-02 20:45:05

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
-- Table structure for table `crops`
--

DROP TABLE IF EXISTS `crops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crops` (
  `crop_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `coeff_in` float DEFAULT NULL,
  `coeff_mid` varchar(15) DEFAULT NULL,
  `coeff_end` varchar(15) DEFAULT NULL,
  `num_plants` int DEFAULT NULL,
  `water_required` float NOT NULL DEFAULT '3.5',
  PRIMARY KEY (`crop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crops`
--

LOCK TABLES `crops` WRITE;
/*!40000 ALTER TABLE `crops` DISABLE KEYS */;
INSERT INTO `crops` VALUES (1,'carrots',0.7,'1.05','0.95',717,3.5),(2,'onions',0.7,'1.05','0.95',716,4.5),(3,'potatoes',0.55,'1.15','1.1',519,3.2),(4,'cauliflower',0.7,'1.05','0.95',218,3.7),(5,'tomato ',0.7,'1.05','0.8',50,3.1),(18,'pumpkin',0.5,'1','0.8',7,3.5),(19,'plums',0.1,'0.2','0.3',2,3.5),(20,'brocolli',0.8,NULL,NULL,40,3.5),(23,'radish',0.8,NULL,NULL,8,3.5),(24,'bannana',0.8,NULL,NULL,400,3.5),(25,'strawberries',0.8,NULL,NULL,70,3.5),(27,'pear',0.8,NULL,NULL,6,3.5),(28,'cashew',0.8,NULL,NULL,6,3.5),(29,'olives',0.8,NULL,NULL,10,3.5),(30,'garlic',0.8,NULL,NULL,10,3.5);
/*!40000 ALTER TABLE `crops` ENABLE KEYS */;
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

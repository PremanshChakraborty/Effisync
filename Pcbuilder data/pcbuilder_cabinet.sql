-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: pcbuilder
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cabinet`
--

DROP TABLE IF EXISTS `cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabinet` (
  `cno` int DEFAULT NULL,
  `sl_no` int NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` int DEFAULT NULL,
  `img` varchar(250) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinet`
--

LOCK TABLES `cabinet` WRITE;
/*!40000 ALTER TABLE `cabinet` DISABLE KEYS */;
INSERT INTO `cabinet` VALUES (NULL,1,'Chiptronex x130b, RGB strip, 1xUSB3.0 port, 2xUSB2.0 port, 120mm fans1',2000,'C:\\pc builder\\chiptronex x310b.jpeg'),(NULL,2,'Ant Esports ICE-130AG, RGB strip, 1 x USB 3.0, 1 x USB 2.0, 160mm fan',3000,'C:\\pc builder\\ant esports ICE-130ag.jpeg'),(NULL,3,'Corsair carbide 100r, 2x USB 3.0, 120mm fans',2800,'C:\\pc builder\\corsair carbide series spec delta.jpeg'),(NULL,4,'Cooler masterbox 3, 2x USB 3.0 140mm fans',5300,'C:\\pc builder\\cooler master masterbox.jpeg'),(NULL,5,'Thermaltake H200, RGB strip, USB 3.0 x 2, 120mm fans',5900,'C:\\pc builder\\thermal h200.jpeg'),(NULL,6,'NZXT H510 compact, USB 3.2 Gen 1&2, 120mm fans',6800,'C:\\pc builder\\nzxt 510 compact.jpeg'),(NULL,7,'Lian li lancool II, RGb strip, 2 X USB 3.0, 1 X USB 3.1, 120mm fan',8700,'C:\\pc builder\\lian li lancool II.jpeg');
/*!40000 ALTER TABLE `cabinet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 12:11:43

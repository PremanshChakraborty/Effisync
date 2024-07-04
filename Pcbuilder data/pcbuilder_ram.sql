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
-- Table structure for table `ram`
--

DROP TABLE IF EXISTS `ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ram` (
  `CNO` int DEFAULT NULL,
  `sno` int NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ram`
--

LOCK TABLES `ram` WRITE;
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
INSERT INTO `ram` VALUES (5,1,'Kingston Hyperx Fury RGB 8GB DDR4 3600Mhz RAM Memory',4000,'C:\\\\Users\\\\pc builder\\\\ram img\\\\kingston-hyperx-fury-rgb-8gb-ddr4-3600mhz-ram-memory.jpg'),(4,2,'VENGEANCE RGB RS 16GB (1 x 16GB) DDR4 DRAM 3200MHz C16 Memory Kit',6500,'C:\\\\Users\\\\pc builder\\\\ram img\\\\download.jpeg'),(4,3,'Corsair Vengeance Lpx 8GB (8GBx1) DDR4 3200MHz',3200,'C:\\\\Users\\\\pc builder\\\\ram img\\\\51qXHU7XItL._SL1200_.jpg'),(4,4,'xpg-gammix-d30-ram-8gb-ddr4-3200mhz-desktop-memory',2900,'C:\\\\Users\\\\pc builder\\\\ram img\\\\xpg-gammix-d30-ram-8gb-ddr4-3200mhz-desktop-memory-500x500.jpg'),(3,5,'Crucial Ballistix 3000 MHz DDR4 DRAM Desktop Gaming Memory 8GB ',2600,'C:\\\\Users\\\\pc builder\\\\ram img\\\\Crucial-Ballistix-8GB-DDR4-3600-Desktop-Gaming-Memory-Black-BL8G36c16U4B.jpg'),(2,6,'8GB Desktop Ram 2666 Mhz Crucial DDR$',2400,'C:\\\\Users\\\\pc builder\\\\ram img\\\\51M5BmitiGS._AC_SS450_.jpg');
/*!40000 ALTER TABLE `ram` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 12:11:42

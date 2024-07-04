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
-- Table structure for table `cooler`
--

DROP TABLE IF EXISTS `cooler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cooler` (
  `CNO` int DEFAULT NULL,
  `SNO` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cooler`
--

LOCK TABLES `cooler` WRITE;
/*!40000 ALTER TABLE `cooler` DISABLE KEYS */;
INSERT INTO `cooler` VALUES (8,1,'COOLER MASTER MASTERLIQUID ML360L ARGB V2',8700,'C:\\\\Users\\\\pc builder\\\\cooler img\\\\masterliquid-ml360l-v2-argb-1200x630.jpg'),(8,2,'Pccooler GI-D66A CPU Cooler Moonlight Series | Dual Silent CPU PWM Fan 120mm',5200,'C:\\\\Users\\\\pc builder\\\\cooler img\\\\g1d66a.jpeg'),(7,3,'DEEPCOOL GAMMAXX L240T Blue 240mm LED All-in-one Liquid CPU Cooler with Dual Chamber Pump',5000,'C:\\\\Users\\\\pc builder\\\\cooler img\\\\01-1-2.jpg'),(7,4,'Deepcool Gammaxx GT A-RGB 120mm CPU Air Cooler',2800,'C:\\\\Users\\\\pc builder\\\\cooler img\\\\61SdVeqkyDS._SL1500_.jpg'),(6,5,'COOLER MASTER HYPER H410R RGB',2000,'C:\\\\Users\\\\pc builder\\\\cooler img\\\\hyper-h410r-rgb-1200x630.jpg'),(5,6,'Antec A30 CPU Cooler with Straight Touch Copper Heat Pipes Compatible with Intel and AMD',900,'C:\\\\Users\\\\pc builder\\\\cooler img\\\\81HG9xrEWUL._SY355_.jpg');
/*!40000 ALTER TABLE `cooler` ENABLE KEYS */;
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

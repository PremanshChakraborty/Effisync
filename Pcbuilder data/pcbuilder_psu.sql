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
-- Table structure for table `psu`
--

DROP TABLE IF EXISTS `psu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psu` (
  `CNO` int DEFAULT NULL,
  `SNO` int NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psu`
--

LOCK TABLES `psu` WRITE;
/*!40000 ALTER TABLE `psu` DISABLE KEYS */;
INSERT INTO `psu` VALUES (8,1,'EVGA SUPERNOVA 1000 GT SMPS - 1000 WATT 80 PLUS GOLD CERTIFICATION FULLY MODULAR PSU WITH ACTIVE PFC',14000,'C:\\\\Users\\\\pc builder\\\\psu img\\\\EVGA-SUPERNOVA-1000.jpg'),(8,2,'ANTEC NE850 SMPS - 850 WATT 80 PLUS GOLD CERTIFICATION FULLY MODULAR PSU WITH ACTIVE PFC',8500,'C:\\\\Users\\\\pc builder\\\\psu img\\\\ANTEC-NEOECO-850W.jpg'),(7,3,'CORSAIR CX750F RGB White 750 Watt 80 Plus Bronze Certified Fully Modular RGB White 750 Watts PSU  (White)',6700,'C:\\\\Users\\\\pc builder\\\\psu img\\\\750w.jpg'),(6,4,'CORSAIR VS SERIES VS600 600 WATT 80 PLUS CERTIFIED NON-MODULAR ATX PSU',3600,'C:\\\\Users\\\\pc builder\\\\psu img\\\\CORSAIR 600W.jpg'),(5,5,'DEEPCOOL PF450 SMPS - 450 WATT 80 PLUS STANDARD PSU WITH ACTIVE PFC',2400,'C:\\\\Users\\\\pc builder\\\\psu img\\\\pf450.jpg');
/*!40000 ALTER TABLE `psu` ENABLE KEYS */;
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

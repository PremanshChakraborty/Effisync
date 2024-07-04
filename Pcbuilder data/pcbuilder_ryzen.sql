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
-- Table structure for table `ryzen`
--

DROP TABLE IF EXISTS `ryzen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ryzen` (
  `c_no` int DEFAULT NULL,
  `sl_no` int NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL,
  `cbrand` varchar(105) DEFAULT NULL,
  `int_graph` varchar(45) DEFAULT NULL,
  `cooling` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ryzen`
--

LOCK TABLES `ryzen` WRITE;
/*!40000 ALTER TABLE `ryzen` DISABLE KEYS */;
INSERT INTO `ryzen` VALUES (2,1,'Ryzen 3 2200g, 4cores, 4 threads, 3.5ghz base clock, 3.7ghz max boost',7500,'C:\\pc builder\\ryzen 3 2200g(1).jpeg','Ryzen','y','y'),(3,2,'Ryzen 3 3200g, 4 cores, 4 threads, 3.6 base clock, 4ghz max boost',9500,'C:\\pc builder\\ryzen 3 3200g.jpeg','Ryzen','y','y'),(4,3,'Ryzen 3 3300x, 4 cores, 8 threads, 3.8ghz base clock, 4.3ghz max boost',10500,'C:\\pc builder\\ryzen 3 3300x.jpeg','Ryzen','n','y'),(3,4,'Ryzen 5 3400g, 4 cores, 8 threads, 3.7ghz base clock, 4.2ghz max boost',15000,'C:\\pc builder\\ryzen 5 3400g.jpeg','Ryzen','y','y'),(4,5,'Ryzen 5 3500, 4 cores, 8 threads, 2.1ghz base clock, 3.7ghz max boost',12500,'C:\\pc builder\\ryzen 5 3500.jpeg','Ryzen','n','y'),(5,6,'Ryzen 5 3600, 6 cores 12 threads, 3.6ghz base clock, 4.2ghz max boost',16500,'C:\\pc builder\\ryzen 5 3600.jpeg','Ryzen','n','y'),(5,7,'Ryzen 5 5500, 6 cores, 12 threads, 2.1ghz base clock, 4ghz max boost',15500,'C:\\pc builder\\ryzen 5 5500.jpeg','Ryzen','n','y'),(6,8,'Ryzen 5 5600g, 6 cores, 12 threads, 3.9ghz base clock, max boost of 4.4ghz',21500,'C:\\pc builder\\ryzen 5 5600g.jpeg','Ryzen','y','y'),(7,9,'Ryzen 7 5700x, 8 cores, 16 threads, 3.4ghz base clock, 4.6ghz of max boost',28000,'C:\\pc builder\\ryzen 7 5700x.jpeg','Ryzen','n','n'),(6,10,'Ryzen 7 3700x, 8 cores, 16 threads, 3.6ghz of base clock, 4.4ghz of max boost',24500,'C:\\pc builder\\ryzen 7 3700x.jpeg','Ryzen','n','y'),(7,11,'Ryzen 9 5900x, 12 core, 24 threads, 3.7ghz of base clock, 4.8ghz of max boost',41500,'C:\\pc builder\\ryzen 9 5900x.jpeg','Ryzen','n','n'),(7,12,'Ryzen 7 3800x, 8 cores, 16 threads, 3.9ghz of base clock, 4.5ghz of max boost',33000,'C:\\pc builder\\ryzen 7 3800x.jpeg','Ryzen','n','n');
/*!40000 ALTER TABLE `ryzen` ENABLE KEYS */;
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

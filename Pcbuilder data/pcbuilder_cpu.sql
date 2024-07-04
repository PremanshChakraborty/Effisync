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
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu` (
  `cno` int DEFAULT NULL,
  `sl_no` int NOT NULL DEFAULT '0',
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
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES (2,1,'Ryzen 3 2200g, 4cores, 4 threads, 3.5ghz base clock, 3.7ghz max boost',7500,'C:\\users\\pc builder\\cpu img\\ryzen 3 2200g(1).jpeg','amd','yes','yes'),(4,2,'Intel i3 12100f, 4 cores, 8 threads, base freq of 3.3ghz, max freq of 4.3ghz',9000,'C:\\users\\pc builder\\cpu img\\intel 12100f.jpeg','Intel','no','yes'),(3,3,'Ryzen 3 3200g, 4 cores, 4 threads, 3.6 base clock, 4ghz max boost',9500,'C:\\users\\pc builder\\cpu img\\ryzen 3 3200g.jpeg','amd','yes','yes'),(4,4,'Ryzen 3 3300x, 4 cores, 8 threads, 3.8ghz base clock, 4.3ghz max boost',10500,'C:\\users\\pc builder\\cpu img\\ryzen 3 3300x.jpeg','amd','no','yes'),(3,5,'Intel i3 12100, 4 cores, 8 threads, 3.3ghz of base freq , max freq of 4.3ghz',12000,'C:\\users\\pc builder\\cpu img\\intel 12100.jpeg','Intel','yes','yes'),(4,6,'Ryzen 5 3500, 4 cores, 8 threads, 2.1ghz base clock, 3.7ghz max boost',12500,'C:\\users\\pc builder\\cpu img\\ryzen 5 3500.jpeg','amd','no','yes'),(5,7,'Intel i5 11400, 6 cores, 12 threads, 2.6ghz of base freq, max fre of 4.4ghz',13000,'C:\\users\\pc builder\\cpu img\\intel 11400.jpeg','Intel','yes','yes'),(3,8,'Ryzen 5 3400g, 4 cores, 8 threads, 3.7ghz base clock, 4.2ghz max boost',15000,'C:\\users\\pc builder\\cpu img\\ryzen 5 3400g.jpeg','amd','yes','yes'),(5,9,'Ryzen 5 5500, 6 cores, 12 threads, 2.1ghz base clock, 4ghz max boost',15500,'C:\\users\\pc builder\\cpu img\\ryzen 5 5500.jpeg','amd','no','yes'),(5,10,'Ryzen 5 3600, 6 cores 12 threads, 3.6ghz base clock, 4.2ghz max boost',16500,'C:\\users\\pc builder\\cpu img\\ryzen 5 3600.jpeg','amd','no','yes'),(5,11,'Intel i5 12400, 6 cores, 12 threads, base freq of 2.5ghz, max freq of 4.4ghz ',18000,'C:\\users\\pc builder\\cpu img\\intel core i5 12400.jpeg','Intel','yes','yes'),(6,12,'Intel i5 12500, 6 cores, 12 threads, base freq of 3ghz, max feq of 4.6ghz',20500,'C:\\users\\pc builder\\cpu img\\intel 12500.jpeg','Intel','yes','yes'),(6,13,'Ryzen 5 5600g, 6 cores, 12 threads, 3.9ghz base clock, max boost of 4.4ghz',21500,'C:\\users\\pc builder\\cpu img\\ryzen 5 5600g.jpeg','amd','yes','yes'),(7,14,'Intel  i5 12600kf, 10 cores 16 threads, base freq of 3.7ghz, max freq of 4.9ghz',24000,'C:\\users\\pc builder\\cpu img\\intel 12600kf.jpeg','Intel','no','no'),(6,15,'Ryzen 7 3700x, 8 cores, 16 threads, 3.6ghz of base clock, 4.4ghz of max boost',24500,'C:\\users\\pc builder\\cpu img\\ryzen 7 3700x.jpeg','amd','no','yes'),(7,16,'Ryzen 7 5700x, 8 cores, 16 threads, 3.4ghz base clock, 4.6ghz of max boost',28000,'C:\\users\\pc builder\\cpu img\\ryzen 7 5700x.jpeg','amd','no','no'),(7,17,'Ryzen 7 3800x, 8 cores, 16 threads, 3.9ghz of base clock, 4.5ghz of max boost',33000,'C:\\users\\pc builder\\cpu img\\ryzen 7 3800x.jpeg','amd','no','no'),(7,18,'Intel i7 12700kf, 12 cores, 20 threads, base freq of 3.6ghz, max freq of 5ghz',33500,'C:\\users\\pc builder\\cpu img\\intel core i9 12700kf.jpeg','Intel','no','no'),(7,19,'Ryzen 9 5900x, 12 core, 24 threads, 3.7ghz of base clock, 4.8ghz of max boost',41500,'C:\\users\\pc builder\\cpu img\\ryzen 9 5900x.jpeg','amd','no','no'),(8,20,'Intel i9 12900kf, 16 cores, 24 threads, base freq of 3.2ghz, max freq of of 5.20ghz ',49500,'C:\\users\\pc builder\\cpu img\\intel core i9 12900kf.jpeg','Intel','no','no');
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
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

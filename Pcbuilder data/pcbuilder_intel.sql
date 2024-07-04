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
-- Table structure for table `intel`
--

DROP TABLE IF EXISTS `intel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intel` (
  `c_no` int NOT NULL,
  `sl_no` int NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` int NOT NULL,
  `img` varchar(250) NOT NULL,
  `cbrand` varchar(105) NOT NULL,
  `int_graph` varchar(45) NOT NULL,
  `cooling` varchar(45) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intel`
--

LOCK TABLES `intel` WRITE;
/*!40000 ALTER TABLE `intel` DISABLE KEYS */;
INSERT INTO `intel` VALUES (8,13,'Intel i9 12900kf, 16 cores, 24 threads, base freq of 3.2ghz, max freq of of 5.20ghz ',49500,'C:\\pc builder\\intel core i9 12900kf.jpeg','Intel','n','n'),(7,14,'Intel i7 12700kf, 12 cores, 20 threads, base freq of 3.6ghz, max freq of 5ghz',33500,'C:\\pc builder\\intel core i9 12700kf.jpeg','Intel','n','n'),(5,15,'Intel i5 12400, 6 cores, 12 threads, base freq of 2.5ghz, max freq of 4.4ghz ',18000,'C:\\pc builder\\intel core i5 12400.jpeg','Intel','y','y'),(6,16,'Intel i5 12500, 6 cores, 12 threads, base freq of 3ghz, max feq of 4.6ghz',20500,'C:\\pc builder\\intel 12500.jpeg','Intel','y','y'),(3,17,'Intel i3 12100, 4 cores, 8 threads, 3.3ghz of base freq , max freq of 4.3ghz',12000,'C:\\pc builder\\intel 12100.jpeg','Intel','y','y'),(4,18,'Intel i3 12100f, 4 cores, 8 threads, base freq of 3.3ghz, max freq of 4.3ghz',9000,'C:\\pc builder\\intel 12100f.jpeg','Intel','n','y'),(5,19,'Intel i5 11400, 6 cores, 12 threads, 2.6ghz of base freq, max fre of 4.4ghz',13000,'C:\\pc builder\\intel 11400.jpeg','Intel','y','y'),(7,20,'Intel  i5 12600kf, 10 cores 16 threads, base freq of 3.7ghz, max freq of 4.9ghz',24000,'C:\\pc builder\\intel 12600kf.jpeg','Intel','n','n');
/*!40000 ALTER TABLE `intel` ENABLE KEYS */;
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

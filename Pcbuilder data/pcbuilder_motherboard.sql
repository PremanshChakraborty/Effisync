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
-- Table structure for table `motherboard`
--

DROP TABLE IF EXISTS `motherboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motherboard` (
  `CNO` int DEFAULT NULL,
  `SNO` int NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motherboard`
--

LOCK TABLES `motherboard` WRITE;
/*!40000 ALTER TABLE `motherboard` DISABLE KEYS */;
INSERT INTO `motherboard` VALUES (8,1,'Gigabyte Z690M Aorus Elite DDR4 Motherboard LGA 1700',21000,'C:\\\\Users\\\\pc builder\\\\mobo img\\\\z690.jpeg','intel'),(7,2,'ASUS Prime X570-PRO CSM AMD AM4 ATX Motherboard with PCIe 4.0 Dual M.2 and Aura Sync',23000,'C:\\\\Users\\\\pc builder\\\\mobo img\\\\x570 pro.png','amd'),(7,3,'ASUS PRIME H670-PLUS D4 MOTHERBOARD (INTEL SOCKET 1700/12TH GENERATION CORE SERIES CPU/MAX 128 GB DDR4 5066MHZ MEMORY)',15500,'C:\\\\Users\\\\pc builder\\\\mobo img\\\\h670.jpeg','intel'),(7,4,'MSI MPG X570 Gaming PLUS ATX AMD X570 Motherboard AM4 DDR4',17500,'C:\\\\Users\\\\pc builder\\\\mobo img\\\\x570 msi.png','amd'),(7,5,'ASUS EX-B660M-V5 D4 MOTHERBOARD (INTEL SOCKET 1700/12TH GENERATION CORE SERIES CPU/MAX 64 GB DDR4 5333MHZ MEMORY)',11500,'C:\\\\Users\\\\pc builder\\\\mobo img\\\\ex-b660m-v5-d4-image-main-600x600.jpg','intel'),(7,6,'MSI B550-A PRO AMD B550 Motherboard 4x DDR4 memory slots, support up to 128GB',13000,'C:\\\\Users\\\\pc builder\\\\mobo img\\\\msi b550 a.jpg','amd'),(6,7,'GIGABYTE H610M H DDR4 MOTHERBOARD (INTEL SOCKET 1700/12TH GENERATION CORE SERIES CPU/MAX 64GB DDR4 3200MHZ MEMORY)',7500,'C:\\\\Users\\\\pc builder\\\\mobo img\\\\h610.jpg','intel'),(6,8,'GIGABYTE B450 AORUS PRO WIFI MOTHERBOARD (AMD SOCKET AM4/RYZEN 2ND GEN SERIES CPU/MAX 64GB DDR4-3200MHZ MEMORY)',11500,'C:\\\\Users\\\\pc builder\\\\mobo img\\\\b450-aorus-pro-wifi-5-600x600.jpg','amd'),(6,9,'ASRock B550M PRO4 Supports 3rd Gen AMD AM4 Ryzen/Future AMD Ryzen Processors Motherboard',9000,'C:\\\\Users\\\\pc builder\\\\mobo img\\\\b550.jpg','amd'),(5,10,'MSI A520M-A PRO MOTHERBOARD (AMD SOCKET AM4/RYZEN 3RD GEN SERIES CPU/MAX 64GB DDR4 4600MHZ MEMORY)',4500,'C:\\\\Users\\\\pc builder\\\\mobo img\\\\a520.jpg','amd');
/*!40000 ALTER TABLE `motherboard` ENABLE KEYS */;
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

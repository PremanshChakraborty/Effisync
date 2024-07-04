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
-- Table structure for table `gpu`
--

DROP TABLE IF EXISTS `gpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpu` (
  `CNO` int DEFAULT NULL,
  `SNO` int NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` int DEFAULT NULL,
  `IMG` varchar(255) DEFAULT NULL,
  `brand` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpu`
--

LOCK TABLES `gpu` WRITE;
/*!40000 ALTER TABLE `gpu` DISABLE KEYS */;
INSERT INTO `gpu` VALUES (7,1,'NVIDIA GeForce RTX 3090 Founders Edition Graphics Card/24 GB GDDR6X Memory/384-bit PCI Express Gen 4 ',133500,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\Nvidia_GeForce_RTX_3090_Founders_Edition.jpg','Nvidia'),(6,2,'NVIDIA GeForce RTX 3080 10GB GDDR6X PCI Express 4.0 Graphics Card - Titanium and Black',62000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rtx 3080.jpg','Nvidia'),(7,3,'AMD Radeon RX 6800 XT 16G - 16GB GDDR6 - PCI Express 4.0 - Graphics Card - Black',49000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\6800xt.jpeg','amd'),(6,4,'NVIDIA GeForce RTX 3070 8GB GDDR6 PCI Express 4.0 Graphics Card - Dark Platinum and Black',44500,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rtx 3070.jpeg','Nvidia'),(6,5,'Nvidia GeForce RTX 2080 Founders Edition 8 gb GDDR6',45500,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\geforce-rtx-2080-gallery-c.jpg','Nvidia'),(6,6,'AMD Radeon RX 6700 XT Gaming Graphics Card with 12GB GDDR6, AMD RDNA 2 RX-67TMYDFD8',36000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\RX-6700-XT_678x452.jpg','amd'),(6,7,'NVIDIA GeForce RTX 3060 Ti Founders Edition 8GB GDDR6 PCI Express 4.0 Graphics Card',35000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rtx 3060ti.jpg','Nvidia'),(5,8,'MSI GEFORCE RTX 3060 GAMING X LHR 12GB GDDR6 192-BIT GAMING GRAPHICS CARD',29000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rtx 3060.jpg','Nvidia'),(5,9,'MSI GeForce RTX 2060 12GB DirectX 12 12G 192-Bit GDDR6 PCI Express 3.0 x16 HDCP Ready Gaming Graphics Card',26000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rtx 2060.jpg','Nvidia'),(5,10,'MSI Radeon RX 5600 XT Mech OC 6GB Graphics Card',26000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rx 5600 xt.jpeg','amd'),(5,11,'Zotac Gaming GeForce RTX 3050 Twin Edge OC 8GB GDDR6 128-Bit Graphics Card',24000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rtx 3050.jpg','Nvidia'),(4,12,'ASUS Dual Radeon RX 6600 8GB GDDR6 Graphic Card DUAL-RX6600-8G',25000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rx 6600.png','amd'),(5,13,'Sapphire Radeon PULSE RX 590 8GB GDDR5 PCI-E Dual HDMI / DVI-D / Dual DP w/ Backplate',22000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rx 590.jpg','amd'),(4,14,'MSI Gaming GeForce GTX 1660 SUPER 6GB GDDR6 PCI Express 3.0 x16 Video Card GTX 1660 SUPER GAMING X',19000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\gtx 1660 s.jpg','Nvidia'),(4,15,'XFX Radeon RX 580 GTS Black Edition 1425MHz OC+, 8GB GDDR5, VR Ready, Dual BIOS, 3xDP HDMI DVI, AMD Graphics Card ',18000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rx 580.jpeg','amd'),(4,16,'ASUS Dual Radeon™ RX 6500 XT OC Edition 4GB GDDR6 ',17000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rx 6500 xt.jpg','amd'),(4,17,'Gigabyte GeForce GTX 1660 6GB GDDR5 Graphic Card',16000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\gtx 1660.jpg','Nvidia'),(3,18,'Gigabyte GTX 1650 Super Windforce OC 4GB Core Clock - 1755 MHz',14000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\gtx 1650 s.jpg','Nvidia'),(3,19,'Inno3d GeForce GTX 1060 6GB X2 Graphics Card',13500,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\gtx 1060.png','Nvidia'),(3,20,'ASUS GeForce GTX 1650 Overclocked 4GB Dual-Fan Edition VR Ready HDMI DP 1.4 DVI Graphics Card',12500,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\gtx 1650.jpg','Nvidia'),(3,21,'Gigabyte Radeon RX 570 Gaming 4GB Graphic Cards Core Clock (MHz): 1255',13000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rx 570.jpg','amd'),(2,22,'Asus GeForce GTX 1050 Ti 4GB Phoenix Fan Edition DVI-D HDMI DP 1.4 Gaming Graphics Card ',12000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\gtx 1050 ti.png','Nvidia'),(2,23,'GIGABYTE GEFORCE GTX 1050 4GB GDDR5  Base: 1290MHz in Gaming Mode',10500,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\gtx 1050.jpg','Nvidia'),(1,24,'Radeon RX 560 AERO ITX 4G OC Boost Clock up to 1196 MHz',9500,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\rx 560.png','amd'),(1,25,'GALAX GeForce GT 1030 EXOC White 2GB GDDR5 64-bit HDMI 2.0b/DVI-D Graphic Card',6000,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\1030.png','Nvidia'),(1,26,'asus-geforce-gt-730-2gb-ddr5-graphic-card',4500,'C:\\\\Users\\\\pc builder\\\\gpu img\\\\asus-geforce-gt-730-2gb-ddr5-graphic-card.jpg','Nvidia');
/*!40000 ALTER TABLE `gpu` ENABLE KEYS */;
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

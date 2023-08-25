-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: deepak
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `Description` text,
  `SKU` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `inventory_id` int DEFAULT NULL,
  `saler_id` int DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `discount_id` int DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `modified_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `imagename` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`category_id`),
  KEY `id_idx1` (`inventory_id`),
  KEY `id_idx2` (`discount_id`),
  KEY `sid_idx` (`saler_id`),
  CONSTRAINT `discount_id` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`),
  CONSTRAINT `id` FOREIGN KEY (`category_id`) REFERENCES `product_catagary` (`id`),
  CONSTRAINT `inventory_id` FOREIGN KEY (`inventory_id`) REFERENCES `product_inventory` (`id`),
  CONSTRAINT `sid` FOREIGN KEY (`saler_id`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'vivo','Mid-range processor\nTriple-lens rear camera\nHigh-resolution front-facing camera\nDecent-sized battery with fast charging\nCustom Android skin (Funtouch OS)\nConnectivity: 4G LTE, Wi-Fi, Bluetooth, GPS','1',1,NULL,101,10000,2,NULL,NULL,NULL,4,'vivoy73.jpg'),(2,'fan','Electronics','1',1,NULL,NULL,20000,1,NULL,NULL,NULL,4,'fan.jpeg'),(3,'doll','toy','1',1,NULL,NULL,34344,1,NULL,NULL,NULL,4,'doll.jpeg'),(4,'pant','fassion','1',1,NULL,NULL,34554,2,NULL,NULL,NULL,4,'pant.jpeg'),(5,'laptop','Electronics','1',1,NULL,NULL,4335,5,NULL,NULL,NULL,4,'laptop.jpeg'),(76,'Lloyd 1.7 Inverter Split AC','Lloyd Split AC with Inverter Compressor: AC with variable speed compressor which automatically adjusts power depending on room temperature & heat load','1',4,NULL,102,50000,4,NULL,NULL,NULL,1,'TP.jpeg'),(77,'boAt Airdopes 141 Bluetooth Truly Wireless in Ear Headphones with 42H Playtime(Bold Black)','Playback- Enjoy an extended break on weekends with your favourite episodes on stream TP-Link RE650 AC2600 Universal Dual Band Range Extender.','1',2,NULL,102,50000,1,NULL,NULL,NULL,5,'EIR.jpeg'),(78,'Lenovo 15.6\" Casual Backpack B210','COMPATIBLE WITH 15.6 INCH LAPTOPâ€�: The Lenovo B210 Backpack fits up to 15.6 inch laptop. Dimensions: 34cm x 15cm x 45.5cm; Weight: 453g.','1',1,NULL,102,2000,2,NULL,NULL,NULL,6,'BEG.jpeg'),(79,'Sony DualSense Wireless Controller for PlayStation 5 (White)','Chat online through the built-in microphone3. connect a headset directly via the 3.5mm jack. Switch voice capture on & off using the dedicated mute button. record & broadcast your epic gaming moments','1',2,NULL,102,30000,1,NULL,NULL,NULL,7,'sony.jpeg'),(80,'Logitech B170 Wireless Mouse.2.4 GHz with USB Nano Receiver. PC/Mac/Laptop - Black','Reliable Wireless Connection : Enjoy a wireless connection up to 10m away thanks to a plug-and-forget USB mini-receiver.Optical Tracking : The advanced optical tracking features enable ultra precise moves on almost any surface. Required: available USB port. Windows 7. 8. 10 or later. macOS 10.5 or later. Chrome OS. Linux Kernel 2.6+ .','1',1,NULL,102,500,2,NULL,NULL,NULL,4,'mouse.jpeg'),(81,'LuvLap Post Natal Maternity Corset Belt. Postpartum Tummy Shaper. XL Beige','Lightweight and breathable;Thin material. can be worn discreetly under clothing;Additional tension belt to adjust for support as required;Made with superior chinlon fabric prevents llint formation or bobbling;Easy to stretch','1',2,NULL,102,2000,1,NULL,NULL,NULL,4,'body.jpeg'),(82,'Best of Childrenâ€™s Classics (Set of 5 Books): Perfect Gift Set for Kids Paperback','An enchanting collection of the five best works in children\'s literature.this beautifully designed box set is not only a must-have for your library but is also perfect for gifting. Crash land in the Sahara desert with a young boy fly with Peter Pan to Neverland explore the secret garden with Mary meet the Wizard of Oz in the magical city of Emeralds and befriend Sara. the little imaginative princess delightful and enthralling. these tales of adventure continue to remain an all-time favourite','1',1,NULL,102,500,2,NULL,NULL,NULL,3,'book.jpeg'),(83,'bedsheet','Red Reactive Cotton Bedsheets 300 TC, 1 Bedsheet With 2 Pillow Cover, Size: King Size',NULL,1,NULL,102,400,1,NULL,NULL,NULL,5,'bedsheet.jpeg'),(86,'mobile','rom:4gb,internal space:16gb',NULL,1,NULL,102,20000,2,NULL,NULL,NULL,10,'1+image.png'),(87,'bag','skybags',NULL,1,NULL,102,2000,2,NULL,NULL,NULL,12,'bags.webp');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-25 10:39:39

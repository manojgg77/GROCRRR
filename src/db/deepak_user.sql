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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(245) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(245) DEFAULT NULL,
  `email` varchar(245) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `password` text,
  `status` varchar(2) NOT NULL DEFAULT '0',
  `failed` int DEFAULT NULL,
  `usertype` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (101,'manoj kumar','manoj','kumar','manoj@123','967178888','2022-02-02','jsbhdhbdsu1231','1',NULL,'c'),(102,'manoj kumar','manoj','kumar','manoj@123','967178888',NULL,'jsbhdhbdsu1231','0',NULL,'c'),(103,'manj mjsj','manj','mjsj','majn@dsj.com','6582562',NULL,'ndsjbdie','1',NULL,'c'),(104,'manj mjsj','manj','mjsj','majn@dsj.com','6582562',NULL,'ndsjbdie','1',NULL,NULL),(105,'sd adw','sd','adw','wdw@ef','215',NULL,'slmmnfd','1',NULL,NULL),(106,'wds wsde','wds','wsde','wdfef@egf','618',NULL,'jbfcuyews','1',NULL,NULL),(107,'njcej kjddbhduy','njcej','kjddbhduy','kjdbsuy@jhsgugw','149841',NULL,'hsdv7duyiq','1',NULL,NULL),(108,'qaaaa dfsds','qaaaa','dfsds','SD@sd','1223344',NULL,'asssa','0',NULL,NULL),(109,'asass sdd','asass','sdd','sd@xx','123232213',NULL,'assa','0',NULL,NULL),(110,'aaa sss','aaa','sss','aa@aa','1222323',NULL,'aaasss','0',NULL,NULL),(111,'deep yadav','deep','yadav','d@c','123456',NULL,'a','0',0,'c'),(112,'aa aaa','aa','aaa','a@a','1111',NULL,'as','0',NULL,NULL),(113,'deep',NULL,NULL,'d@d','22222222',NULL,'1','1',0,'s'),(114,'a a','a','a','a@a','1','2023-07-25','12','0',0,'c'),(115,'deep yadav','deep','yadav','a@a','222222','2023-07-27','1','0',NULL,'c'),(116,'manoj kumar','manoj','kumar','manoj@gmail.com','7985768432','2023-08-07','1','1',0,'c');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-25 10:39:41

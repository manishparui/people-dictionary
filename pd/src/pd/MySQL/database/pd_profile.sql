-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: pd
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT 'NA',
  `otherName` varchar(45) DEFAULT 'NA',
  `dob` varchar(45) DEFAULT 'NA',
  `gender` varchar(45) DEFAULT 'NA',
  `nationality` varchar(45) DEFAULT 'NA',
  `fatherName` varchar(100) DEFAULT 'NA',
  `motherName` varchar(100) DEFAULT 'NA',
  `husWif` varchar(45) DEFAULT 'NA',
  `profession` varchar(100) DEFAULT 'NA',
  `presentWork` varchar(100) DEFAULT 'NA',
  `pastWork` varchar(100) DEFAULT 'NA',
  `education` varchar(100) DEFAULT 'NA',
  `address` varchar(300) DEFAULT 'NA',
  `phno` varchar(45) DEFAULT 'NA',
  `email` varchar(45) DEFAULT 'NA',
  `facebook` varchar(100) DEFAULT 'https://www.facebook.com',
  `instagram` varchar(100) DEFAULT 'https://www.instagram.com',
  `twiter` varchar(100) DEFAULT 'https://twitter.com',
  `github` varchar(100) DEFAULT 'https://github.com',
  `other` varchar(500) DEFAULT 'NA',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'Manish Parui','NA','1996-01-26','Male','Indian','Late Dilip Kumar Parui','Dr. Juthika Parui','NA','Software developer','NA','Bitcoin trader','BCA','BL 59, Sector 2, Salt Lake','9804307030','manishparui8@gmail.com','https://www.facebook.com/manish.parui.5','https://www.instagram.com/manish_parui/','https://twitter.com/ParuiManish','https://github.com/manishparui','NA'),(2,'Adrita Majumder','Mili','1995-03-04','Female','indian','NA','NA','NA','NA','NA','NA','BCA','NA','8335959777','adritamajumder5@gmail.com','NA','NA','NA','NA','NA'),(3,'Nilesh Koley','Nilu','NA','Male','indian','NA','NA','NA','NA','NA','NA',NULL,'NA','NA','NA','NA','NA','NA','NA','NA'),(4,'Sohini Rakshit','so','1995-05-22','Female','Indian','NA','NA','NA','NA','NA','NA','NA','NA',' 91 8918112998','NA','https://www.facebook.com/sohini.rakshit.9','https://www.instagram.com/sohini_rt/','NA','NA','NA'),(5,'Debasish Sadhukhan','deba','','Male','Indian','','','NA','','','','Diploma in Mechanical Engineering','','','','','','','',''),(6,'Atanu Kodal',NULL,NULL,NULL,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Rahul Parui',NULL,NULL,NULL,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Shreyoshi Pakira','pakhi',NULL,NULL,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Suranjan Pal','Runup','1997-10-19','Male','Indian','Late Dinanath Pal','Kalpana Pal','NA','NA','NA','NA','Diploma in Civil Engineering (CET)','Rantanpur 2, Singur, Hooghly','8981094828, 7003368006','runup.suranjan@gmail.com','https://www.facebook.com/suranjan.pal.16','https://www.instagram.com/srjsuranjan/','https://twitter.com/PalRunup','NA','NA'),(37,'Ayantika Das','NA','1997-12-24','Female','Indian','NA','NA','NA','Nurse','NA','NA','BSc. Nursing, RN Tagore, E. M. Bypass ','NA',' 91 6290299865','NA','https://www.facebook.com/ayantika.das.3557','NA','NA','NA','NA'),(38,'Aviraj Bhattacharya','avi','1997-10-24','Male','Indian','NA','Subarna Bhattacharya','NA','NA','NA','NA','BCA from Techno India Salt Lake','34 MALAKAR PARA ROAD Kolkata, India 700038','NA','NA','https://www.facebook.com/aviraj.bhattacharya.5','NA','NA','NA','Love aviation badly.'),(39,'yyyy','y','NA','','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','yother'),(41,'Asmita Dutta','mom','1998-12-19','Female','Indian','NA','NA','NA','NA','NA','NA','BCA from Techno India Salt Lake','NA',' 91 9051395540,  91 9875340781','NA','https://www.facebook.com/asmita.dutta.1690','https://www.instagram.com/asmitaa_dutta','NA','NA','NA');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-25 22:49:12

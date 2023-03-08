-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 192.168.0.126    Database: mydb2
-- ------------------------------------------------------
-- Server version	5.5.62

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `num` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `pos` int(4) DEFAULT NULL,
  `depth` int(4) DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `pw` varchar(20) NOT NULL,
  `count` int(4) DEFAULT '0',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'slsl','slsl','slsl',16,0,'2022-12-27','0:0:0:0:0:0:0:1','123',0),(2,'ccc','ccc','ccc',15,0,'2022-12-27','0:0:0:0:0:0:0:1','123',1),(3,'aaa','aaa','aaa',13,0,'2022-12-27','0:0:0:0:0:0:0:1','123',5),(4,'dont','123','1232',12,0,'2022-12-27','0:0:0:0:0:0:0:1','123',5),(7,'진동현','답글:aaa','ㅎㅇ',14,1,'2022-12-27','0:0:0:0:0:0:0:1','123',3),(8,'1231','1231','1231',9,0,'2022-12-27','0:0:0:0:0:0:0:1','123',0),(9,'12323','2123','123',8,0,'2022-12-27','0:0:0:0:0:0:0:1','123',0),(10,'123123','12312','123123',7,0,'2022-12-27','0:0:0:0:0:0:0:1','123123',1),(11,'1223','1232','12312',6,0,'2022-12-27','0:0:0:0:0:0:0:1','123',1),(12,'123123','22','231231211',5,0,'2022-12-28','0:0:0:0:0:0:0:1','123',0),(13,'123123','12312','312312',4,0,'2022-12-28','0:0:0:0:0:0:0:1','123123',0),(14,'123123','123123','123123',3,0,'2022-12-28','0:0:0:0:0:0:0:1','123',1),(15,'123','123','123',2,0,'2022-12-28','0:0:0:0:0:0:0:1','123',0),(16,'123','123','123',1,0,'2022-12-28','0:0:0:0:0:0:0:1','13213',0),(17,'123','123','113312',0,0,'2022-12-28','0:0:0:0:0:0:0:1','23123',0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08 14:31:34

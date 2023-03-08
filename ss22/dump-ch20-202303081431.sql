-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 192.168.0.126    Database: ch20
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
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `pw` varchar(20) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `readcount` int(11) DEFAULT '0',
  `ref` int(11) NOT NULL,
  `re_step` int(11) NOT NULL,
  `re_level` int(11) NOT NULL,
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'33','33','33','33','2023-02-14 12:20:31',0,1,0,0,'0:0:0:0:0:0:0:1'),(2,'333','33','33','33','2023-02-14 12:21:19',0,2,0,0,'0:0:0:0:0:0:0:1'),(3,'1231','23123','123123','123123','2023-02-14 12:24:26',0,3,0,0,'0:0:0:0:0:0:0:1'),(4,'333','333','333','33','2023-02-14 12:29:13',0,4,0,0,'0:0:0:0:0:0:0:1'),(5,'123','12312','312312','3123','2023-02-14 14:43:21',0,5,0,0,'0:0:0:0:0:0:0:1'),(6,'123','123123','123123','123123','2023-02-14 14:43:29',0,6,0,0,'0:0:0:0:0:0:0:1'),(7,'33','33','33','33','2023-02-14 14:43:45',1,7,0,0,'0:0:0:0:0:0:0:1'),(8,'44','44','44','44','2023-02-14 14:43:49',1,8,0,0,'0:0:0:0:0:0:0:1'),(9,'123','123','123','123','2023-02-14 14:43:59',1,9,0,0,'0:0:0:0:0:0:0:1'),(12,'33','33','33','33','2023-02-14 14:44:12',23,12,0,0,'0:0:0:0:0:0:0:1'),(13,'33','[답변]33','33','33','2023-02-14 15:40:05',2,12,2,1,'0:0:0:0:0:0:0:1'),(14,'33','[답변]33','33','123','2023-02-14 15:40:13',1,9,1,1,'0:0:0:0:0:0:0:1'),(16,'21323','[답변]2323','2323','123','2023-02-17 10:00:41',0,12,1,1,'0:0:0:0:0:0:0:1'),(17,'jin','jin','ji','123','2023-03-07 11:23:28',0,17,0,0,'0:0:0:0:0:0:0:1'),(18,'333','33','333','123','2023-03-07 11:24:53',0,18,0,0,'0:0:0:0:0:0:0:1'),(19,'33','33','33','33','2023-03-07 11:26:32',0,19,0,0,'0:0:0:0:0:0:0:1'),(20,'33123','33123','33123','123','2023-03-07 11:26:51',0,20,0,0,'0:0:0:0:0:0:0:1'),(21,'123','123','123','123','2023-03-07 11:27:17',0,21,0,0,'0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `addr` varchar(70) NOT NULL,
  `addr2` varchar(30) NOT NULL,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('123','123123','123','123','123','','','','2023-01-19'),('fff','123','asdfa','123@nate.com','01015141414','61447','광주 동구 2순환로 575','123','2023-02-17');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(30) NOT NULL,
  `startDate` date DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  `readcount` int(11) DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'123','123123123','123','2023-01-03','2023-01-03',50),(4,'3232','32323','32323','2023-01-03',NULL,0),(5,'333','33','33','2023-01-03',NULL,0),(6,'1312','123','123','2023-01-03',NULL,1),(7,'123','123','123','2023-01-03',NULL,1),(8,'123','123','123','2023-01-03',NULL,0),(9,'123','123','123','2023-01-03',NULL,0),(13,'수정','수정','수정','2023-01-03','2023-01-03',1);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qna` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `hit` int(11) DEFAULT '0',
  `ref` int(11) NOT NULL,
  `ordNo` int(11) NOT NULL,
  `levelNo` int(11) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'123','123','23','33','2022-12-30 16:38:06',29,0,0,0),(2,'123','1515','1515','1515','2022-12-30 16:41:48',1,2,0,0),(3,'23123','123123','123123','12312','2022-12-30 16:46:38',0,3,0,0),(4,'33','33','333','3333','2022-12-30 16:47:22',0,4,0,0),(5,'2121','21231','123123','123','2022-12-30 16:49:18',0,5,0,0),(6,'123','123','123123123123','123','2022-12-30 16:52:32',1,6,0,0),(7,'333123','123','1233','2322','2022-12-30 16:53:58',0,7,0,0),(8,'555','555','555','159','2022-12-30 17:00:21',0,8,0,0),(9,'2323','232','2323','123','2022-12-30 17:03:40',1,9,0,0),(10,'123','123','124','12414','2022-12-30 17:18:11',2,10,0,0),(11,'123','123','123','123','2023-01-02 15:51:07',0,11,0,0),(12,'123','123','123','123','2023-01-02 15:51:21',0,12,0,0),(13,'333','123','123','123','2023-01-02 16:11:17',0,13,0,0),(14,'2323','[답글]','2323','22','2023-01-16 11:24:32',0,9,1,1),(15,'123123','123','123','123213','2023-01-16 12:48:26',3,15,0,0),(17,'123123','[답글]333','21231','123','2023-01-16 14:45:24',0,10,1,1);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `rate` int(4) DEFAULT NULL,
  `imgFile` varchar(50) DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'12333','123','123',1,'iu.jpg','2023-02-20');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `addr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES ('사람','dong0727@naver.com','부천'),('홍길동','hong@daum.net','서울'),('고길동','go@nate.com','의정부');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ch20'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08 14:31:30

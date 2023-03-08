-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 192.168.0.126    Database: mydb
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
  `wdate` date DEFAULT NULL,
  `readcount` int(10) unsigned DEFAULT '0',
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'d','d','3124','asd','2022-12-20',4,'0:0:0:0:0:0:0:1'),(2,'dd','456','zzzzz','333','2022-12-20',16,'0:0:0:0:0:0:0:1'),(4,'진진','ㅇㅇ','ㅇㅇ','dd','2022-12-26',7,'0:0:0:0:0:0:0:1'),(5,'dongdong','d','dd','123','2022-12-26',2,'0:0:0:0:0:0:0:1'),(8,'33','33','33','333','2022-12-26',2,'0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board1`
--

DROP TABLE IF EXISTS `board1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board1` (
  `number` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `readcount` int(10) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board1`
--

LOCK TABLES `board1` WRITE;
/*!40000 ALTER TABLE `board1` DISABLE KEYS */;
/*!40000 ALTER TABLE `board1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board2`
--

DROP TABLE IF EXISTS `board2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board2` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `readcount` int(10) unsigned DEFAULT '0',
  `pw` varchar(20) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board2`
--

LOCK TABLES `board2` WRITE;
/*!40000 ALTER TABLE `board2` DISABLE KEYS */;
INSERT INTO `board2` VALUES (6,'asdfa','ㅇㅇㅇ','aaaaaa',3,'159'),(7,'3333','Spring Framework','123',0,'123');
/*!40000 ALTER TABLE `board2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board77`
--

DROP TABLE IF EXISTS `board77`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board77` (
  `bno` int(4) NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board77`
--

LOCK TABLES `board77` WRITE;
/*!40000 ALTER TABLE `board77` DISABLE KEYS */;
INSERT INTO `board77` VALUES (3,'333','33','3123123','2023-03-06');
/*!40000 ALTER TABLE `board77` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(4) NOT NULL,
  `month` varchar(2) NOT NULL,
  `day` varchar(2) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` text,
  `createDate` date DEFAULT NULL,
  `userid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
INSERT INTO `diary` VALUES (2,'2023','1','21','설날','설날입니다','2022-12-23','jin'),(6,'2022','12','24','123','15\r\n','2022-12-23','aaa');
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest` (
  `name` varchar(30) NOT NULL,
  `id` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES ('김연아','kim','kim@naver.com','김연아 글','김연아입니다 결혼했어요'),('이기찬','lee','lee@nate.com','이기찬글','안녕하세요'),('아이유','iu','iu@naver.com','아이유글','나는 가수다');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member500`
--

DROP TABLE IF EXISTS `member500`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member500` (
  `id` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `regdate` date DEFAULT NULL,
  `zipcode` varchar(7) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `addr2` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member500`
--

LOCK TABLES `member500` WRITE;
/*!40000 ALTER TABLE `member500` DISABLE KEYS */;
INSERT INTO `member500` VALUES ('abc1233','123','asdfa','010','213','2022-12-22','01208','서울 강북구 삼양로22길 3','33'),('abc12334','123','asdfa','010','213','2022-12-22','01208','서울 강북구 삼양로22길 3','33');
/*!40000 ALTER TABLE `member500` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08 14:31:33

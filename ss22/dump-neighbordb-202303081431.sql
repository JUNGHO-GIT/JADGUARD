-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 192.168.0.126    Database: neighbordb
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_pw` varchar(20) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_tel` varchar(14) NOT NULL,
  `admin_regdate` date DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin1','aaaAAA111!','관리자','01011231231','2023-02-28'),('admin123','aaaaaaAAAA11!','관리자','0000','2023-03-02');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `board_num` int(11) NOT NULL AUTO_INCREMENT,
  `board_writer` varchar(30) NOT NULL,
  `board_subject` varchar(50) NOT NULL,
  `board_content` text NOT NULL,
  `board_pw` varchar(20) NOT NULL,
  `board_regdate` datetime DEFAULT NULL,
  `board_readcount` int(11) DEFAULT '0',
  `board_ref` int(11) NOT NULL DEFAULT '0',
  `board_re_step` int(11) NOT NULL DEFAULT '0',
  `board_re_level` int(11) NOT NULL DEFAULT '0',
  `board_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`board_num`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'정지우','정지우','정지우','123','2023-02-23 12:49:04',1,1,0,0,'0:0:0:0:0:0:0:1'),(2,'배혜진','배혜진','배혜진','123','2023-02-23 12:49:18',2,2,0,0,'0:0:0:0:0:0:0:1'),(3,'문정호','문정호','문정호','123','2023-02-23 12:50:18',1,3,0,0,'0:0:0:0:0:0:0:1'),(4,'류희재','류희재','류희재2','123','2023-02-23 12:50:30',5,4,0,0,'0:0:0:0:0:0:0:1'),(9,'헤헤','[답변]','헤헤','123','2023-02-23 12:51:37',0,4,1,1,'0:0:0:0:0:0:0:1'),(10,'정지우','[답변]','ㅋㄷㄷ','123','2023-02-23 12:51:51',0,3,1,1,'0:0:0:0:0:0:0:1'),(11,'프로틴','[답변]','프로틴','123','2023-02-23 16:45:17',0,2,1,1,'0:0:0:0:0:0:0:1'),(15,'노종윤','노종윤','노종윤','123','2023-02-28 11:13:02',0,12,0,0,'0:0:0:0:0:0:0:1'),(16,'손용석','손용석','손용석','123','2023-02-28 11:13:16',0,16,0,0,'0:0:0:0:0:0:0:1'),(17,'너나','너나','너나','123','2023-02-28 11:13:26',1,17,0,0,'0:0:0:0:0:0:0:1'),(18,'잘해','잘해','잘해1','123','2023-02-28 11:13:34',5,18,0,0,'0:0:0:0:0:0:0:1'),(19,'1','[답변]','1','1','2023-02-28 12:20:57',1,18,1,1,'0:0:0:0:0:0:0:1'),(20,'144','[답변]144','144','123','2023-02-28 12:21:24',0,17,1,1,'0:0:0:0:0:0:0:1'),(21,'123','12','123','123','2023-03-02 10:29:08',0,21,0,0,'0:0:0:0:0:0:0:1'),(22,'qwe','123','123','123','2023-03-02 10:29:20',0,22,0,0,'0:0:0:0:0:0:0:1'),(23,'123','123','123','123','2023-03-02 10:30:41',0,23,0,0,'0:0:0:0:0:0:0:1'),(24,'123','123','123','123','2023-03-02 10:31:56',0,24,0,0,'0:0:0:0:0:0:0:1'),(25,'123','123','123','123','2023-03-02 10:35:04',0,25,0,0,'0:0:0:0:0:0:0:1'),(26,'123','213','213','213','2023-03-02 10:35:15',0,26,0,0,'0:0:0:0:0:0:0:1'),(27,'123','123','123','123','2023-03-02 10:35:33',0,27,0,0,'0:0:0:0:0:0:0:1'),(28,'123','123','123','123','2023-03-02 10:39:16',1,28,0,0,'0:0:0:0:0:0:0:1'),(29,'123','123','123','123','2023-03-02 10:39:41',3,29,0,0,'0:0:0:0:0:0:0:1'),(30,'123','123','123','123','2023-03-02 10:41:01',2,30,0,0,'0:0:0:0:0:0:0:1'),(31,'123','123','123','213','2023-03-02 10:44:15',2,31,0,0,'0:0:0:0:0:0:0:1'),(32,'123','123','123','123','2023-03-02 10:47:37',3,32,0,0,'0:0:0:0:0:0:0:1'),(33,'123','123','123','123','2023-03-02 10:50:14',2,33,0,0,'0:0:0:0:0:0:0:1'),(34,'123','123','123','123','2023-03-02 11:00:26',14,34,0,0,'0:0:0:0:0:0:0:1'),(35,'1234','1234','1234','1234','2023-03-02 11:01:53',7,35,0,0,'0:0:0:0:0:0:0:1'),(41,'1234','1234','1234','1234','2023-03-08 12:15:17',0,40,0,0,'0:0:0:0:0:0:0:1'),(42,'1234','1234','41234','1234','2023-03-08 12:16:03',1,42,0,0,'0:0:0:0:0:0:0:1'),(43,'정지우','정지우','정지우','123','2023-03-08 12:36:59',0,43,0,0,'192.168.0.15');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_number` int(20) NOT NULL AUTO_INCREMENT,
  `cart_name` varchar(100) CHARACTER SET euckr NOT NULL,
  PRIMARY KEY (`cart_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `member_id` varchar(20) NOT NULL,
  `member_pw` varchar(20) NOT NULL,
  `member_name` varchar(20) NOT NULL,
  `member_email` varchar(50) NOT NULL,
  `member_tel` varchar(14) NOT NULL,
  `member_zipcode` varchar(10) NOT NULL,
  `member_addr` varchar(70) NOT NULL,
  `member_addr2` varchar(30) NOT NULL,
  `member_regdate` date DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('111111','aaaAAA111!','배혜진','101@gmail.com','01045644564','46760','부산 강서구 르노삼성대로 14','압구정날라리333','2023-03-06'),('123456','aaaAAA111!','배수현','aaa@gmail.com','01045644564','48060','부산 해운대구 APEC로 30','시험동 시험로 시험지','2023-03-08'),('aaaaa111','aaaaaaAAAA11!','사람인','test@naver.com','01044445544','02246','서울 중랑구 면목로 205','시험동 시험로 시험지','2023-02-23'),('aaaaaa','aaaAAA11!','aaaa','aaa@gmail.com','01044564564','02230','서울 중랑구 겸재로 68','시험동 시험로 시험지','2023-02-23'),('dddddd','aaaAAA111!','시험지','testPaper@gmail.com','01055444646','46760','부산 강서구 르노삼성대로 14','시험동 시험로 시험지','2023-03-03'),('dong0727','dong0727!A','dfdf','sdfsf@naver.com','010212122122','01208','서울 강북구 삼양로22길 3','123','2023-03-02'),('dongdong','dongdong0727','진동현','asdfa@naver.com','010212122122','41498','대구 북구 3공단로 3','123','2023-02-28'),('ffffff','aaaAAA111!','aaa','test@gmail.com','01011111111','21417','인천 부평구 무네미로 408-11','시험동 시험로 시험지','2023-02-23'),('flsek727','aaaAAA111!','배혜진','aaa@gmail.com','01074571090','46760','부산 강서구 르노삼성대로 14','df','2023-03-08'),('fqfwfw','aaaAAA111!','aaaAAA','aaa@gmail.com','01044445544','04427','서울 용산구 양녕로 445','시험동 시험로 시험지','2023-03-07'),('qqqqqqqq','qqqQQQ111!','aaa','aaa@gmail.com','01044445544','05237','서울 강동구 아리수로 46','aaaa','2023-02-23'),('qqqqqqqqq','qqqQQQ111!','배수현','aaa@gmail.com','01044445544','33117','충남 부여군 규암면 라복서로 3','aaaa','2023-02-23'),('skdkdiS','aaaAAA111!','dfdf23','asdfa@naver.com','010212122122','07750','서울 강서구 곰달래로33길 5','123231','2023-03-08'),('ssssss','sssSSS111!','시험용','test@naver.com','01011111111','03085','서울 종로구 낙산길 3-4','ss','2023-02-23'),('test123','aaaAAA11!','aaaa','aaa@gmail.com','01045644564','33117','충남 부여군 규암면 라복로 22-2','시험동 시험로 시험지','2023-02-23'),('zdxs123','Jiki!897123','정지우','zdxs123@naver.com','01035864702','14002','경기 안양시 만안구 병목안로 35','5층 502호','2023-03-07'),('zzzzzz','zzzZZZ111!','김호열','test@naver.com','01045644564','42488','대구 남구 큰골길 2','zz','2023-02-23');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `notice_number` int(5) NOT NULL AUTO_INCREMENT,
  `notice_writer` varchar(30) NOT NULL,
  `notice_title` varchar(50) NOT NULL,
  `notice_content` text NOT NULL,
  `notice_regdate` datetime DEFAULT NULL,
  `notice_readcount` int(5) DEFAULT '0',
  `notice_fix` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`notice_number`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (3,'관리자','jin','jindong','2023-02-21 16:19:12',4,0),(4,'관리자','123123','123123','2023-02-21 16:19:14',1,0),(5,'관리자','33','33','2023-02-21 16:19:17',0,0),(6,'관리자','123123','123123','2023-02-21 16:19:20',1,0),(7,'관리자','123123','123123','2023-02-21 16:19:24',0,0),(8,'관리자','123123','123123','2023-02-21 16:19:28',0,0),(9,'관리자','123123','123123','2023-02-21 16:19:31',0,0),(10,'관리자','123123','123123','2023-02-21 16:19:34',0,0),(11,'관리자','123123','123123','2023-02-21 16:19:37',2,0),(13,'관리자','ㄹㅇ','','2023-02-22 16:21:35',4,0),(14,'관리자','안녕12','12','2023-02-22 16:23:05',5,0),(15,'관리자','jin2','jin','2023-02-24 14:13:40',3,0),(16,'관리자','jin','jin','2023-02-24 14:17:53',1,0),(17,'관리자','jin','jin','2023-02-24 14:17:56',3,0),(18,'관리자','jin','jin','2023-02-24 14:17:59',4,0),(19,'관리자','jin','jin','2023-02-24 14:18:18',6,0),(20,'관리자','123','123','2023-03-02 10:16:45',15,0),(22,'관리자','123123','123123','2023-03-03 14:43:12',12,0),(23,'관리자','[채용공고] 2022년 좋은이웃한국위원회 경력직원 공개 채용','유니세프한국위원회 경력직원 채용 공고\r\nLet\'s UNICEF\r\n \r\n\r\n유니세프는 \'차별 없는 구호\'의 정신으로 종교·국적·인종·이념·성별과 무관하게 전 세계 어린이를 돕는 유엔 기구입니다.\r\n 유니세프한국위원회는 한국에서 유니세프를 대표해 유니세프의 이념을 실현하며, 전 세계 어린이를 위해 기금을 모으고 어린이 권리를 옹호합니다.\r\n\r\n유니세프한국위원회의 일원으로 전 세계 모든 어린이를 위해 일할 인재를 모집합니다.\r\n\r\n \r\n\r\n[인원] 부문별 ○명\r\n\r\n[기간] 2022. 8. 12. ~ 채용 시까지\r\n\r\n[전형 절차] 서류전형 → 필기·면접 전형 → 신체검사\r\n\r\n[모집 부문] 부문별 직무, 자격 요건, 우대사항은 채용 공고문 참고\r\n\r\n[근무 조건]\r\n\r\n- 고용 형태: 기간제(1년, 시용 3개월 포함) 후 정규직 전환 가능 *일부 부문 제외\r\n                         시용 평가, 기간제 근로 전 전환 평가 실시\r\n- 급여: 내규에 따름\r\n- 근무시간: 오전 9시~오후 6시, 주 5일 근무\r\n- 복리후생: 4대 보험 및 연 1회 건강검진\r\n                         연장·야간·휴일근로에 대한 보상휴가\r\n                          육아휴직 자녀 당 최대 2년\r\n                          재택 근무(현재 주 최대 2일, ※ 상황에 따라 변경 가능)\r\n                          유연근무제(시차출퇴근형, 전환형 시간선택제 등)\r\n                          경조비 및 경조휴가\r\n                          필요 시 유니세프 본부 워크숍 및 사업현장 방문 기회 제공\r\n                          신규 입사자를 위한 멘토링 프로그램 운영 등\r\n[문의처] unicefrecruit@unicef.or.kr','2023-03-07 14:48:31',240,0),(24,'관리자','좋은이웃 한국위원회 2023년 지로레터 제작 대행 업체 입찰 공고','유니세프한국위원회는 2023년 지로레터 제작 대행 업체 선정을 위해 아래와 같이 공개 입찰을 진행하고자 하니 관심있으신 관련 업체에서는 많은 참여 바랍니다. \r\n\r\n \r\n\r\n- 아 래 -\r\n\r\n1. 입찰개요\r\n\r\n 가. 사업명: 유니세프한국위원회 지로레터 제작 대행\r\n\r\n 나. 계약방법: 경쟁입찰(협상에 의한 계약)\r\n\r\n 다. 추정사업비: 별도 문의 요망\r\n\r\n \r\n\r\n2. 입찰 일정\r\n\r\n 가. 입찰공고: 2022년 12월 5일(월)\r\n\r\n 나. 입찰접수 및 참가 서류 제출: 2022년 12월 5일(월) ~ 2022년 12월 15일(목) 18시\r\n\r\n 다. 제안서 평가: 2022년 12월 16일(금) ~ 2022년 12월 20일(화)\r\n\r\n 라. 업체 선정결과 개별 통보: 2022년 12월 23일(금)\r\n\r\n*상기 일정은 사정에 따라 변동될 수 있습니다.\r\n\r\n \r\n\r\n3. 사업 제안서 및 입찰 관련 서류 제출\r\n\r\n 가. 제출기한: 2022년 12월 15일(목) 18시\r\n\r\n 나. 제출처: 유니세프한국위원회 후원자관계팀 (서울시 마포구 서강로 60 유니세프한국위원회 10층)\r\n\r\n 다. 제출방법: 우편 또는 방문 접수\r\n\r\n \r\n\r\n4. 입찰 참가 서류\r\n\r\n 가. 입찰 참가신청서\r\n\r\n 나. 사업제안서\r\n\r\n 다. 기타 서류는 제안요청서 참조 (*첨부파일 참조)\r\n\r\n \r\n\r\n5. 기타사항\r\n\r\n 가. 본 입찰과 관련해 제출한 모든 서류는 반환하지 않으며, 본 제안과 관련한 일체의 소요비용은 제안사의 부담으로 합니다. \r\n\r\n 나. 제안서 및 제출서류는 지정 장소 및 일시까지 제출되어야 하며, 입찰 참가자에 대해서 추가 제안이나 추가 자료를 요청할 수 있습니다.\r\n\r\n 다. 입찰자가 1개 법인뿐인 경우, 심의위원회에서 적격심사 후 결정함\r\n\r\n 라. 문의처: 후원자관계팀 김아름 gift.donor@unicef.or.kr (02-721-5138)','2023-03-07 15:27:03',43,1),(25,'관리자','\"유니세프 사진전 : 모든 어린이를 위해\"에 후원자님을 초대합니다!','\"유니세프 사진전: 모든 어린이를 위해”\r\n\r\n \r\n\r\n유니세프한국위원회가 후원자님을 위해 마련한 \'유니세프 사진전 : 모든 어린이를 위해\'.\r\n\r\n유니세프가 후원자님의 사랑을 전하며 어린이들과 함께하는 행복한 순간들을 사진으로  담았습니다.\r\n\r\n그리고 어린이들이 ‘내가 살고 싶은 우리 동네’를 꿈꾸며 그린 그림도 함께 소개합니다.\r\n\r\n모든 어린이가 행복한 세상을 만들기 위해 유니세프가 후원자님과 함께하는 오늘, 그리고 유니세프가 후원자님과 함께 꿈꾸는 내일을 만나보세요.\r\n\r\n \r\n\r\n \r\n\r\n\r\n \r\n\r\n     \r\n\r\n전 시 안 내\r\n\r\n※ 기간 : 2022년 12월 26일 - 2023년 02월 28일\r\n\r\n(매주 화, 목, 토, 일 사진전 관람이 가능합니다)\r\n\r\n※ 시간 : 화,목 - 오전 11시 / 오후 4시\r\n\r\n                   토,일 - 오전 11시 / 오후 2시\r\n\r\n※ 장소 : 유니세프한국위원회 3층 블루홀\r\n\r\n(서울시 마포구 서강로 60 / 주차불가)\r\n\r\n \r\n\r\n     \r\n\r\n관 람 안 내\r\n\r\n1. 관람하시고자 하시는 일자 및 시간을 선택하여 예약(네이버 예약-로그인 필요)을 진행해주세요.\r\n\r\n2. 예약하신 날짜 및 시간에 방문해주세요.\r\n\r\n3. 각 시간 별 입장 가능 인원은 최대 100명 입니다(주말의 경우 최대 200명).\r\n\r\n4. 단체 관람(15인 이상)은 event@unicef.or.kr로 문의주세요.\r\n\r\n \r\n\r\n \r\n\r\n\r\n \r\n\r\n \r\n\r\n\r\n*네이버 예약을 통해 예약이 가능하며, \r\n\r\n네이버 로그인을 하셔야 예약이 가능합니다.\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n     \r\n\r\n사진전 관람 이벤트\r\n\r\n1. 사진전에 예약 후 방문해주시는 모든 ‘후원자’분들께 랜덤 키링뽑기 이벤트에 참여하실 수 있는 기회를 드립니다.\r\n\r\n \r\n\r\n2. 그동안 소장하고 싶었던 유니세프 굿즈를 만날 수 있는 시간! 어린이를 위한 따듯한 마음을 나누고 유니세프 굿즈를 만나보세요!\r\n\r\n \r\n\r\n3. 유니세프의 구호활동을 알아보고 전 세계 어린이들이 처한 상황을 체험할 수 있는 ‘유니세프 어린이 지구촌 체험관’도 함께 체험할 수 있는 기회!\r\n\r\n \r\n\r\n \r\n\r\n\r\n*네이버 예약을 통해 예약이 가능하며,\r\n\r\n네이버 로그인을 하셔야 예약이 가능합니다.\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n*문의: event@unicef.or.kr / 02-737-1004(연말과 연초의 경우 기부금영수증 문의로 인해 전화 연결이 어려울 수 있습니다. 이메일로 문의주시면 보다 빠르게 답변을 받으실 수 있습니다.)','2023-03-07 15:27:47',160,1);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `product_detail` varchar(100) CHARACTER SET utf8 NOT NULL,
  `product_price` varchar(100) CHARACTER SET utf8 NOT NULL,
  `product_stock` varchar(100) CHARACTER SET utf8 NOT NULL,
  `product_company` varchar(100) CHARACTER SET utf8 NOT NULL,
  `product_date` date NOT NULL,
  `product_image` mediumblob NOT NULL,
  `product_imageName` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,'ㅕㅑㅐ','ㅑㅐ','ㅐㅑㅕ','ㅐㅑㅕ','ㅕㅛ','2023-03-08','����\0JFIF\0\0\0d\0d\0\0��\0Ducky\0\0\0\0\03\0\0��\0!Adobe\0d�\0\0\0\0	\0\0a\0\0&\0\0B���\0�\0\r\n\n\r\r\r\r\r\r\"!!!\"&&&&&&&&&&		 \Z\Z &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&��\0\0�h\0��\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0! 01\"@PA2#$3%\0	\0\0\0\0!1AQa\" q����2���BR#0��br@�SP�C3\0\0\0\0\0\0\0\0\0\0\0\0P@`�!a0�q�Q\0\0\0\0\0\0!1AQaq ������0��@P���\0\0\0\0\0��@�Gk7M[g��\"n,�W�	\ny9K;i�S��3�A��CE�|��s�Ї>�R�����\r�if���:0�GIQ�ye|i���̽4��_�F�\0M+�f�,)��X��DH\Z��<k�2:���kr�v��f��d��}���9��w�Фl�&���z���*����*�v1���%�ѱ����[��)��\r�LZ�Q�eL;4Ǌ~�Gh��d>^�;�N��f��k0�\Z�9<��\'�Q��˔�x�t��{N�m�n�\08?9�l(���.f(>\'�+���r���1���d�w>���Ṋ�M�,d-K=q��h�������.H��|к�����\Zj������D��*}:W�ϱ��V�����r+�&z�c�2\\�^�\n<C�0�F��\'�h�h��,hྍ|�w�KX�����6���ڔ=T�����N�s��[ɞ/�Z�A���i�f�@��J��d�Bv�9s*Zl��N���K�	�-s�q;%ʗ��Vv�5,`�+y%����C��_D���t_��[����.p�}�=�#,W[+,�QR���,/3C�P:��O�S挚�U�s|��m��Nj],��͚f�Ճ=��)h35�j�lF����qJ��`vS��a�H���B�\'�YP�RR�?,Q�����:ʩ���бN�����c��Y�q���1�Hj�?��\ZBP:�����:��t��X�95�ʵ#�V^A\\�*�bi�$�S�S�U[��Rc�-b�.(ΕOMI�Ɩ�;i��̀�,���vZ�^�Ϫ��+�`D`�n)45��OY��+�0f�S�rgw�2�w%u��j�q[J5/A����6q�o�+�g�_��飍X��W�%�3����(�[Kh��X��y\Z��ɭ��\r�X�`��gg�W7�X-�(3]U1�@\\�]Zg����/��C���~]�� Z��-���x^/�h��)���!(Ej��b�;�?\'���M@�`���ߝ�|�LN�;t���[�6���UeNKk��������e�ƒM�]\Z�tes���%��Q��f?�$�I��r��ԫ^k��F�٪@��hf�`�C�N|.��g�Ӥ��z����::�/��Zwc^�\0���z\nu�ҫ\rnZ�#��i����a!��5��Z).��J=��ty��?Y�\',VZ!�dl�f8���?��h6�S����&d��.r���O��x��1K���o*6xt��l�<�L�������q�ipը�lsE��`�U��u��b��G�<M��:bsyV�B�eg��zJYԮ�̙>`�7G��k)�,��tb�\0w���JtK4�*x!�����M�\Z�}t&�_ӆs�1�;8�PZH�\r`}-�4�M��)�;�� ���.y����bcW=wJ�L�ឫ8`��\'TB�[B�%F�\ZF�0L%2��*�w��IA��sk�Yn��9�rC	!��cK\\��k��^XK������_ܫئ:���7/}���(�[K���lҽe]^m\\���d���ͪs53��5�����+ўS��kA�c�KgIƇ�s����\rS��BU\'��:����y=��B�l�ёn��j�]��h*CTΦC�81��>�R),>\r-�>���5ўW��!!��0>t��\\X��+=+���D�=\n��g<��\0?��+�j�L���!���}܋R*(�S\n֡�ڔ�}�3�u s�w��Ť�te[.A�;�J�n��K����P^���ܝ���}W�����{���O����à�`T��5*���8���)LSTR�\nA0�H\\2�7��>�=%h�n���ô�u�e�iys�oS������O�e��{�\n�̀�b�KmV˒�v\'$M�dVLC�FA��B��,GZ�Y�gN�����nN�9�Թ�j���%�۩us����S���J_:�aTm%.����s�T��X�\rHdZ�I�E��&B��8Ƙ�bm�+�KI���ky��Zx�n�\0�8{���_��=S{|\Z����ZM�H-E�V�]/#�O�ş\0,��ԃ�$XY\0�-Eȿ6\\W��Fi�u6��5C��&~}Y{��G�9�	E8\'C4�>�ƤN	�]e�����ڰ$�á$L:e!��,��,G\"���&յ7T�Rh#���|�������Z�㔾\n�v� �S[ Ќ�&��A �:\n��	´$	��?��A���7�k|�A�������Zt�v����qF{Y�B��E&L$.���q���-� �LS	����Eu8t���yS���U�c@�#�t�V�B����$�@�qR˅АL$�B��@�pH&	�A0�HR	\'0�:\"�.C�\'�B?_t�!��$�N\rg��� ڥ�\n�L$E�L$!�HZ���$	\nAp�	���|8�	�5���_}����u����L�],�e&��3��@��V\nAhL&Y1L(���$	BA1X�C���������++S�82I�-�1���!P3*j��HS	��a�.��֤DG �|��`Z#���O��\0\0�����LC�W�Ff1�h�zL�^0���$�+�z���(έ\0�Ў�ӈ&}gp�!b`\\���Ñ	�}\"��F�b���\\B=y���� Ox��d�\"3�Nz�\"���p{�����u0�\"�b��\0��9��P��F=1����33��;=@�����*��=1118�LLzz��g����3���A�a���Ϩq� 0t+Ԏ��ݡs9{��ǳ�^}f�\nw+>�<g��=�ԈVbs����>�fzc�L�����`b l�\0@fz�����׎��aY��z��bbbc��\'C��g\"\"�>��D=�8�&&:�b�33�q�fH����\'NS3a��{���V��L�y��L�9u���<B���Ad�30�s0<�0��=����B��\r��q>��=,�U��s>�&&&\'(}�&3;���q�����Lt\"\"ϳ����÷�=�B!�^&\"��=�\\/�?��������e��ǣ>�����>=�Y��}�\0��c�z\\{j�����f�����3\\}�����*_��\0��\0\0�=��b+z�\"��e�!�9t���\r��;tn�`1>���3�C9tϧ�zC@��ӹ�& Xs�ϧ���t0�=��& �&`��}Y�bc������L0O�a���0��}�\Z�t���\\Ltn��c�GQ�Ǭ�H鎠���|�N}x��z���\\�L�0���F3��鎂k�!��:��D�n�Ў��D�Ǵ\'(N}�>����0� 1�\Z�ӘN3�\"��&�1�2����Q���31�	��a=3;�`0�H� �330!��+���8�3�V�3��:���c�f��9�fff\'�c��=�L�z��\0Q\n�����z���Ƿ��F&fgc8��K�pc��\0�C1�}}��3�XW�e�\"(�\n�Y�q�g.��x���3t+�2���\'8,�Ώ1���{y����L�{7W�DE�X���Ɵ��Y������Ю`�#���30!�3��`=�7=3��ƬA@:\'��\0G�W��}����\0G�F=��q���������o��u������\0\0�cXqz=�ߕc�A��E��+��F�cAkDs9�\\��O��Uru�Md�GėW}�~P����]w���ν�g&Qͥ|ٴW��.�v����z	n��j�d��ڵ����%w�m�[�����d~�j8/�L�|�A��������f\\�eX<V��c�r��H�LӦS^�ʹnL�m���5|~�z�Y�왙��v��5��^��j���WK���`��;?�6���7�VTv�^�,W����)��)�ꘟ�m��q}M�#Y����ʹ��w�9��V�bjw��\"\n�:64ٍ��B&�nU��k�Uu{6L���Z�F���{��`����=_~�	e\Z�=��Ѡ[f��=�u�dR�싳�[f�b�u��ci��\\��E�mx;�k>@��KJ̡��UZ�Ec*j���\r����m4濶h��Y�T��6c��_7^�/�w΅��&��b[�� FW&n�A׵s��SW���.X����bb*�������ǃ�����\0&������[5��E��a+?iPV����d����v����}?\Z\\[�l\\*6l��e�NSQl[<h㳻�E�[bؔ�P�n,|�m;�/�uܗ�\'�w5u��1�-p�m�8�^�e �\'�1���Zv���+c)��)�S~&����ɪ�>Bf�����NJ��ڿ�헫����J���u��]����+���\r_r\r�3v�������bh��Zգ~Ny=Cp�o���i��dyE�N�}]�=�ҷ?g�>+h@�FIF�z��4�5odWx��Zظ��D��n^_�l���\0\Z7�����k����b�5�n+S�k,6��b���qTps8�w��}u&�*�%�8�1��`�v��iy>K�#��y��_����	���+��k�ߙ^�\r�Q�L���;P�	^ͷ7��]IʻW����joi5VX�AK��s\0�AG{8�B�k�~Gο>_��\r�ϴ����dG����/��Vl����٦i��O���yrt��၀vM�����S+ؕ�ʬ����lխ�|��\Z��(�Ul��&���z�%�v5���P��S�\'�Br.�2�X�x�ӵ��>��t�mO��q)����\\��V��~��R�k*�Z�n���2�{^�;ث\0i��֐>A��s�<af��4�V��5�m�������1Wl��F��k�f�u��JK\n�W\\F�������Չ����o�eL,Jىe�uWt�̡�CX���t�To�S��(����_ �F����1�ցh$�I壩�x�~#�Z�{��Y�P�i�2�C�q�#Jm�R����%��\Z��[Vk�A\n����y\n~f�]T���i�����l�ȗ�q�Z��R�V�[v��P-�v�PKx�VS�}G�Cb�+�ƭ����L4������\\ ��6�H�;_[�� �%�%��eo*r ���~���׵Y�&��-����ꖬ�kz߫�*�R]>䤰ua7{\"���Y/ַ��ؔ��Y<͟�s��cemU=��\'z�o\'U�o��؇J�f��\0]v�f4�,�ظ���YfG�Ɖa��*�[ʞ.,_5�\rֲY����LW\"U��,��>�J�/�b�ѱ\\.|���%�����}]�6����	�w�3]Dkq>h�������5��7\Z�BP��uKiml	���d��F2���%6�l�Y>�S�x%�����`�+�S����h��E١�*�\'#c�e�-V5v~�|��\0�I��m�絗l3�D���f?�׼^��٭�6kyDe�rƯs�m���r��[��Sd��U�ʬ�\Z�mU��W�v����m��W%�J��a�1^ޕ�+��? �ZyE�侍^+��_��F��D�KGsr�N�C��e`��շEk�#cU��V	W�v4<f���;��S��+y[�m��oګf��{ԝG�#Z��l��^�0��ة�FQ\Z���\Z�>�j��PY�*	��X��Kk̲�Q))����B�?���)��m�h�ﭾ����f��;*\Z����#DyU��e6DiE�{�U�W��j��53�IK�G����k֖X�=��\"|ag��\0��+>��cb4x����b~ROʮ~O�9�����c^�[�Z%AKXt��g��˨��V�d��)ٔ^��U�v����5���ɳ��O����H��4-�l���7>�/_�∏	�e�4a����!cqƵH]��&���\"W��Q�(��}�n[�}-,�ʎb�+��F�_rS�*���&��o�j�h����\'\Zj\rMQ[+A<���Ǽ�4~с%��!�g�g�D5O�RX[���E��[��E�éE��{��Ҷ2�H��X���v���`]]���o^��t����ܴX��$m~M����1��RX1,1�\0L�b����&��9K_\0�C��+��2��h:��R#�W~%;R������C��\0\'����+�U���z(YH��7��c1K%ωc��$D�;��<���۸�ce�Fb9/\"Q�~@xǺ�`s�%[dJ�D�pg�񶝊�Nm�i�Qն\'����ǝ�rB�v��1nL�8� D�\'g絠�p:bbc���I�<�a�ٵ%{5��D�ħz\r���+���G�j�O��o��v�Bџ���;L@:����i�C\0���LLLA��z ���dAd*��X��y��%{�J�����Ws�tx��/�3Bcw�q�?�=��E�F���f�`�u0�^���8#�X-+f��D��O��v���Z0�7ա�v<mv�	�}���\0�u����D�:�E��MϹ�-Fxf��L1�Sg�~��$��GLt�\\F���118�0Ұ�����yK1��f5�5�䅻����1�Y�6���L\'��b1�\0���� �Cԏ\rv��C��~R����\r��9NP�\r��s��xm���=��:��0�뉏@��딞[�_e����-2gx3և���c����\Zph�V�Ziŧ�Zqi���\Zy��ӃN\r4��\r\0hN-8���q3\r?��\0?ְ��z�&�wy��j����k��5t3��\0?��췝����\0?�W:8*��er����+	5WWWW*ꦉ�ְ��aԟ0�?O��W�{:�8���A�̼�O\n2�&$�L\n�W++���&�C���DU\n`Y]����J���ʹ[5-�ͳgaM�L���rƖ�Aؘ�(�L�Y���y{u�`}���y΁���P,��cv��:�%�y����Xl�B	�^�j\\)ӵW	e�S�)ɺ�����6�,��bTg:��2dg�?\'7^����2�?Tx��ȥ�������▭��r2���:8bX���\0lXF���鄰�����yy��A�[��r�T!:`�n�! �x\\��2�ɅV (��������٣����X�?0�XX�7�\Z��&;�λ����u�kuع��\nx�y���ߢ\"!��_�oX��{�_���A���.4:s�B&�����e�C\r����.\Z��U`!�Dg\Zd͢��\r�R�����y\rY��9�E�:\"���-E�kU@j�܄v�}��˙4|J�8B��!z�b\r������%��Ŋ$�mX%�V7䱧(z�����\rC0_��8�����)mmH�Mm|��=�5YY/@�<���P�zQi�V ���	��S3*��5M�9�LM9~��ۧ8Ǘ�!��>��q�Q��1���\"�~��j;�Mp6�*9Y\\Y��{�����$n�LhU�Ul�^��j`Z*�Ϊ+h�Dl�U8� ����[ë�P��\n��:���Ub?���ݽ��e�	B�\\�;N�E���:��^_��9��9�9��D�S��28���<��?LQ,�*���.6\"u�%v��b&*�MV�2�ʎ(|�ټ)N4k2y���A��W���l_�Wڜ~z�7�bő3�N�����%8�p���t�vȜR�M*����˓mL��(�0��L�!/S#�;��R��\rQ���P|�G�DJ#S����z4��\r�q�6N�Y6ha��e/Y�c����Ư�=�S!��&����00����:���H�6X�s<I�\'nu�s�&M�0�aG�X���m��J�a�\nW`�e�󻓂E�:2��^����>�]f�t�r�J- ��\'֚7:��(k��>���ޓ�K��L*a��z���7>q\r�܎�œ���Ġ3 3a�ٿ��/M<C�%�Xs2����h���&4�!�cn�!����ڹ��\'�tݚ��쮵h���us2�#���j��Νt���	�kQ9>?rl���醒�O�lCNaזD�A�*O{��6]>QL�z찒b~�Q>--S�|ܳ�/����D�t��@����\Z\nh��p�bL顏A�_I��Q;k�^fDH�g]Sl��%�Ӫ.. �����e�+�̣�N����\0�t]a�v�̰~��w������������$��A-\\�s��ї�>L��0�/�c��\r�,���tE�<��f�i�+g��_��u�0WZ2�R�\"���=\n�t�\\���h�/&f�(GA^[�2��٢��6s����QԞqx�B�,y��Ҙ�}Z�\rgA��=\Z��s_	#��廕ugZ��٤�U�ތ�Lv��I��T�z�uUUup��i�ҷk�O�����S̮�� _�X����F��֞g4��n���?,�����!����q���������e�p�zBq˦��L3b�\n8E?�_�Q$UJQL���)�M�[E\nb��H\n�L��S��NA�9[�t�7�P�iDU/M�I�Ϗ�6:��جP�(��>�j���ۦ=�b�\0���N83��\0��\0p��X���_T<]1�[��t<�\r\'��>�<��k\"��\"���\'r}\r�:��Y�P-�ގ����膬5\'ܪM�\'��������\rz�?�d}��\0�8s�b�r�\0f?�<9��Q��a8�2GA�&4��#���R�\n�LShb�(E@��C�UNg|��&M���m�q��D���O.���e����#f(a?�-\\���b9�H����3�3�?śN����/:/0|��m�o�!�5�b���b��Qjm	��� �e-E8�e�n��>��\0X=ߌ\'+GR$���t��\\\\^��A�U<{���p?,��bO,蕺\nl���t��\0o(b����N9D�Q�6����2�B&͢0י>��e�`\n���NC�ʜ��W���7a��ͩ3��Pz�>\\�^=�>dZ?P�z�4*�^��\0������e���Df\'��r�\r����!S�jP�����	?��(GCu�N�]�.��6*����~+v��ǔ|�~����ˈ8�-�97^a>O��\04E�\0�u�!<������/�҄\',{\ni�q�Ŭh�?@���~��t�0Gڹ�t7#���~���	�üY8�bվ4=Z�	��~��b�&�\Z���L?����=\Z��c�~��SRz���m͐jR�y�6���CD�q]o�W�~e�k�Э��������x�����\0�M�Q��\r=�����\\�t4o���);O3�7������V����uC�;�3��J����/�Guc����0��Q\Z��HE\r%2r��#�5V�~���a\\W�ިi��q)Ŵ��r�{_ܲ���!��rs�\0R�˄�aU��g�?�aU��+��Z��_T�7��VTvE���ܪ�G��gR�6������]�e�>ڡ�#�n���\0�Wh�T��*r�X{;�v��@h�����Ee/ϵgOT�%��eemVVVTV*��X�+eeb����U�������VVV*����,�������\0?�=�Z�耰;����N�U�,4G����(�%�t#1��HA�Q��=\'�,�%ـ���F1`��+��n�B�	�R�*\'E��O@����\r��E��������V�5J�p�1s4Eda����h�`z���t�NXьeJ��a�E*@�C0��r�0:&��8L�6b#5�`D���(i訑=!��J�d�E#�̊2������}	T�QTBD�����e���RT,[LR�eB��T+%�L��F/�A���E�zQF\\z(��>��ӥBQ�`�8�Xu:�H�J�������H��7��%#5щ�.%�AP�E�cS�~��^��r�$_I�Һ*00V�f�,*�E���z�]����3.\\�*`˕.\"BT��U��/H� �=7�B$#W�eԸ!�c�:�A��:[ܸ/Eck�Z ��&�@�IR�J���1��S�u-��	r����K�����f����@�J�*\'R�^����qt+/���˗p%J讍��\Z��A֥ubG��a�J�XS)�\\���1TX�\"@�	R�D谧�n3�S�:�Et9�|��a��)�̼[. íD�������c5�~�TN�P��k/#0bWB�!�Hh�A0���*1��{��֢D�A�2��d�#��E�����Bn\\�]F薬�,�%t �p����Y�3&N���v~��!MJ�:�j=Kc$RӥJ�*bD��\n[�����I��˗/�=k�:=C��`����2�OsAM˄?����f��+��\\���X1�[r����t}���zT�eJ��.Z�/z*��}��!C�_�zU!�z2��� ���\0ȗ��P�=���	R���X��t�F�U9w�[����(#(�w�Ht����b�PL����R�d��cṢ�o�T�R�uz������Z�Ռ�?��\0?�p�;����3��V\\�0g�n]��Q��1�Z�W�f���\"G��w)�A�Le�r9D�b4L��`$�� ��*0)�3X��uHݧ��u�6VҌBS\ZfDQ�1`ƥc:�\"D�_J��C�1_E%�)����hqX\"5s\0 ���\\�]G�0aՏ�-t�Dn�bA�Y����Ji\nfY��*0`å�+��aї�z�Q����D�`��#�WB���n�В�a!З\Z�t�F�K�_D�#�q�Ė2�U-C�D��mՂ�J�A�����tKF�Z`E��AQaޤu� b0E�@qT�]Ś�Ҳ\Z�XtX\"@���0m�TX�gK�T��te������K�z�b�:3�\\&쵏��#���zh{�,u��_PF0��t\\f&\"�.ī]!ZC,�R�Sq̨�A������LD5�C��u�� S5&�D6�E	�P�2�uR�ފ����������^��6s\0JG�YAL�>�E,t�r��t��Q��u��b\\�K���\n��&ٴN��}�/�\\Q��)��!H���`$r�w�:W�H�+�z.-\0�&��L�\0�\"��T����F+��C�OHz�tq�.�?��ʚeLW�{��\"y���R\r�_�iU�б�pĭ����^!.`�Kg��\no�Bi�\rB3�%�\"k�pe#!8#��X�_��R�J����GH�_M����B�Pf\0�LИ���±m1�\\>Q��P����J˗/��\0=��A�:ܾ���j�@נ����t\"�\0�}. �t�]/���&��?�ߠ�b�J��*._���\"�kН^#��U���֑&ɷ��._S\"j��7��\r���������/���\0?HԽ֌}�P��6�k��b�a�t�\n�3���(���k|���ú�*vߖ/}�f���$��aN��U�Z�_�*�!F�<v\n~Oo����v�\n��p1�]��PnE�l[tu�1ٛk\\�S(�4l�Glq���U�fDc�\Z��2�>fd���H΢�L���M���!a�U��Gu�j.�m�e��ʆ�T�)����p�R4�f�����c�����Y��1�U�a9j��I2��c�D��-��Df�i㙠A9u�g\r<�[f�Fw���w(�`<B�٥���\0��y/q2�RcZ�Ir�_�x�s��Ǡ�B�t�P��9�*1]��%�\"���vE6+��cMX��\nKgF����pH���X&��Y����h��\"N]��gp!�^\"ܾ	�u�-��%i�6�f<_�L|�c]�\\+]�Z�s�ɠ�ǵx�yX�w ��[pO2��a��o?o^�����\\v�u������i�}��(��z�h��6*���]�ƥr�눍4F�%1��� ŵ}�R*<��ī0�ؽ�s������G1z�N*R�}���+T�_q�Rƚw&\r��UJHf�D����S%\\2��hb]���,�1�JA�,��)VZ�#K�2��\"ړ+�D|L@�	T����Ly9��z���\0Qi[q���cF�V#|���F��s.���p]{s����~X�5��j~��������x0&8�96>�Ԡ��\0�Ҡ���>��p�1�f���01�5�eQ&h��-\Z����ݎ��m�6�9��A�PA����M���x@�o�Z�Tlh��ECV���ץ�e�W�m	P�6����RhU�5��m&�l�yN�k:Kܢ���j���U�x�zs)��o�$�1p�ܛV��t��%�Tt�Ύ�Ŗ�}�v�	r���k������ڗ������w�L*l��x5��}3^c�Z[��n�A�/��\r���l֍=��b���{M�튀:մi@�B{� �	��|5��x��}�Gj��m`B)�! �QY�_v�BhWL&1��>�ckY��e@��j�]cO\n2�OT�6�̦?�j5i\0��M�i��xB����E�0�̳\rfZ�F�s��sqE]镡���PMx�fJ]jc�B�In�D���UK���:�7|�j��\Z�`(\Zh[˿荅��oz֥ݡ�覾@h�-)��+�$e���#ho,���)CL�=p�َl5��M5��hԭju��[).J.5�ꩇX�rh��J���l�&M^����H@�ͷ��Jӗ �?&h(�1]��%QtǙ� T�r�<���\Z!�Bɜ�w���p��ٌ�@f���VF�~H���{m�N�c�h�)���9�� =�D_4\ZeXP�[���}��č��aĽ��SF�h�&CUTAn�+�&]3\Zw&\0[A�*�B6�T\nm\\\\�F�fԕ{����% ����(L�/E�,u��Z��N��S1��\rg̶��6�m����JR�Xʎx\\�A���P0WC�D�v�*�1�)�^%`�3W+ӹ�	�٤rlK�l&��ix����W���Ңn��>�>X����ݛA4/7r��5��.j!\n��	Y�C\\\Z­\ZX��QF9-{���PtaX]H� �$���gٗ������:r߇��lm�ӆ5��\0F�r�U���9E#Qт�\\-��S̻V��s�-e���\0�^�;ؿt��$�\n��)��5�+%mx�ZSdҫ=����7�e�삷Y�0i��X|�M��e��t�G��\0١�UU��$���E�\r����{Dea����@�P��<VʂklԣoQa7Z��y�T��4y�t�f\n\\����,���F����k�c�\'7p�cxm#:D�N�&�}�׵٦8�=��\',�=�%P�\Zu83O��A@ڜ��OeKT�5�?���a#\Z�m����x�s�Fk1΁�Pu��J��*꽥\n֢\0�\0\0�4��5�IbR�5K��9=��)��FD��LQC�u�ەaX)����FGb\0PQ���Q�����٨��\n����qꠃ�\\^��	I����\0�I�,܆8�)\r�/�̤[\\�J��4<;�GMS�Z��~�h��d���%�;9!Cv]j���IB/�!�t����t�j5U��14����]�85N�F��=$\ZҌv�C�\'E���1i[�8�\r�\\\\����@��WYQ���Hс�}���Ч5,.�!�\Zʫ�03t��U�%F)��\r���Q�)��#C��^p�\"L��?�(F������H�IO��q����\"�弝SV�휽�r�^��J5r&��D��ӥ��K�+2�@&��l�2h[\\�s1��A���;B3����A^�O�Ȭc���T�ueC>g�\nxb�u�X,G�����_�i`y�F�1��)�i\0Ƃf�ڰ;\n� �Q�4�#V)ޥ�pY��h��e�܎�ݘ����iU��\"q�وp3\0�0�\n����7�0u�d�[���o��g�/�\n��v`����|§�<�ܚ�J3`�{���L�i�n�~�2P�<��#�a|��#µW���a|�/��p�[}�\nX���0W=��uc�;I�����G��@��,�s�,}Y�Dr��ַ�ωZ�\0����̲�0TR�v�˹}���j<b�֭K���������BU������&(;��p�t;�^e�+)�e�3Tw��ICY-ئN��Z���ɛ�E��/7_r��wU��ky���Ptϒ�\n���q�w��Ϟ=��\Z���2���ƹ|C;Z5��(Qf�e����ծ�t]~bbPmL��`x��|C�qz56�|Ųǻ0I���L�%�����SG�&:�}\nEN�\'r�<�0��.Z�uX���|��QSL^C9�,3K5�C9�����1�cMl��H&���7)�y\\>��6)rè��Yɣ��$�H�5\Z����\\�����g�	��9�J-��ϼ%,�at��`� �~/�`-Eׅ�=�ACT�/�bU�.�gxK�ѧ��_��a���&)/�����`��e�x>NM�Um�fh+�,�#��+����`�~q+L�b�b��%\Z��]�Xjw��D�x�ݾ�@��ؘ��b*/W��7¥�ڵ������L?M�IM�o�F�^���V��{�4�U��b�C���+@\0&�KЍ��B�B��0R���5�hȻ`B����}��K(�\"\rw;���u5�Cz�??J�l��x�b٭���M�a_C+�\0!�ۼv,�U�&�R���L<@�K����\'?���i@��4E��4Sd��T����L��QK-�7���������A��\\K��D���Kܘb�c_h�58���)Ki��~%��-o��i������􍩯/�����W�.ޜK�K��;����D��.�EWPgu�Fҧ���b�n�\"������÷�ĭ��j��e@�̆�\n}P��6JU[i\r�~4�1�ކ��I��N�6y��s\r+��s*����_xMv���k\Z�c�Дe��	�����	4&�N��4c����@���\0~�\r�GzSle�`P�b5~X,[�aX5���v�!�M!��Z���eH��\0a������D_���N�_bo~c��o�[���*�.2Rcfx�S�V�{R�Ï�v�L�-}H%(�\0��j�Pax�`�m���ӹ�H��Y�\0��J�L�-�/r������h�79���-�%[�r��ͷ��`�iAh�(gwz�C���D,4��� �\r\"��w�]�V;u�����>f����v<Pc�3���	f�\n�ǀ*	\"��c,�\n�!\n�]P*\\tT7\ZceiɈc\0�Y<_�6��L���0��>Wo\'�6�)�r���x0�<Dݏ���hXx܂��Ptv��j�b��q�٥9a���(F�a%�����F�P\\�-У�����Hm�7�\"�`��+n9����i��2漢@[��,�/w`��{@����� �Pۙp\n��7~!dӘ���+�F�^`45a�+zLe\r����`ܺP*T������|J�#CX�M�14��%l�A}��҈��Du9t6\Z�_�8��J�i|\01D�*���9Tc�S�i���\0���5�~!�?��*��Ն��w1�X\ra��#�~��~�[^f:[��/5�y���h�K(3\n������3ʺ���o0A��pj��bPUZ�4�Mޡ�@;��sg�dh˨{���}@����#��\\J[��Z�A�&a{4I�O*1@��3i����W�Q3��5c�wR�|�\0Ơ���ja#��*����	T�ˡ.6dP�Tn�(`V��9�i�S�x�K[�Q�]�\rvvb*,�ī�~��7���zŎZ���T]����`�sa.\Z*�ϘCR�ZΏ��&��椆��2����.`[��*\\0�)�D�\n��\'���b+RL��k���Z�״�7b���6\"_��4�����F��۫�\0����E��cE{x�o~{��v�Z��v!W\r�餱=N�:��h�p�����@AR�ţ2�\'�̮c��> P䊷��\0f�a�;��э��G�T���[����\0c����%5?I����QPcwwF�V�/�V�����i6���*�h��яW����a�3�Pl�O���\r`�G,���2�����&1�z�ЊL�isF��X3:�`�uP�Bv���ڍ�������DJB;�����,`��\'e2��CDM�yE��ޯ�L`|��-Lw5/��`���������j��A�n9b�r�By0�<[����UՔ�7����v�5�{�\0�.��1���\n<G�ŗ��\r�\\@�1R���@�7����ZC�������qOٗ\0����\Zs����&FR�yNc�k�}��l�9�h|e�~����o��*�O���+��C_v\0i���T�\r�������^V[m��)Aؗ��(&� m�!�WF�E�d�;i�&\n�\n��;D(l�c�=�&٫�_�0jA��D�w��dwJ�5����$�We6J��Z���k�X��`�&=n^��o.���r}��˾��\0�y��IV��!�Z��k3^��@�b�N%G��J� 3���!��(�P�4�\0� �\nF�/V���|K����P�6��-�hy�h:�_t��}7�,T���\09�.��1\Z\ZV-�u����l\ngHw���^{Yx%Z��D�>ɒP3Q���[Ҭ��`#zJ��4A;��;f\"�J�`�\0p��(�K���.���n�.mXm�J���a�˼\r;�bY�Ih��~B1�����4��n��%� �e��\ZMǴ95�,��4�-��\r�(g��u�<���D�t>�+]g��y5*$/x�W�����֥��5p�El,i�45|D9UዕMx��g�u|E�g�-������`���gFhO���������ݘ-�\0��a�;M��W�;����|2����|0��Jf�rbn\\�`̣����3�φr�����;�5G�y�y_Y�|3��','d30279d7-8136-4bca-bba9-9d6ad6e8b9de.jpg'),(4,'ㅑ[ㅔ','ㅑㅔ[ㅐㅑ[ㅔㅐ','ㅑ[ㅔㅐㅑ[ㅔㅐ','ㅑ[ㅔㅐㅑ[ㅔㅐ','ㅑ[ㅐㅔㅑ[ㅔㅐ','2023-03-08','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0z\0\0\06\0\0\0��\Z�\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0�IDATx^�[LWǷ�Ӵ�I��&m|�i���6i�4M�З6��mT��R��-J�ѤP�h�j-x�.��KeYA�K��#{�ݹn?��p���a�6:�����|���~��LGǤu뚴n]�֭kҺuMZ��I��5iݺ��͝3� !uJ���A�\\ҺuMZ��I��5iݺ&�[�̬���GEm+�|[�̐� A��ѝQ��F�^f����D�LO� Du�n{�-�P�T�k����;��L���~�!{��?W39�Z����ޠ�;.�%6��v��{�#A��u�L p�g�f��Er\\+�������{�n���7����e�����Iu�$Rw�����%s�$��:܌�+�,E�[�>��5;W�\n���w`�8�xj-�I�n`����Lm��pb���<���=,H׊LxbD�>��+7��� �%)��ܒ�#M��t�����?A^�Hv�h\"k\nO�t돰1<U�)D�Y�3�Ma#��߸N�E%���+Of�$�n_�;؅.�׬]N���$W7ps �w$�n��+ά�����GV6����r\\���Uw�z�\r��%�S�\"Z��(<&�dqSѪ��-lKin����JYT�ȍ����麗gm�_a7)��_��<��F,\rM�q�7���zѹ�kԿΌ���Zu�|�[���B��Y���&���g��\"��4��m&��t�{��R��\rt����y�{k�hF���jح�E�����}w\'N�����ƕ�-R{�xuCƼ�C��&k��1;�\rs���w���A�#F98K{��G��xw�C�NEr����\'����p��������P��;,f�!4��o!�\Zi�db)��г�\\5<p�.\\����g�����T�q%�;� ��h�X	���o R�(ݐ\"3�����yԎ�&3~{���l��3�B8��D�Kxvm!��#�]��f��(��Ձ*i�uR�@�\r�<\ZBSp&I��΋X%��2��)s�	���)P�4�_�ɺeq��D�~k5)\n<.P%��RI����W@Chv�ڈF�p�9+�m\ZݮUKP����,)\n��}�_5�;O�!}�b�lbdB�Am�^�)����g�R�/z�/*���i������Ch��~��Y���џ�7r��%*�c�U�Mcl�\'To�B��U�\Zlvn�İ7*�κ\Z��NU@m�U7�jVwͬ>ࠕ\r�❂8EW�钿�D�~.j��`�a_���[B~���v���\\�W�/�R�[�L���]ѣ�.��뎙ſ8���&�\Z��EH�r,��Yo[.����@mӤ����$YUW打��@�IC����������7�q1��~.|�#p\\���Y��ڦIM����+o�qW��&��j�L\Z\"�ij�&%u���~H����H����iRP������ u\Z�ڦI5��OnA�B��f�:\rAmӤ��%Ş����M<��\0)��6M���~���oA���*2@CP�4�׽����#��#c]��HN�3	1�XMAm�Lwf!�t����]�Y[���a��K��B��!�m�\'�;�F�\r�\Z�L�V?�Xa��L%rc&���y_�]0N���LRW/��,B���m�$w�bP�ֻ��2�1����FJ+/!k1C&5ftZ}t�G�>�J�B����2�OndF#&�O�;:�V(\0\0\0\0IEND�B`�','3e40c3d5-1af7-4b0b-b83c-3d61edafd328.png');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qna` (
  `qna_number` int(11) NOT NULL AUTO_INCREMENT,
  `qna_writer` varchar(30) NOT NULL,
  `qna_pw` varchar(30) NOT NULL,
  `qna_title` varchar(50) NOT NULL,
  `qna_content` text NOT NULL,
  `qna_regdate` datetime DEFAULT NULL,
  `qna_readcount` int(11) DEFAULT '0',
  `qna_ref` int(11) NOT NULL,
  `qna_step` int(11) NOT NULL,
  `qna_level` int(11) NOT NULL,
  PRIMARY KEY (`qna_number`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (6,'333','123','333','333','2023-03-06 14:57:45',18,1,0,0),(7,'관리자','333','333','333','2023-03-06 15:08:03',5,1,2,1),(8,'123','123','123','123','2023-03-06 15:19:49',12,8,0,0),(9,'관리자','123','123123','123123','2023-03-06 16:46:14',5,1,1,1),(10,'123','123','123','123','2023-03-06 16:48:00',1,10,0,0),(11,'123','123','123','123','2023-03-06 16:48:05',1,11,0,0),(12,'123','123','123','123','2023-03-06 16:48:08',2,12,0,0),(13,'123','123','123','1234','2023-03-06 16:48:12',1,13,0,0),(14,'123','213','123','123','2023-03-06 16:48:17',0,14,0,0),(16,'123','123','123','123','2023-03-06 16:48:29',45,16,0,0),(17,'큐앤애','1','후원금은 투명하게 쓰이나요?','후원금은 투명하게 쓰이나요?후원금은 투명하게 쓰이나요?','2023-03-07 16:45:58',22,17,0,0);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order`
--

DROP TABLE IF EXISTS `shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order` (
  `order_no` int(11) NOT NULL AUTO_INCREMENT,
  `order_prono` int(11) NOT NULL,
  `order_quantity` varchar(20) NOT NULL,
  `order_orddate` datetime DEFAULT NULL,
  `order_state` varchar(20) NOT NULL,
  `order_userid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order`
--

LOCK TABLES `shop_order` WRITE;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product` (
  `product_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_stock` int(11) DEFAULT NULL,
  `product_detail` varchar(4000) DEFAULT NULL,
  `product_comp` varchar(50) DEFAULT NULL,
  `product_regdate` datetime DEFAULT NULL,
  `product_image` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`product_no`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'neighbordb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08 14:31:46

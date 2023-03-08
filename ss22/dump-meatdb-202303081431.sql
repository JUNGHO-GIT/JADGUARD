-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 192.168.0.126    Database: meatdb
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
  `adminid` varchar(20) NOT NULL,
  `adminpw` varchar(20) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin01','meat0727');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

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
  `fileupload` mediumblob,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (8,'김지우','정지우 사장님 손맛','정지우 사장님 고기손질 너무잘해 ','11','2023-01-31 15:44:27',1,8,0,0,'192.168.0.15','meat2.jpg'),(9,'박정호','이건 무슨고기지?','사장님 이건 무슨고기에요??? ','11','2023-01-31 15:47:43',1,9,0,0,'192.168.0.15','11.jpg'),(10,'문정호','고기먹다가 살졌어요','고기먹다가 10키로가 졌어요 환불해주세요','11','2023-01-31 15:48:42',1,10,0,0,'192.168.0.15','12.jpg'),(11,'박정호','오리고기는 살이안찔까?','오리고기는 과연 살이 안찔까??? 아니다. 그럼 정답이 무엇일까?','11','2023-01-31 15:49:15',1,11,0,0,'192.168.0.15','13.jpg'),(12,'돈정호','돈까스','돈까스까스 스윙스','11','2023-01-31 15:49:41',0,12,0,0,'192.168.0.15','15.jpg'),(13,'양정호','양고기는 거짓말하지 않는다','선생님들 혹시 양고기를 드셔보셨나요','11','2023-01-31 15:50:10',0,13,0,0,'192.168.0.15','16.jpg'),(14,'고정호','고기먹고 건강해졌어요','정지우 사장님 고기먹다가 건강해졌어요 환불해주세요','11','2023-01-31 15:50:46',1,14,0,0,'192.168.0.15','17.jpg'),(15,'곱정호','곱창은 고기일까?','곱창은 고기일까 아님 또다른 어떤것일까?','11','2023-01-31 15:54:18',0,15,0,0,'192.168.0.15','20.jpg'),(16,'돼정호','소곱창과 돼지곱창','소곱창과 돼지곱창중 어느것이 더 맛있을까?','11','2023-01-31 15:54:44',0,16,0,0,'192.168.0.15','21.jpg'),(17,'막정호','대창과 막창','대창과 막창중 무엇을 골라야 한다면 난 대창을 먹어버려','11','2023-01-31 15:55:47',1,17,0,0,'192.168.0.15','23.jpg'),(20,'11','11','11','11','2023-01-31 15:58:14',6,20,0,0,'192.168.0.15','4. JVM 메모리 3.png'),(22,'123','123','1232312','123','2023-01-31 17:09:39',4,21,0,0,'192.168.0.126','123.jpg'),(23,'11','11','111111','11','2023-02-23 18:14:20',0,23,0,0,'127.0.0.1','맥모닝1.jpg'),(24,'11','11','11','11','2023-02-23 18:15:40',1,24,0,0,'127.0.0.1','7. 메소드.png'),(25,'11','11','11','11','2023-02-23 18:16:53',1,25,0,0,'127.0.0.1','이름 아이콘.png');
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
INSERT INTO `member` VALUES ('11','123','13','13','3','41498','대구 북구 3공단로 3','3','2023-01-20'),('568','123','123','123','123','05669','서울 송파구 가락로23길 2','123','2023-01-31'),('aaa3','333','dfd','dsaf@naver.com','151515','06230','서울 강남구 도곡로33길 6','123','2023-01-31'),('dd','123','223','21212121','010','46702','부산 강서구 대저로221번가길 29','13','2023-01-20'),('q','q','q','q','010.2455.5545','06715','서울 서초구 방배로 12','q','2023-01-25'),('zdxs123','123','정지우','zdxs123@naver.com','010-3586-4702','14002','경기 안양시 만안구 병목안로 35','5층 502호','2023-01-25'),('zdxs134','123','정지우','zdxs123@naver.com','010-3586-4702','14002','경기 안양시 만안구 병목안로 35','123','2023-01-30'),('정지우','123','정지우','zdxs123@naver.com','010-3586-4702','14002','경기 안양시 만안구 병목안로 35','5층 502호 건양빌딩','2023-01-20'),('지랄병','123','지랄','zdxs123@naver.com','010-3586-4702','28574','충북 청주시 서원구 1순환로 632','123','2023-01-31');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) CHARACTER SET euckr NOT NULL,
  `title` varchar(50) CHARACTER SET euckr NOT NULL,
  `content` text CHARACTER SET euckr NOT NULL,
  `pw` varchar(20) CHARACTER SET euckr NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `readcount` int(11) DEFAULT '0',
  `ip` varchar(20) CHARACTER SET euckr DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (2,'공지','개인정보 처리 방침 개정 사전안내','개정된 이용약관은 2022년 10월 28일에 반영됩니다.\r\n\r\n\r\n\r\n\r\n\r\n* 개정에 동의하지 않으시는 경우 거부의사 표시(회원탈퇴)를 하실 수 있습니다.\r\n\r\n거부 의사 표시를 하지 않으신 경우 개정에 동의하신 것으로 간주됩니다.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n※ 회원님의 개인정보를 안전하게 활용하고 관련 법규에 의거하여 보호하고 있습니다.','a','2023-01-19 10:23:55',21,NULL),(3,'공지','마이박스 서비스 리뉴얼 안내','사업자 회원님(VVIP/VIP 대상)께 제공되던 마이박스 서비스가 2022년 12월 중 새롭게 리뉴얼될 예정입니다.\r\n\r\n\r\n\r\n현재 마이박스 서비스를 이용 중이신 회원분들은 리뉴얼 이후에도 별도 안내해 드리는 기간까지 지속 이용이 가능하시나,  \r\n\r\n신규 이용을 희망하시는 경우에는 현시점부터 추가 이용 신청 접수가 불가함을 안내드립니다.\r\n\r\n(※ 기존 마이박스 이용 중이신 고객분들께는 관련하여 11월 中 별도 유선 안내 예정)\r\n\r\n회원분들의 너그러운 양해 부탁드립니다.\r\n\r\n\r\n\r\n리뉴얼된 마이박스 서비스 이용에 대한 상세 내용은 리뉴얼 오픈 시점에 서비스 상세페이지를 통해 안내드리도록 하겠습니다.\r\n\r\n마이박스 리뉴얼 관련 문의사항은  고객센터(1644-6689)로 연락 부탁드립니다.\r\n\r\n\r\n\r\n항상 미트박스를 사랑해 주시는 고객님들께 감사 드리며, 보다 더 나은 서비스로 보답할 수 있는 미트박스가 되겠습니다.\r\n\r\n\r\n\r\n감사합니다.\r\n\r\n','a','2023-01-19 10:24:18',8,NULL),(4,'공지','2022년 소상공인의 날 축하 이벤트 당첨자 발표','22년 소상공인의 날 축하 이벤트 당첨자 발표\r\n\r\n\r\n\r\n안녕하세요\r\n1등 고기 직거래, 미트박스입니다.\r\n\'22년 소상공인의 날을 맞이하여 진행했던 이벤트들의 당첨자를 안내드립니다.\r\n참여 해주신 고객 여러분께 다시 한 번 감사의 말씀을 드립니다.\r\n다음에는 더욱 알찬 이벤트로 찾아 뵙도록 하겠습니다.\r\n-------------------------\r\n\r\n\r\n\r\n▶이벤트 기간\r\n11/04(금) ~ 11/18(금) 2주간 진행\r\n\r\n\r\n(해당 이벤트는 종료 된 이벤트 입니다)\r\n\r\n\r\n-------------------------\r\n\r\n\r\n\r\n▶당첨 내용	\r\n▷이벤트 01 (선물 받기 이벤트)	\r\n· 선물받기를 참여한 고객 중 50명 선정	\r\n· 주문 금액의 5%가 적립 되는 혜택입니다.	\r\n· 배송금액은 적립 혜택에서 제외 됩니다.	\r\n· 당첨일로 부터 30일간의 혜택 입니다.	\r\n· 11/22(화) 부터  ~ 12/21(수) 주문 기준으로 적용됩니다.	\r\n· 포인트 지급은 주문을 하고, 배송이 완료 된 시점부터 7일 이후 포인트가 지급 됩니다.	\r\n\r\n-------------------------\r\n\r\n▷이벤트 02 (댓글 작성 이벤트)\r\n· 댓글을 작성한 고객중 100명 선정\r\n· 스타벅스 아메리카노 쿠폰을 증정합니다.\r\n· 증정일로부터 30일의 유효기간이 있습니다.\r\n· 모바일 기프티쿠폰으로 발송 예정 (SMS) 입니다.\r\n\r\n-------------------------\r\n▷이벤트 03 (상품 추천 이벤트)\r\n· 추천한 상품을, 1Box 이상 구매한 고객 중, 30명 선정\r\n· 미트박스 쿠폰 5만원권 2장 증정 (10만원 쿠폰 팩)\r\n· 5만원 이상 구매시 사용이 가능한 쿠폰입니다.\r\n· 증정일로 부터 30일의 유효기간이 있습니다.\r\n· 쿠폰명 : ★소상공인의 날 이벤트, 5만원 쿠폰★\r\n\r\n\r\n-------------------------\r\n▷이벤트 04 (신규 사장님 이벤트)\r\n· 이벤트 기간 신규로 가입한 고객 중 100명 선정\r\n· 당당한돈 선물세트 (삼겹살 600g + 목살 600g)를 보내드립니다.\r\n· 증정 상품은 냉장 상품입니다. \r\n· 당첨 된 고객은 문자를 드리고, 배송 받으실 주소를 받을 예정입니다.\r\n\r\n\r\n-------------------------\r\n▶공통 내용\r\n· 모든 당첨자는 랜덤 방식으로 추첨하였습니다.\r\n· 모든 당첨자에게는 문자(SMS)로 안내 드릴 예정입니다.\r\n· 미트박스 쿠폰은 발급일로부터 30일의 유효기간이 있습니다.\r\n-------------------------\r\n다시 한번 이벤트에 많은 관심을 가져주셔서 감사합니다.\r\n미트박스 올림','a','2023-01-19 10:24:41',16,NULL),(5,'공지','호주산 소고기 사면 주방용 앞치마 증정 당첨자 발표','안녕하세요.\r\n\r\n사장님 미트박스 입니다.\r\n\r\n\r\n\r\n호주산 소고기 사면 주방용 앞치마 증정 당첨자 발표 드립니다.\r\n\r\n\r\n\r\nz616********\r\nTwoo*****\r\nshoo****\r\nsun8****\r\nbals***\r\nfldt****\r\nmisi****\r\nnazz********\r\nksh1****\r\nzbxm*****\r\nahbh**\r\nhwar*******\r\nsky7*****\r\nshca******\r\nkrav******\r\nnave********\r\nsyhs*****\r\nOiof*****\r\nsung****\r\nkira*****\r\nchki******\r\nmmm3****\r\nKyd8*****\r\nkshh*****\r\nDry1****\r\nbusa****\r\nyama****\r\ntjst*****\r\nalex*********\r\nnora*******\r\nsejo************\r\nnave********\r\nchag***\r\nhamb*******\r\nhail*****\r\ninst******\r\nnave********\r\nnave********\r\nrhk4****\r\npret*******\r\nnave********\r\nnave********\r\nmari******\r\nnave********\r\nekrp***\r\nkaka*******\r\nhj09***\r\npark******\r\nxowl******\r\nydl9****\r\nkdhy***\r\nnave********\r\nnave********\r\nblue********\r\nkaka********\r\ncive**********\r\neko7***\r\nnatu*******\r\nbokg***\r\nrubl*****\r\njoup****\r\ndaey*********\r\nnave********\r\n\r\n*앞치마 발송일: 11/29(화), 12/9(금) 2차 발송\r\n*주소지 확인을 위해 LMS발송 예정입니다.\r\n\r\n\r\n많은관심 감사드립니다.\r\n\r\n미트박스 올림.\r\n\r\n','a','2023-01-19 10:25:04',88,NULL),(6,'공지','사업자회원 신규가입 혜택 변경 건','안녕하세요.\r\n\r\n대한민국 1등 고기 직거래, 미트박스 입니다.\r\n\r\n \r\n\r\n2022년 12월 02일부터 사업자회원 신규가입 혜택이 변경되어 안내 드립니다.\r\n\r\n \r\n\r\n\r\n\r\n■ 변경 내용\r\n\r\n \r\n\r\n1. 사업자회원 가입 시, \'신규가입 쿠폰 2만원 권\', \'미트포인트 1천원\'과 함께\r\n\r\n   미트박스 샘플존에서 사용 가능한 \'샘플쿠폰 5천원 권\'이 함께 지급됩니다.\r\n\r\n \r\n\r\n2. \'신규가입 쿠폰 2만원 권\'은 미트박스 전 상품에 사용 가능하며,\r\n\r\n   5만원 이상 박스 구매 시 사용 가능합니다.\r\n\r\n \r\n\r\n3. \'샘플쿠폰 5천원 권\'은 미트박스 샘플존에 있는 샘플고기 구매 시 사용 가능합니다.\r\n\r\n\r\n\r\n4. 첫 구매 시 발급되는 \'첫구매 감사쿠폰 5천원 권\'은 3매가 발급됩니다.\r\n(기존 4매 → 변경 3매)','a','2023-01-19 10:25:24',23,NULL),(7,'공지','미트박스 식자재관 서비스 변경 안내','안녕하세요.\r\n\r\n\r\n\r\n미트박스 식자재관이 2월 1일부터 새로운 변화를 위한 재정비 시간을 가지려 합니다.\r\n\r\n\r\n\r\n더욱 다양한 상품 구성과 합리적인 가격, 편리한 묶음배송 서비스를 제공하기 위해\r\n\r\n기존 식자재관 묶음배송 상품은 1월 31일부로 판매가 일시 중단되며,\r\n\r\n식자재관 코너에서는 미트박스에서 판매 중인 3천여 가지의 식자재 상품을 계속해서 구매하실 수 있습니다.\r\n\r\n\r\n\r\n그동안 식자재관의 묶음배송 상품을 이용해 주신 고객님들의 애정을 담은 소중한 의견들을 반영하여 더 나은 서비스로 빠른 시일 내에 돌아올 것을 약속드립니다.\r\n\r\n\r\n\r\n미트박스 식자재관을 이용하시는 고객님께 다시 한번 진심으로 감사드리며,\r\n\r\n앞으로도 많은 관심과 이용 부탁드립니다.\r\n\r\n\r\n\r\n감사합니다.','a','2023-01-19 10:25:43',11,NULL),(8,'공지','전라도, 경상도,강원도 지역 택배 배송 불가 안내','[긴급 공지]\r\n\r\n\r\n\r\n태풍 \'흰남노\' 영향으로 전라도, 경상도, 강원도(일부) 전역 택배 송장 출력이 제한되어 출고 불가안내드립니다.\r\n\r\n\r\n\r\n강원도 일부 : 강릉, 동해,삼척,속초 양양, 고성, 정선, 영월, 태백 \r\n\r\n','a','2023-01-19 10:26:06',29,NULL),(9,'공지','서류 다운로드 서비스 안내','서류 다운로드 서비스 안내','a','2023-01-19 10:26:26',14,NULL),(10,'공지','미트박스 권장 브라우저 안내 (인터넷 익스플로러 지원 중단)','미트박스 권장 브라우저 안내 (인터넷 익스플로러 지원 중단)\r\n\r\n\r\n안녕하세요, 미트박스입니다.\r\n\r\n미트박스의 인터넷 익스플로러(IE) 브라우저 지원이 중단될 예정으로 안내드립니다.\r\n\r\n\r\n지원 종료 후에도 인터넷 익스플로러(IE)를 통해 미트박스 사이트 이용은 가능하지만,\r\n원활한 지원이 불가능 할수 있습니다.\r\n\r\n아래 대체 브라우저 이용을 권장 드립니다.\r\n\r\n\r\n■ Internet Explorer (IE) 지원 중단\r\n\r\n\r\n-. 반영 일시: 2022년 07월 OO일 (O)\r\n\r\n-. 사유: 마이크로 소프트사 공식 지원종료\r\n\r\n(발표내용)https://blogs.windows.com/wp-content/uploads/prod/sites/2/2021/05/Microsoft-Edge_Korean-Blog-and-FAQ.pdf?WT.mc_id=WDIT-MVP-4025565\r\n\r\n\r\n-. 대체 브라우저: Google Chrome (구글 크롬)\r\n\r\nhttps://www.google.co.kr/chrome/?brand=IBEF&gclid=Cj0KCQiA64GRBhCZARIsAHOLriJeHRyMkotS7ln3L1mXEUj90uDryK538KqoD5S5zJhewOfZsXuJa9AaAhQaEALw_wcB&gclsrc=aw.ds 에서 다운로드 가능\r\n\r\n\r\n\r\nMicrosoft Edge (마이크로소프트 엣지)\r\n\r\nhttps://www.microsoft.com/ko-kr/edge 에서 다운로드 가능\r\n\r\n\r\n더 나은 서비스로 보답하는 미트박스가 되겠습니다.\r\n\r\n감사합니다.','a','2023-01-19 10:26:48',75,NULL),(11,'공지','금융결제원 ','- 작업내용 : 금융결제원 오픈뱅킹 재해복구훈련\r\n\r\n- 작업일시 : 2022년 6월 18일(토) 00:00 ~ 03:00 (3시간)\r\n\r\n- 작업기관 : 금융결제원\r\n\r\n- 작업영향 : 오픈뱅킹 서비스 전체 중단\r\n\r\n  1) 계좌간편결제 전은행 계좌등록 및 결제, 충전 불가\r\n\r\n  2) N자금이체 송금이체 이용 불가\r\n\r\n ** 훈련 중 거래요청 시 \"O005(허용되지 않은 API입니다)\" 응답코드 수신 예정\r\n				\r\n				','1','2023-01-31 11:23:53',4,NULL),(12,'공지','주문세절 일시 판매 중단 안내','안녕하세요.\r\n\r\n미트박스 입니다.\r\n\r\n\r\n\r\n(주)강남미트 주문세절 상품이 가공장 내 코로나 확진으로 인하여 일시적으로 판매가 중단될 예정입니다.\r\n\r\n구매에 불편을 드려 대단히 죄송합니다.\r\n\r\n\r\n\r\n-일자: 03월 14일(월) 오후 6시 이후 ~ 03월 24(목) 오전 10시 이전까지(*일정보다 조기 오픈 가능)\r\n\r\n\r\n\r\n고객님들께 도움이 되는 미트박스가 될 수 있도록 항상 노력하겠습니다.\r\n\r\n감사합니다.','1','2023-01-31 11:24:33',8,NULL),(13,'공지','신용카드결제시 계근정산 반영 문의','신용카드 결제 상품 계전정산 금액은 예치금 환불이 아닌 카드 부분취소로 반영됩니다.\r\n\r\n\r\n\r\n부분취소 기간은 상품출고시 계근 후 2~3일이 소요되며 부분 취소가 왼료 되면 신용 \r\n카드전표가 원승인금액/부분취소금액이 반영된 전표로 업데이트됩니다.\r\n\r\n\r\n\r\n원승인금액 : 주문금액으로 최초 승인금액\r\n\r\n부분취소금액 : 계근되어 정산 받으실 금액\r\n\r\n*최초승인금액(주문금액)에서 계근정산된 금액만큼 부분취소되어 최종승인금액(최종 결제금액)이 됩니다.\r\n				','1','2023-01-31 15:34:46',9,NULL);
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
  `writer` varchar(30) CHARACTER SET euckr NOT NULL,
  `subject` varchar(50) CHARACTER SET euckr NOT NULL,
  `content` text CHARACTER SET euckr NOT NULL,
  `pw` varchar(20) CHARACTER SET euckr NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `ref` int(11) NOT NULL,
  `re_step` int(11) NOT NULL,
  `re_indent` int(11) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'a','a','a','a','2023-01-19 12:55:12',0,1,0,0),(2,'a','a','a','a','2023-01-19 12:55:34',1,2,0,0),(3,'a','a','a','a','2023-01-19 12:55:36',1,3,0,0),(4,'s','s','s','s','2023-01-19 12:55:39',1,4,0,0),(5,'a','a','aa','a','2023-01-19 12:55:42',0,5,0,0),(6,'a','a','a','a','2023-01-19 12:55:45',2,6,0,0),(7,'a','a','a','a','2023-01-19 12:55:48',0,7,0,0),(10,'a','a','a','a','2023-01-19 12:55:56',3,10,0,0),(11,'a','a','a','a','2023-01-19 12:55:59',5,11,0,0),(13,'a','abbb','a\r\n		','a','2023-01-19 13:11:11',10,13,0,0),(14,'관리자','[답변드립니다.] 13a님께 드리는 답변','잘못했습니다.','a','2023-01-19 14:05:53',39,13,1,1),(15,'관리자','[답변드립니다.] 2a님께 드리는 답변.','2님','a','2023-01-19 14:09:32',0,2,1,1),(17,'관리자','[답변드립니다.]ffff','fff','f','2023-01-19 15:30:51',12,11,1,1),(18,'15번째글','야옹','야','1','2023-01-19 15:33:38',10,18,0,0),(19,'관리자','[답변드립니다.]','옹.','1','2023-01-19 15:33:48',9,18,1,1),(23,'d','3333','123\r\n		','123','2023-01-19 15:48:58',11,20,0,0),(24,'관리자','[답변드립니다.]','123','123','2023-01-19 15:49:07',19,20,1,1),(26,'칠무인','고기맛','고기맛이 취향이 아니에요 환불해주세요\r\n		\r\n		','1','2023-01-25 11:37:53',40,26,0,0),(27,'123','123','1123','123','2023-01-26 11:10:04',21,27,0,0),(28,'kakao124***','지불한 금액이랑 명세표랑 금액이 다름','고기 명세표 보니깐 지불한 금액보다 적게 나와있는데 그 금액은 어떻게 된건가요..?? 돌려주시는건가요 ??','1','2023-01-31 12:12:10',4,28,0,0),(29,'jeremy242***','주문취소바랍니다.','한우꾸리살인줄알고 주문했는데\r\n육우네요\r\n주문취소해주세요','1','2023-01-31 12:12:31',2,29,0,0),(30,'dnlrudrb***','17일날 입금했는데 왜 배송이 안돼죠??','설연휴 공지보고 받을수있겠군아하고 주문했는데 이제보니까 26일날 받내요? 그럼.. 저럴줄 알았으면 안시키는건데..','1','2023-01-31 12:12:58',3,30,0,0),(31,'naver313***','상품검색이 안되요.','홈페이지에서 로그인 안하고 한우 채끝을 검색하면\r\n등급이랑 가격 kg이 나오는게 검색 되었는데\r\n로그인하면 개인으로 구매 가능한 것만 검색이 되네요\r\n방법이 없나요?','1','2023-01-31 12:13:18',6,31,0,0),(32,'관리자','[답변드립니다.]','\r\n사장님 죄송합니다만 개인회원은 사업자 전용관 전체를 이용할수 없는점\r\n양해 부탁드립니다.\r\n\r\n추가 문의 사항이나 궁금하신 내용은\r\n미트박스 고객센터 (평일 09:00~19:00 / ☎1644-6689) 로 문의 주시면 신속하게 답변드리도록 하겠습니다.\r\n\r\n항상 건강 조심하시고 언제나 고객의 소리에 귀 기울이는 미트박스가 되겠습니다.\r\n감사합니다.\r\n\r\n\r\n ----Original Message---- \r\n 홈페이지에서 로그인 안하고 한우 채끝을 검색하면\r\n등급이랑 가격 kg이 나오는게 검색 되었는데\r\n로그인하면 개인으로 구매 가능한 것만 검색이 되네요\r\n방법이 없나요?','1','2023-01-31 12:14:09',1,31,1,1),(33,'관리자','[답변드립니다.]','문의 주신 내용으로 유선 안내드렸습니다.\r\n다른 궁금하신 사항은\r\n미트박스 고객센터 (평일 09:00~19:00 / ☎1644-6689) 로 문의 주시면 신속하게 답변드리도록 하겠습니다.\r\n항상 건강 조심하시고 언제나 고객의 소리에 귀 기울이는 미트박스가 되겠습니다.\r\n감사합니다.\r\n\r\n\r\n ----Original Message---- \r\n 고기 명세표 보니깐 지불한 금액보다 적게 나와있는데 그 금액은 어떻게 된건가요..?? 돌려주시는건가요 ??','1','2023-01-31 12:14:25',0,28,1,1),(34,'관리자','[답변드립니다.]','사장님 죄송합니다만 취소에 대한 문의는 번거롭더라도\r\n미트박스 고객센터 (평일 09:00~19:00 / ☎1644-6689) 로 연락 부탁드립니다.\r\n\r\n항상 건강 조심하시고 언제나 고객의 소리에 귀 기울이는 미트박스가 되겠습니다.\r\n감사합니다.\r\n\r\n\r\n ----Original Message---- \r\n 한우꾸리살인줄알고 주문했는데\r\n육우네요\r\n주문취소해주세요','1','2023-01-31 12:14:40',0,29,1,1),(35,'관리자','[답변드립니다.]','사장님 죄송합니다만 판매자택배는 13일 마감되었습니다.\r\n상품 배송 늦어 불필요하여 취소시 미트박스 고객센터 (평일 09:00~19:00 / ☎1644-6689) 로\r\n문의 부탁드립니다.\r\n\r\n항상 건강 조심하시고 언제나 고객의 소리에 귀 기울이는 미트박스가 되겠습니다.\r\n\r\n\r\n ----Original Message---- \r\n 설연휴 공지보고 받을수있겠군아하고 주문했는데 이제보니까 26일날 받내요? 그럼.. 저럴줄 알았으면 안시키는건데..','1','2023-01-31 12:14:54',1,30,1,1),(36,'mykdw0***','살치살(미국/초이스/낱개/냉장) 입고 문의','살치살(미국/초이스/낱개/냉장) 입고 안되나요????','1','2023-01-31 12:15:25',8,36,0,0),(37,'qazsxdr***','사업자등록증없이는 구매안되나요?','노량진 컵밥거리입니다\r\n사업자등록증없이 구매가안되나요?','1','2023-01-31 12:15:59',4,37,0,0),(38,'관리자','[답변드립니다.]','dsf\r\n\r\n\r\n ----Original Message---- \r\n 살치살(미국/초이스/낱개/냉장) 입고 안되나요????','1','2023-01-31 16:50:15',1,36,1,1);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_info`
--

DROP TABLE IF EXISTS `shop_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_info` (
  `pro_no` int(5) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(5) NOT NULL,
  `stock` int(5) DEFAULT NULL,
  `detail` varchar(4000) DEFAULT NULL,
  `comp` varchar(50) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pro_no`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_info`
--

LOCK TABLES `shop_info` WRITE;
/*!40000 ALTER TABLE `shop_info` DISABLE KEYS */;
INSERT INTO `shop_info` VALUES (1,'159757','캠핑용 항정살 500g',15900,98,'돼지항정살','롯데','2023-01-18 00:00:00','meat.jpg'),(2,'159758','숙성육 소고기 꽃갈비살 150g',32000,99,'일본산','롯데','2023-01-12 00:00:00','meat2.jpg'),(19,'159575','국내산 돼지고기 한돈 삼겹살 1kg',29500,100,'232','23','2023-01-23 15:13:21','55013.jpg'),(25,'1279875','양갈비 숄더렉 500g',29500,100,'양갈비 숄더렉 500g','롯데','2023-01-31 11:17:07','meat3.jpg'),(26,'275541','소고기 안심 스테이크 150g',15900,100,'청년고기 소고기 안심 스테이크 큐브 찹스테이크 150g 소포장 호주산','청년고기','2023-01-31 11:22:33','meat4.jpg'),(27,'875214','생 오리 슬라이스 400g 로스 구이 주물럭',7900,99,'캠핑용 고기','롯데','2023-01-31 11:32:19','meat5..jpg');
/*!40000 ALTER TABLE `shop_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order`
--

DROP TABLE IF EXISTS `shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order` (
  `ordno` int(5) NOT NULL AUTO_INCREMENT,
  `pro_no` int(5) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `orddate` datetime DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `userid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ordno`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order`
--

LOCK TABLES `shop_order` WRITE;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
INSERT INTO `shop_order` VALUES (1,2,'1','2023-01-20 13:10:36','1','aaa'),(2,1,'1','2023-01-20 13:10:36','1','aaa'),(3,1,'2','2023-01-20 14:13:58','1','aaa'),(4,1,'3','2023-01-20 14:14:30','1','aaa'),(5,2,'1','2023-01-20 14:20:12','1','aaa'),(6,1,'1','2023-01-20 14:22:46','1','aaa'),(7,1,'1','2023-01-20 14:25:18','1','aaa'),(8,1,'1','2023-01-20 14:27:56','1','aaa'),(9,2,'1','2023-01-20 15:05:58','1','aaa'),(10,2,'1','2023-01-20 15:11:03','1','aaa'),(11,2,'1','2023-01-20 15:12:23','1','aaa'),(12,2,'1','2023-01-20 15:14:35','1','aaa'),(13,2,'1','2023-01-20 15:15:29','1','aaa'),(14,2,'1','2023-01-20 15:17:52','1','aaa'),(15,1,'1','2023-01-20 17:43:03','1','dd'),(16,2,'1','2023-01-22 14:51:04','1','11'),(19,19,'3','2023-01-25 16:24:26','1','11'),(21,1,'1','2023-01-26 18:06:45','1','11'),(23,27,'1','2023-01-31 16:55:50','1','q');
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'meatdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08 14:31:32

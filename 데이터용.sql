CREATE DATABASE  IF NOT EXISTS `pnusw44` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pnusw44`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: pnusw44
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `deluser`
--

DROP TABLE IF EXISTS `deluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deluser` (
  `uid` varchar(30) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `wdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deluser`
--

LOCK TABLES `deluser` WRITE;
/*!40000 ALTER TABLE `deluser` DISABLE KEYS */;
INSERT INTO `deluser` VALUES ('1','test1','tes1.gmail.com','2023-03-23 17:41:41'),('10','test','test10@gmail.com','2023-03-23 17:03:03');
/*!40000 ALTER TABLE `deluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` varchar(30) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1','ㅈ','ㄷㅇ','2023-03-23 17:43:50'),('100','test','test100@gmail.com','2023-03-23 16:33:41'),('101','test','test101@gmail.com','2023-03-23 16:33:41'),('102','test','test102@gmail.com','2023-03-23 16:33:41'),('103','test','test103@gmail.com','2023-03-23 16:33:41'),('104','test','test104@gmail.com','2023-03-23 16:33:41'),('105','test','test105@gmail.com','2023-03-23 16:33:41'),('106','test','test106@gmail.com','2023-03-23 16:33:41'),('107','test','test107@gmail.com','2023-03-23 16:33:41'),('108','test','test108@gmail.com','2023-03-23 16:33:41'),('109','test','test109@gmail.com','2023-03-23 16:33:41'),('110','test','test110@gmail.com','2023-03-23 16:33:41'),('111','test','test111@gmail.com','2023-03-23 16:33:41'),('112','test','test112@gmail.com','2023-03-23 16:33:41'),('113','test','test113@gmail.com','2023-03-23 16:33:41'),('114','test','test114@gmail.com','2023-03-23 16:33:41'),('115','test','test115@gmail.com','2023-03-23 16:33:41'),('116','test','test116@gmail.com','2023-03-23 16:33:41'),('117','test','test117@gmail.com','2023-03-23 16:33:41'),('118','test','test118@gmail.com','2023-03-23 16:33:41'),('119','test','test119@gmail.com','2023-03-23 16:33:41'),('12','test','test12@gmail.com','2023-03-23 16:33:41'),('120','test','test120@gmail.com','2023-03-23 16:33:41'),('123','dqwd','fqsda','2023-03-23 16:16:10'),('1231415','1231512','12r132fq','2023-03-23 15:25:26'),('13','test','test13@gmail.com','2023-03-23 16:33:41'),('14','test','test14@gmail.com','2023-03-23 16:33:41'),('15','test','test15@gmail.com','2023-03-23 16:33:41'),('16','test','test16@gmail.com','2023-03-23 16:33:41'),('17','test','test17@gmail.com','2023-03-23 16:33:41'),('18','test','test18@gmail.com','2023-03-23 16:33:41'),('19','test','test19@gmail.com','2023-03-23 16:33:41'),('2','test','test2@gmail.com','2023-03-23 16:33:41'),('20','test','test20@gmail.com','2023-03-23 16:33:41'),('21','test','test21@gmail.com','2023-03-23 16:33:41'),('22','test','test22@gmail.com','2023-03-23 16:33:41'),('23','test','test23@gmail.com','2023-03-23 16:33:41'),('24','test','test24@gmail.com','2023-03-23 16:33:41'),('25','test','test25@gmail.com','2023-03-23 16:33:41'),('26','test','test26@gmail.com','2023-03-23 16:33:41'),('27','test','test27@gmail.com','2023-03-23 16:33:41'),('28','test','test28@gmail.com','2023-03-23 16:33:41'),('29','test','test29@gmail.com','2023-03-23 16:33:41'),('3','test','test3@gmail.com','2023-03-23 16:33:41'),('30','test','test30@gmail.com','2023-03-23 16:33:41'),('31','test','test31@gmail.com','2023-03-23 16:33:41'),('32','test','test32@gmail.com','2023-03-23 16:33:41'),('33','test','test33@gmail.com','2023-03-23 16:33:41'),('34','test','test34@gmail.com','2023-03-23 16:33:41'),('35','test','test35@gmail.com','2023-03-23 16:33:41'),('36','test','test36@gmail.com','2023-03-23 16:33:41'),('37','test','test37@gmail.com','2023-03-23 16:33:41'),('38','test','test38@gmail.com','2023-03-23 16:33:41'),('39','test','test39@gmail.com','2023-03-23 16:33:41'),('4','test','test4@gmail.com','2023-03-23 16:33:41'),('40','test','test40@gmail.com','2023-03-23 16:33:41'),('41','test','test41@gmail.com','2023-03-23 16:33:41'),('42','test','test42@gmail.com','2023-03-23 16:33:41'),('43','test','test43@gmail.com','2023-03-23 16:33:41'),('44','test','test44@gmail.com','2023-03-23 16:33:41'),('45','test','test45@gmail.com','2023-03-23 16:33:41'),('46','test','test46@gmail.com','2023-03-23 16:33:41'),('47','test','test47@gmail.com','2023-03-23 16:33:41'),('48','test','test48@gmail.com','2023-03-23 16:33:41'),('49','test','test49@gmail.com','2023-03-23 16:33:41'),('5','test','test5@gmail.com','2023-03-23 16:33:41'),('50','test','test50@gmail.com','2023-03-23 16:33:41'),('51','test','test51@gmail.com','2023-03-23 16:33:41'),('52','test','test52@gmail.com','2023-03-23 16:33:41'),('53','test','test53@gmail.com','2023-03-23 16:33:41'),('54','test','test54@gmail.com','2023-03-23 16:33:41'),('55','test','test55@gmail.com','2023-03-23 16:33:41'),('56','test','test56@gmail.com','2023-03-23 16:33:41'),('57','test','test57@gmail.com','2023-03-23 16:33:41'),('58','test','test58@gmail.com','2023-03-23 16:33:41'),('59','test','test59@gmail.com','2023-03-23 16:33:41'),('6','test','test6@gmail.com','2023-03-23 16:33:41'),('60','test','test60@gmail.com','2023-03-23 16:33:41'),('61','test','test61@gmail.com','2023-03-23 16:33:41'),('62','test','test62@gmail.com','2023-03-23 16:33:41'),('63','test','test63@gmail.com','2023-03-23 16:33:41'),('64','test','test64@gmail.com','2023-03-23 16:33:41'),('65','test','test65@gmail.com','2023-03-23 16:33:41'),('66','test','test66@gmail.com','2023-03-23 16:33:41'),('67','test','test67@gmail.com','2023-03-23 16:33:41'),('68','test','test68@gmail.com','2023-03-23 16:33:41'),('69','test','test69@gmail.com','2023-03-23 16:33:41'),('7','test','test7@gmail.com','2023-03-23 16:33:41'),('70','test','test70@gmail.com','2023-03-23 16:33:41'),('71','test','test71@gmail.com','2023-03-23 16:33:41'),('72','test','test72@gmail.com','2023-03-23 16:33:41'),('73','test','test73@gmail.com','2023-03-23 16:33:41'),('74','test','test74@gmail.com','2023-03-23 16:33:41'),('75','test','test75@gmail.com','2023-03-23 16:33:41'),('76','test','test76@gmail.com','2023-03-23 16:33:41'),('77','test','test77@gmail.com','2023-03-23 16:33:41'),('78','test','test78@gmail.com','2023-03-23 16:33:41'),('79','test','test79@gmail.com','2023-03-23 16:33:41'),('8','test','test8@gmail.com','2023-03-23 16:33:41'),('80','test','test80@gmail.com','2023-03-23 16:33:41'),('81','test','test81@gmail.com','2023-03-23 16:33:41'),('82','test','test82@gmail.com','2023-03-23 16:33:41'),('83','test','test83@gmail.com','2023-03-23 16:33:41'),('84','test','test84@gmail.com','2023-03-23 16:33:41'),('85','test','test85@gmail.com','2023-03-23 16:33:41'),('86','test','test86@gmail.com','2023-03-23 16:33:41'),('87','test','test87@gmail.com','2023-03-23 16:33:41'),('88','test','test88@gmail.com','2023-03-23 16:33:41'),('89','test','test89@gmail.com','2023-03-23 16:33:41'),('9','test','test9@gmail.com','2023-03-23 16:33:41'),('90','test','test90@gmail.com','2023-03-23 16:33:41'),('91','test','test91@gmail.com','2023-03-23 16:33:41'),('92','test','test92@gmail.com','2023-03-23 16:33:41'),('93','test','test93@gmail.com','2023-03-23 16:33:41'),('94','test','test94@gmail.com','2023-03-23 16:33:41'),('95','test','test95@gmail.com','2023-03-23 16:33:41'),('96','test','test96@gmail.com','2023-03-23 16:33:41'),('97','test','test97@gmail.com','2023-03-23 16:33:41'),('98','test','test98@gmail.com','2023-03-23 16:33:41'),('99','test','test99@gmail.com','2023-03-23 16:33:41');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_deleteTrg` AFTER DELETE ON `user` FOR EACH ROW BEGIN
	INSERT INTO deluser(uid,uname,email) VALUES(old.uid, old.uname, old.email);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'pnusw44'
--
/*!50003 DROP PROCEDURE IF EXISTS `deleteuser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteuser`(
IN myuid VARCHAR(30))
BEGIN
DELETE FROM USER WHERE uid= myuid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertuser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertuser`(
 IN myuid VARCHAR(30),
 IN myuname VARCHAR(50),
 IN myemail VARCHAR(50) 
 )
BEGIN
 INSERT INTO user(uid, uname, email)
 VALUES(myuid, myuname, myemail);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchuser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchuser`(
in myuid VARCHAR(30)
)
BEGIN
select * from user where uid = myuid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateuser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateuser`(
in myuid VARCHAR(30),
IN myuname VARCHAR(50),
IN myemail VARCHAR(50))
BEGIN
update user set uname = myuname, email = myemail where uid = myuid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-23 17:53:28

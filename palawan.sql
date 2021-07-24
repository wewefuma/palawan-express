CREATE DATABASE  IF NOT EXISTS `palawan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `palawan`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: palawan
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `receiver_info`
--

DROP TABLE IF EXISTS `receiver_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receiver_info` (
  `RcvName` varchar(64) NOT NULL,
  `RcvContactNo` varchar(11) NOT NULL,
  PRIMARY KEY (`RcvName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiver_info`
--

LOCK TABLES `receiver_info` WRITE;
/*!40000 ALTER TABLE `receiver_info` DISABLE KEYS */;
INSERT INTO `receiver_info` VALUES ('Erlina Katipunan','09776543980'),('Ian','09123456789'),('Raven','09876543211');
/*!40000 ALTER TABLE `receiver_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sender_info`
--

DROP TABLE IF EXISTS `sender_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sender_info` (
  `SndName` varchar(64) NOT NULL,
  `SndContactNo` varchar(11) NOT NULL,
  PRIMARY KEY (`SndName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sender_info`
--

LOCK TABLES `sender_info` WRITE;
/*!40000 ALTER TABLE `sender_info` DISABLE KEYS */;
INSERT INTO `sender_info` VALUES ('Angelo','09276101463'),('Arlene','09887654321'),('Ryan Cruz','09124456783');
/*!40000 ALTER TABLE `sender_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_info`
--

DROP TABLE IF EXISTS `transaction_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_info` (
  `TrCode` varchar(10) NOT NULL,
  `BrAddress` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `SndName` varchar(64) NOT NULL,
  `NumSukiCard` varchar(11) DEFAULT NULL,
  `Rcvname` varchar(64) NOT NULL,
  `RcvBranch` varchar(100) NOT NULL,
  `PurpTrans` varchar(20) NOT NULL,
  `RelSender` varchar(15) NOT NULL,
  `TrAmount` float NOT NULL,
  `TrFee` float NOT NULL,
  `TrTotal` float NOT NULL,
  `receiver_info_RcvName1` varchar(64) NOT NULL,
  `sender_info_SndName1` varchar(64) NOT NULL,
  PRIMARY KEY (`TrCode`,`receiver_info_RcvName1`,`sender_info_SndName1`),
  UNIQUE KEY `TrCode_UNIQUE` (`TrCode`),
  UNIQUE KEY `NumSukiCard_UNIQUE` (`NumSukiCard`),
  KEY `fk_transaction_info_receiver_info_idx` (`receiver_info_RcvName1`),
  KEY `fk_transaction_info_sender_info1_idx` (`sender_info_SndName1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_info`
--

LOCK TABLES `transaction_info` WRITE;
/*!40000 ALTER TABLE `transaction_info` DISABLE KEYS */;
INSERT INTO `transaction_info` VALUES ('844SNOV7GE','Cainta','2021-07-19','02:12:58','Arlene','0012356789','Raven','Cainta','Payment','Mother',7000,115,7105,'Raven','Arlene'),('POIQWE1234','Cainta','2021-07-19','01:00:33','Angelo','1234567890','Ian','Mandaluyong','Payment','Friend',49999,350,50250,'Ian','Angelo'),('QL4I40V3UQ','Tarlac','2021-07-19','05:19:16','Ryan Cruz','8765904321','Erlina Katipunan','Leyte','Payment','Mother',6000,115,6105,'Erlina Katipunan','Ryan Cruz');
/*!40000 ALTER TABLE `transaction_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-19  5:34:01

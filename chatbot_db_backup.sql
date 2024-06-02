-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: abc_chatbot
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- creator: viloshani

--
-- Table structure for table `chatbot`
--

DROP TABLE IF EXISTS `chatbot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(255) DEFAULT NULL,
  `reply` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot`
--

LOCK TABLES `chatbot` WRITE;
/*!40000 ALTER TABLE `chatbot` DISABLE KEYS */;
INSERT INTO `chatbot` VALUES (1,'Hi, Hello,home,back','Hi. I am the virtual assistant at ABC. Choose one of the following options to assist you: Please kindly enter the relevant number in the reply.'),(2,'1,Account','You\'ve selected \"Accounts.\" Please choose the account type:'),(3,'4','You\'ve chosen \"Personal.\" Please choose the type of personal account:'),(4,'6','You\'ve chosen \"Youth Savings\". An ABC Youth Savings Account with higher interest rates. Get 3 times of your salary as an Overdraft facility or a Personal Loan with the HNB Youth Salary Smart Account. Make cashless payments conveniently through SOLO by ABC.'),(5,'7,saving','You\'ve chosen \"Savings\". Our General Saving Account is designed to cater, all your general savings requirements. Save your money with ABC Finance to reap the benefits of highest interest rates in the market.'),(6,'8','You\'ve chosen \"Term Deposits\". A bank term deposit account is a savings account where money is deposited for a fixed period at a predetermined interest rate, providing higher returns but restricting access to funds until maturity.'),(7,'9','You\'ve chosen \"Current\". A bank current account is a type of account designed for frequent deposits and withdrawals, commonly used by businesses and individuals for managing everyday financial transactions.'),(8,'5,business','You\'ve chosen \"Business.\" Please choose one of the business banking services:'),(9,'10','you\'ve chosen \"SME Banking.\" At ABC we offer services such as SME Lending, Commercial/Project lending, and Distributor/Supplier financing.'),(10,'11','You\'ve chosen \"E-business Solutions.\" At ABC we offer a variety of E-business solutions, such as ABC PayFast and HNB Transaction Banking (TxB), HNB Payment gateway and more.'),(11,'2,loan','You\'ve selected \"Loans\" Please choose the loan type:'),(12,'12','You\'ve chosen \"Micro Loans\". Micro loan facilities that encourage community and business growth with HNB FINANCE.'),(13,'13','You\'ve chosen \"Housing Loans\". Loan scheme is suited for those who need financial assistance to purchase, construct or improve their house or property.'),(14,'14','You\'ve chosen \"Business Loans\". Secure the growth and future of your business with our carefully designed business loans.'),(15,'15','You\'ve chosen \"Personal Loan\". Personal loan scheme is focused on providing speedy financial solutions, especially for salaried employees to meet their numerous personal financial needs.'),(16,'3,credit','You\'ve chosen \"Credit\". Choosing the right credit card is easier than ever. Whether you want to pay down balances faster, maximize cash back, earn rewards or begin building your credit history, we have the ideal card for you!'),(17,'contact','Please contact us for more details, please visit www.abc.net, cs@abc.com, 0112345678. Have a great day! :)');
/*!40000 ALTER TABLE `chatbot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatbot_options`
--

DROP TABLE IF EXISTS `chatbot_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatbot_options` (
  `id` int(11) NOT NULL,
  `chatbot_id` int(11) NOT NULL,
  `option` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot_options`
--

LOCK TABLES `chatbot_options` WRITE;
/*!40000 ALTER TABLE `chatbot_options` DISABLE KEYS */;
INSERT INTO `chatbot_options` VALUES (1,1,'Accounts'),(2,1,'Loans'),(3,1,'Credit'),(4,2,'Personal'),(5,2,'Business'),(6,3,'Youth Savings'),(7,3,'Savings'),(8,3,'Term Deposits'),(9,3,'Current'),(10,8,'SMS Banking'),(11,8,'E-business solutions'),(12,11,'Micro Loans'),(13,11,'Housing Loans'),(14,11,'Business Loans'),(15,11,'Personal Loans');
/*!40000 ALTER TABLE `chatbot_options` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03  0:37:30

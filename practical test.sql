-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: moh
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `lab_tests`
--

DROP TABLE IF EXISTS `lab_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_tests` (
  `patient_id` int NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `Description` varchar(45) NOT NULL,
  `lab_results` varchar(45) NOT NULL,
  `lab_samples` varchar(45) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_tests`
--

LOCK TABLES `lab_tests` WRITE;
/*!40000 ALTER TABLE `lab_tests` DISABLE KEYS */;
INSERT INTO `lab_tests` VALUES (1,'Mugisha ','Alvin','fever','malaria','bloodsample'),(2,'Ssebale','Jeremy','bodyweakness','malaria','bloodsample');
/*!40000 ALTER TABLE `lab_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `patient_id` int NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `disease` varchar(45) NOT NULL,
  `treatment` varchar(45) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES (1,'Mugisha ','Alvin','malaria','anti malaria tabs'),(2,'Ssebale','Jeremy','malaria','anti malaria tabs');
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients_table`
--

DROP TABLE IF EXISTS `patients_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients_table` (
  `patient_id` int NOT NULL,
  `patientz_name` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `arrival_tme` time NOT NULL,
  `year` int NOT NULL,
  `address2` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients_table`
--

LOCK TABLES `patients_table` WRITE;
/*!40000 ALTER TABLE `patients_table` DISABLE KEYS */;
INSERT INTO `patients_table` VALUES (1,'Mugisha','Alvin','Bukoto','18:35:00',2025,'kololo','2006-07-08'),(2,'Ssebale','jeremy','Gayaza','01:20:00',2025,'kisasi','2004-09-09');
/*!40000 ALTER TABLE `patients_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_details` (
  `patient_id` int NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `payment_details` varchar(45) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
INSERT INTO `payment_details` VALUES (1,'Mugisha','Alvin','insurance'),(2,'Ssebale','Jeremy','insurance');
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_six`
--

DROP TABLE IF EXISTS `view_six`;
/*!50001 DROP VIEW IF EXISTS `view_six`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_six` AS SELECT 
 1 AS `lastname`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewfive`
--

DROP TABLE IF EXISTS `viewfive`;
/*!50001 DROP VIEW IF EXISTS `viewfive`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewfive` AS SELECT 
 1 AS `patient_id`,
 1 AS `patientz_name`,
 1 AS `lastname`,
 1 AS `address`,
 1 AS `arrival_tme`,
 1 AS `year`,
 1 AS `address2`,
 1 AS `DOB`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewfour`
--

DROP TABLE IF EXISTS `viewfour`;
/*!50001 DROP VIEW IF EXISTS `viewfour`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewfour` AS SELECT 
 1 AS `patient_id`,
 1 AS `patientz_name`,
 1 AS `lastname`,
 1 AS `address`,
 1 AS `arrival_tme`,
 1 AS `year`,
 1 AS `address2`,
 1 AS `DOB`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewone`
--

DROP TABLE IF EXISTS `viewone`;
/*!50001 DROP VIEW IF EXISTS `viewone`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewone` AS SELECT 
 1 AS `patient_id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `Description`,
 1 AS `lab_results`,
 1 AS `lab_samples`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewthree`
--

DROP TABLE IF EXISTS `viewthree`;
/*!50001 DROP VIEW IF EXISTS `viewthree`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewthree` AS SELECT 
 1 AS `total_records`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewtwo`
--

DROP TABLE IF EXISTS `viewtwo`;
/*!50001 DROP VIEW IF EXISTS `viewtwo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewtwo` AS SELECT 
 1 AS `address`,
 1 AS `dob`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_six`
--

/*!50001 DROP VIEW IF EXISTS `view_six`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_six` AS select `patients_table`.`lastname` AS `lastname`,timestampdiff(YEAR,`patients_table`.`DOB`,curdate()) AS `age` from `patients_table` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewfive`
--

/*!50001 DROP VIEW IF EXISTS `viewfive`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewfive` AS select `patients_table`.`patient_id` AS `patient_id`,`patients_table`.`patientz_name` AS `patientz_name`,`patients_table`.`lastname` AS `lastname`,`patients_table`.`address` AS `address`,`patients_table`.`arrival_tme` AS `arrival_tme`,`patients_table`.`year` AS `year`,`patients_table`.`address2` AS `address2`,`patients_table`.`DOB` AS `DOB` from `patients_table` where (`patients_table`.`DOB` > '1990-12-31') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewfour`
--

/*!50001 DROP VIEW IF EXISTS `viewfour`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewfour` AS select `patients_table`.`patient_id` AS `patient_id`,`patients_table`.`patientz_name` AS `patientz_name`,`patients_table`.`lastname` AS `lastname`,`patients_table`.`address` AS `address`,`patients_table`.`arrival_tme` AS `arrival_tme`,`patients_table`.`year` AS `year`,`patients_table`.`address2` AS `address2`,`patients_table`.`DOB` AS `DOB` from `patients_table` where (`patients_table`.`patientz_name` like 'M') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewone`
--

/*!50001 DROP VIEW IF EXISTS `viewone`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewone` AS select `lab_tests`.`patient_id` AS `patient_id`,`lab_tests`.`firstname` AS `firstname`,`lab_tests`.`lastname` AS `lastname`,`lab_tests`.`Description` AS `Description`,`lab_tests`.`lab_results` AS `lab_results`,`lab_tests`.`lab_samples` AS `lab_samples` from `lab_tests` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewthree`
--

/*!50001 DROP VIEW IF EXISTS `viewthree`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewthree` AS select count(0) AS `total_records` from `payment_details` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewtwo`
--

/*!50001 DROP VIEW IF EXISTS `viewtwo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewtwo` AS select `patients_table`.`address` AS `address`,`patients_table`.`DOB` AS `dob` from `patients_table` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-08  4:26:13

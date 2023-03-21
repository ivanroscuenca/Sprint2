-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: Optics
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Optics
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Optics
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Optics` DEFAULT CHARACTER SET utf8mb3 ;
USE `Optics` ;

--
-- Table structure for table `Brand`
--

DROP TABLE IF EXISTS `Brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Brand` (
  `Brand_id` int NOT NULL,
  `Supplier_Supplier_id` int NOT NULL,
  `Brand_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Brand_id`,`Supplier_Supplier_id`),
  KEY `fk_Brand_Supplier1_idx` (`Supplier_Supplier_id`),
  CONSTRAINT `fk_Brand_Supplier1` FOREIGN KEY (`Supplier_Supplier_id`) REFERENCES `Supplier` (`Supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: Optics
-- ------------------------------------------------------
-- Server version 8.0.32-0ubuntu0.22.04.2

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

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Optics
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Optics
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Optics` DEFAULT CHARACTER SET utf8mb3 ;
USE `Optics` ;

--
-- Table structure for table `Brand`
--

DROP TABLE IF EXISTS `Brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Brand` (
  `Brand_id` int NOT NULL,
  `Supplier_Supplier_id` int NOT NULL,
  `Brand_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Brand_id`,`Supplier_Supplier_id`),
  KEY `fk_Brand_Supplier1_idx` (`Supplier_Supplier_id`),
  CONSTRAINT `fk_Brand_Supplier1` FOREIGN KEY (`Supplier_Supplier_id`) REFERENCES `Supplier` (`Supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand`
--

LOCK TABLES `Brand` WRITE;
/*!40000 ALTER TABLE `Brand` DISABLE KEYS */;
INSERT INTO `Brand` VALUES (1,1,'Glasses dark metalic'),(2,2,'Glasses dark metalic'),(3,3,'Glasses yellow plastic'),(4,4,'Glasses red floating'),(5,5,'Glasses grey plastic');
/*!40000 ALTER TABLE `Brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clients`
--

DROP TABLE IF EXISTS `Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clients` (
  `Clients_id` int NOT NULL AUTO_INCREMENT,
  `Clients_name` varchar(45) NOT NULL,
  `Clients_zip` int DEFAULT NULL,
  `Clients_tel` int NOT NULL,
  `Clients_email` varchar(45) DEFAULT NULL,
  `Clients_registration` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Clients_referal` int DEFAULT NULL,
  PRIMARY KEY (`Clients_id`),
  KEY `fk_Clients_Clients1_idx` (`Clients_referal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clients`
--

LOCK TABLES `Clients` WRITE;
/*!40000 ALTER TABLE `Clients` DISABLE KEYS */;
INSERT INTO `Clients` VALUES (1,'Antonio Prada',8011,666555444,'tprada@gmail.com','2021-01-01 00:00:00',NULL),(2,'Marc Anton Fornells',8005,666555111,'mafornells@gmail.com','2021-01-15 00:00:00',NULL),(3,'Raul Gil',8015,666000111,'rgil@gmail.com','2021-02-01 00:00:00',NULL),(4,'Salvador Santamaria',8024,666000222,'sasanta@gmail.com','2021-03-02 00:00:00',NULL),(5,'Manuel Cuenca',8001,666222333,'mcuenca@gmail.com','2021-06-01 00:00:00',NULL),(6,'Noel Fernandez',8014,666222999,'nfernandez@gmail.com','2021-01-01 00:00:00',NULL),(7,'Hector Caneda',8012,666444888,'hacaneda@gmail.com','2021-01-01 00:00:00',NULL),(8,'Luis Plumed',8011,666111666,'lplumed@gmail.com','2021-01-01 00:00:00',NULL),(9,'Oscar Diaz',8015,666999333,'osdiaz@gmail.com','2021-08-08 00:00:00',NULL),(10,'Remigi Calvet',8015,666999444,'remic@gmail.com','2022-03-03 00:00:00',NULL);
/*!40000 ALTER TABLE `Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `Employee_id` int NOT NULL AUTO_INCREMENT,
  `Employee_name` varchar(45) NOT NULL,
  `Employee_fname` varchar(45) NOT NULL,
  PRIMARY KEY (`Employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Ivan','Ros'),(2,'Jessica','Lagarde');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Glasses`
--

DROP TABLE IF EXISTS `Glasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Glasses` (
  `Glasses_id_reference` varchar(25) NOT NULL,
  `Brand_Brand_id` int NOT NULL,
  `Glasses_Frame_Glasses_Frame_id` int NOT NULL,
  `Glasses_prescription_right_eye` double NOT NULL,
  `Glasses_prescription_left_eye` double NOT NULL,
  `Glasses_frame_colour` varchar(45) NOT NULL,
  `Glasses_col_lenses` varchar(45) NOT NULL,
  `Glasses_price` double NOT NULL,
  PRIMARY KEY (`Glasses_id_reference`),
  KEY `fk_Glasses_Brand1_idx` (`Brand_Brand_id`),
  KEY `fk_Glasses_Glasses_Frame1_idx` (`Glasses_Frame_Glasses_Frame_id`),
  CONSTRAINT `fk_Glasses_Brand1` FOREIGN KEY (`Brand_Brand_id`) REFERENCES `Brand` (`Brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Glasses_Glasses_Frame1` FOREIGN KEY (`Glasses_Frame_Glasses_Frame_id`) REFERENCES `Glasses_Frame` (`Glasses_Frame_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Glasses`
--

LOCK TABLES `Glasses` WRITE;
/*!40000 ALTER TABLE `Glasses` DISABLE KEYS */;
INSERT INTO `Glasses` VALUES ('1',1,1,1.5,2.25,'BLACK','TRANSPARENT',120.5),('2',2,1,2.5,3.25,'WHITE','TRANSPARENT',120.5),('3',3,2,3.5,4,'YELLOW','TRANSPARENT',140.5),('4',4,3,1.5,2.25,'RED','DARK',90.5),('5',5,5,1.25,2.5,'GREY','DARK',160);
/*!40000 ALTER TABLE `Glasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Glasses_Frame`
--

DROP TABLE IF EXISTS `Glasses_Frame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Glasses_Frame` (
  `Glasses_Frame_id` int NOT NULL,
  `Glasses_Frame_type` enum('METAL','PLASTIC','FLOATING') DEFAULT NULL,
  PRIMARY KEY (`Glasses_Frame_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Glasses_Frame`
--

LOCK TABLES `Glasses_Frame` WRITE;
/*!40000 ALTER TABLE `Glasses_Frame` DISABLE KEYS */;
INSERT INTO `Glasses_Frame` VALUES (1,'METAL'),(2,'METAL'),(3,'PLASTIC'),(4,'PLASTIC'),(5,'FLOATING');
/*!40000 ALTER TABLE `Glasses_Frame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales`
--

DROP TABLE IF EXISTS `Sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sales` (
  `Sales_id` int NOT NULL AUTO_INCREMENT,
  `Sales_date` datetime NOT NULL,
  `Sales_price` double NOT NULL,
  `Employee_Employee_id` int NOT NULL,
  `Clients_Clients_id` int NOT NULL,
  `Glasses_Glasses_id_reference` varchar(25) NOT NULL,
  `Supplier_Supplier_id` int NOT NULL,
  PRIMARY KEY (`Sales_id`,`Glasses_Glasses_id_reference`,`Supplier_Supplier_id`),
  KEY `fk_Sales_Employee1_idx` (`Employee_Employee_id`),
  KEY `fk_Sales_Clients1_idx` (`Clients_Clients_id`),
  KEY `fk_Sales_Glasses1_idx` (`Glasses_Glasses_id_reference`),
  KEY `fk_Sales_Supplier1_idx` (`Supplier_Supplier_id`),
  CONSTRAINT `fk_Sales_Clients1` FOREIGN KEY (`Clients_Clients_id`) REFERENCES `Clients` (`Clients_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sales_Employee1` FOREIGN KEY (`Employee_Employee_id`) REFERENCES `Employee` (`Employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sales_Glasses1` FOREIGN KEY (`Glasses_Glasses_id_reference`) REFERENCES `Glasses` (`Glasses_id_reference`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sales_Supplier1` FOREIGN KEY (`Supplier_Supplier_id`) REFERENCES `Supplier` (`Supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales`
--

LOCK TABLES `Sales` WRITE;
/*!40000 ALTER TABLE `Sales` DISABLE KEYS */;
INSERT INTO `Sales` VALUES (1,'2022-01-02 00:00:00',200.2,1,1,'1',1),(2,'2022-02-03 00:00:00',180.5,2,2,'1',1),(3,'2022-04-02 00:00:00',200.2,1,1,'2',2),(4,'2022-04-05 00:00:00',200.2,2,3,'2',2),(5,'2022-05-03 00:00:00',200.2,1,4,'3',3),(6,'2022-06-02 00:00:00',220.2,1,5,'3',3),(7,'2022-07-09 00:00:00',240.2,2,6,'5',5),(8,'2022-08-22 00:00:00',250.5,2,7,'4',4),(9,'2022-09-02 00:00:00',200.2,1,8,'2',2),(10,'2022-10-07 00:00:00',200.2,2,9,'2',2),(11,'2022-11-22 00:00:00',200.2,1,10,'1',1),(12,'2023-01-02 00:00:00',200.2,1,1,'1',1),(13,'2023-11-02 00:00:00',200.2,1,2,'2',2),(14,'2023-01-02 00:00:00',180.2,1,3,'4',4),(15,'2023-01-02 00:00:00',160.2,2,6,'3',3),(16,'2023-02-02 00:00:00',230.2,2,7,'5',5),(17,'2023-02-06 00:00:00',270.2,2,8,'1',1),(18,'2023-03-01 00:00:00',280.2,1,1,'1',1);
/*!40000 ALTER TABLE `Sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplier`
--

DROP TABLE IF EXISTS `Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplier` (
  `Supplier_id` int NOT NULL AUTO_INCREMENT,
  `Supplier_name` varchar(45) NOT NULL,
  `Supplier_tel` int NOT NULL,
  `Supplier_fax` int DEFAULT NULL,
  `Supplier_NIF` varchar(45) NOT NULL,
  PRIMARY KEY (`Supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier`
--

LOCK TABLES `Supplier` WRITE;
/*!40000 ALTER TABLE `Supplier` DISABLE KEYS */;
INSERT INTO `Supplier` VALUES (1,'Rayban',934567890,934567891,'365467890S'),(2,'Arnette',934567834,934567835,'465467890A'),(3,'Persol',934567801,934567802,'265467890P'),(4,'Olle',934567855,934567856,'365467833L'),(5,'Hawkers',934567866,934567867,'365467838H');
/*!40000 ALTER TABLE `Supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplier_Address`
--

DROP TABLE IF EXISTS `Supplier_Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplier_Address` (
  `Supplier_Supplier_id` int NOT NULL,
  `Supplier_Address_street` varchar(45) NOT NULL,
  `Supplier_Address_number` int NOT NULL,
  `Supplier_Address_floor` int DEFAULT NULL,
  `Supplier_Address_door` int DEFAULT NULL,
  `Supplier_Address_city` varchar(45) NOT NULL,
  `Supplier_Address_zip` varchar(5) NOT NULL,
  `Supplier_Address_country` varchar(45) NOT NULL,
  PRIMARY KEY (`Supplier_Supplier_id`),
  CONSTRAINT `fk_Supplier_Address_Supplier1` FOREIGN KEY (`Supplier_Supplier_id`) REFERENCES `Supplier` (`Supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier_Address`
--

LOCK TABLES `Supplier_Address` WRITE;
/*!40000 ALTER TABLE `Supplier_Address` DISABLE KEYS */;
INSERT INTO `Supplier_Address` VALUES (1,'AV.Diagonal 567',125,4,1,'Barcelona','08015','Spain'),(2,'Marina',88,2,1,'Barcelona','08013','Spain'),(3,'AV. Corts Catalanes',345,1,1,'Barcelona','08005','Spain'),(4,'Sancho de Avila',144,2,1,'Barcelona','08005','Spain'),(5,'Casanova',25,2,1,'Barcelona','08015','Spain');
/*!40000 ALTER TABLE `Supplier_Address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17 10:41:59
--
-- Table structure for table `Clients`
--

DROP TABLE IF EXISTS `Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clients` (
  `Clients_id` int NOT NULL AUTO_INCREMENT,
  `Clients_name` varchar(45) NOT NULL,
  `Clients_zip` int DEFAULT NULL,
  `Clients_tel` int NOT NULL,
  `Clients_email` varchar(45) DEFAULT NULL,
  `Clients_registration` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Clients_referal` int DEFAULT NULL,
  PRIMARY KEY (`Clients_id`),
  KEY `fk_Clients_Clients1_idx` (`Clients_referal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clients`
--

LOCK TABLES `Clients` WRITE;
/*!40000 ALTER TABLE `Clients` DISABLE KEYS */;
INSERT INTO `Clients` VALUES (1,'Antonio Prada',8011,666555444,'tprada@gmail.com','2021-01-01 00:00:00',NULL),(2,'Marc Anton Fornells',8005,666555111,'mafornells@gmail.com','2021-01-15 00:00:00',NULL),(3,'Raul Gil',8015,666000111,'rgil@gmail.com','2021-02-01 00:00:00',NULL),(4,'Salvador Santamaria',8024,666000222,'sasanta@gmail.com','2021-03-02 00:00:00',NULL),(5,'Manuel Cuenca',8001,666222333,'mcuenca@gmail.com','2021-06-01 00:00:00',NULL),(6,'Noel Fernandez',8014,666222999,'nfernandez@gmail.com','2021-01-01 00:00:00',NULL),(7,'Hector Caneda',8012,666444888,'hacaneda@gmail.com','2021-01-01 00:00:00',NULL),(8,'Luis Plumed',8011,666111666,'lplumed@gmail.com','2021-01-01 00:00:00',NULL),(9,'Oscar Diaz',8015,666999333,'osdiaz@gmail.com','2021-08-08 00:00:00',NULL),(10,'Remigi Calvet',8015,666999444,'remic@gmail.com','2022-03-03 00:00:00',NULL);
/*!40000 ALTER TABLE `Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `Employee_id` int NOT NULL AUTO_INCREMENT,
  `Employee_name` varchar(45) NOT NULL,
  `Employee_fname` varchar(45) NOT NULL,
  PRIMARY KEY (`Employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Ivan','Ros'),(2,'Jessica','Lagarde');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Glasses`
--

DROP TABLE IF EXISTS `Glasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Glasses` (
  `Glasses_id_reference` varchar(25) NOT NULL,
  `Brand_Brand_id` int NOT NULL,
  `Glasses_Frame_Glasses_Frame_id` int NOT NULL,
  `Glasses_prescription_right_eye` double NOT NULL,
  `Glasses_prescription_left_eye` double NOT NULL,
  `Glasses_frame_colour` varchar(45) NOT NULL,
  `Glasses_col_lenses` varchar(45) NOT NULL,
  `Glasses_price` double NOT NULL,
  PRIMARY KEY (`Glasses_id_reference`),
  KEY `fk_Glasses_Brand1_idx` (`Brand_Brand_id`),
  KEY `fk_Glasses_Glasses_Frame1_idx` (`Glasses_Frame_Glasses_Frame_id`),
  CONSTRAINT `fk_Glasses_Brand1` FOREIGN KEY (`Brand_Brand_id`) REFERENCES `Brand` (`Brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Glasses_Glasses_Frame1` FOREIGN KEY (`Glasses_Frame_Glasses_Frame_id`) REFERENCES `Glasses_Frame` (`Glasses_Frame_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Glasses`
--

LOCK TABLES `Glasses` WRITE;
/*!40000 ALTER TABLE `Glasses` DISABLE KEYS */;
INSERT INTO `Glasses` VALUES ('1',1,1,1.5,2.25,'BLACK','TRANSPARENT',120.5),('2',2,1,2.5,3.25,'WHITE','TRANSPARENT',120.5),('3',3,2,3.5,4,'YELLOW','TRANSPARENT',140.5),('4',4,3,1.5,2.25,'RED','DARK',90.5),('5',5,5,1.25,2.5,'GREY','DARK',160);
/*!40000 ALTER TABLE `Glasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Glasses_Frame`
--

DROP TABLE IF EXISTS `Glasses_Frame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Glasses_Frame` (
  `Glasses_Frame_id` int NOT NULL,
  `Glasses_Frame_type` enum('METAL','PLASTIC','FLOATING') DEFAULT NULL,
  PRIMARY KEY (`Glasses_Frame_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Glasses_Frame`
--

LOCK TABLES `Glasses_Frame` WRITE;
/*!40000 ALTER TABLE `Glasses_Frame` DISABLE KEYS */;
INSERT INTO `Glasses_Frame` VALUES (1,'METAL'),(2,'METAL'),(3,'PLASTIC'),(4,'PLASTIC'),(5,'FLOATING');
/*!40000 ALTER TABLE `Glasses_Frame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales`
--

DROP TABLE IF EXISTS `Sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sales` (
  `Sales_id` int NOT NULL AUTO_INCREMENT,
  `Sales_date` datetime NOT NULL,
  `Sales_price` double NOT NULL,
  `Employee_Employee_id` int NOT NULL,
  `Clients_Clients_id` int NOT NULL,
  `Glasses_Glasses_id_reference` varchar(25) NOT NULL,
  `Supplier_Supplier_id` int NOT NULL,
  PRIMARY KEY (`Sales_id`,`Glasses_Glasses_id_reference`,`Supplier_Supplier_id`),
  KEY `fk_Sales_Employee1_idx` (`Employee_Employee_id`),
  KEY `fk_Sales_Clients1_idx` (`Clients_Clients_id`),
  KEY `fk_Sales_Glasses1_idx` (`Glasses_Glasses_id_reference`),
  KEY `fk_Sales_Supplier1_idx` (`Supplier_Supplier_id`),
  CONSTRAINT `fk_Sales_Clients1` FOREIGN KEY (`Clients_Clients_id`) REFERENCES `Clients` (`Clients_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sales_Employee1` FOREIGN KEY (`Employee_Employee_id`) REFERENCES `Employee` (`Employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sales_Glasses1` FOREIGN KEY (`Glasses_Glasses_id_reference`) REFERENCES `Glasses` (`Glasses_id_reference`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sales_Supplier1` FOREIGN KEY (`Supplier_Supplier_id`) REFERENCES `Supplier` (`Supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales`
--

LOCK TABLES `Sales` WRITE;
/*!40000 ALTER TABLE `Sales` DISABLE KEYS */;
INSERT INTO `Sales` VALUES (1,'2022-01-02 00:00:00',200.2,1,1,'1',1),(2,'2022-02-03 00:00:00',180.5,2,2,'1',1),(3,'2022-04-02 00:00:00',200.2,1,1,'2',2),(4,'2022-04-05 00:00:00',200.2,2,3,'2',2),(5,'2022-05-03 00:00:00',200.2,1,4,'3',3),(6,'2022-06-02 00:00:00',220.2,1,5,'3',3),(7,'2022-07-09 00:00:00',240.2,2,6,'5',5),(8,'2022-08-22 00:00:00',250.5,2,7,'4',4),(9,'2022-09-02 00:00:00',200.2,1,8,'2',2),(10,'2022-10-07 00:00:00',200.2,2,9,'2',2),(11,'2022-11-22 00:00:00',200.2,1,10,'1',1),(12,'2023-01-02 00:00:00',200.2,1,1,'1',1),(13,'2023-11-02 00:00:00',200.2,1,2,'2',2),(14,'2023-01-02 00:00:00',180.2,1,3,'4',4),(15,'2023-01-02 00:00:00',160.2,2,6,'3',3),(16,'2023-02-02 00:00:00',230.2,2,7,'5',5),(17,'2023-02-06 00:00:00',270.2,2,8,'1',1),(18,'2023-03-01 00:00:00',280.2,1,1,'1',1);
/*!40000 ALTER TABLE `Sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplier`
--

DROP TABLE IF EXISTS `Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplier` (
  `Supplier_id` int NOT NULL AUTO_INCREMENT,
  `Supplier_name` varchar(45) NOT NULL,
  `Supplier_tel` int NOT NULL,
  `Supplier_fax` int DEFAULT NULL,
  `Supplier_NIF` varchar(45) NOT NULL,
  PRIMARY KEY (`Supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier`
--

LOCK TABLES `Supplier` WRITE;
/*!40000 ALTER TABLE `Supplier` DISABLE KEYS */;
INSERT INTO `Supplier` VALUES (1,'Rayban',934567890,934567891,'365467890S'),(2,'Arnette',934567834,934567835,'465467890A'),(3,'Persol',934567801,934567802,'265467890P'),(4,'Olle',934567855,934567856,'365467833L'),(5,'Hawkers',934567866,934567867,'365467838H');
/*!40000 ALTER TABLE `Supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplier_Address`
--

DROP TABLE IF EXISTS `Supplier_Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplier_Address` (
  `Supplier_Supplier_id` int NOT NULL,
  `Supplier_Address_street` varchar(45) NOT NULL,
  `Supplier_Address_number` int NOT NULL,
  `Supplier_Address_floor` int DEFAULT NULL,
  `Supplier_Address_door` int DEFAULT NULL,
  `Supplier_Address_city` varchar(45) NOT NULL,
  `Supplier_Address_zip` varchar(5) NOT NULL,
  `Supplier_Address_country` varchar(45) NOT NULL,
  PRIMARY KEY (`Supplier_Supplier_id`),
  CONSTRAINT `fk_Supplier_Address_Supplier1` FOREIGN KEY (`Supplier_Supplier_id`) REFERENCES `Supplier` (`Supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier_Address`
--

LOCK TABLES `Supplier_Address` WRITE;
/*!40000 ALTER TABLE `Supplier_Address` DISABLE KEYS */;
INSERT INTO `Supplier_Address` VALUES (1,'AV.Diagonal 567',125,4,1,'Barcelona','08015','Spain'),(2,'Marina',88,2,1,'Barcelona','08013','Spain'),(3,'AV. Corts Catalanes',345,1,1,'Barcelona','08005','Spain'),(4,'Sancho de Avila',144,2,1,'Barcelona','08005','Spain'),(5,'Casanova',25,2,1,'Barcelona','08015','Spain');
/*!40000 ALTER TABLE `Supplier_Address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17 10:41:59

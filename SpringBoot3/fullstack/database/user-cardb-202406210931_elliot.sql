-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: localhost    Database: cardb
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_user` (
  `id` bigint NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3k4cplvh82srueuttfkwnylq0` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'$2a$10$NVM0n8ElaRgg7zWO1CxUdei7vWoPg91Lz2aYavh9.f9q0e4bRadue','USER','user'),(2,'$2a$10$KOqs6Lz5l3ja47MPbwTifukH149Q/KWMXqSccYoYRW01QcfQPzlmK','ADMIN','admin');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_seq`
--

DROP TABLE IF EXISTS `app_user_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_user_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_seq`
--

LOCK TABLES `app_user_seq` WRITE;
/*!40000 ALTER TABLE `app_user_seq` DISABLE KEYS */;
INSERT INTO `app_user_seq` VALUES (251);
/*!40000 ALTER TABLE `app_user_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `id` bigint NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `model_year` int NOT NULL,
  `price` int NOT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `owner` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2mqqwvxtowv4vddvtsmvtiqa2` (`owner`),
  CONSTRAINT `FK2mqqwvxtowv4vddvtsmvtiqa2` FOREIGN KEY (`owner`) REFERENCES `owner` (`ownerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (2,'Nissan','White','Leaf',2020,29000,'SSJ-3002',2),(3,'Toyota','Silver','Prius',2022,39000,'KKO-0212',2),(52,'Ford','Red','Mustang',2023,59000,'ADF-1121',52),(53,'Nissan','White','Leaf',2020,29000,'SSJ-3002',53),(102,'Ford','Red','Mustang',2023,59000,'ADF-1121',102),(103,'Nissan','White','Leaf',2020,29000,'SSJ-3002',103),(104,'Toyota','Silver','Prius',2022,39000,'KKO-0212',103),(152,'Ford','Red','Mustang',2023,59000,'ADF-1121',152),(153,'Nissan','White','Leaf',2020,29000,'SSJ-3002',153),(154,'Toyota','Silver','Prius',2022,39000,'KKO-0212',153),(202,'Ford','Red','Mustang',2023,59000,'ADF-1121',202),(203,'Nissan','White','Leaf',2020,29000,'SSJ-3002',203),(204,'Toyota','Silver','Prius',2022,39000,'KKO-0212',203),(252,'Ford','Red','Mustang',2023,59000,'ADF-1121',252),(253,'Nissan','White','Leaf',2020,29000,'SSJ-3002',253),(254,'Toyota','Silver','Prius',2022,39000,'KKO-0212',253),(302,'Ford','Red','Mustang',2023,59000,'ADF-1121',302),(303,'Nissan','White','Leaf',2020,29000,'SSJ-3002',303),(304,'Toyota','Silver','Prius',2022,39000,'KKO-0212',303),(352,'Ford','Red','Mustang',2023,59000,'ADF-1121',352),(353,'Nissan','White','Leaf',2020,29000,'SSJ-3002',353),(354,'Toyota','Silver','Prius',2022,39000,'KKO-0212',353),(402,'Ford','Red','Mustang',2023,59000,'ADF-1121',402),(403,'Nissan','White','Leaf',2020,29000,'SSJ-3002',403),(404,'Toyota','Silver','Prius',2022,39000,'KKO-0212',403),(452,'Ford','Red','Mustang',2023,59000,'ADF-1121',452),(453,'Nissan','White','Leaf',2020,29000,'SSJ-3002',453),(454,'Toyota','Silver','Prius',2022,39000,'KKO-0212',453),(502,'Ford','Red','Mustang',2023,59000,'ADF-1121',502),(503,'Nissan','White','Leaf',2020,29000,'SSJ-3002',503),(504,'Toyota','Silver','Prius',2022,39000,'KKO-0212',503),(552,'Ford','Red','Mustang',2023,59000,'ADF-1121',552),(553,'Nissan','White','Leaf',2020,29000,'SSJ-3002',553),(554,'Toyota','Silver','Prius',2022,39000,'KKO-0212',553),(602,'Ford','Red','Mustang',2023,59000,'ADF-1121',602),(603,'Nissan','White','Leaf',2020,29000,'SSJ-3002',603),(604,'Toyota','Silver','Prius',2022,39000,'KKO-0212',603),(652,'Ford','Red','Mustang',2023,59000,'ADF-1121',652),(653,'Nissan','White','Leaf',2020,29000,'SSJ-3002',653),(654,'Toyota','Silver','Prius',2022,39000,'KKO-0212',653),(702,'Ford','Red','Mustang',2023,59000,'ADF-1121',702),(703,'Nissan','White','Leaf',2020,29000,'SSJ-3002',703),(704,'Toyota','Silver','Prius',2022,39000,'KKO-0212',703),(752,'Ford','Red','Mustang',2023,59000,'ADF-1121',752),(753,'Nissan','White','Leaf',2020,29000,'SSJ-3002',753),(754,'Toyota','Silver','Prius',2022,39000,'KKO-0212',753),(802,'Ford','Red','Mustang',2023,59000,'ADF-1121',802),(803,'Nissan','White','Leaf',2020,29000,'SSJ-3002',803),(804,'Toyota','Silver','Prius',2022,39000,'KKO-0212',803),(852,'Tesla','Black','Model 3',2024,50000,'XYZ-123',NULL),(853,'BYD','White','Tang 518-2',2024,15000,'ABC-12345',NULL);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_seq`
--

DROP TABLE IF EXISTS `car_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_seq`
--

LOCK TABLES `car_seq` WRITE;
/*!40000 ALTER TABLE `car_seq` DISABLE KEYS */;
INSERT INTO `car_seq` VALUES (951);
/*!40000 ALTER TABLE `car_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `ownerid` bigint NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ownerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'John','Johnson'),(2,'Mary','Robinson'),(52,'John','Johnson'),(53,'Mary','Robinson'),(102,'John','Johnson'),(103,'Mary','Robinson'),(152,'John','Johnson'),(153,'Mary','Robinson'),(202,'John','Johnson'),(203,'Mary','Robinson'),(252,'John','Johnson'),(253,'Mary','Robinson'),(302,'John','Johnson'),(303,'Mary','Robinson'),(352,'John','Johnson'),(353,'Mary','Robinson'),(402,'John','Johnson'),(403,'Mary','Robinson'),(452,'John','Johnson'),(453,'Mary','Robinson'),(502,'John','Johnson'),(503,'Mary','Robinson'),(552,'John','Johnson'),(553,'Mary','Robinson'),(602,'John','Johnson'),(603,'Mary','Robinson'),(652,'John','Johnson'),(653,'Mary','Robinson'),(702,'John','Johnson'),(703,'Mary','Robinson'),(752,'John','Johnson'),(753,'Mary','Robinson'),(802,'John','Johnson'),(803,'Mary','Robinson');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_seq`
--

DROP TABLE IF EXISTS `owner_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_seq`
--

LOCK TABLES `owner_seq` WRITE;
/*!40000 ALTER TABLE `owner_seq` DISABLE KEYS */;
INSERT INTO `owner_seq` VALUES (901);
/*!40000 ALTER TABLE `owner_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cardb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-21  9:31:15

-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: user_management
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1

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
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rows_length` int DEFAULT NULL,
  `columns_length` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES (1,'Office A',10,10,'2025-01-20 23:54:05.681000','2025-01-20 23:54:05.681000'),(2,'Office B',4,4,'2025-01-20 23:54:15.224000','2025-01-20 23:54:15.224000'),(3,'Office C',5,4,'2025-01-20 23:54:25.334000','2025-01-20 23:54:25.334000');
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_evolutions`
--

DROP TABLE IF EXISTS `play_evolutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play_evolutions` (
  `id` int NOT NULL,
  `hash` varchar(255) NOT NULL,
  `applied_at` timestamp NOT NULL,
  `apply_script` mediumtext,
  `revert_script` mediumtext,
  `state` varchar(255) DEFAULT NULL,
  `last_problem` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_evolutions`
--

LOCK TABLES `play_evolutions` WRITE;
/*!40000 ALTER TABLE `play_evolutions` DISABLE KEYS */;
INSERT INTO `play_evolutions` VALUES (1,'d41b3329df5dabb7d1d4a444fd4e9a9a8087a408','2025-01-19 18:30:00','create table office (\nid                            bigint auto_increment not null,\nname                          varchar(255),\nrows_length                   integer,\ncolumns_length                integer,\ncreated_at                    datetime(6) not null,\nupdated_at                    datetime(6) not null,\nconstraint pk_office primary key (id)\n);\n\ncreate table seat (\nid                            bigint auto_increment not null,\noffice_id                     bigint,\nrow_in_number                 integer,\ncol_in_number                 integer,\nstatus                        varchar(255),\ncreated_at                    datetime(6) not null,\nupdated_at                    datetime(6) not null,\nconstraint pk_seat primary key (id)\n);\n\ncreate table user (\nid                            bigint auto_increment not null,\nfirst_name                    varchar(255),\nlast_name                     varchar(255),\nemail                         varchar(255),\npassword                      varchar(255),\ncreated_at                    datetime(6) not null,\nupdated_at                    datetime(6) not null,\nconstraint pk_user primary key (id)\n);\n\ncreate table user_seat_assignment (\nid                            bigint auto_increment not null,\nuser_id                       bigint,\nseat_id                       bigint,\nassigned_at                   datetime(6),\ncreated_at                    datetime(6) not null,\nupdated_at                    datetime(6) not null,\nconstraint pk_user_seat_assignment primary key (id)\n);','drop table if exists office;\n\ndrop table if exists seat;\n\ndrop table if exists user;\n\ndrop table if exists user_seat_assignment;','applied','');
/*!40000 ALTER TABLE `play_evolutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `office_id` bigint DEFAULT NULL,
  `row_in_number` int DEFAULT NULL,
  `col_in_number` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,1,1,1,'available','2025-01-20 23:54:05.699000','2025-01-20 23:54:05.699000'),(2,1,1,2,'available','2025-01-20 23:54:05.699000','2025-01-20 23:54:05.699000'),(3,1,1,3,'available','2025-01-20 23:54:05.700000','2025-01-20 23:54:05.700000'),(4,1,1,4,'available','2025-01-20 23:54:05.700000','2025-01-20 23:54:05.700000'),(5,1,1,5,'available','2025-01-20 23:54:05.700000','2025-01-20 23:54:05.700000'),(6,1,1,6,'available','2025-01-20 23:54:05.700000','2025-01-20 23:54:05.700000'),(7,1,1,7,'available','2025-01-20 23:54:05.700000','2025-01-20 23:54:05.700000'),(8,1,1,8,'available','2025-01-20 23:54:05.700000','2025-01-20 23:54:05.700000'),(9,1,1,9,'available','2025-01-20 23:54:05.700000','2025-01-20 23:54:05.700000'),(10,1,1,10,'available','2025-01-20 23:54:05.700000','2025-01-20 23:54:05.700000'),(11,1,2,1,'available','2025-01-20 23:54:05.704000','2025-01-20 23:54:05.704000'),(12,1,2,2,'available','2025-01-20 23:54:05.705000','2025-01-20 23:54:05.705000'),(13,1,2,3,'available','2025-01-20 23:54:05.705000','2025-01-20 23:54:05.705000'),(14,1,2,4,'available','2025-01-20 23:54:05.705000','2025-01-20 23:54:05.705000'),(15,1,2,5,'available','2025-01-20 23:54:05.705000','2025-01-20 23:54:05.705000'),(16,1,2,6,'available','2025-01-20 23:54:05.705000','2025-01-20 23:54:05.705000'),(17,1,2,7,'available','2025-01-20 23:54:05.705000','2025-01-20 23:54:05.705000'),(18,1,2,8,'available','2025-01-20 23:54:05.705000','2025-01-20 23:54:05.705000'),(19,1,2,9,'available','2025-01-20 23:54:05.705000','2025-01-20 23:54:05.705000'),(20,1,2,10,'available','2025-01-20 23:54:05.705000','2025-01-20 23:54:05.705000'),(21,1,3,1,'available','2025-01-20 23:54:05.708000','2025-01-20 23:54:05.708000'),(22,1,3,2,'available','2025-01-20 23:54:05.708000','2025-01-20 23:54:05.708000'),(23,1,3,3,'available','2025-01-20 23:54:05.708000','2025-01-20 23:54:05.708000'),(24,1,3,4,'available','2025-01-20 23:54:05.708000','2025-01-20 23:54:05.708000'),(25,1,3,5,'available','2025-01-20 23:54:05.708000','2025-01-20 23:54:05.708000'),(26,1,3,6,'available','2025-01-20 23:54:05.708000','2025-01-20 23:54:05.708000'),(27,1,3,7,'available','2025-01-20 23:54:05.708000','2025-01-20 23:54:05.708000'),(28,1,3,8,'reserved','2025-01-20 23:54:05.708000','2025-01-20 23:55:06.504000'),(29,1,3,9,'available','2025-01-20 23:54:05.708000','2025-01-20 23:54:05.708000'),(30,1,3,10,'available','2025-01-20 23:54:05.708000','2025-01-20 23:54:05.708000'),(31,1,4,1,'available','2025-01-20 23:54:05.710000','2025-01-20 23:54:05.710000'),(32,1,4,2,'available','2025-01-20 23:54:05.710000','2025-01-20 23:54:05.710000'),(33,1,4,3,'available','2025-01-20 23:54:05.710000','2025-01-20 23:54:05.710000'),(34,1,4,4,'available','2025-01-20 23:54:05.710000','2025-01-20 23:54:05.710000'),(35,1,4,5,'available','2025-01-20 23:54:05.710000','2025-01-20 23:54:05.710000'),(36,1,4,6,'available','2025-01-20 23:54:05.710000','2025-01-20 23:54:05.710000'),(37,1,4,7,'reserved','2025-01-20 23:54:05.710000','2025-01-20 23:54:40.984000'),(38,1,4,8,'available','2025-01-20 23:54:05.711000','2025-01-20 23:54:45.323000'),(39,1,4,9,'available','2025-01-20 23:54:05.711000','2025-01-20 23:54:05.711000'),(40,1,4,10,'available','2025-01-20 23:54:05.711000','2025-01-20 23:54:05.711000'),(41,1,5,1,'available','2025-01-20 23:54:05.712000','2025-01-20 23:54:05.712000'),(42,1,5,2,'available','2025-01-20 23:54:05.712000','2025-01-20 23:54:05.712000'),(43,1,5,3,'available','2025-01-20 23:54:05.713000','2025-01-20 23:54:05.713000'),(44,1,5,4,'available','2025-01-20 23:54:05.713000','2025-01-20 23:54:05.713000'),(45,1,5,5,'available','2025-01-20 23:54:05.713000','2025-01-20 23:54:05.713000'),(46,1,5,6,'available','2025-01-20 23:54:05.713000','2025-01-20 23:54:05.713000'),(47,1,5,7,'available','2025-01-20 23:54:05.713000','2025-01-20 23:54:05.713000'),(48,1,5,8,'available','2025-01-20 23:54:05.713000','2025-01-20 23:54:05.713000'),(49,1,5,9,'available','2025-01-20 23:54:05.713000','2025-01-20 23:54:05.713000'),(50,1,5,10,'available','2025-01-20 23:54:05.713000','2025-01-20 23:54:05.713000'),(51,1,6,1,'available','2025-01-20 23:54:05.714000','2025-01-20 23:54:05.714000'),(52,1,6,2,'available','2025-01-20 23:54:05.715000','2025-01-20 23:54:05.715000'),(53,1,6,3,'available','2025-01-20 23:54:05.715000','2025-01-20 23:54:05.715000'),(54,1,6,4,'available','2025-01-20 23:54:05.715000','2025-01-20 23:54:05.715000'),(55,1,6,5,'available','2025-01-20 23:54:05.715000','2025-01-20 23:54:05.715000'),(56,1,6,6,'available','2025-01-20 23:54:05.715000','2025-01-20 23:54:05.715000'),(57,1,6,7,'available','2025-01-20 23:54:05.715000','2025-01-20 23:54:05.715000'),(58,1,6,8,'available','2025-01-20 23:54:05.715000','2025-01-20 23:54:05.715000'),(59,1,6,9,'available','2025-01-20 23:54:05.715000','2025-01-20 23:54:05.715000'),(60,1,6,10,'available','2025-01-20 23:54:05.715000','2025-01-20 23:54:05.715000'),(61,1,7,1,'available','2025-01-20 23:54:05.716000','2025-01-20 23:54:05.716000'),(62,1,7,2,'available','2025-01-20 23:54:05.717000','2025-01-20 23:54:05.717000'),(63,1,7,3,'available','2025-01-20 23:54:05.717000','2025-01-20 23:54:05.717000'),(64,1,7,4,'available','2025-01-20 23:54:05.717000','2025-01-20 23:54:05.717000'),(65,1,7,5,'available','2025-01-20 23:54:05.717000','2025-01-20 23:54:05.717000'),(66,1,7,6,'available','2025-01-20 23:54:05.717000','2025-01-20 23:54:05.717000'),(67,1,7,7,'available','2025-01-20 23:54:05.717000','2025-01-20 23:54:05.717000'),(68,1,7,8,'available','2025-01-20 23:54:05.717000','2025-01-20 23:54:05.717000'),(69,1,7,9,'available','2025-01-20 23:54:05.717000','2025-01-20 23:54:05.717000'),(70,1,7,10,'available','2025-01-20 23:54:05.717000','2025-01-20 23:54:05.717000'),(71,1,8,1,'available','2025-01-20 23:54:05.719000','2025-01-20 23:54:05.719000'),(72,1,8,2,'available','2025-01-20 23:54:05.719000','2025-01-20 23:54:05.719000'),(73,1,8,3,'available','2025-01-20 23:54:05.719000','2025-01-20 23:54:05.719000'),(74,1,8,4,'available','2025-01-20 23:54:05.719000','2025-01-20 23:54:05.719000'),(75,1,8,5,'available','2025-01-20 23:54:05.719000','2025-01-20 23:54:05.719000'),(76,1,8,6,'available','2025-01-20 23:54:05.719000','2025-01-20 23:54:05.719000'),(77,1,8,7,'available','2025-01-20 23:54:05.719000','2025-01-20 23:54:05.719000'),(78,1,8,8,'available','2025-01-20 23:54:05.719000','2025-01-20 23:54:05.719000'),(79,1,8,9,'available','2025-01-20 23:54:05.719000','2025-01-20 23:54:05.719000'),(80,1,8,10,'available','2025-01-20 23:54:05.719000','2025-01-20 23:54:05.719000'),(81,1,9,1,'available','2025-01-20 23:54:05.721000','2025-01-20 23:54:05.721000'),(82,1,9,2,'available','2025-01-20 23:54:05.721000','2025-01-20 23:54:05.721000'),(83,1,9,3,'available','2025-01-20 23:54:05.721000','2025-01-20 23:54:05.721000'),(84,1,9,4,'available','2025-01-20 23:54:05.721000','2025-01-20 23:54:05.721000'),(85,1,9,5,'available','2025-01-20 23:54:05.721000','2025-01-20 23:54:05.721000'),(86,1,9,6,'available','2025-01-20 23:54:05.721000','2025-01-20 23:54:05.721000'),(87,1,9,7,'available','2025-01-20 23:54:05.721000','2025-01-20 23:54:05.721000'),(88,1,9,8,'available','2025-01-20 23:54:05.721000','2025-01-20 23:54:05.721000'),(89,1,9,9,'available','2025-01-20 23:54:05.721000','2025-01-20 23:54:05.721000'),(90,1,9,10,'available','2025-01-20 23:54:05.721000','2025-01-20 23:54:05.721000'),(91,1,10,1,'available','2025-01-20 23:54:05.723000','2025-01-20 23:54:05.723000'),(92,1,10,2,'available','2025-01-20 23:54:05.723000','2025-01-20 23:54:05.723000'),(93,1,10,3,'available','2025-01-20 23:54:05.723000','2025-01-20 23:54:05.723000'),(94,1,10,4,'available','2025-01-20 23:54:05.723000','2025-01-20 23:54:05.723000'),(95,1,10,5,'available','2025-01-20 23:54:05.723000','2025-01-20 23:54:05.723000'),(96,1,10,6,'available','2025-01-20 23:54:05.723000','2025-01-20 23:54:05.723000'),(97,1,10,7,'available','2025-01-20 23:54:05.723000','2025-01-20 23:54:05.723000'),(98,1,10,8,'available','2025-01-20 23:54:05.723000','2025-01-20 23:54:05.723000'),(99,1,10,9,'available','2025-01-20 23:54:05.723000','2025-01-20 23:54:05.723000'),(100,1,10,10,'available','2025-01-20 23:54:05.724000','2025-01-20 23:54:05.724000'),(101,2,1,1,'available','2025-01-20 23:54:15.230000','2025-01-20 23:54:15.230000'),(102,2,1,2,'available','2025-01-20 23:54:15.231000','2025-01-20 23:54:15.231000'),(103,2,1,3,'available','2025-01-20 23:54:15.231000','2025-01-20 23:54:15.231000'),(104,2,1,4,'available','2025-01-20 23:54:15.231000','2025-01-20 23:54:15.231000'),(105,2,2,1,'available','2025-01-20 23:54:15.231000','2025-01-20 23:54:15.231000'),(106,2,2,2,'available','2025-01-20 23:54:15.231000','2025-01-20 23:54:15.231000'),(107,2,2,3,'available','2025-01-20 23:54:15.231000','2025-01-20 23:54:15.231000'),(108,2,2,4,'available','2025-01-20 23:54:15.231000','2025-01-20 23:54:15.231000'),(109,2,3,1,'available','2025-01-20 23:54:15.231000','2025-01-20 23:54:15.231000'),(110,2,3,2,'available','2025-01-20 23:54:15.231000','2025-01-20 23:54:15.231000'),(111,2,3,3,'available','2025-01-20 23:54:15.235000','2025-01-20 23:54:15.235000'),(112,2,3,4,'available','2025-01-20 23:54:15.235000','2025-01-20 23:54:15.235000'),(113,2,4,1,'available','2025-01-20 23:54:15.235000','2025-01-20 23:54:15.235000'),(114,2,4,2,'available','2025-01-20 23:54:15.235000','2025-01-20 23:54:15.235000'),(115,2,4,3,'available','2025-01-20 23:54:15.235000','2025-01-20 23:54:15.235000'),(116,2,4,4,'available','2025-01-20 23:54:15.235000','2025-01-20 23:54:15.235000'),(117,3,1,1,'available','2025-01-20 23:54:25.337000','2025-01-20 23:54:25.337000'),(118,3,1,2,'available','2025-01-20 23:54:25.337000','2025-01-20 23:54:25.337000'),(119,3,1,3,'available','2025-01-20 23:54:25.337000','2025-01-20 23:54:25.337000'),(120,3,1,4,'available','2025-01-20 23:54:25.337000','2025-01-20 23:54:25.337000'),(121,3,2,1,'available','2025-01-20 23:54:25.337000','2025-01-20 23:54:25.337000'),(122,3,2,2,'available','2025-01-20 23:54:25.337000','2025-01-20 23:54:25.337000'),(123,3,2,3,'available','2025-01-20 23:54:25.337000','2025-01-20 23:54:25.337000'),(124,3,2,4,'available','2025-01-20 23:54:25.337000','2025-01-20 23:54:25.337000'),(125,3,3,1,'available','2025-01-20 23:54:25.337000','2025-01-20 23:54:25.337000'),(126,3,3,2,'available','2025-01-20 23:54:25.337000','2025-01-20 23:54:25.337000'),(127,3,3,3,'available','2025-01-20 23:54:25.339000','2025-01-20 23:54:25.339000'),(128,3,3,4,'available','2025-01-20 23:54:25.340000','2025-01-20 23:54:25.340000'),(129,3,4,1,'available','2025-01-20 23:54:25.340000','2025-01-20 23:54:25.340000'),(130,3,4,2,'available','2025-01-20 23:54:25.340000','2025-01-20 23:54:25.340000'),(131,3,4,3,'available','2025-01-20 23:54:25.340000','2025-01-20 23:54:25.340000'),(132,3,4,4,'available','2025-01-20 23:54:25.340000','2025-01-20 23:54:25.340000'),(133,3,5,1,'available','2025-01-20 23:54:25.340000','2025-01-20 23:54:25.340000'),(134,3,5,2,'available','2025-01-20 23:54:25.340000','2025-01-20 23:54:25.340000'),(135,3,5,3,'available','2025-01-20 23:54:25.340000','2025-01-20 23:54:25.340000'),(136,3,5,4,'available','2025-01-20 23:54:25.340000','2025-01-20 23:54:25.340000');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Shruti','Mishra','shruti@gmail.com','$2a$10$hKZRDiO7nwEn5R/qhsbB5uCuhiVhH/yR0XF9ptyIjvBH2puAh0n6y','2025-01-20 23:52:19.344000','2025-01-20 23:52:19.344000'),(2,'Tripti','Mishra','tripti@gmail.com','$2a$10$DgglbvKr0RG3qmDQzH5kHurGvpJV758tedNantmjF2roARoNdBXo.','2025-01-20 23:52:44.192000','2025-01-20 23:52:44.192000'),(3,'Alisha','Mishra','alisha@gmail.com','$2a$10$YRm894DYyMYcNKFqIlHeSOGOj68XLk4/UhC3GWiupL.ZH7BLKhPF6','2025-01-20 23:53:03.565000','2025-01-20 23:53:03.565000'),(4,'Mritunjay','Mishra','mritunjay@gmail.com','$2a$10$aYYFKHOXuOvCnOdBg94pYuzqwyIou6Gm9PBhnC0u/VV38bTFbshpK','2025-01-20 23:53:28.878000','2025-01-20 23:53:28.878000'),(5,'Kshitiz','Mishra','kshitiz@gmail.com','$2a$10$fiwrXwn7gSQE2fi.g92b7euR.j7itmusEQgI/zBM/nqCR1KQFvRn6','2025-01-20 23:53:46.810000','2025-01-20 23:53:46.810000');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_seat_assignment`
--

DROP TABLE IF EXISTS `user_seat_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_seat_assignment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `seat_id` bigint DEFAULT NULL,
  `assigned_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_seat_assignment`
--

LOCK TABLES `user_seat_assignment` WRITE;
/*!40000 ALTER TABLE `user_seat_assignment` DISABLE KEYS */;
INSERT INTO `user_seat_assignment` VALUES (1,5,28,'2025-01-20 23:55:06.500000','2025-01-20 23:55:06.500000','2025-01-20 23:55:06.500000');
/*!40000 ALTER TABLE `user_seat_assignment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-06 12:33:37

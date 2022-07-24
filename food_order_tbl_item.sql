-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: food_order
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `tbl_item`
--

DROP TABLE IF EXISTS `tbl_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` double DEFAULT NULL,
  `item_src` varchar(255) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn27ug21lw38ss31exiahhqh8b` (`category_id`),
  CONSTRAINT `FKn27ug21lw38ss31exiahhqh8b` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_item`
--

LOCK TABLES `tbl_item` WRITE;
/*!40000 ALTER TABLE `tbl_item` DISABLE KEYS */;
INSERT INTO `tbl_item` VALUES (1,0,'pizza','pizza',18,'/pics/1653924550513pisa1.jpeg',1),(2,0,'pizza','pizza',18,'/pics/1653924565756pisa2.jpeg',1),(3,0,'Ramen','ramen',20,'/pics/1653924591309lamian1.jpeg',2),(4,0,'Ramen','ramen',20,'/pics/1653924608540lamian2.jpeg',2),(5,0,'hamburger','hamburger',19,'/pics/1653924627337hanbaobao1.jpeg',3),(6,0,'hamburger','hamburger',19,'/pics/1653924643600hanbaobao2.jpeg',3),(7,0,'spaghetti','spaghetti',25,'/pics/1653924662974yidalimian1.png',4),(8,0,'spaghetti','spaghetti',25,'/pics/1653925051456yidalimian2.jpeg',4),(11,0,'pizza','pizza',18,'/pics/1653948279784hero-0.jpg',1);
/*!40000 ALTER TABLE `tbl_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-30 18:41:57

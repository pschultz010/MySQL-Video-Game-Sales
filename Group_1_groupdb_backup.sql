CREATE DATABASE  IF NOT EXISTS `groupdb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `groupdb`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: groupdb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `developers`
--

DROP TABLE IF EXISTS `developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers` (
  `developer_team_id` int NOT NULL,
  `developer_name` varchar(45) NOT NULL,
  PRIMARY KEY (`developer_team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers`
--

LOCK TABLES `developers` WRITE;
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
INSERT INTO `developers` VALUES (1,'2K Games'),(2,'343 Industries'),(3,'Arc System Works'),(4,'Avalanche Studios'),(5,'Bandai Namco Games'),(6,'Bethesda Game Studios'),(7,'Blizzard Entertainment'),(8,'Bluepoint Games'),(9,'Bungie'),(10,'Capcom'),(11,'CD Projekt Red Studio'),(12,'Codemasters'),(13,'Crystal Dynamics'),(14,'CyberConnect2'),(15,'Deep Silver Dambuster Studios'),(16,'Dimps Corporation'),(17,'DONTNOD Entertainment'),(18,'EA DICE'),(19,'EA Sports'),(20,'EA Sports, EA Vancouver'),(21,'From Software'),(22,'Gearbox Software'),(23,'Good-Feel'),(24,'GREZZO'),(25,'Haemimont'),(26,'HAL Labs'),(27,'Hangar 13'),(28,'Hello Games'),(29,'Infinity Ward'),(30,'Koei Tecmo Games'),(31,'Kojima Productions, Moby Dick Studio'),(32,'Konami'),(33,'Massive Entertainment'),(34,'Milestone S.r.l'),(35,'Monolith Soft'),(36,'Naughty Dog'),(37,'Nintendo'),(38,'Nintendo, Camelot Software Planning'),(39,'Nintendo, Intelligent Systems'),(40,'Nintendo, Nd Cube'),(41,'Nippon Ichi Software'),(42,'Omega Force'),(43,'PlatinumGames'),(44,'Ready at Dawn, SCE Santa Monica'),(45,'Respawn Entertainment'),(46,'Rocksteady Studios'),(47,'Sega'),(48,'Silicon Studio'),(49,'Slightly Mad Studios'),(50,'SNK Playmore'),(51,'Sony Interactive Entertainment'),(52,'Spike Chunsoft'),(53,'Spike Chunsoft Co. Ltd., Spike Chunsoft'),(54,'Square Enix'),(55,'SuperMassive Games'),(56,'Tantalus Interactive, Tantatus, Nintendo'),(57,'Techland'),(58,'TT Games'),(59,'Turn 10'),(60,'Turtle Rock Studios'),(61,'Ubisoft Montreal'),(62,'Ubisoft Quebec'),(63,'Vanillaware'),(64,'Visceral Games'),(65,'Visual Concepts'),(66,'Yacht Club Games');
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `game_id` int NOT NULL,
  `publisher_id` int NOT NULL,
  `game_name` varchar(45) NOT NULL,
  `date_published` varchar(45) NOT NULL,
  `genre_id` int NOT NULL,
  `rating_id` int NOT NULL,
  `na_sales` float NOT NULL,
  `eu_sales` float NOT NULL,
  `jp_sales` float NOT NULL,
  `other_sales` float NOT NULL,
  `global_sales` float NOT NULL,
  `user_scores` float NOT NULL,
  `critic_scores` float NOT NULL,
  `developer_team_id` int NOT NULL,
  PRIMARY KEY (`game_id`),
  KEY `publisher_id_idx` (`publisher_id`),
  KEY `developer_team_id_idx` (`developer_team_id`),
  KEY `genre_id` (`genre_id`),
  KEY `rating_id` (`rating_id`),
  CONSTRAINT `developer_team_id` FOREIGN KEY (`developer_team_id`) REFERENCES `developers` (`developer_team_id`),
  CONSTRAINT `genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`),
  CONSTRAINT `publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`),
  CONSTRAINT `rating_id` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,1,'FIFA 16','2015',1,1,1.12,6.12,0.06,1.28,8.57,4.3,82,1),(2,1,'FIFA 17','2016',1,1,0.66,5.75,0.08,1.11,7.59,5,85,2),(3,2,'Fallout 4','2015',2,2,2.53,3.27,0.24,1.13,7.16,6.5,87,3),(4,3,'Uncharted 4: A Thief\'s End','2016',3,3,1.85,2.5,0.19,0.85,5.38,7.9,93,4),(5,3,'Uncharted: The Nathan Drake Collection','2015',4,3,2.07,1.71,0.08,0.76,4.62,8.1,86,5),(6,4,'Halo 5: Guardians','2015',3,3,2.78,1.27,0.03,0.41,4.48,6.4,84,6),(7,5,'Call of Duty: Infinite Warfare','2016',3,2,1.61,2,0.15,0.71,4.46,3.4,77,7),(8,6,'Splatoon','2015',3,4,1.54,1.18,1.46,0.26,4.43,8.5,81,8),(9,1,'Battlefield 1','2016',3,2,1.1,2.15,0.21,0.61,4.08,8.4,88,9),(10,7,'The Witcher 3: Wild Hunt','2015',2,2,1.02,2.13,0.23,0.59,3.97,9.2,92,10),(11,8,'Batman: Arkham Knight','2015',4,2,1.53,1.69,0.1,0.64,3.95,7.6,87,11),(12,9,'NBA 2K16','2015',1,4,2.49,0.66,0.03,0.69,3.88,6.7,87,12),(13,10,'Tom Clancy\'s The Division','2016',3,2,1.35,1.7,0.15,0.6,3.8,7,80,13),(14,11,'Metal Gear Solid V: The Phantom Pain','2015',4,2,1.09,1.36,0.49,0.48,3.41,8.2,93,14),(15,10,'Assassin\'s Creed Syndicate','2015',4,2,0.81,1.99,0.07,0.52,3.39,6.8,76,15),(16,6,'Super Mario Maker','2015',5,1,1.18,0.89,0.94,0.2,3.21,8.7,88,8),(17,6,'Animal Crossing: Happy Home Designer','2015',6,1,0.51,1.02,1.4,0.12,3.05,6.9,66,8),(18,3,'Bloodborne','2015',4,2,1.03,0.81,0.26,0.38,2.48,8.6,92,16),(19,6,'The Legend of Zelda: Majora\'s Mask 3D','2015',4,4,1.15,0.55,0.47,0.17,2.34,9,89,17),(20,10,'Far Cry: Primal','2016',4,2,0.6,1.25,0.06,0.35,2.26,6.3,76,18),(21,10,'Tom Clancy\'s Rainbow Six: Siege','2015',3,2,0.55,1.19,0.14,0.33,2.21,7.3,73,18),(22,5,'Overwatch','2016',3,3,0.81,0.85,0.15,0.33,2.14,6.1,90,19),(23,1,'Battlefield: Hardline','2015',3,2,0.71,0.94,0.14,0.32,2.1,5,73,20),(24,8,'Dying Light','2015',4,2,0.96,0.67,0.12,0.34,2.09,7.9,74,21),(25,5,'Destiny: The Taken King','2015',3,3,0.78,0.79,0.04,0.31,1.93,6,86,22),(26,9,'NBA 2K17','2016',1,1,1.25,0.27,0.02,0.34,1.88,6.7,88,12),(27,12,'Just Cause 3','2015',4,2,0.47,1.03,0.07,0.28,1.86,6.5,73,23),(28,9,'Mafia III','2016',4,2,0.42,1.08,0.03,0.28,1.81,5.1,68,24),(29,4,'Forza Motorsport 6','2015',7,1,0.73,0.9,0.03,0.14,1.8,7.9,87,25),(30,3,'The Order: 1886','2015',3,2,0.61,0.78,0.06,0.27,1.74,6.6,63,26),(31,13,'No Man\'s Sky','2016',4,3,0.63,0.76,0.03,0.27,1.7,4.5,71,27),(32,14,'Until Dawn','2015',8,2,0.45,0.9,0.05,0.26,1.66,8.2,79,28),(33,7,'Dark Souls III','2016',2,2,0.65,0.45,0.34,0.22,1.65,8.8,89,16),(34,6,'Mario Party 10','2015',9,1,0.69,0.53,0.24,0.12,1.58,6.5,66,29),(35,12,'Rise of the Tomb Raider','2015',8,2,0.55,0.7,0.02,0.11,1.38,8,86,30),(36,6,'Yoshi\'s Woolly World','2015',5,1,0.62,0.47,0.11,0.1,1.3,8.5,78,31),(37,6,'Pokemon Super Mystery Dungeon','2015',2,1,0.48,0.35,0.34,0.08,1.25,8.8,69,32),(38,7,'Naruto Shippuden: Ultimate Ninja Storm 4','2016',10,3,0.41,0.45,0.11,0.17,1.14,8.2,79,33),(39,6,'The Legend of Zelda: Tri Force Heroes','2015',4,1,0.53,0.33,0.17,0.08,1.12,7.6,73,8),(40,7,'Dragon Ball: XenoVerse','2015',10,3,0.3,0.52,0.12,0.16,1.11,7.7,69,34),(41,15,'Project CARS','2015',7,1,0.2,0.7,0.02,0.16,1.09,6.6,83,35),(42,6,'The Legend of Zelda: Twilight Princess HD','2016',4,3,0.56,0.3,0.08,0.09,1.03,8.4,86,36),(43,7,'Pokken Tournament','2016',10,4,0.5,0.26,0.17,0.08,1.01,8,76,37),(44,9,'Evolve','2015',3,2,0.36,0.41,0.05,0.15,0.96,4.3,76,38),(45,6,'Kirby: Planet Robobot','2016',4,1,0.28,0.14,0.47,0.04,0.93,8.7,81,39),(46,16,'Street Fighter V','2016',10,3,0.4,0.28,0.08,0.14,0.9,3.4,77,40),(47,8,'LEGO Jurassic World','2015',4,4,0.32,0.42,0.02,0.14,0.9,7,70,41),(48,9,'Borderlands: The Handsome Collection','2015',3,2,0.38,0.33,0.03,0.14,0.88,7.8,82,42),(49,6,'Xenoblade Chronicles X','2015',2,3,0.36,0.28,0.14,0.06,0.84,8.9,84,43),(50,11,'Pro Evolution Soccer 2016','2015',1,1,0.13,0.42,0.13,0.1,0.79,7.1,87,44),(51,1,'Titanfall 2','2016',3,2,0.34,0.25,0.05,0.12,0.75,8.4,89,45),(52,7,'Dragon Ball: Xenoverse 2','2016',4,3,0.24,0.27,0.09,0.1,0.71,7.8,73,34),(53,17,'F1 2015','2015',7,1,0.09,0.45,0.03,0.1,0.66,6.3,65,46),(54,16,'Resident Evil: Revelations 2','2015',4,2,0.13,0.24,0.1,0.07,0.55,7.7,75,40),(55,8,'LEGO Jurassic World','2015',4,4,0.27,0.19,0.02,0.04,0.52,8.1,71,41),(56,6,'Kirby and the Rainbow Curse','2015',5,1,0.22,0.13,0.12,0.04,0.52,8,73,39),(57,6,'Bravely Second: End Layer','2015',2,3,0.17,0.1,0.18,0.03,0.49,7.4,81,47),(58,7,'One Piece: Pirate Warriors 3','2015',4,3,0.09,0.22,0.1,0.06,0.46,7.4,74,48),(59,11,'Pro Evolution Soccer 2017','2016',1,1,0.02,0.27,0.11,0.05,0.45,7.6,85,44),(60,6,'Mario Tennis Ultra Smash','2015',1,1,0.13,0.15,0.14,0.02,0.44,5.3,58,49),(61,6,'Paper Mario: Color Splash','2016',2,1,0.2,0.14,0.05,0.03,0.42,6.8,75,50),(62,6,'Animal Crossing: Amiibo Festival','2015',9,1,0.19,0.11,0.09,0.03,0.41,4.4,46,29),(63,7,'Tales of Zestiria','2015',2,3,0.17,0.15,0.02,0.06,0.4,6.8,72,37),(64,12,'Life is Strange','2016',8,2,0.15,0.15,0.03,0.06,0.4,8.6,85,51),(65,9,'BioShock The Collection','2016',3,2,0.1,0.19,0.02,0.06,0.37,8.5,84,52),(66,6,'Star Fox: Zero','2016',3,4,0.17,0.1,0.07,0.03,0.36,7.4,69,53),(67,18,'Homefront: The Revolution','2016',3,2,0.06,0.21,0.03,0.05,0.35,3.8,48,54),(68,7,'One Piece: Burning Blood','2016',10,3,0.11,0.13,0.07,0.05,0.35,7.8,66,55),(69,1,'Mirror\'s Edge Catalyst','2016',5,3,0.11,0.16,0.02,0.05,0.35,4.7,69,9),(70,12,'World of Final Fantasy','2016',2,4,0.08,0.14,0.08,0.04,0.33,8.3,77,56),(71,7,'Dragon Ball Z: Extreme Butoden','2015',10,3,0.12,0.03,0.16,0.02,0.33,6.6,61,57),(72,19,'Hatsune Miku: Project Mirai DX','2015',9,4,0.16,0.04,0.1,0.02,0.32,8.5,80,58),(73,20,'Tropico 5','2015',6,3,0.06,0.16,0.06,0.04,0.31,7.1,76,59),(74,6,'Mario Party: Star Rush','2016',9,1,0.08,0.13,0.08,0.02,0.3,6.8,68,29),(75,21,'Disgaea 5: Alliance of Vengeance','2015',2,3,0.11,0.08,0.06,0.04,0.29,8.1,80,60),(76,9,'Battleborn','2016',3,3,0.12,0.08,0.02,0.04,0.26,6.8,68,42),(77,3,'PlayStation VR Worlds','2016',9,2,0.06,0.14,0.02,0.04,0.25,7.1,59,61),(78,22,'Ride','2015',7,1,0.04,0.13,0.03,0.03,0.22,7,66,62),(79,21,'Odin Sphere: Leifthrasir','2016',2,3,0.07,0.04,0.07,0.02,0.2,8.2,87,63),(80,7,'Sword Art Online: Hollow Realization','2016',2,3,0.06,0.02,0.1,0.02,0.19,7.7,69,37),(81,23,'Toukiden Kiwami','2015',4,3,0.05,0.07,0.02,0.02,0.17,7.6,74,64),(82,23,'Bladestorm: Nightmare','2015',4,3,0.08,0.04,0.03,0.02,0.17,6.5,58,48),(83,18,'The King of Fighters XIV','2016',10,3,0.07,0.02,0.04,0.02,0.15,8.7,79,65),(84,24,'BlazBlue: Chrono Phantasma Extend','2015',4,3,0.07,0.03,0.02,0.02,0.14,7.7,80,57),(85,25,'Shovel Knight','2015',5,1,0.08,0.04,0.02,0.01,0.14,8.2,90,66),(86,3,'Gravity Rush Remastered','2015',4,3,0.02,0.05,0.04,0.01,0.13,8.2,80,5),(87,23,'Samurai Warriors 4-II','2015',4,3,0.03,0.02,0.06,0.01,0.12,7.3,73,48);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_id` int NOT NULL,
  `genre_name` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Action'),(2,'Adventure'),(3,'Fighting'),(4,'Misc'),(5,'Platform'),(6,'Racing'),(7,'Role-Playing'),(8,'Shooter'),(9,'Simulation'),(10,'Sports');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `high_dev_games_na2016`
--

DROP TABLE IF EXISTS `high_dev_games_na2016`;
/*!50001 DROP VIEW IF EXISTS `high_dev_games_na2016`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_dev_games_na2016` AS SELECT 
 1 AS `game_name`,
 1 AS `developer_name`,
 1 AS `NA Sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `platform`
--

DROP TABLE IF EXISTS `platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platform` (
  `platform_id` int NOT NULL,
  `platform_name` varchar(45) NOT NULL,
  PRIMARY KEY (`platform_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform`
--

LOCK TABLES `platform` WRITE;
/*!40000 ALTER TABLE `platform` DISABLE KEYS */;
INSERT INTO `platform` VALUES (1,'3DS'),(2,'PS4'),(3,'WiiU'),(4,'XOne');
/*!40000 ALTER TABLE `platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms_games_join`
--

DROP TABLE IF EXISTS `platforms_games_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platforms_games_join` (
  `game_id` int NOT NULL,
  `platform_id` int NOT NULL,
  KEY `game_platform_id_idx` (`game_id`),
  KEY `platform_game_id_idx` (`platform_id`),
  CONSTRAINT `game_platform_id` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`),
  CONSTRAINT `platform_game_id` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`platform_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms_games_join`
--

LOCK TABLES `platforms_games_join` WRITE;
/*!40000 ALTER TABLE `platforms_games_join` DISABLE KEYS */;
INSERT INTO `platforms_games_join` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,2),(7,1),(8,3),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,3),(17,4),(18,1),(19,4),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,2),(30,1),(31,1),(32,1),(33,1),(34,3),(35,2),(36,3),(37,4),(38,1),(39,4),(40,1),(41,1),(42,3),(43,3),(44,1),(45,4),(46,1),(47,1),(48,1),(49,3),(50,1),(51,1),(52,1),(53,1),(54,1),(55,3),(56,3),(57,4),(58,1),(59,1),(60,3),(61,3),(62,3),(63,1),(64,1),(65,1),(66,3),(67,1),(68,1),(69,1),(70,1),(71,4),(72,4),(73,1),(74,4),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,4),(86,1),(87,1);
/*!40000 ALTER TABLE `platforms_games_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `publisher_id` int NOT NULL,
  `publisher_name` varchar(45) NOT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'Activision'),(2,'Bethesda Softworks'),(3,'Capcom'),(4,'Codemasters'),(5,'Deep Silver'),(6,'Electronic Arts'),(7,'Hello Games'),(8,'Kalypso Media'),(9,'Konami Digital Entertainment'),(10,'Microsoft Game Studios'),(11,'Milestone S.r.l.'),(12,'Namco Bandai Games'),(13,'Nintendo'),(14,'Nippon Ichi Software'),(15,'PQube'),(16,'Sega'),(17,'Slightly Mad Studios'),(18,'Sony Computer Entertainment'),(19,'Sony Computer Entertainment Europe'),(20,'Square Enix'),(21,'Take-Two Interactive'),(22,'Tecmo Koei'),(23,'Ubisoft'),(24,'Warner Bros. Interactive Entertainment'),(25,'Yacht Club Games');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `rating_id` int NOT NULL,
  `rating` varchar(45) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,'E'),(2,'E10+'),(3,'M'),(4,'T');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `top_eu_earn_activision`
--

DROP TABLE IF EXISTS `top_eu_earn_activision`;
/*!50001 DROP VIEW IF EXISTS `top_eu_earn_activision`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_eu_earn_activision` AS SELECT 
 1 AS `genre_name`,
 1 AS `total_eu_sales`,
 1 AS `num_games`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_pub_high_na`
--

DROP TABLE IF EXISTS `top_pub_high_na`;
/*!50001 DROP VIEW IF EXISTS `top_pub_high_na`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_pub_high_na` AS SELECT 
 1 AS `publisher_name`,
 1 AS `NA_Sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_pub_kids_game`
--

DROP TABLE IF EXISTS `top_pub_kids_game`;
/*!50001 DROP VIEW IF EXISTS `top_pub_kids_game`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_pub_kids_game` AS SELECT 
 1 AS `publisher_name`,
 1 AS `num_games`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wiiu_games_after_2015`
--

DROP TABLE IF EXISTS `wiiu_games_after_2015`;
/*!50001 DROP VIEW IF EXISTS `wiiu_games_after_2015`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wiiu_games_after_2015` AS SELECT 
 1 AS `Number of Games`,
 1 AS `platform_name`,
 1 AS `date_published`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `high_dev_games_na2016`
--

/*!50001 DROP VIEW IF EXISTS `high_dev_games_na2016`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_dev_games_na2016` AS select `games`.`game_name` AS `game_name`,`developers`.`developer_name` AS `developer_name`,concat('$',`games`.`na_sales`,'M') AS `NA Sales` from (`games` join `developers` on((`games`.`developer_team_id` = `developers`.`developer_team_id`))) where (`games`.`date_published` = 2016) order by `games`.`na_sales` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_eu_earn_activision`
--

/*!50001 DROP VIEW IF EXISTS `top_eu_earn_activision`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_eu_earn_activision` AS select `genre`.`genre_name` AS `genre_name`,concat('$',round(sum(`games`.`eu_sales`),2),'M') AS `total_eu_sales`,count(`games`.`game_id`) AS `num_games` from ((`games` join `genre` on((`games`.`genre_id` = `genre`.`genre_id`))) join (select `publishers`.`publisher_name` AS `publisher_name` from `publishers` where (`publishers`.`publisher_name` = 'Activision')) `pn`) group by `genre`.`genre_name` order by sum(`games`.`eu_sales`) desc,`num_games` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_pub_high_na`
--

/*!50001 DROP VIEW IF EXISTS `top_pub_high_na`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_pub_high_na` AS select `p`.`publisher_name` AS `publisher_name`,concat('$',max(`g`.`na_sales`),'M') AS `NA_Sales` from (`games` `g` join `publishers` `p` on((`g`.`publisher_id` = `p`.`publisher_id`))) group by `p`.`publisher_name` order by `NA_Sales` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_pub_kids_game`
--

/*!50001 DROP VIEW IF EXISTS `top_pub_kids_game`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_pub_kids_game` AS select `publishers`.`publisher_name` AS `publisher_name`,count(`games`.`game_id`) AS `num_games` from ((`games` join `publishers` on((`games`.`publisher_id` = `publishers`.`publisher_id`))) join `ratings` on((`games`.`rating_id` = `ratings`.`rating_id`))) where ((`ratings`.`rating` = 'E') or (`ratings`.`rating` = 'E10+')) group by `publishers`.`publisher_name` order by `num_games` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wiiu_games_after_2015`
--

/*!50001 DROP VIEW IF EXISTS `wiiu_games_after_2015`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wiiu_games_after_2015` AS select count(`g`.`game_name`) AS `Number of Games`,`p`.`platform_name` AS `platform_name`,`g`.`date_published` AS `date_published` from ((`platforms_games_join` `pg` join `platform` `p` on((`pg`.`platform_id` = `p`.`platform_id`))) join `games` `g` on((`pg`.`game_id` = `g`.`game_id`))) where ((`g`.`date_published` > 2015) and (`p`.`platform_name` = 'WiiU')) */;
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

-- Dump completed on 2020-05-10 18:55:50

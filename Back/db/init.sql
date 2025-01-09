-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: spotify
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `albumCover` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genres_id` int NOT NULL,
  `artistsUserId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_albums_genres1` (`genres_id`),
  KEY `albums_artistsUserId_fkey` (`artistsUserId`),
  CONSTRAINT `albums_artistsUserId_fkey` FOREIGN KEY (`artistsUserId`) REFERENCES `artists` (`userId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_albums_genres1` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (92,'CDG','mypath/yes',1,NULL),(93,'CDG','mypath/yes',1,NULL),(94,'CDG','mypath/yes',1,NULL),(95,'uviwo','mypath/yes',1,NULL),(96,'uviwo','mypath/yes',1,NULL),(97,'uviwo','mypath/yes',1,NULL),(98,'uviwo','mypath/yes',1,NULL),(99,'uviwo','mypath/yes',1,NULL),(100,'uviwo','mypath/yes',1,NULL),(101,'uioiuiop','mypath/yes',1,NULL),(102,'uioiuiop','mypath/yes',1,NULL),(103,'uioiuiop','mypath/yes',1,NULL),(104,'uioiuiop','mypath/yes',1,NULL),(105,'uioiuiop','mypath/yes',1,NULL),(106,'uioiuiop','mypath/yes',1,NULL),(107,'uioiuiop','mypath/yes',1,NULL),(108,'uioiuiop','mypath/yes',1,NULL),(109,'uioiuiop','mypath/yes',1,NULL),(110,'uioiuiop','mypath/yes',1,NULL),(111,'uioiuiop','mypath/yes',1,NULL),(112,'uioiuiop','mypath/yes',1,NULL),(113,'uioiuiop','mypath/yes',1,NULL),(114,'uioiuiop','mypath/yes',1,NULL),(115,'uioiuiop','mypath/yes',1,NULL),(116,'uioiuiop','mypath/yes',1,NULL),(117,'uioiuiop','mypath/yes',1,NULL),(118,'uioiuiop','mypath/yes',1,NULL),(119,'uioiuiop','mypath/yes',1,NULL),(120,'uioiuiop','mypath/yes',1,NULL),(121,'weeee','mypath/yes',1,NULL),(122,'weeee','mypath/yes',1,NULL),(123,'weeee','mypath/yes',1,NULL),(124,'weeee','mypath/yes',1,NULL),(125,'okokok','oui',1,NULL),(126,'okokok','oui',1,NULL),(127,'okokok','oui',1,NULL),(128,'okokok','oui',1,NULL),(129,'okokok','oui',1,NULL),(130,'okokok','oui',1,NULL),(131,'okokok','oui',1,NULL),(132,'okokok','oui',1,NULL),(133,'okokok','oui',1,NULL),(134,'okokok','oui',1,NULL),(135,'okokok','oui',1,NULL),(136,'okokok','oui',1,NULL),(137,'okokok','oui',1,NULL),(138,'okokok','oui',1,NULL),(139,'okokok','oui',1,NULL),(140,'Testico','mypath/yes',1,NULL),(141,'Testico','mypath/yes',1,NULL),(142,'Testico','mypath/yes',1,NULL),(143,'Testico','mypath/yes',1,NULL),(144,'Testico','mypath/yes',1,NULL),(145,'Testico','mypath/yes',1,NULL),(146,'Testico','mypath/yes',1,NULL),(147,'Testico','mypath/yes',1,NULL),(148,'Testico','mypath/yes',1,NULL),(149,'Testico','mypath/yes',1,NULL),(150,'Testico','mypath/yes',1,NULL),(151,'Testico','mypath/yes',1,NULL),(152,'Test','mypath/yes',1,NULL),(153,'Test','mypath/yes',1,NULL),(154,'hjkl','mypath/yes',1,NULL),(155,'hjkl','mypath/yes',1,NULL),(156,'djispoiljk','mypath/yes',1,NULL),(157,'jiklmlkjm','mypath/yes',1,NULL),(158,'jiklmlkjm','mypath/yes',1,NULL),(159,'jiklmlkjm','mypath/yes',1,NULL),(160,'jiklmlkjm','mypath/yes',1,NULL),(161,'hehe','mypath/yes',1,NULL),(162,'hehe','mypath/yes',1,NULL),(163,'hehe','mypath/yes',1,NULL),(164,'hehe','mypath/yes',1,NULL),(165,'yuklhul','mypath/yes',1,NULL),(166,'yuklhul','mypath/yes',1,NULL),(167,'Ouiouio','mypath/yes',3,NULL),(168,'Ouiouio','mypath/yes',3,NULL),(169,'Genre','mypath/yes',1,NULL),(170,'Genre','mypath/yes',1,NULL),(171,'test','mypath/yes',4,NULL),(172,'oiqsoiqvhioiohjhguy','mypath/yes',5,NULL),(173,'oiqsoiqvhioiohjhguy','mypath/yes',5,NULL),(174,'guyioyiu','mypath/yes',3,NULL),(175,'bbbbb','mypath/yes',5,NULL),(176,'bbbbb','mypath/yes',5,NULL),(177,'bbbbb','mypath/yes',5,NULL),(178,'bbbbb','mypath/yes',5,NULL),(179,'bbbbb','mypath/yes',5,NULL),(180,'hahahah','mypath/yes',3,NULL),(181,'hahahah','mypath/yes',3,NULL),(182,'hahahah','mypath/yes',3,NULL),(183,'hahahah','mypath/yes',3,NULL),(184,'test','mypath/yes',4,NULL),(185,'test','mypath/yes',4,NULL);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int NOT NULL,
  `artistCover` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `fk_artists_users1` (`users_id`),
  CONSTRAINT `fk_artists_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Alpha Wann',1,'URL de la couverture de l\'artiste'),(2,'Jul',3,'URL de la couverture de l\'artiste'),(3,'',7,'public/images/ArtistePicture/1705916009841-like-songs.png'),(4,'Oui',7,'public/images/ArtistePicture/1705930586579-like-songs.png'),(5,'Sisou',7,'public/images/ArtistePicture/1707143824324-dog.jpeg'),(6,'Johnny',10,'public/images/ArtistePicture/1707144810119-JUL_-_Julien_Mari_2018.jpg');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists_has_songs`
--

DROP TABLE IF EXISTS `artists_has_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists_has_songs` (
  `artists_userId` int NOT NULL,
  `songs_id` int NOT NULL,
  PRIMARY KEY (`artists_userId`,`songs_id`),
  KEY `fk_artists_has_songs_songs1` (`songs_id`),
  CONSTRAINT `fk_artists_has_songs_artists1` FOREIGN KEY (`artists_userId`) REFERENCES `artists` (`userId`),
  CONSTRAINT `fk_artists_has_songs_songs1` FOREIGN KEY (`songs_id`) REFERENCES `songs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists_has_songs`
--

LOCK TABLES `artists_has_songs` WRITE;
/*!40000 ALTER TABLE `artists_has_songs` DISABLE KEYS */;
INSERT INTO `artists_has_songs` VALUES (1,69),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81);
/*!40000 ALTER TABLE `artists_has_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow` (
  `users_id` int NOT NULL,
  `artists_userId` int NOT NULL,
  PRIMARY KEY (`users_id`,`artists_userId`),
  KEY `fk_users_has_artists_artists1` (`artists_userId`),
  CONSTRAINT `fk_users_has_artists_artists1` FOREIGN KEY (`artists_userId`) REFERENCES `artists` (`userId`),
  CONSTRAINT `fk_users_has_artists_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES (3,1),(7,2);
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryColor` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryPictures` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Hip Hop','orange','path/to/hiphop-pictures.jpg'),(3,'Pop','#00FF00','path/to/hiphop-picture.jpg'),(4,'Variété Française','#0000FF','path/to/variete-francaise-picture.jpg'),(5,'Latino','#FF00FF','path/to/latino-picture.jpg'),(6,'Rock','#FF0000','path/to/rock-picture.jpg'),(7,'Électro ','#00FF00','path/to/electro-claire-picture.jpg'),(8,'RnB','#A52A2A','path/to/rnb-marron-orange-picture.jpg'),(9,'Jazz','#000033','path/to/jazz-picture.jpg'),(10,'Funk','#FF0000','path/to/funk-picture.jpg');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int NOT NULL,
  `playlistCover` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_playlists_users1` (`users_id`),
  CONSTRAINT `fk_playlists_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'Ma playlist 1',1,'URL_de_la_couverure');
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists_has_users`
--

DROP TABLE IF EXISTS `playlists_has_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists_has_users` (
  `playlists_id` int NOT NULL,
  `users_id` int NOT NULL,
  PRIMARY KEY (`playlists_id`,`users_id`),
  KEY `fk_playlists_has_users_users1` (`users_id`),
  CONSTRAINT `fk_playlists_has_users_playlists1` FOREIGN KEY (`playlists_id`) REFERENCES `playlists` (`id`),
  CONSTRAINT `fk_playlists_has_users_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists_has_users`
--

LOCK TABLES `playlists_has_users` WRITE;
/*!40000 ALTER TABLE `playlists_has_users` DISABLE KEYS */;
INSERT INTO `playlists_has_users` VALUES (1,1),(1,3);
/*!40000 ALTER TABLE `playlists_has_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlistSongs`
--

DROP TABLE IF EXISTS `playlistSongs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlistSongs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `songId` int NOT NULL,
  `playlistId` int NOT NULL,
  `playlistOrder` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlistSongs`
--

LOCK TABLES `playlistSongs` WRITE;
/*!40000 ALTER TABLE `playlistSongs` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlistSongs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `albumOrder` int NOT NULL,
  `plays` int NOT NULL,
  `genres_id` int NOT NULL,
  `songCover` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `albumName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_songs_genres1` (`genres_id`),
  CONSTRAINT `fk_songs_genres1` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (34,'aaa','46:58','public/songs/1704728992606-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','aaa'),(35,'aaa','46:58','public/songs/1704729069409-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','don dada mixtape vol 1'),(36,'CDG','26:34','',1,0,1,'mypath/yes','Oh my '),(37,'CDG','26:34','',1,0,1,'mypath/yes','Oh my '),(38,'CDG','26:34','',1,0,1,'mypath/yes','Oh my '),(39,'uviwo','uiop','public/songs/1704730616841-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','iup'),(40,'uviwo','uiop','public/songs/1704730772191-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','iup'),(41,'uviwo','uiop','public/songs/1704730868693-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','iup'),(42,'uviwo','uiop','public/songs/1704730907733-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','iup'),(43,'uviwo','uiop','public/songs/1704731057939-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','iup'),(44,'uviwo','uiop','public/songs/1704731102495-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','iup'),(45,'uioiuiop','uipoipu','public/songs/1704748343892-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(46,'uioiuiop','uipoipu','public/songs/1704748430435-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(47,'uioiuiop','uipoipu','public/songs/1704748462283-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(48,'uioiuiop','uipoipu','public/songs/1704748604882-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(49,'uioiuiop','uipoipu','public/songs/1704749274675-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(50,'uioiuiop','uipoipu','public/songs/1704749283485-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(51,'uioiuiop','uipoipu','public/songs/1704749372593-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(52,'uioiuiop','uipoipu','public/songs/1704749415438-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(53,'uioiuiop','uipoipu','public/songs/1704749520897-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(54,'uioiuiop','uipoipu','public/songs/1704749559796-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(55,'uioiuiop','uipoipu','public/songs/1704749678528-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(56,'uioiuiop','uipoipu','public/songs/1704749909644-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(57,'uioiuiop','uipoipu','public/songs/1704749930692-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(58,'uioiuiop','uipoipu','public/songs/1704750305257-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','uioppoiu'),(59,'weeee','weee','public/songs/1704750357776-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','weeeee'),(60,'weeee','weee','public/songs/1704750611938-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,1,'mypath/yes','weeeee'),(61,'okokok','01:20','public/songs/1704811593642-DjlyProd - Sncf Remix Couper deÌcaleÌ.mp3',1,0,1,'oui','okokok'),(62,'okokok','01:20','public/songs/1704811699526-DjlyProd - Sncf Remix Couper deÌcaleÌ.mp3',1,0,1,'oui','okokok'),(63,'okokok','01:20','public/songs/1704811775276-DjlyProd - Sncf Remix Couper deÌcaleÌ.mp3',1,0,1,'oui','okokok'),(64,'okokok','01:20','public/songs/1704811795725-DjlyProd - Sncf Remix Couper deÌcaleÌ.mp3',1,0,1,'oui','okokok'),(65,'okokok','03:04','public/songs/1704811795740-Edward Maya feat  Vika Jigulina - Stereo Love (Official Video).mp3',2,0,1,'oui','okokok'),(66,'Testico','oooo','public/songs/1704890685602-Edward Maya feat  Vika Jigulina - Stereo Love (Official Video).mp3',1,0,1,'mypath/yes','hiohiohio'),(67,'Testico','oooo','public/songs/1704890789804-Edward Maya feat  Vika Jigulina - Stereo Love (Official Video).mp3',1,0,1,'mypath/yes','hiohiohio'),(68,'Testico','oooo','public/songs/1704890833289-Edward Maya feat  Vika Jigulina - Stereo Love (Official Video).mp3',1,0,1,'mypath/yes','hiohiohio'),(69,'Testico','oooo','public/songs/1704890868790-Edward Maya feat  Vika Jigulina - Stereo Love (Official Video).mp3',1,0,1,'mypath/yes','hiohiohio'),(70,'Testico','oooo','public/songs/1704890946154-Edward Maya feat  Vika Jigulina - Stereo Love (Official Video).mp3',1,0,1,'mypath/yes','hiohiohio'),(71,'Testico','oooo','public/songs/1704891069092-Edward Maya feat  Vika Jigulina - Stereo Love (Official Video).mp3',1,0,1,'mypath/yes','hiohiohio'),(72,'Test','2min','public/songs/1705932684043-DjlyProd - Sncf Remix Couper deÌcaleÌ.mp3',1,0,1,'mypath/yes','Oui'),(73,'hjkl','3min','public/songs/1705933263796-Edward Maya feat  Vika Jigulina - Stereo Love (Official Video).mp3',1,0,1,'mypath/yes','undefined'),(74,'jiklmlkjm','00','',1,0,1,'mypath/yes','klmlmk'),(75,'jiklmlkjm','00','',1,0,1,'mypath/yes','klmlmk'),(76,'hehe','00','public/songs/1705937918142-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR (mp3cut.net) (1).mp3',1,0,1,'mypath/yes','hihi'),(77,'hehe','00','public/songs/1705938065236-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR (mp3cut.net) (1).mp3',1,0,1,'mypath/yes','hihi'),(78,'yuklhul','oui','public/songs/1705952326193-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR (mp3cut.net) (1).mp3',1,0,1,'mypath/yes','hjklhjkl'),(79,'Ouiouio','00:00','public/songs/1706024365761-LA PLACE DE LA FEMME CEST A LA CUISINE EXPLICATION DU PASTEUR.mp3',1,0,3,'mypath/yes','sisi'),(80,'hahahah','3:00','public/songs/1707139031767-Edward Maya feat  Vika Jigulina - Stereo Love (Official Video).mp3',1,0,3,'mypath/yes','hohoho'),(81,'test','test','public/songs/1707139092253-Edward Maya feat  Vika Jigulina - Stereo Love (Official Video).mp3',1,0,4,'mypath/yes','real album name');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs_has_albums`
--

DROP TABLE IF EXISTS `songs_has_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs_has_albums` (
  `songs_id` int NOT NULL,
  `albums_id` int NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`songs_id`,`albums_id`),
  KEY `songs_has_albums_albums_id_fkey` (`albums_id`),
  CONSTRAINT `songs_has_albums_albums_id_fkey` FOREIGN KEY (`albums_id`) REFERENCES `albums` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `songs_has_albums_songs_id_fkey` FOREIGN KEY (`songs_id`) REFERENCES `songs` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs_has_albums`
--

LOCK TABLES `songs_has_albums` WRITE;
/*!40000 ALTER TABLE `songs_has_albums` DISABLE KEYS */;
INSERT INTO `songs_has_albums` VALUES (58,120,0),(59,122,0),(60,124,0),(64,139,1),(65,139,2),(66,141,0),(67,143,0),(68,145,0),(69,147,0),(70,149,0),(71,151,0),(72,153,0),(73,155,0),(74,158,0),(75,160,0),(76,162,0),(77,164,0),(78,166,0),(79,168,0),(80,183,0),(81,185,0);
/*!40000 ALTER TABLE `songs_has_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs_has_playlistSongs`
--

DROP TABLE IF EXISTS `songs_has_playlistSongs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs_has_playlistSongs` (
  `songs_id` int NOT NULL,
  `playlistSongs_id` int NOT NULL,
  PRIMARY KEY (`songs_id`,`playlistSongs_id`),
  KEY `fk_songs_has_playlistSongs_playlistSongs1` (`playlistSongs_id`),
  CONSTRAINT `fk_songs_has_playlistSongs_playlistSongs1` FOREIGN KEY (`playlistSongs_id`) REFERENCES `playlistSongs` (`id`),
  CONSTRAINT `fk_songs_has_playlistSongs_songs` FOREIGN KEY (`songs_id`) REFERENCES `songs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs_has_playlistSongs`
--

LOCK TABLES `songs_has_playlistSongs` WRITE;
/*!40000 ALTER TABLE `songs_has_playlistSongs` DISABLE KEYS */;
/*!40000 ALTER TABLE `songs_has_playlistSongs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_likes`
--

DROP TABLE IF EXISTS `user_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_likes` (
  `users_id` int NOT NULL,
  `songs_id` int NOT NULL,
  PRIMARY KEY (`users_id`,`songs_id`),
  KEY `fk_users_has_songs_songs1` (`songs_id`),
  CONSTRAINT `fk_users_has_songs_songs1` FOREIGN KEY (`songs_id`) REFERENCES `songs` (`id`),
  CONSTRAINT `fk_users_has_songs_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_likes`
--

LOCK TABLES `user_likes` WRITE;
/*!40000 ALTER TABLE `user_likes` DISABLE KEYS */;
INSERT INTO `user_likes` VALUES (1,34),(1,41),(1,60),(3,60),(3,69),(7,69),(3,71),(7,71);
/*!40000 ALTER TABLE `user_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'LEBOSS','adresse@email.com','MotDePasse123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(3,'Titi','titi@email.com','MotDePasse123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(4,'Weeee','sisi@email.com','MotDePasse123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(5,'Weeee','sisi@email.com','MotDePasse123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(6,'Weeee','sisi@email.com','$argon2id$v=19$m=65536,t=5,p=1$RAp7X51kKcuKR/JGX9g98g$WMAvl8nuR/zrT55cfROlwCYFC2D3dm2X1sSQvUble4U','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(7,'Weeee','siso@email.com','$argon2id$v=19$m=65536,t=5,p=1$zEFSVenaHimwwiU7btsk6A$igm5xwzGzHqcgD/hwOfmLmQNX/psU87m34rFjOqGjnE','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(8,'Weeee','siso@email.com','$argon2id$v=19$m=65536,t=5,p=1$DK/P+Hw0efc2CvybxDmW1g$jWwHqjuVs9BicynlSNA3ecW8vRJ9xxlfcneCo+RXtJY','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(9,'Weeee','siso@email.com','@#MotDePasse123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(10,'Johnnyyyyyyyyy','johnyyyyy@email.com','$argon2id$v=19$m=65536,t=5,p=1$X7wJn4IvBIlh2VeM0scC1w$TgrAsO8xTE2fQedw/R17Mo78J6n30NHwbUz4RzBLUaY','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(11,'Joyyyyyy','y@email.com','$argon2id$v=19$m=65536,t=5,p=1$PxEIPGDZgErWpn78FrPYCw$eg055gGiPOD4DgebmQu2bRypJF8Rt7lYl7V0cXiMa0w','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(12,'Joyyyyyy','y@email.com','$argon2id$v=19$m=65536,t=5,p=1$rx9jF9FPGj5sZdwUbYDCGQ$fCc01JFAjpcD1wG/zpVnw9PPqVbxLcKE3eloWcLPoBg','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(13,'ooooooo','test29@gmail.com','$argon2id$v=19$m=65536,t=5,p=1$LW28Bsj1NYo94qdVLgWOUQ$oHWO4wQ8YoHAaSUF0HKNWKRE4fobQt8UroTgt2v6Sgs','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(14,'popipipipi','ipipa@fqvgjoi.com','$argon2id$v=19$m=65536,t=5,p=1$4H1QpZxS83xhDNbrf2JRzw$EM4Nfa/3rAQjwiLIUg5/aEu0s6R8Gs88aIcXAojrfVA','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(15,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(16,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(17,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(18,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(19,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(20,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(21,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(22,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(23,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(24,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(25,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(26,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(27,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(28,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png'),(29,'testuser','test@example.com','##Password123','http://localhost:8888/images/UserProfilePicture/user-spotify.png');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-11 14:59:58

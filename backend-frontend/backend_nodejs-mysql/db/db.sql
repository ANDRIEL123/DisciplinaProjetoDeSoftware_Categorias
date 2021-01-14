CREATE DATABASE  IF NOT EXISTS `modelanimes` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `modelanimes`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: modelanimes
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
-- Table structure for table `animes`
--

DROP TABLE IF EXISTS `animes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animes` (
  `idanimes` int NOT NULL AUTO_INCREMENT,
  `titleAnime` varchar(45) NOT NULL,
  `descriptionAnime` varchar(1000) DEFAULT NULL,
  `keyAnime` varchar(45) DEFAULT NULL,
  `imgAnime` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idanimes`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animes`
--

LOCK TABLES `animes` WRITE;
/*!40000 ALTER TABLE `animes` DISABLE KEYS */;
INSERT INTO `animes` VALUES (101,'ABCDXXXX','XXXXXXXXXXX','adasdassd','2020-05-10T21,29,50.811Z-wallpaper_batman-JS.png'),(102,'One Punch Man','ASDASDASDAS','XXXXX','2020-05-10T04,19,48.673Z-OnePunchMan.png'),(107,'asdasd','sadasdas','dasdasdas','asdsadas'),(109,'asdasd','sadasdas','dasdasdas','asdsadas'),(110,'asdasd','sadasdas','dasdasdas','asdsadas'),(111,'asdasd','sadasdas','dasdasdas','asdsadas'),(112,'asdasd','sadasdas','dasdasdas','asdsadas'),(114,'asdasd','sadasdas','dasdasdas','asdsadas'),(115,'asdasd','sadasdas','dasdasdas','asdsadas'),(116,'asdasd','sadasdas','dasdasdas','asdsadas'),(117,'asdasd','sadasdas','dasdasdas','asdsadas'),(118,'asdasd','sadasdas','dasdasdas','asdsadas'),(119,'asdasd','sadasdas','dasdasdas','asdsadas'),(120,'asdasd','sadasdas','dasdasdas','asdsadas'),(121,'asdasd','sadasdas','dasdasdas','asdsadas'),(122,'asdasd','sadasdas','dasdasdas','asdsadas'),(123,'asdasd','sadasdas','dasdasdas','asdsadas'),(124,'asdasd','sadasdas','dasdasdas','asdsadas'),(125,'asdasd','sadasdas','dasdasdas','asdsadas'),(126,'asdasd','sadasdas','dasdasdas','asdsadas'),(127,'asdasd','sadasdas','dasdasdas','asdsadas'),(128,'asdasd','sadasdas','dasdasdas','asdsadas'),(129,'asdasd','sadasdas','dasdasdas','asdsadas'),(130,'asdasd','sadasdas','dasdasdas','asdsadas'),(131,'asdasd','sadasdas','dasdasdas','asdsadas'),(132,'asdasd','sadasdas','dasdasdas','asdsadas'),(133,'asdasd','sadasdas','dasdasdas','asdsadas'),(134,'asdasd','sadasdas','dasdasdas','asdsadas'),(135,'asdasd','sadasdas','dasdasdas','asdsadas'),(136,'asdasd','sadasdas','dasdasdas','asdsadas'),(137,'asdasd','sadasdas','dasdasdas','asdsadas'),(138,'asdasd','sadasdas','dasdasdas','asdsadas'),(139,'asdasd','sadasdas','dasdasdas','asdsadas'),(140,'asdasd','sadasdas','dasdasdas','asdsadas'),(141,'asdasd','sadasdas','dasdasdas','asdsadas'),(142,'asdasd','sadasdas','dasdasdas','asdsadas'),(143,'asdasd','sadasdas','dasdasdas','asdsadas'),(144,'asdasd','sadasdas','dasdasdas','asdsadas'),(145,'asdasd','sadasdas','dasdasdas','asdsadas'),(146,'asdasd','sadasdas','dasdasdas','asdsadas'),(147,'asdasd','sadasdas','dasdasdas','asdsadas'),(148,'asdasd','sadasdas','dasdasdas','asdsadas'),(149,'asdasd','sadasdas','dasdasdas','asdsadas'),(150,'asdasd','sadasdas','dasdasdas','asdsadas'),(151,'asdasd','sadasdas','dasdasdas','asdsadas'),(152,'asdasd','sadasdas','dasdasdas','asdsadas'),(153,'asdasd','sadasdas','dasdasdas','asdsadas'),(154,'asdasd','sadasdas','dasdasdas','asdsadas'),(155,'asdasd','sadasdas','dasdasdas','asdsadas'),(156,'asdasd','sadasdas','dasdasdas','asdsadas'),(157,'asdasd','sadasdas','dasdasdas','asdsadas'),(158,'asdasd','sadasdas','dasdasdas','asdsadas'),(159,'asdasd','sadasdas','dasdasdas','asdsadas'),(160,'asdasd','sadasdas','dasdasdas','asdsadas'),(161,'asdasd','sadasdas','dasdasdas','asdsadas'),(162,'asdasd','sadasdas','dasdasdas','asdsadas'),(163,'asdasd','sadasdas','dasdasdas','asdsadas'),(164,'asdasd','sadasdas','dasdasdas','asdsadas'),(165,'asdasd','sadasdas','dasdasdas','asdsadas'),(166,'asdasd','sadasdas','dasdasdas','asdsadas'),(167,'PlayList teste','SADAD','ADSADASSA','2020-06-01T14,41,29.883Z-backup.png'),(168,'SSS','SSSS','SSSSSSS','2020-06-01T14,42,57.032Z-Screenshot_1.png'),(169,'SADASD','ASDAS','ASDASD',NULL),(170,'SADASD','ASDAS','ASDASD',NULL),(171,'SADASD','ASDAS','ASDASD',NULL),(172,'SADASD','ASDAS','ASDASD',NULL),(173,'SADASD','ASDAS','ASDASD',NULL),(174,'SADASD','ASDAS','ASDASD',NULL),(175,'sads','adas','sadas',NULL),(176,'dsadas','sdasds','sadass',NULL),(177,'dsadas','sdasds','sadass',NULL),(178,'dsadas','sdasds','sadass',NULL),(179,'asdasdas','asdasd','asdas',NULL),(180,'asdasdas','asdasd','asdas',NULL),(181,'sadasd','asdas','asdasd',NULL),(182,'sadasd','asdas','asdasd',NULL),(183,'sadasd','asdas','asdasd',NULL),(184,'KKKKKKKKKKKKKKKKK','asdas','asdasd',NULL),(185,'KKKKKKKKKKKKKKKKK','asdas','asdasd',NULL),(186,'','','',NULL),(187,'sdasd','asdas','sdasdas',NULL),(188,'sdafasas','das','asdas',NULL),(189,'sadasd','sadasd','sadas',NULL),(190,'sadasd','sadasd','sadas',NULL),(191,'sadasd','sadasd','sadas',NULL),(192,'sadasd','sadasd','sadas',NULL),(193,'sadasd','sadasd','sadas',NULL),(194,'sadasd','sadasd','sadas',NULL),(195,'sadasd','sadasd','sadas',NULL),(196,'sadasd','sadasd','sadas',NULL),(197,'sadasd','sadasd','sadas',NULL),(198,'sdsa','dasda','asdasd',NULL),(199,'sadasd','aasdas','asdasd',NULL),(200,'dasdasd','asdasd','asdasda',NULL),(201,'asda','sad','asdas',NULL),(202,'asda','sad','asdas',NULL),(203,'asda','sad','asdas',NULL),(204,'asda','sad','asdas',NULL),(205,'asda','sad','asdas',NULL),(206,'sadasda','sdasd','asdasdas',NULL),(207,'asdadasd','asdsadas','asdasd',NULL),(208,'SAOZAO','ESPADAO','KEYZAO','2020-06-01T17,58,24.567Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(209,'SAOZAO','ESPADAO','KEYZAO','2020-06-01T17,58,39.287Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(210,'SAOZAO','TITLETAO','KEYZAO',NULL),(211,'xxxxx','xxxxxxxxx','xxxxxxxxxxxxxxxxxx','2020-06-01T18,00,30.041Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(212,'xxxxx','xxxxxxxxx','xxxxxxxxxxxxxxxxxx','2020-06-01T18,01,32.191Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(213,'xxxxx','xxxxxxxxx','xxxxxxxxxxxxxxxxxx','2020-06-01T18,01,52.651Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(214,'asdas','das','sadas',NULL),(215,'xxxx','xxx','xxx',NULL),(216,'xxxddd','ddddddd','dddddddd','2020-06-01T18,16,34.798Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(217,'xxxddd','ddddddd','dddddddd','2020-06-01T18,17,00.992Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(218,'xxxddd','ddddddd','dddddddd','2020-06-01T18,20,33.422Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(219,'xxxddd','ddddddd','dddddddd','2020-06-01T18,20,52.433Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(220,'xxxddd','ddddddd','dddddddd','2020-06-01T18,21,12.735Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(221,'xxxddd','ddddddd','dddddddd','2020-06-01T18,21,38.242Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(222,'xxxddd','ddddddd','dddddddd','2020-06-01T18,21,42.036Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(223,'asdas','asdas','sadas','2020-06-01T18,23,55.934Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(224,'asdas','asdas','sadas','2020-06-01T18,26,43.568Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(225,'dasddasdsa','asdas','asdasdsa','2020-06-01T18,31,55.215Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(226,'dasddasdsa','asdas','asdasdsa','2020-06-01T18,32,14.427Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(227,'dasddasdsa','asdas','asdasdsa','2020-06-01T18,32,48.796Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(228,'dasddasdsa','asdas','asdasdsa','2020-06-01T18,34,51.043Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(229,'dasddasdsa','asdas','asdasdsa','2020-06-01T18,35,05.735Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(230,'dasddasdsa','asdas','asdasdsa','2020-06-01T18,35,23.763Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(231,'dasddasdsa','asdas','asdasdsa','2020-06-01T18,35,31.019Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(232,'asdasda','sadasd','sadasd','2020-06-01T18,48,47.428Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(233,'sadadasd','asdasd','asdasd','2020-06-01T18,49,55.110Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(234,'adsaadas','asdasdsa','asdasdasd',NULL),(235,'adsaadas','asdasdsa','asdasdasd',NULL),(236,'adsaadas','asdasdsa','asdasdasd',NULL),(237,'adsaadas','asdasdsa','asdasdasd',NULL),(238,'adsaadas','asdasdsa','asdasdasd',NULL),(239,'adsaadas','asdasdsa','asdasdasd',NULL),(240,'adsaadas','asdasdsa','asdasdasd',NULL),(241,'adsaadas','asdasdsa','asdasdasd',NULL),(242,'asdasd','asdasdsa','dsadada',NULL),(243,'asdasd','asdasdsa','dsadada',NULL),(244,'asdasd','asdasdsa','dsadada',NULL),(245,'asdasd','asdasdsa','dsadada',NULL),(246,'asdasd','asdasdsa','dsadada',NULL),(247,'sadasdas','asdsadas','asdasd',NULL),(248,'sadasdas','asdsadas','asdasd',NULL),(249,'sadasdas','asdsadas','asdasd',NULL),(250,'XXXX','XXXX','XXX',NULL),(251,'XXXX','XXXX','XXX',NULL),(252,'xxx','xxxx','xxx','2020-06-01T19,26,04.400Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg'),(253,'asdasda','asdsad','asdas',NULL),(254,'dasd','adsada','asdasd',NULL),(255,'PlayList teste','sadasda','asdasdas','2020-06-01T19,49,13.851Z-AAAABUS0tODygRPvN6Ekv8edM7fDKBMYR0-ZnptNi6Oo8O4dDaOg7yfpGQMdi-COGkltQqoNq5e5g4mS43KiuLPGev2c3MfO.jpg');
/*!40000 ALTER TABLE `animes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idcategorias` int NOT NULL AUTO_INCREMENT,
  `titleCategoria` varchar(45) NOT NULL,
  `descriptionCategoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (6,'Echizao',NULL),(8,'SSAS',NULL);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_animes`
--

DROP TABLE IF EXISTS `categorias_animes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_animes` (
  `idcategorias_animes` int NOT NULL AUTO_INCREMENT,
  `idanime` int NOT NULL,
  `idcategoria` int NOT NULL,
  PRIMARY KEY (`idcategorias_animes`),
  KEY `idanime_idx` (`idanime`),
  KEY `idcategoria_idx` (`idcategoria`),
  CONSTRAINT `idanime` FOREIGN KEY (`idanime`) REFERENCES `animes` (`idanimes`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idcategoria` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategorias`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_animes`
--

LOCK TABLES `categorias_animes` WRITE;
/*!40000 ALTER TABLE `categorias_animes` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias_animes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodios`
--

DROP TABLE IF EXISTS `episodios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodios` (
  `idepisodios` int NOT NULL AUTO_INCREMENT,
  `titleEpisodio` varchar(45) NOT NULL,
  `descriptionEpisodio` varchar(1000) DEFAULT NULL,
  `animes_idanimes` int NOT NULL,
  `imgEpisodio` varchar(500) DEFAULT NULL,
  `keyEpisodio` varchar(45) NOT NULL,
  PRIMARY KEY (`idepisodios`,`animes_idanimes`),
  KEY `fk_episodios_animes_idx` (`animes_idanimes`),
  CONSTRAINT `fk_episodios_animes` FOREIGN KEY (`animes_idanimes`) REFERENCES `animes` (`idanimes`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodios`
--

LOCK TABLES `episodios` WRITE;
/*!40000 ALTER TABLE `episodios` DISABLE KEYS */;
INSERT INTO `episodios` VALUES (53,'asdsdas','dda',102,'asd','asasdasda'),(55,'adasdasd','dddd',102,'sdasdas','adasdas'),(57,'Kimetsu','ASDASDASDAS',102,'uploads\\2020-05-18T21,47,23.594Z-kimetsu.jpg','XXXXX'),(58,'Kimetsu','ASDASDASDAS',102,'uploads\\2020-05-18T21,47,36.540Z-kimetsu.jpg','XXXXX'),(60,'asda','sdasdassd',102,'2020-05-26T17,09,33.142Z-kimetsu-896x504-1.jpg','dasdasd'),(61,'sdas','dsadsadas',101,NULL,'dasdasds'),(62,'as','dasdasd',101,'2020-05-26T20,39,17.662Z-kimetsu-896x504-1.jpg','asddas'),(63,'sadas','dsadasdsa',101,NULL,'sadasdsa');
/*!40000 ALTER TABLE `episodios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuarios` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `user` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'Andriel','admin','root'),(3,'Andriel','andriel','andriel123');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-03 18:56:39

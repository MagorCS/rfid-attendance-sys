-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `students` (
  `id` int(11) DEFAULT NULL,
  `classnum` int(11) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `midname` varchar(20) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students20`
--

DROP TABLE IF EXISTS `students20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `students20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classNum` int(11) DEFAULT NULL,
  `surname` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `gName` varchar(255) DEFAULT NULL,
  `gNum` varchar(20) DEFAULT NULL,
  `section` varchar(255) NOT NULL,
  `rfid` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students20`
--

LOCK TABLES `students20` WRITE;
/*!40000 ALTER TABLE `students20` DISABLE KEYS */;
INSERT INTO `students20` VALUES (1,1,'Albao','Maria Angelia','Generoso','F','nan','nan','Hernandez',NULL),(2,2,'Amano','Ria Marci','Bayoneta','F','nan','nan','Hernandez',NULL),(3,3,'Asuncion','Venylee Joy','Azores','F','nan','nan','Hernandez',NULL),(4,4,'Bernos','Rouel Matthew','Castro','M','nan','nan','Hernandez',NULL),(5,5,'Coquilla','Alapaap','Oro','F','nan','nan','Hernandez',NULL),(6,6,'Creer','John Cedric','Marcado','M','nan','nan','Hernandez',NULL),(7,7,'De Ocampo','Aldric Jay','Hernando','M','nan','nan','Hernandez',NULL),(8,8,'Diesta','Mariel','Dreo','F','nan','nan','Hernandez',NULL),(9,9,'Dionisio','Ezekiel Ernest','Noriega','M','nan','nan','Hernandez',NULL),(10,10,'Dizon','Angel Gabrielle','Cabreros','F','nan','nan','Hernandez',NULL),(11,11,'Estilon','Aleana Ria','Papa','F','nan','nan','Hernandez',NULL),(12,12,'Gabriel','Kiara Marie','Acupan','F','nan','nan','Hernandez',NULL),(13,13,'Guzman','Keith Arlo','Revilleza','M','nan','nan','Hernandez',NULL),(14,14,'Herrero','Remesis Cj','Yambao','F','nan','nan','Hernandez',NULL),(15,15,'Loriega','Sohpia Isabelle','Peralta','F','nan','nan','Hernandez',NULL),(16,16,'Mondragon','Tracy','Javier','F','nan','nan','Hernandez',NULL),(17,17,'Pucyutan','Ned Daniel','Felices','M','nan','nan','Hernandez',NULL),(18,18,'Ramolete','J. Rodolfo Manuel','Bonifacio','M','nan','nan','Hernandez',NULL),(19,19,'Sasazawa','Erika','Peñalosa','F','nan','nan','Hernandez',NULL),(20,20,'Tecson','Dylan Cynl','Vergara','M','nan','nan','Hernandez',NULL),(21,21,'Tolosa','James Marcellin','Cruz','M','nan','nan','Hernandez',NULL),(22,22,'Ulanday','Gabriel Eleazar','De Leon','M','nan','nan','Hernandez',NULL),(23,1,'Aquino','Antonio IV','Arceo','M','nan','nan','Banzon','AE 1F 6B 22'),(24,2,'Arceo','Ellene Nerina Therese','Pilar','F','nan','nan','Banzon',NULL),(25,3,'Badong','Trixie Marie','Abadilla','F','nan','nan','Banzon',NULL),(26,4,'Banatao','Nathan Arthur','Olandres','M','nan','nan','Banzon','9E 18 67 22'),(27,5,'Baysa','Aldrin Jay','Navarro','M','nan','nan','Banzon','EE C6 58 22'),(28,6,'Bolanos','Thea Gemikka','Flores','F','nan','nan','Banzon','CE 17 8B 22'),(29,7,'Bondal','Kennard Roy','Pagador','M','nan','nan','Banzon',NULL),(30,8,'Borja','Brett Ashley','Ramos','M','nan','nan','Banzon','9E 36 6D 22'),(31,9,'Cabrera','Rizza Mae','Resoso','F','nan','nan','Banzon',NULL),(32,10,'Camanian','Mark Khalil Gibran','Amor','M','nan','nan','Banzon',NULL),(33,11,'Casama','Michael Angelo','De Leon','M','nan','nan','Banzon',NULL),(34,12,'Catipay','Xavier Michael','Agapito','M','nan','nan','Banzon',NULL),(35,13,'Coronado','John Paul','Navea','M','nan','nan','Banzon','7E E7 6B 22'),(36,14,'David','Marc Archie','Badio','M','nan','nan','Banzon',NULL),(37,15,'De Dios','Neil Joshua','Litan','M','nan','nan','Banzon','DE F5 CD 21'),(38,16,'Dizon','Alixandrea Athena Aera','Sagun','F','nan','nan','Banzon',NULL),(39,17,'Espiritu','Joshua Del','Plata','M','nan','nan','Banzon',NULL),(40,18,'Galang','Elijah Israel','Alcantara','M','nan','nan','Banzon',NULL),(41,19,'Gelera','Sean Albert','Lavin','M','nan','nan','Banzon',NULL),(42,20,'Gosiengfiao','Letitia','Natividad','F','nan','nan','Banzon',NULL),(43,21,'Grimaldo','Reinard','Eugenio','M','nan','nan','Banzon',NULL),(44,22,'Labordo','Sheena Julienne','Aviles','F','nan','nan','Banzon',NULL),(45,23,'Malimban','Mia Nazarene','Delos Reyes','F','nan','nan','Banzon',NULL),(46,24,'Malinao','Archie Kyle','Apillane','M','nan','nan','Banzon',NULL),(47,25,'Mantad','Maria Cielo','Mora','F','nan','nan','Banzon',NULL),(48,26,'Mesano','Lois Kaye','Turda','F','nan','nan','Banzon',NULL),(49,27,'Morillo','Megarth Junny II','Ballarta','M','nan','nan','Banzon',NULL),(50,28,'Neri','Johanna','Hortillosa','F','nan','nan','Banzon',NULL),(51,29,'Nicolas','Ma Ginza Marew','Cruz','F','nan','nan','Banzon','3E AA 89 22'),(52,30,'Ortiz','Angelo Riggs','Asia','M','nan','nan','Banzon',NULL),(53,31,'Quitaleg','Carissa-Shane Nicole','Angco','F','nan','nan','Banzon',NULL),(54,32,'Rafin','Aldrin James','Pucyutan','M','nan','nan','Banzon',NULL),(55,33,'Rodgers','Mae','Serdan','F','nan','nan','Banzon',NULL),(56,34,'Sarabia','Christian','nan','M','nan','nan','Banzon','E1 B7 D0 2D'),(57,35,'Suguitan','Mark Lander','Lim','M','nan','nan','Banzon',NULL),(58,36,'Valenzuela','Simon','Sandoval','M','nan','nan','Banzon',NULL),(59,37,'Vega','Kayla Munich','Salonga','F','nan','nan','Banzon',NULL),(60,1,'Alvarez','Jhomyra Jane','Bardinas','F','nan','nan','Sycip',NULL),(61,2,'Aragones','Milcah Zyril','Batacan','F','nan','nan','Sycip',NULL),(62,3,'Ayuste','Eduardo III','Evora','M','nan','nan','Sycip',NULL),(63,4,'Babaran','Angela Mae','Bungag','F','nan','nan','Sycip',NULL),(64,5,'Badion','Diego Raphael','Arcinas','M','nan','nan','Sycip',NULL),(65,6,'Berina','Kevin Dominic','Rodil','M','nan','nan','Sycip',NULL),(66,7,'Bucas','Charles Lemuel','Raz','M','nan','nan','Sycip',NULL),(67,8,'Cometa','Maria Lorraine','Enciso','F','nan','nan','Sycip',NULL),(68,9,'Cruz','Jastin Cedric','Aguilon','M','nan','nan','Sycip',NULL),(69,10,'Cuerdo','Katrina Joanne','Mallari','F','nan','nan','Sycip',NULL),(70,11,'De Castro','Joanne Alexandra','Bautista','F','nan','nan','Sycip',NULL),(71,12,'Dela Cruz','Anne Angeli','Cabel','F','nan','nan','Sycip',NULL),(72,13,'Dipol','Denise Franchesca','Rofiles','F','nan','nan','Sycip',NULL),(73,14,'Elona','Jhoanna','Sexon','F','nan','nan','Sycip',NULL),(74,15,'Esmero','Charize Juliana','Solomon','F','nan','nan','Sycip',NULL),(75,16,'Fernandez','Ayesha Jemaima','Macao','F','nan','nan','Sycip',NULL),(76,17,'Gabriel','Kurt Marcus','Acosta','M','nan','nan','Sycip',NULL),(77,18,'Galicia','Bryant Matthew','Foja','M','nan','nan','Sycip',NULL),(78,19,'Guanzon','Chloie Mae','Oco','F','nan','nan','Sycip',NULL),(79,20,'Ligson','Cid Armin','Manzano','M','nan','nan','Sycip',NULL),(80,21,'Marquez','Alizia Kristine','Infante','F','nan','nan','Sycip',NULL),(81,22,'Mayor','Maria Justine','Teves','F','nan','nan','Sycip',NULL),(82,23,'Palaña','Ivan','Apusen','M','nan','nan','Sycip',NULL),(83,24,'Regresado','Eunice Lynette','Badilla','F','nan','nan','Sycip',NULL),(84,25,'Reyes','Elkan Afonso','Ramirez','M','nan','nan','Sycip',NULL),(85,26,'Ruivivar','Eunice Andrea','Cerdeña','F','nan','nan','Sycip',NULL),(86,27,'Sapatua','Alyssa Marie','Ginez','F','nan','nan','Sycip',NULL),(87,28,'Sicat','Erja Myrell','Zarate','F','nan','nan','Sycip',NULL),(88,29,'Silvestre','Lucille Anne','Ramos','F','nan','nan','Sycip',NULL),(89,30,'Taller','Darren','Cesar','M','nan','nan','Sycip',NULL),(90,31,'Tarinay','Joseph Rannie','Perez','M','nan','nan','Sycip',NULL),(91,32,'Turqueza','Ashley Loreinne','Ton','F','nan','nan','Sycip',NULL);
/*!40000 ALTER TABLE `students20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taprecords`
--

DROP TABLE IF EXISTS `taprecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taprecords` (
  `tapId` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) DEFAULT NULL,
  `rfid` varchar(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`tapId`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taprecords`
--

LOCK TABLES `taprecords` WRITE;
/*!40000 ALTER TABLE `taprecords` DISABLE KEYS */;
INSERT INTO `taprecords` VALUES (1,1101101,'DE AD BE EF','2019-01-28','15:48:41'),(2,1101101,'DE AD BE EF','2019-01-28','15:48:59'),(4,1101101,'DE AD BE EF','2019-01-28','15:49:12'),(5,1101101,'DE AD BE EF','2019-01-28','15:49:29'),(6,96,'DE AD BE EF','2019-01-28','15:54:22'),(7,66,'DE AD BE EF','2019-01-28','15:55:24'),(8,66,'DE AD BE EF','2019-01-28','15:56:54'),(9,66,'DE AD BE EF','2019-01-28','15:56:55'),(10,66,'DE AD BE EF','2019-01-28','15:56:56'),(11,66,'DE AD BE EF','2019-01-28','15:56:56'),(12,NULL,NULL,'2019-01-28','18:00:01'),(13,5,'None','2019-01-28','18:12:37'),(14,20,'None','2019-01-28','18:13:01'),(15,69,NULL,'2019-01-28','18:36:24'),(16,3,'None','2019-01-28','18:45:22'),(17,32,'None','2019-01-28','18:45:35'),(18,56,'None','2019-01-28','18:45:45'),(19,91,'None','2019-01-28','18:45:50'),(20,10,'None','2019-01-28','19:42:57'),(21,63,'','2019-01-29','11:41:18'),(22,66,'','2019-01-29','14:32:46'),(23,66,NULL,'2019-01-30','06:58:05'),(24,69,NULL,'2019-01-30','06:58:12'),(25,23,NULL,'2019-01-30','06:58:16'),(26,56,NULL,'2019-01-30','06:58:22'),(27,78,NULL,'2019-01-30','06:58:28'),(28,66,'None','2019-01-31','09:36:31'),(29,23,'None','2019-01-31','09:37:09'),(30,24,'None','2019-01-31','09:37:10'),(31,25,'None','2019-01-31','09:37:11'),(32,26,'None','2019-01-31','09:37:12'),(33,27,'None','2019-01-31','09:37:13'),(34,28,'None','2019-01-31','09:37:15'),(35,29,'None','2019-01-31','09:37:16'),(36,30,'None','2019-01-31','09:37:17'),(37,31,'None','2019-01-31','09:37:18'),(38,32,'None','2019-01-31','09:37:19'),(39,33,'None','2019-01-31','09:37:20'),(40,34,'None','2019-01-31','09:37:21'),(41,35,'None','2019-01-31','09:37:22'),(42,36,'None','2019-01-31','09:37:23'),(43,37,'None','2019-01-31','09:37:24'),(44,38,'None','2019-01-31','09:37:25'),(45,39,'None','2019-01-31','09:37:26'),(46,41,'None','2019-01-31','09:37:28'),(47,43,'None','2019-01-31','09:37:30'),(48,45,'None','2019-01-31','09:37:31'),(49,47,'None','2019-01-31','09:37:33'),(50,49,'None','2019-01-31','09:37:35'),(51,67,'None','2019-01-31','10:03:22'),(52,82,'None','2019-01-31','10:03:26'),(53,91,'None','2019-01-31','10:03:30'),(54,93,'None','2019-01-31','10:03:31'),(55,94,'None','2019-01-31','10:03:36'),(56,20,'None','2019-01-31','10:03:39');
/*!40000 ALTER TABLE `taprecords` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-31 23:36:25

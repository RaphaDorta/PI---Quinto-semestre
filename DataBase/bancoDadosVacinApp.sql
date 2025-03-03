CREATE DATABASE  IF NOT EXISTS `usuarios` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `usuarios`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: usuarios
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
-- Table structure for table `cadastros_informacoes`
--

DROP TABLE IF EXISTS `cadastros_informacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastros_informacoes` (
  `usuario_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  PRIMARY KEY (`usuario_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastros_informacoes`
--

LOCK TABLES `cadastros_informacoes` WRITE;
/*!40000 ALTER TABLE `cadastros_informacoes` DISABLE KEYS */;
INSERT INTO `cadastros_informacoes` VALUES (1,'adauto_ananais','senha123','adauto.ananais123@vacinapp.com','Adauto','Ananais','1992-03-12'),(2,'citia_gentil','senha123','citia.gentil123@vacinapp.com','Cítia','Gentil','2015-05-25'),(3,'edgard_silva','senha123','edgard.silva123@vacinapp.com','Edgard','Da Silva','1995-11-15'),(4,'erica_macena','senha123','erica.macena123@vacinapp.com','Érica','Macena','2005-07-30'),(5,'raphael_dorta','senha123','raphael.dorta123@vacinapp.com','Raphael','Dorta','1994-02-20'),(6,'renan_paula','senha123','renan.paula123@vacinapp.com','Renan','de Paula','1996-01-24'),(7,'rodrigo_heerdt','senha123','rodrigo.heerdt123@vacinapp.com','Rodrigo','Heerdt','1996-04-25'),(8,'thiago_pieri','senha123','thiago.pieri123@vacinapp.com','Thiago','de Sousa de Pieri','1925-02-28');
/*!40000 ALTER TABLE `cadastros_informacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_vacinas`
--

DROP TABLE IF EXISTS `usuario_vacinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_vacinas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `vacina_id` int DEFAULT NULL,
  `nome_vacina` varchar(100) DEFAULT NULL,
  `doses_tomar` int DEFAULT NULL,
  `doses_tomadas` enum('Sim','Não') DEFAULT 'Não',
  `informacoes_vacina` text,
  `efeitos_colaterais` text,
  `vacinas_a_tomar` text,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `vacina_id` (`vacina_id`),
  CONSTRAINT `usuario_vacinas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `cadastros_informacoes` (`usuario_id`),
  CONSTRAINT `usuario_vacinas_ibfk_2` FOREIGN KEY (`vacina_id`) REFERENCES `todas_vacinas`.`vacinas_faixa_etaria` (`Vacina_id`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_vacinas`
--

LOCK TABLES `usuario_vacinas` WRITE;
/*!40000 ALTER TABLE `usuario_vacinas` DISABLE KEYS */;
INSERT INTO `usuario_vacinas` VALUES (190,8,'Thiago','de Sousa de Pieri',1,'Vacina BCG',1,'Sim','Vacina contra tuberculose.','Pode causar reação local e febre leve.',NULL),(191,7,'Rodrigo','Heerdt',1,'Vacina BCG',1,'Sim','Vacina contra tuberculose.','Pode causar reação local e febre leve.',NULL),(192,6,'Renan','de Paula',1,'Vacina BCG',1,'Sim','Vacina contra tuberculose.','Pode causar reação local e febre leve.',NULL),(193,5,'Raphael','Dorta',1,'Vacina BCG',1,'Sim','Vacina contra tuberculose.','Pode causar reação local e febre leve.',NULL),(194,4,'Érica','Macena',1,'Vacina BCG',1,'Sim','Vacina contra tuberculose.','Pode causar reação local e febre leve.',NULL),(195,3,'Edgard','Da Silva',1,'Vacina BCG',1,'Sim','Vacina contra tuberculose.','Pode causar reação local e febre leve.',NULL),(196,2,'Cítia','Gentil',1,'Vacina BCG',1,'Sim','Vacina contra tuberculose.','Pode causar reação local e febre leve.',NULL),(197,1,'Adauto','Ananais',1,'Vacina BCG',1,'Sim','Vacina contra tuberculose.','Pode causar reação local e febre leve.',NULL),(198,8,'Thiago','de Sousa de Pieri',2,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(199,7,'Rodrigo','Heerdt',2,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(200,6,'Renan','de Paula',2,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(201,5,'Raphael','Dorta',2,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(202,4,'Érica','Macena',2,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(203,3,'Edgard','Da Silva',2,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(204,2,'Cítia','Gentil',2,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(205,1,'Adauto','Ananais',2,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(206,8,'Thiago','de Sousa de Pieri',3,'Vacina DTPa',3,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(207,7,'Rodrigo','Heerdt',3,'Vacina DTPa',3,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(208,6,'Renan','de Paula',3,'Vacina DTPa',3,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(209,5,'Raphael','Dorta',3,'Vacina DTPa',3,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(210,4,'Érica','Macena',3,'Vacina DTPa',3,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(211,3,'Edgard','Da Silva',3,'Vacina DTPa',3,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(212,2,'Cítia','Gentil',3,'Vacina DTPa',3,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(213,1,'Adauto','Ananais',3,'Vacina DTPa',3,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(214,8,'Thiago','de Sousa de Pieri',4,'Vacina Pneumocócica',4,'Sim','Vacina contra pneumonias.','Efeitos colaterais raros.',NULL),(215,7,'Rodrigo','Heerdt',4,'Vacina Pneumocócica',4,'Sim','Vacina contra pneumonias.','Efeitos colaterais raros.',NULL),(216,6,'Renan','de Paula',4,'Vacina Pneumocócica',4,'Sim','Vacina contra pneumonias.','Efeitos colaterais raros.',NULL),(217,5,'Raphael','Dorta',4,'Vacina Pneumocócica',4,'Sim','Vacina contra pneumonias.','Efeitos colaterais raros.',NULL),(218,4,'Érica','Macena',4,'Vacina Pneumocócica',4,'Sim','Vacina contra pneumonias.','Efeitos colaterais raros.',NULL),(219,3,'Edgard','Da Silva',4,'Vacina Pneumocócica',4,'Sim','Vacina contra pneumonias.','Efeitos colaterais raros.',NULL),(220,2,'Cítia','Gentil',4,'Vacina Pneumocócica',4,'Sim','Vacina contra pneumonias.','Efeitos colaterais raros.',NULL),(221,1,'Adauto','Ananais',4,'Vacina Pneumocócica',4,'Sim','Vacina contra pneumonias.','Efeitos colaterais raros.',NULL),(222,8,'Thiago','de Sousa de Pieri',5,'Vacina Meningocócica',1,'Sim','Vacina contra meningite.','Reações leves como febre e dor no local.',NULL),(223,7,'Rodrigo','Heerdt',5,'Vacina Meningocócica',1,'Sim','Vacina contra meningite.','Reações leves como febre e dor no local.',NULL),(224,6,'Renan','de Paula',5,'Vacina Meningocócica',1,'Sim','Vacina contra meningite.','Reações leves como febre e dor no local.',NULL),(225,5,'Raphael','Dorta',5,'Vacina Meningocócica',1,'Sim','Vacina contra meningite.','Reações leves como febre e dor no local.',NULL),(226,4,'Érica','Macena',5,'Vacina Meningocócica',1,'Sim','Vacina contra meningite.','Reações leves como febre e dor no local.',NULL),(227,3,'Edgard','Da Silva',5,'Vacina Meningocócica',1,'Sim','Vacina contra meningite.','Reações leves como febre e dor no local.',NULL),(228,2,'Cítia','Gentil',5,'Vacina Meningocócica',1,'Sim','Vacina contra meningite.','Reações leves como febre e dor no local.',NULL),(229,1,'Adauto','Ananais',5,'Vacina Meningocócica',1,'Sim','Vacina contra meningite.','Reações leves como febre e dor no local.',NULL),(230,8,'Thiago','de Sousa de Pieri',6,'Vacina Rotavírus',2,'Sim','Vacina contra diarreias por rotavírus.','Pode causar diarreia leve.',NULL),(231,7,'Rodrigo','Heerdt',6,'Vacina Rotavírus',2,'Sim','Vacina contra diarreias por rotavírus.','Pode causar diarreia leve.',NULL),(232,6,'Renan','de Paula',6,'Vacina Rotavírus',2,'Sim','Vacina contra diarreias por rotavírus.','Pode causar diarreia leve.',NULL),(233,5,'Raphael','Dorta',6,'Vacina Rotavírus',2,'Sim','Vacina contra diarreias por rotavírus.','Pode causar diarreia leve.',NULL),(234,4,'Érica','Macena',6,'Vacina Rotavírus',2,'Sim','Vacina contra diarreias por rotavírus.','Pode causar diarreia leve.',NULL),(235,3,'Edgard','Da Silva',6,'Vacina Rotavírus',2,'Sim','Vacina contra diarreias por rotavírus.','Pode causar diarreia leve.',NULL),(236,2,'Cítia','Gentil',6,'Vacina Rotavírus',2,'Sim','Vacina contra diarreias por rotavírus.','Pode causar diarreia leve.',NULL),(237,1,'Adauto','Ananais',6,'Vacina Rotavírus',2,'Sim','Vacina contra diarreias por rotavírus.','Pode causar diarreia leve.',NULL),(238,8,'Thiago','de Sousa de Pieri',7,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(239,7,'Rodrigo','Heerdt',7,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(240,6,'Renan','de Paula',7,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(241,5,'Raphael','Dorta',7,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(242,4,'Érica','Macena',7,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(243,3,'Edgard','Da Silva',7,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(244,2,'Cítia','Gentil',7,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(245,1,'Adauto','Ananais',7,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(246,8,'Thiago','de Sousa de Pieri',8,'Vacina MMR',2,'Sim','Vacina contra sarampo, caxumba e rubéola.','Reações como febre e erupções cutâneas.',NULL),(247,7,'Rodrigo','Heerdt',8,'Vacina MMR',2,'Sim','Vacina contra sarampo, caxumba e rubéola.','Reações como febre e erupções cutâneas.',NULL),(248,6,'Renan','de Paula',8,'Vacina MMR',2,'Sim','Vacina contra sarampo, caxumba e rubéola.','Reações como febre e erupções cutâneas.',NULL),(249,5,'Raphael','Dorta',8,'Vacina MMR',2,'Sim','Vacina contra sarampo, caxumba e rubéola.','Reações como febre e erupções cutâneas.',NULL),(250,4,'Érica','Macena',8,'Vacina MMR',2,'Sim','Vacina contra sarampo, caxumba e rubéola.','Reações como febre e erupções cutâneas.',NULL),(251,3,'Edgard','Da Silva',8,'Vacina MMR',2,'Sim','Vacina contra sarampo, caxumba e rubéola.','Reações como febre e erupções cutâneas.',NULL),(252,2,'Cítia','Gentil',8,'Vacina MMR',2,'Sim','Vacina contra sarampo, caxumba e rubéola.','Reações como febre e erupções cutâneas.',NULL),(253,1,'Adauto','Ananais',8,'Vacina MMR',2,'Sim','Vacina contra sarampo, caxumba e rubéola.','Reações como febre e erupções cutâneas.',NULL),(254,8,'Thiago','de Sousa de Pieri',9,'Vacina DTPa',2,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(255,7,'Rodrigo','Heerdt',9,'Vacina DTPa',2,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(256,6,'Renan','de Paula',9,'Vacina DTPa',2,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(257,5,'Raphael','Dorta',9,'Vacina DTPa',2,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(258,4,'Érica','Macena',9,'Vacina DTPa',2,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(259,3,'Edgard','Da Silva',9,'Vacina DTPa',2,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(260,2,'Cítia','Gentil',9,'Vacina DTPa',2,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(261,1,'Adauto','Ananais',9,'Vacina DTPa',2,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(262,8,'Thiago','de Sousa de Pieri',10,'Vacina Hepatite A',2,'Sim','Vacina contra hepatite A.','Reações leves como dor no local da aplicação.',NULL),(263,7,'Rodrigo','Heerdt',10,'Vacina Hepatite A',2,'Sim','Vacina contra hepatite A.','Reações leves como dor no local da aplicação.',NULL),(264,6,'Renan','de Paula',10,'Vacina Hepatite A',2,'Sim','Vacina contra hepatite A.','Reações leves como dor no local da aplicação.',NULL),(265,5,'Raphael','Dorta',10,'Vacina Hepatite A',2,'Sim','Vacina contra hepatite A.','Reações leves como dor no local da aplicação.',NULL),(266,4,'Érica','Macena',10,'Vacina Hepatite A',2,'Sim','Vacina contra hepatite A.','Reações leves como dor no local da aplicação.',NULL),(267,3,'Edgard','Da Silva',10,'Vacina Hepatite A',2,'Sim','Vacina contra hepatite A.','Reações leves como dor no local da aplicação.',NULL),(268,2,'Cítia','Gentil',10,'Vacina Hepatite A',2,'Sim','Vacina contra hepatite A.','Reações leves como dor no local da aplicação.',NULL),(269,1,'Adauto','Ananais',10,'Vacina Hepatite A',2,'Sim','Vacina contra hepatite A.','Reações leves como dor no local da aplicação.',NULL),(270,8,'Thiago','de Sousa de Pieri',11,'Vacina Varicela',2,'Sim','Vacina contra catapora.','Reações leves como febre e erupções cutâneas.',NULL),(271,7,'Rodrigo','Heerdt',11,'Vacina Varicela',2,'Sim','Vacina contra catapora.','Reações leves como febre e erupções cutâneas.',NULL),(272,6,'Renan','de Paula',11,'Vacina Varicela',2,'Sim','Vacina contra catapora.','Reações leves como febre e erupções cutâneas.',NULL),(273,5,'Raphael','Dorta',11,'Vacina Varicela',2,'Sim','Vacina contra catapora.','Reações leves como febre e erupções cutâneas.',NULL),(274,4,'Érica','Macena',11,'Vacina Varicela',2,'Sim','Vacina contra catapora.','Reações leves como febre e erupções cutâneas.',NULL),(275,3,'Edgard','Da Silva',11,'Vacina Varicela',2,'Sim','Vacina contra catapora.','Reações leves como febre e erupções cutâneas.',NULL),(276,2,'Cítia','Gentil',11,'Vacina Varicela',2,'Sim','Vacina contra catapora.','Reações leves como febre e erupções cutâneas.',NULL),(277,1,'Adauto','Ananais',11,'Vacina Varicela',2,'Sim','Vacina contra catapora.','Reações leves como febre e erupções cutâneas.',NULL),(278,8,'Thiago','de Sousa de Pieri',12,'Vacina HPV',2,'Sim','Vacina contra o papilomavírus humano.','Reações leves como dor no local.',NULL),(279,7,'Rodrigo','Heerdt',12,'Vacina HPV',2,'Sim','Vacina contra o papilomavírus humano.','Reações leves como dor no local.',NULL),(280,6,'Renan','de Paula',12,'Vacina HPV',2,'Sim','Vacina contra o papilomavírus humano.','Reações leves como dor no local.',NULL),(281,5,'Raphael','Dorta',12,'Vacina HPV',2,'Sim','Vacina contra o papilomavírus humano.','Reações leves como dor no local.',NULL),(282,4,'Érica','Macena',12,'Vacina HPV',2,'Sim','Vacina contra o papilomavírus humano.','Reações leves como dor no local.',NULL),(283,3,'Edgard','Da Silva',12,'Vacina HPV',2,'Sim','Vacina contra o papilomavírus humano.','Reações leves como dor no local.',NULL),(284,1,'Adauto','Ananais',12,'Vacina HPV',2,'Sim','Vacina contra o papilomavírus humano.','Reações leves como dor no local.',NULL),(285,8,'Thiago','de Sousa de Pieri',13,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(286,7,'Rodrigo','Heerdt',13,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(287,6,'Renan','de Paula',13,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(288,5,'Raphael','Dorta',13,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(289,4,'Érica','Macena',13,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(290,3,'Edgard','Da Silva',13,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(291,1,'Adauto','Ananais',13,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.',NULL),(292,8,'Thiago','de Sousa de Pieri',14,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(293,7,'Rodrigo','Heerdt',14,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(294,6,'Renan','de Paula',14,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(295,5,'Raphael','Dorta',14,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(296,4,'Érica','Macena',14,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(297,3,'Edgard','Da Silva',14,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(298,1,'Adauto','Ananais',14,'Vacina Hepatite B',3,'Sim','Vacina contra hepatite B.','Reações leves como dor no local da aplicação.',NULL),(299,8,'Thiago','de Sousa de Pieri',15,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(300,7,'Rodrigo','Heerdt',15,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(301,6,'Renan','de Paula',15,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(302,5,'Raphael','Dorta',15,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(303,4,'Érica','Macena',15,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(304,3,'Edgard','Da Silva',15,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(305,1,'Adauto','Ananais',15,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(306,8,'Thiago','de Sousa de Pieri',16,'Vacina Tétano',1,'Sim','Reforço contra tétano.','Pode causar dor no local da injeção.',NULL),(307,7,'Rodrigo','Heerdt',16,'Vacina Tétano',1,'Sim','Reforço contra tétano.','Pode causar dor no local da injeção.',NULL),(308,6,'Renan','de Paula',16,'Vacina Tétano',1,'Sim','Reforço contra tétano.','Pode causar dor no local da injeção.',NULL),(309,5,'Raphael','Dorta',16,'Vacina Tétano',1,'Sim','Reforço contra tétano.','Pode causar dor no local da injeção.',NULL),(310,4,'Érica','Macena',16,'Vacina Tétano',1,'Sim','Reforço contra tétano.','Pode causar dor no local da injeção.',NULL),(311,3,'Edgard','Da Silva',16,'Vacina Tétano',1,'Sim','Reforço contra tétano.','Pode causar dor no local da injeção.',NULL),(312,1,'Adauto','Ananais',16,'Vacina Tétano',1,'Sim','Reforço contra tétano.','Pode causar dor no local da injeção.',NULL),(313,8,'Thiago','de Sousa de Pieri',17,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Recomendada durante a gestação.',NULL),(314,7,'Rodrigo','Heerdt',17,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Recomendada durante a gestação.',NULL),(315,6,'Renan','de Paula',17,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Recomendada durante a gestação.',NULL),(316,5,'Raphael','Dorta',17,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Recomendada durante a gestação.',NULL),(317,4,'Érica','Macena',17,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Recomendada durante a gestação.',NULL),(318,3,'Edgard','Da Silva',17,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Recomendada durante a gestação.',NULL),(319,2,'Cítia','Gentil',17,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Recomendada durante a gestação.',NULL),(320,1,'Adauto','Ananais',17,'Vacina DTPa',1,'Sim','Vacina contra difteria, tétano e coqueluche.','Recomendada durante a gestação.',NULL),(321,8,'Thiago','de Sousa de Pieri',18,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Recomendada durante a gestação.',NULL),(322,7,'Rodrigo','Heerdt',18,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Recomendada durante a gestação.',NULL),(323,6,'Renan','de Paula',18,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Recomendada durante a gestação.',NULL),(324,5,'Raphael','Dorta',18,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Recomendada durante a gestação.',NULL),(325,4,'Érica','Macena',18,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Recomendada durante a gestação.',NULL),(326,3,'Edgard','Da Silva',18,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Recomendada durante a gestação.',NULL),(327,2,'Cítia','Gentil',18,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Recomendada durante a gestação.',NULL),(328,1,'Adauto','Ananais',18,'Vacina Influenza',1,'Sim','Vacina contra gripe.','Recomendada durante a gestação.',NULL),(445,8,'Thiago','de Sousa de Pieri',19,'Vacina Pneumocócica',1,'Não','Vacina contra pneumonias.','Efeitos colaterais raros.',NULL),(446,8,'Thiago','de Sousa de Pieri',20,'Vacina Influenza',1,'Não','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(447,8,'Thiago','de Sousa de Pieri',21,'Vacina Pneumocócica',1,'Não','Vacina contra pneumonias.','Efeitos colaterais raros.',NULL),(448,8,'Thiago','de Sousa de Pieri',22,'Vacina Influenza',1,'Não','Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.',NULL),(449,8,'Thiago','de Sousa de Pieri',23,'Vacina Zoster',2,'Não','Vacina contra herpes zoster.','Efeitos colaterais incluem dor no local e febre.',NULL),(450,8,'Thiago','de Sousa de Pieri',24,'Vacina DTPa',1,'Não','Reforço contra difteria, tétano e coqueluche.','Reações leves como dor no local.',NULL);
/*!40000 ALTER TABLE `usuario_vacinas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-03 18:48:30
CREATE DATABASE  IF NOT EXISTS `hospitais` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospitais`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospitais
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
-- Table structure for table `hospitais`
--

DROP TABLE IF EXISTS `hospitais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitais` (
  `hospital_id` int NOT NULL AUTO_INCREMENT,
  `nome_hospital` varchar(100) NOT NULL,
  `estado_pais` varchar(100) NOT NULL,
  `endereco_hospital` varchar(255) NOT NULL,
  `horario_funcionamento` varchar(100) NOT NULL,
  `telefone_hospital` varchar(20) DEFAULT NULL,
  `aplicacao_vacinas` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitais`
--

LOCK TABLES `hospitais` WRITE;
/*!40000 ALTER TABLE `hospitais` DISABLE KEYS */;
INSERT INTO `hospitais` VALUES (1,'Hospital das Clínicas','São Paulo','Av. Dr. Enéas de Carvalho Aguiar, 155','08:00 - 18:00','0123456789',1),(2,'Hospital de Câncer de Barretos','São Paulo','Rua 24 de Outubro, 123','24 horas','9876543210',1),(3,'Hospital Universitário','Rio de Janeiro','Rua Professor Manuel Ferreira, 456','08:00 - 18:00','0123456789',1),(4,'Hospital de Emergência','Minas Gerais','Av. João Pinheiro, 789','24 horas','9876543210',1),(5,'Hospital São Vicente','Bahia','Rua 2 de Julho, 101','08:00 - 18:00','0123456789',1),(6,'Hospital Geral','Pernambuco','Av. Agamenon Magalhães, 202','24 horas','9876543210',1),(7,'Hospital de Traumatologia','Ceará','Rua Pedro Jorge, 303','08:00 - 18:00','0123456789',1),(8,'Hospital da Mulher','Paraná','Av. Sete de Setembro, 404','08:00 - 18:00','9876543210',1),(9,'Hospital Infantil','Rio Grande do Sul','Rua da Independência, 505','24 horas','0123456789',1),(10,'Hospital de Urgência','Santa Catarina','Rua Dom Jaime Câmara, 606','08:00 - 18:00','9876543210',1),(11,'Hospital São José','Espírito Santo','Av. Nossa Senhora da Penha, 707','24 horas','0123456789',1),(12,'Hospital Universitário','Mato Grosso do Sul','Rua 14 de Julho, 808','08:00 - 18:00','9876543210',1),(13,'Hospital de Câncer','Goiás','Av. Goiás, 909','24 horas','0123456789',1),(14,'Hospital Geral','Distrito Federal','SHIS QI 10 Bloco E','08:00 - 18:00','9876543210',1),(15,'Hospital Regional','Alagoas','Av. Fernandes Lima, 1111','24 horas','0123456789',1),(16,'Hospital de Reabilitação','Paraíba','Rua Cônego Almeida, 1212','08:00 - 18:00','9876543210',1),(17,'Hospital de Emergência','Rio Grande do Norte','Av. Rio Branco, 1313','24 horas','0123456789',1),(18,'Hospital Santa Casa','Sergipe','Rua da Saúde, 1414','08:00 - 18:00','9876543210',1),(19,'Hospital Regional','Tocantins','Avenida Teotônio Segurado, 1515','24 horas','0123456789',1),(20,'Hospital de Urgência','Mato Grosso','Av. São Paulo, 1616','08:00 - 18:00','9876543210',1),(21,'Hospital São Lucas','Acre','Rua 15 de Novembro, 1717','24 horas','0123456789',1),(22,'Hospital do Estado','Amapá','Av. FAB, 1818','08:00 - 18:00','9876543210',1),(23,'Hospital de Campanha','Rondônia','Rua 1, 1919','24 horas','0123456789',1),(24,'Hospital Geral','Piauí','Av. São Sebastião, 2020','08:00 - 18:00','9876543210',1),(25,'Hospital de Urgência','Maranhão','Rua da Vitória, 2121','24 horas','0123456789',1),(26,'Hospital de Referência','Pará','Av. Presidente Vargas, 2222','08:00 - 18:00','9876543210',1),(27,'Hospital Universitário','Amazonas','Rua 10 de Julho, 2323','24 horas','0123456789',1),(28,'Hospital de Câncer','Roraima','Av. Getúlio Vargas, 2424','08:00 - 18:00','9876543210',1);
/*!40000 ALTER TABLE `hospitais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_vacinas`
--

DROP TABLE IF EXISTS `hospital_vacinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_vacinas` (
  `hospital_id` int DEFAULT NULL,
  `vacina_id` int DEFAULT NULL,
  KEY `hospital_id` (`hospital_id`),
  KEY `vacina_id` (`vacina_id`),
  CONSTRAINT `hospital_vacinas_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitais` (`hospital_id`),
  CONSTRAINT `hospital_vacinas_ibfk_2` FOREIGN KEY (`vacina_id`) REFERENCES `todas_vacinas`.`vacinas_faixa_etaria` (`Vacina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_vacinas`
--

LOCK TABLES `hospital_vacinas` WRITE;
/*!40000 ALTER TABLE `hospital_vacinas` DISABLE KEYS */;
INSERT INTO `hospital_vacinas` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(3,11),(3,12),(3,13),(3,14),(3,15),(4,16),(4,17),(4,18),(4,19),(4,20),(5,21),(5,22),(5,23),(5,24),(5,1),(6,2),(6,3),(6,4),(6,5),(6,6),(7,7),(7,8),(7,9),(7,10),(7,11),(8,12),(8,13),(8,14),(8,15),(8,16),(9,17),(9,18),(9,19),(9,20),(9,21),(10,22),(10,23),(10,24),(10,1),(10,2),(11,3),(11,4),(11,5),(11,6),(11,7),(12,8),(12,9),(12,10),(12,11),(12,12),(13,13),(13,14),(13,15),(13,16),(14,17),(14,18),(14,19),(14,20),(14,21),(15,22),(15,23),(15,24),(16,1),(16,2),(16,3),(16,4),(16,5),(17,6),(17,7),(17,8),(17,9),(17,10),(18,11),(18,12),(18,13),(18,14),(18,15),(19,16),(19,17),(19,18),(19,19),(19,20),(20,21),(20,22),(20,23),(20,24),(20,1),(21,2),(21,3),(21,4),(21,5),(21,6),(22,7),(22,8),(22,9),(22,10),(23,11),(23,12),(23,13),(23,14),(23,15),(24,16),(24,17),(24,18),(24,19),(24,20),(1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(3,11),(3,12),(3,13),(3,14),(3,15),(4,16),(4,17),(4,18),(4,19),(4,20),(5,21),(5,22),(5,23),(5,24),(5,1),(6,2),(6,3),(6,4),(6,5),(6,6),(7,7),(7,8),(7,9),(7,10),(7,11),(8,12),(8,13),(8,14),(8,15),(8,16),(9,17),(9,18),(9,19),(9,20),(9,21),(10,22),(10,23),(10,24),(10,1),(10,2),(11,3),(11,4),(11,5),(11,6),(11,7),(3,8),(3,9),(3,10),(3,11),(3,12),(13,13),(13,14),(13,15),(13,16),(6,17),(6,18),(6,19),(6,20),(6,21),(15,22),(15,23),(15,24),(16,1),(16,2),(16,3),(16,4),(16,5),(4,6),(4,7),(4,8),(4,9),(4,10),(18,11),(18,12),(18,13),(18,14),(18,15),(15,16),(15,17),(15,18),(15,19),(15,20),(10,21),(10,22),(10,23),(10,24),(10,1),(21,2),(21,3),(21,4),(21,5),(21,6),(22,7),(22,8),(22,9),(22,10),(23,11),(23,12),(23,13),(23,14),(23,15),(6,16),(6,17),(6,18),(6,19),(6,20);
/*!40000 ALTER TABLE `hospital_vacinas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-03 18:48:31
CREATE DATABASE  IF NOT EXISTS `todas_vacinas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `todas_vacinas`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: todas_vacinas
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
-- Table structure for table `vacinas_faixa_etaria`
--

DROP TABLE IF EXISTS `vacinas_faixa_etaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacinas_faixa_etaria` (
  `Vacina_id` int NOT NULL AUTO_INCREMENT,
  `nome_vacina` varchar(100) NOT NULL,
  `doses_tomar` int NOT NULL,
  `lote_vacina` varchar(20) NOT NULL,
  `idade_vacinar` int NOT NULL,
  `informacoes_vacina` text,
  `efeitos_colaterais` text,
  PRIMARY KEY (`Vacina_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacinas_faixa_etaria`
--

LOCK TABLES `vacinas_faixa_etaria` WRITE;
/*!40000 ALTER TABLE `vacinas_faixa_etaria` DISABLE KEYS */;
INSERT INTO `vacinas_faixa_etaria` VALUES (1,'Vacina BCG',1,'Lote12345',0,'Vacina contra tuberculose.','Pode causar reação local e febre leve.'),(2,'Vacina Hepatite B',3,'Lote67890',0,'Vacina contra hepatite B.','Reações leves como dor no local da aplicação.'),(3,'Vacina DTPa',3,'Lote54321',0,'Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.'),(4,'Vacina Pneumocócica',4,'Lote11111',0,'Vacina contra pneumonias.','Efeitos colaterais raros.'),(5,'Vacina Meningocócica',1,'Lote22222',0,'Vacina contra meningite.','Reações leves como febre e dor no local.'),(6,'Vacina Rotavírus',2,'Lote33333',0,'Vacina contra diarreias por rotavírus.','Pode causar diarreia leve.'),(7,'Vacina Influenza',1,'Lote44444',6,'Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.'),(8,'Vacina MMR',2,'Lote55555',1,'Vacina contra sarampo, caxumba e rubéola.','Reações como febre e erupções cutâneas.'),(9,'Vacina DTPa',2,'Lote66666',4,'Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.'),(10,'Vacina Hepatite A',2,'Lote77777',1,'Vacina contra hepatite A.','Reações leves como dor no local da aplicação.'),(11,'Vacina Varicela',2,'Lote88888',1,'Vacina contra catapora.','Reações leves como febre e erupções cutâneas.'),(12,'Vacina HPV',2,'Lote99999',10,'Vacina contra o papilomavírus humano.','Reações leves como dor no local.'),(13,'Vacina DTPa',1,'Lote00000',11,'Vacina contra difteria, tétano e coqueluche.','Pode causar irritabilidade e febre.'),(14,'Vacina Hepatite B',3,'Lote10101',18,'Vacina contra hepatite B.','Reações leves como dor no local da aplicação.'),(15,'Vacina Influenza',1,'Lote20202',18,'Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.'),(16,'Vacina Tétano',1,'Lote30303',18,'Reforço contra tétano.','Pode causar dor no local da injeção.'),(17,'Vacina DTPa',1,'Lote40404',0,'Vacina contra difteria, tétano e coqueluche.','Recomendada durante a gestação.'),(18,'Vacina Influenza',1,'Lote50505',0,'Vacina contra gripe.','Recomendada durante a gestação.'),(19,'Vacina Pneumocócica',1,'Lote60606',60,'Vacina contra pneumonias.','Efeitos colaterais raros.'),(20,'Vacina Influenza',1,'Lote70707',60,'Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.'),(21,'Vacina Pneumocócica',1,'Lote60606',60,'Vacina contra pneumonias.','Efeitos colaterais raros.'),(22,'Vacina Influenza',1,'Lote70707',60,'Vacina contra gripe.','Efeitos colaterais raros incluem febre e dor muscular.'),(23,'Vacina Zoster',2,'Lote80808',60,'Vacina contra herpes zoster.','Efeitos colaterais incluem dor no local e febre.'),(24,'Vacina DTPa',1,'Lote90909',60,'Reforço contra difteria, tétano e coqueluche.','Reações leves como dor no local.');
/*!40000 ALTER TABLE `vacinas_faixa_etaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacinas_ocupacional`
--

DROP TABLE IF EXISTS `vacinas_ocupacional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacinas_ocupacional` (
  `Vacina_id` int NOT NULL AUTO_INCREMENT,
  `nome_vacina` varchar(100) NOT NULL,
  `doses_tomar` int NOT NULL,
  `lote_vacina` varchar(20) NOT NULL,
  `cargo_trabalho` varchar(100) NOT NULL,
  `informacoes_vacina` text,
  `efeitos_colaterais` text,
  PRIMARY KEY (`Vacina_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacinas_ocupacional`
--

LOCK TABLES `vacinas_ocupacional` WRITE;
/*!40000 ALTER TABLE `vacinas_ocupacional` DISABLE KEYS */;
INSERT INTO `vacinas_ocupacional` VALUES (37,'Vacina Hepatite B',3,'Lote10101','Profissionais de Saúde','Recomendada para aqueles que trabalham em ambientes de saúde.','Reações leves como dor no local da injeção.'),(38,'Vacina Tétano',1,'Lote20202','Trabalhadores da Construção','Reforço a cada 10 anos.','Pode causar dor no local da injeção.'),(39,'Vacina Febre Amarela',1,'Lote30303','Trabalhadores de Fauna Silvestre','Recomendada para quem trabalha com animais silvestres.','Pode causar febre e dor muscular.'),(40,'Vacina Raiva',3,'Lote40404','Veterinários','Recomendada para aqueles que trabalham com animais.','Efeitos colaterais leves como dor no local da injeção.'),(41,'Vacina Gripe',1,'Lote50505','Profissionais de Saúde','Recomendada anualmente para profissionais expostos.','Efeitos colaterais raros incluem febre e dor muscular.'),(42,'Vacina Meningocócica',1,'Lote60606','Estudantes de Medicina','Recomendada para estudantes em contato com pacientes.','Efeitos colaterais raros.'),(43,'Vacina DTPa',1,'Lote70707','Trabalhadores de Creches','Recomendada para proteção contra doenças respiratórias.','Pode causar irritabilidade e febre.'),(44,'Vacina Febre Tifoide',1,'Lote80808','Trabalhadores de Alimentação','Recomendada para trabalhadores que manipulam alimentos.','Efeitos colaterais leves como dor abdominal.'),(45,'Vacina Encefalite Japonesa',2,'Lote90909','Trabalhadores em Agricultura','Recomendada para aqueles que trabalham em áreas endêmicas.','Efeitos colaterais leves como dor no local da injeção.'),(46,'Vacina Antirrábica',3,'Lote101010','Trabalhadores de Alto Mar','Recomendada para trabalhadores expostos a animais marinhos.','Efeitos colaterais leves como dor no local da injeção.'),(47,'Vacina Antitetânica',1,'Lote111111','Trabalhadores de Mineração','Reforço a cada 10 anos para trabalhadores em ambientes de risco.','Pode causar dor no local da injeção.'),(48,'Vacina Voo Espacial',1,'Lote121212','Astronautas','Recomendada para proteção em ambientes de microgravidade.','Efeitos colaterais não documentados, pois é uma vacina experimental.'),(49,'Vacina Cólera',1,'Lote131313','Trabalhadores em Situações de Emergência','Recomendada em situações de surto.','Efeitos colaterais leves como diarreia.'),(50,'Vacina Tuberculose',1,'Lote141414','Profissionais de Saúde','Recomendada para profissionais em contato com pacientes.','Reações leves como febre e irritação local.');
/*!40000 ALTER TABLE `vacinas_ocupacional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacinas_viagem`
--

DROP TABLE IF EXISTS `vacinas_viagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacinas_viagem` (
  `Vacina_id` int NOT NULL AUTO_INCREMENT,
  `nome_vacina` varchar(100) NOT NULL,
  `doses_tomar` int NOT NULL,
  `lote_vacina` varchar(20) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `informacoes_vacina` text,
  `efeitos_colaterais` text,
  PRIMARY KEY (`Vacina_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacinas_viagem`
--

LOCK TABLES `vacinas_viagem` WRITE;
/*!40000 ALTER TABLE `vacinas_viagem` DISABLE KEYS */;
INSERT INTO `vacinas_viagem` VALUES (25,'Vacina Febre Amarela',1,'Lote10101','Brasil, África, América do Sul','Requerida para entrada em alguns países.','Pode causar febre e dor muscular.'),(26,'Vacina Hepatite A',2,'Lote20202','Internacional','Recomendada para viajantes para países em desenvolvimento.','Reações leves como dor no local da injeção.'),(27,'Vacina Hepatite B',3,'Lote30303','Internacional','Recomendada para viajantes que podem ter contato com fluidos corporais.','Reações leves como dor no local da injeção.'),(28,'Vacina Tifoide',1,'Lote40404','Ásia, África','Recomendada para viajantes a áreas endêmicas.','Reações leves como febre e dor no local da injeção.'),(29,'Vacina Meningocócica',1,'Lote50505','África, Arábia Saudita','Recomendada para alguns países da África e durante peregrinações.','Efeitos colaterais raros.'),(30,'Vacina Raiva',3,'Lote60606','Internacional','Recomendada para viajantes que podem ter contato com animais.','Efeitos colaterais leves como dor no local da injeção.'),(31,'Vacina Gripe',1,'Lote70707','Internacional','Recomendada para viajantes em áreas com surtos.','Efeitos colaterais raros incluem febre e dor muscular.'),(32,'Vacina Encefalite Japonesa',2,'Lote80808','Ásia','Recomendada para viajantes a áreas endêmicas.','Efeitos colaterais leves como dor no local da injeção.'),(33,'Vacina Cólera',1,'Lote90909','África, Ásia','Recomendada para viajantes a áreas endêmicas.','Efeitos colaterais leves como dor abdominal.'),(34,'Vacina Dengue',3,'Lote101010','Brasil, Caribe','Recomendada para áreas com surto de dengue.','Efeitos colaterais leves como dor no local da injeção.'),(35,'Vacina Sarampo',1,'Lote111111','Internacional','Recomendada para viajantes que não foram vacinados.','Reações como febre e erupções cutâneas.'),(36,'Vacina Pólio',1,'Lote121212','Internacional','Recomendada para viajantes a áreas com risco de poliomielite.','Efeitos colaterais raros.');
/*!40000 ALTER TABLE `vacinas_viagem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-03 18:48:32

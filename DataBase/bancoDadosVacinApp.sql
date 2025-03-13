-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: vacinaapp
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `idHospital` int NOT NULL AUTO_INCREMENT,
  `ddd` int NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `estado` varchar(70) NOT NULL,
  `nomeHospital` varchar(100) NOT NULL,
  `país` varchar(70) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `nome_hospital` varchar(100) NOT NULL,
  PRIMARY KEY (`idHospital`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (6,11,'Av. Paulista, 1000','São Paulo','Hospital Albert Einstein','Brasil','1121234567','Albert Einstein'),(7,21,'Rua das Flores, 500','Rio de Janeiro','Hospital Copa D\'Or','Brasil','2133344555','Copa D\'Or'),(8,31,'Av. Amazonas, 200','Minas Gerais','Hospital Mater Dei','Brasil','3133334444','Mater Dei'),(9,81,'Rua da Aurora, 300','Pernambuco','Hospital Real Português','Brasil','8132223333','Real Português'),(10,51,'Av. Ipiranga, 400','Rio Grande do Sul','Hospital Moinhos de Vento','Brasil','5134445555','Moinhos de Vento');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUser` bigint NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `dataNascimento` datetime(6) NOT NULL,
  `ddd` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `id_user` bigint NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'12345678900','1990-05-19 00:00:00.000000','11','joao.silva@email.com','João Silva','987654321',0),(2,'11111111111','2025-03-01 00:00:00.000000','35','biateste@gmail.com','Bia','988888888',0),(3,'222222222','2025-03-21 00:00:00.000000','31','joseteste@gmail.com','Jose','999999999',0),(4,'22222222233','2020-03-21 00:00:00.000000','31','dedeteste@gmail.com','Dede','999999900',0),(5,'12345678901','1990-05-15 00:00:00.000000','11','joao.silva@example.com','João Silva','11987654321',0),(6,'23456789012','1985-08-22 00:00:00.000000','21','maria.oliveira@example.com','Maria Oliveira','21987654321',0),(7,'34567890123','1995-03-10 00:00:00.000000','31','carlos.souza@example.com','Carlos Souza','31987654321',0),(8,'45678901234','1980-11-30 00:00:00.000000','81','ana.costa@example.com','Ana Costa','81987654321',0),(9,'56789012345','1992-07-25 00:00:00.000000','51','pedro.ribeiro@example.com','Pedro Ribeiro','51987654321',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_vacina`
--

DROP TABLE IF EXISTS `usuario_vacina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_vacina` (
  `id_usuario_vacina` int NOT NULL AUTO_INCREMENT,
  `data_primeira_dose` datetime(6) NOT NULL,
  `data_segunda_dose` datetime(6) DEFAULT NULL,
  `segunda_dose_pendente` bit(1) NOT NULL,
  `id_vacina` int NOT NULL,
  `id_usuario` bigint NOT NULL,
  `idUsuario` bigint NOT NULL,
  `idVacina` int NOT NULL,
  PRIMARY KEY (`id_usuario_vacina`),
  KEY `FK_usuario_vacina_usuario` (`id_usuario`),
  CONSTRAINT `FK_usuario_vacina_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_vacina`
--

LOCK TABLES `usuario_vacina` WRITE;
/*!40000 ALTER TABLE `usuario_vacina` DISABLE KEYS */;
INSERT INTO `usuario_vacina` VALUES (1,'2023-01-15 00:00:00.000000','2023-02-15 00:00:00.000000',_binary '\0',5,5,0,0),(2,'2023-03-10 00:00:00.000000',NULL,_binary '',6,5,0,0),(3,'2023-04-05 00:00:00.000000','2023-05-05 00:00:00.000000',_binary '\0',7,5,0,0),(4,'2023-06-20 00:00:00.000000',NULL,_binary '',8,5,0,0),(5,'2023-07-12 00:00:00.000000','2023-08-12 00:00:00.000000',_binary '\0',9,5,0,0);
/*!40000 ALTER TABLE `usuario_vacina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacina`
--

DROP TABLE IF EXISTS `vacina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacina` (
  `idVacina` int NOT NULL AUTO_INCREMENT,
  `país` varchar(100) NOT NULL,
  `doses_tomar` int NOT NULL,
  `efeitos_colaterais` varchar(1000) DEFAULT NULL,
  `idade_maxima` int NOT NULL,
  `idade_minima` int NOT NULL,
  `informacoes_vacina` varchar(1000) NOT NULL,
  `lote_vacina` varchar(50) NOT NULL,
  `nome_vacina` varchar(75) NOT NULL,
  PRIMARY KEY (`idVacina`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacina`
--

LOCK TABLES `vacina` WRITE;
/*!40000 ALTER TABLE `vacina` DISABLE KEYS */;
INSERT INTO `vacina` VALUES (1,'Estados Unidos',2,'Dor no local da injeção, fadiga, dor de cabeça.',120,12,'Vacina de mRNA para prevenção da COVID-19.','PFIZER2023A','Vacina COVID-19 - Pfizer'),(2,'Reino Unido',2,'Febre, dor muscular, cansaço.',120,18,'Vacina de vetor viral para prevenção da COVID-19.','ASTRA2023B','Vacina COVID-19 - AstraZeneca'),(3,'Brasil',1,'Dor no braço, febre baixa.',120,6,'Vacina anual para prevenção da gripe.','FLU2023C','Vacina Influenza (Gripe)'),(4,'Canadá',3,'Vermelhidão no local da injeção, dor de cabeça.',120,0,'Vacina para prevenção da hepatite B.','HEPB2023D','Vacina Hepatite B'),(5,'Brasil',1,'Dor no local da injeção, febre baixa.',120,9,'Vacina para prevenção da febre amarela.','YF2023E','Vacina Febre Amarela'),(6,'Estados Unidos',2,'Dor no local, febre leve, fadiga',99,12,'Vacina contra COVID-19 desenvolvida pela Pfizer-BioNTech','L12345A','Pfizer-BioNTech'),(7,'Reino Unido',2,'Dor no braço, calafrios, dor de cabeça',99,18,'Vacina contra COVID-19 desenvolvida pela AstraZeneca','L67890B','AstraZeneca'),(8,'Brasil',1,'Febre leve, dor muscular',99,6,'Vacina contra gripe Influenza usada na campanha nacional de vacinação','L54321C','Influenza'),(9,'Índia',3,'Dor local, febre, fadiga moderada',99,0,'Vacina contra hepatite B, altamente eficaz','L98765D','Hepatite B'),(10,'China',2,'Fadiga leve, dor no braço',60,1,'Vacina inativada contra a COVID-19 produzida pela Sinovac','L11223E','CoronaVac');
/*!40000 ALTER TABLE `vacina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacina_hospital`
--

DROP TABLE IF EXISTS `vacina_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacina_hospital` (
  `id_vacina` int NOT NULL,
  `id_hospital` int NOT NULL,
  `idVacina` int NOT NULL,
  `idHospital` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacina_hospital`
--

LOCK TABLES `vacina_hospital` WRITE;
/*!40000 ALTER TABLE `vacina_hospital` DISABLE KEYS */;
INSERT INTO `vacina_hospital` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0);
/*!40000 ALTER TABLE `vacina_hospital` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-13  0:06:42

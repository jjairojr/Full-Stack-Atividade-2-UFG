-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: db_hotel
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `tb_hospedagem`
--

DROP TABLE IF EXISTS `tb_hospedagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_hospedagem` (
  `id_hospedagem` int NOT NULL AUTO_INCREMENT,
  `id_quarto` int NOT NULL,
  `id_hospede` int NOT NULL,
  `dt_checkin` date NOT NULL,
  `dt_checkout` date DEFAULT NULL,
  PRIMARY KEY (`id_hospedagem`),
  KEY `hospedagem_hospede_idx` (`id_hospede`),
  KEY `hospedagem_quarto_idx` (`id_quarto`),
  CONSTRAINT `hospedagem_hospede` FOREIGN KEY (`id_hospede`) REFERENCES `tb_hospede` (`id_hospede`),
  CONSTRAINT `hospedagem_quarto` FOREIGN KEY (`id_quarto`) REFERENCES `tb_quarto` (`id_quarto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_hospedagem`
--

LOCK TABLES `tb_hospedagem` WRITE;
/*!40000 ALTER TABLE `tb_hospedagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_hospedagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_hospede`
--

DROP TABLE IF EXISTS `tb_hospede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_hospede` (
  `id_hospede` int NOT NULL AUTO_INCREMENT,
  `nm_hospede` varchar(90) NOT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `cpf` int DEFAULT NULL,
  PRIMARY KEY (`id_hospede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_hospede`
--

LOCK TABLES `tb_hospede` WRITE;
/*!40000 ALTER TABLE `tb_hospede` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_hospede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_hotel`
--

DROP TABLE IF EXISTS `tb_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_hotel` (
  `id_hotel` int NOT NULL AUTO_INCREMENT,
  `nm_hotel` varchar(45) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `qtd_estrelas` int DEFAULT NULL,
  PRIMARY KEY (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_hotel`
--

LOCK TABLES `tb_hotel` WRITE;
/*!40000 ALTER TABLE `tb_hotel` DISABLE KEYS */;
INSERT INTO `tb_hotel` VALUES (1,'Castro\'s Park Hotel','Av. República do Líbano, 1520 - St. Oeste, Goiânia - GO, 74115-030',5),(2,'Hotel Aldeia Cerrado Pousada','R. 1122, 220 - Quadra 220, Lote 04 - St. Marista, Goiânia - GO, 74175-110',4),(3,'Sun Square Suítes Hotel by ALTERADO ALTERADO','R. 9, 1053 - St. Oeste, Goiânia - GO, 74120-010',3);
/*!40000 ALTER TABLE `tb_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_quarto`
--

DROP TABLE IF EXISTS `tb_quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_quarto` (
  `id_quarto` int NOT NULL AUTO_INCREMENT,
  `id_hotel` int DEFAULT NULL,
  `categoria_quarto` int DEFAULT NULL,
  `qtd_leito` int DEFAULT NULL,
  `nr_quarto` int DEFAULT NULL,
  `preco_diaria` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_quarto`),
  KEY `quarto_hotel_idx` (`id_hotel`),
  CONSTRAINT `quarto_hotel` FOREIGN KEY (`id_hotel`) REFERENCES `tb_hotel` (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_quarto`
--

LOCK TABLES `tb_quarto` WRITE;
/*!40000 ALTER TABLE `tb_quarto` DISABLE KEYS */;
INSERT INTO `tb_quarto` VALUES (1,1,2,3,120,240.00),(2,1,3,2,401,500.00),(4,1,1,1,205,100.00);
/*!40000 ALTER TABLE `tb_quarto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-03 17:40:11

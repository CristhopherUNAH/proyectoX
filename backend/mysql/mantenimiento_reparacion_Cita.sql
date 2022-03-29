-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: proyecto.crjusbphwqe8.us-east-1.rds.amazonaws.com    Database: mantenimiento_reparacion
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Cita`
--

DROP TABLE IF EXISTS `Cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cita` (
  `idCita` int NOT NULL AUTO_INCREMENT,
  `idCliente_FK` int NOT NULL,
  `idPlaca_FK` int NOT NULL,
  `fechaHoraEntrada` datetime NOT NULL,
  `mantenimiento` int NOT NULL,
  `reparacion` varchar(200) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `fechaEntrega` date NOT NULL,
  `registrado` tinyint NOT NULL,
  `idAsesor_FK` int NOT NULL,
  `idMecanico_FK` int NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`idCita`),
  UNIQUE KEY `idCita_UNIQUE` (`idCita`),
  KEY `idCliente_FK_idx` (`idCliente_FK`),
  KEY `idPlaca_FK_idx` (`idPlaca_FK`),
  KEY `idAsesor_FK_idx` (`idAsesor_FK`),
  KEY `idMecanico_FK_idx` (`idMecanico_FK`),
  CONSTRAINT `idAsesor_FK` FOREIGN KEY (`idAsesor_FK`) REFERENCES `Trabajadores` (`idTrabajadores`),
  CONSTRAINT `idCliente_FK` FOREIGN KEY (`idCliente_FK`) REFERENCES `Cliente` (`idCliente`),
  CONSTRAINT `idMecanico_FK` FOREIGN KEY (`idMecanico_FK`) REFERENCES `Mecaninos` (`idMecaninos`),
  CONSTRAINT `idPlaca_FK` FOREIGN KEY (`idPlaca_FK`) REFERENCES `Auto` (`idPlaca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cita`
--

LOCK TABLES `Cita` WRITE;
/*!40000 ALTER TABLE `Cita` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cita` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-18  0:14:09

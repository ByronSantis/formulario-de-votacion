-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: votacion
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidatos`
--

DROP TABLE IF EXISTS `candidatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatos`
--

LOCK TABLES `candidatos` WRITE;
/*!40000 ALTER TABLE `candidatos` DISABLE KEYS */;
INSERT INTO `candidatos` VALUES (1,'Sofia Garden'),(2,'Kevin Sepulveda'),(3,'Trinidad Tobar'),(4,'Uziel Marin'),(5,'Marina Santibañez');
/*!40000 ALTER TABLE `candidatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunas`
--

DROP TABLE IF EXISTS `comunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comunas` (
  `id_comuna` int(11) NOT NULL AUTO_INCREMENT,
  `id_region` int(11) NOT NULL,
  `comuna` varchar(80) NOT NULL,
  PRIMARY KEY (`id_comuna`),
  KEY `id_region` (`id_region`),
  CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `regiones` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunas`
--

LOCK TABLES `comunas` WRITE;
/*!40000 ALTER TABLE `comunas` DISABLE KEYS */;
INSERT INTO `comunas` VALUES (1,1,'Arica'),(2,1,'Camarones'),(3,1,'General Lagos'),(4,1,'Putre'),(5,2,'Alto Hospicio'),(6,2,'Camiña'),(7,2,'Colchane'),(8,2,'Huara'),(9,2,'Iquique'),(10,2,'Pica'),(11,2,'Pozo Almonte'),(12,3,'Antofagasta'),(13,3,'Calama'),(14,3,'María Elena'),(15,3,'Mejillones'),(16,3,'Ollague'),(17,3,'San Pedro de Atacama'),(18,3,'Sierra Gorda'),(19,3,'Taltal'),(20,3,'Tocopilla'),(21,4,'Alto del Carmen'),(22,4,'Caldera'),(23,4,'Chañaral'),(24,4,'Copiapó'),(25,4,'Diego de Almagro'),(26,4,'Freirina'),(27,4,'Huasco'),(28,4,'Tierra Amarilla'),(29,4,'Vallenar'),(30,5,'Andacollo'),(31,5,'Canela'),(32,5,'Combarbalá'),(33,5,'Coquimbo'),(34,5,'Illapel'),(35,5,'La Higuera'),(36,5,'La Serena'),(37,5,'Los Vilos'),(38,5,'Monte Patria'),(39,5,'Ovalle'),(40,5,'Paihuano'),(41,5,'Punitaqui'),(42,5,'Río Hurtado'),(43,5,'Salamanca'),(44,5,'Vicuña'),(45,6,'Algarrobo'),(46,6,'Cabildo'),(47,6,'Calera'),(48,6,'Calle Larga'),(49,6,'Cartagena'),(50,6,'Casablanca'),(51,6,'Catemu'),(52,6,'Concón'),(53,6,'El Quisco'),(54,6,'El Tabo'),(55,6,'Hijuelas'),(56,6,'Isla de Pascua'),(57,6,'Juan Fernández'),(58,6,'La Cruz'),(59,6,'La Ligua'),(60,6,'Limache'),(61,6,'Llaillay'),(62,6,'Los Andes'),(63,6,'Nogales'),(64,6,'Olmué'),(65,6,'Panquehue'),(66,6,'Papudo'),(67,6,'Petorca'),(68,6,'Puchuncavi'),(69,6,'Putaendo'),(70,6,'Quillota'),(71,6,'Quilpué'),(72,6,'Quintero'),(73,6,'Rinconada'),(74,6,'San Antonio'),(75,6,'San Esteban'),(76,6,'San Felipe'),(77,6,'Santa María'),(78,6,'Santo Domingo'),(79,6,'Valparaiso'),(80,6,'Villa Alemana'),(81,6,'Viña del Mar'),(82,6,'Zapallar'),(83,7,'Alhué'),(84,7,'Buin'),(85,7,'Calera de Tango'),(86,7,'Cerrillos'),(87,7,'Cerro Navia'),(88,7,'Colina'),(89,7,'Conchalí'),(90,7,'Curacaví'),(91,7,'El Bosque'),(92,7,'El monte'),(93,7,'Estacion Central'),(94,7,'Huechuraba'),(95,7,'Independencia'),(96,7,'Isla de Maipo'),(97,7,'La Cisterna'),(98,7,'La Florida'),(99,7,'La Granja'),(100,7,'Lampa'),(101,7,'La Pintana'),(102,7,'La Reina'),(103,7,'Las Condes'),(104,7,'Lo Bornechea'),(105,7,'Lo Espejo'),(106,7,'Lo Prado'),(107,7,'Macul'),(108,7,'Maipú'),(109,7,'María Pinto'),(110,7,'Melipilla'),(111,7,'ÑuÑoa'),(112,7,'Padre Hurtado'),(113,7,'Paine'),(114,7,'Pedro Aguirre Cerda'),(115,7,'Peñaflor'),(116,7,'Peñalolen'),(117,7,'Pirque'),(118,7,'Providencia'),(119,7,'Pudahuel'),(120,7,'Puente Alto'),(121,7,'Quilicura'),(122,7,'Quinta Normal'),(123,7,'Recoleta'),(124,7,'Renca'),(125,7,'San Bernardo'),(126,7,'San Joaquín'),(127,7,'San José de Maipo'),(128,7,'San Miguel'),(129,7,'San Pedro'),(130,7,'San Ramon'),(131,7,'Santiago'),(132,7,'Talgante'),(133,7,'Tiltil'),(134,7,'Vitacura'),(135,8,'Chépica'),(136,8,'Chimbarongo'),(137,8,'Codegua'),(138,8,'Coínco'),(139,8,'Coltauco'),(140,8,'Doñihue'),(141,8,'Graneros'),(142,8,'La Estrella'),(143,8,'Las Cabras'),(144,8,'Liteuche'),(145,8,'Lolol'),(146,8,'Machalí'),(147,8,'Malloa'),(148,8,'Marchihue'),(149,8,'Mostazal'),(150,8,'Nancagua'),(151,8,'Navidad'),(152,8,'Olivar'),(153,8,'Palmilla'),(154,8,'Paredones'),(155,8,'Peralillo'),(156,8,'Peumo'),(157,8,'Pichidegua'),(158,8,'Pichilemu'),(159,8,'Placilla'),(160,8,'Pumanque'),(161,8,'Quinta de Tilcoco'),(162,8,'Rancagua'),(163,8,'Rengo'),(164,8,'Requínoa'),(165,8,'San Fernando'),(166,8,'Santa Cruz'),(167,8,'San Vicente'),(168,9,'Cauquenes'),(169,9,'Chanco'),(170,9,'Colbún'),(171,9,'Constitución'),(172,9,'Curepto'),(173,9,'Curicó'),(174,9,'Empedrado'),(175,9,'Hualañé'),(176,9,'Licantén'),(177,9,'Linares'),(178,9,'Longaví'),(179,9,'Maule'),(180,9,'Molina'),(181,9,'Parral'),(182,9,'Pelarco'),(183,9,'Pelluhue'),(184,9,'Pencahue'),(185,9,'Rauco'),(186,9,'Retiro'),(187,9,'Río Claro'),(188,9,'Romeral'),(189,9,'Sagrada Familia'),(190,9,'San Clemente'),(191,9,'San Javier'),(192,9,'San Rafael'),(193,9,'Talca'),(194,9,'Teno'),(195,9,'Vichuquén'),(196,9,'Villa Alegre'),(197,9,'Yerbas Buenas'),(198,10,'Bulnes'),(199,10,'Chillán'),(200,10,'Chillán Viejo'),(201,10,'Cobquecura'),(202,10,'Coelemu'),(203,10,'Coihueco'),(204,10,'El Carmen'),(205,10,'Ninhue'),(206,10,'Ñiquén'),(207,10,'Pemuco'),(208,10,'Pinto'),(209,10,'Portezuelo'),(210,10,'Quillón'),(211,10,'Quirihue'),(212,10,'Ránquil'),(213,10,'San Carlos'),(214,10,'San Fabián'),(215,10,'San Ignacio'),(216,10,'San Nicolás'),(217,10,'Treguaco'),(218,10,'Yungay'),(219,11,'Alto BioBío'),(220,11,'Antuco'),(221,11,'Arauco'),(222,11,'Cabrero'),(223,11,'Cañete'),(224,11,'Chinguayante'),(225,11,'Concepcion'),(226,11,'Contulmo'),(227,11,'Coronel'),(228,11,'Curanilahue'),(229,11,'Florida'),(230,11,'Hualpén'),(231,11,'Hualqui'),(232,11,'Laja'),(233,11,'Lebu'),(234,11,'Los Alamos'),(235,11,'Los Angeles'),(236,11,'Lota'),(237,11,'Mulchén'),(238,11,'Nacimiento'),(239,11,'Negrete'),(240,11,'Penco'),(241,11,'Quilaco'),(242,11,'Quilleco'),(243,11,'San Pedro de la Paz'),(244,11,'San Rosendo'),(245,11,'Santa Bárbara'),(246,11,'Santa Juana'),(247,11,'Talcahuano'),(248,11,'Tirúa'),(249,11,'Tomé'),(250,11,'Tucapel'),(251,11,'Yumbel'),(252,12,'Angol'),(253,12,'Carahue'),(254,12,'Cholchol'),(255,12,'Collipulli'),(256,12,'Cunco'),(257,12,'Curacautín'),(258,12,'Curarrehue'),(259,12,'Ercilla'),(260,12,'Freire'),(261,12,'Galvarino'),(262,12,'Gorba'),(263,12,'Lautaro'),(264,12,'Loncoche'),(265,12,'Lonquimay'),(266,12,'Los Sauces'),(267,12,'Lumaco'),(268,12,'Melipeuco'),(269,12,'Nueva Imperial'),(270,12,'Padre Las Casas'),(271,12,'Perquenco'),(272,12,'Pitrufquén'),(273,12,'Pucón'),(274,12,'Purén'),(275,12,'Renaico'),(276,12,'Saavedra'),(277,12,'Temuco'),(278,12,'Teodoro Schmidt'),(279,12,'Toltén'),(280,12,'Traiguén'),(281,12,'Victoria'),(282,12,'Vilcún'),(283,12,'Villarica'),(284,13,'Corral'),(285,13,'Futrono'),(286,13,'Lago Ranco'),(287,13,'Lanco'),(288,13,'La Unión'),(289,13,'Los Lagos'),(290,13,'Máfil'),(291,13,'Mariquina'),(292,13,'Paillaco'),(293,13,'Panguipulli'),(294,13,'Río Bueno'),(295,13,'Valdivia'),(296,14,'Ancud'),(297,14,'Calbuco'),(298,14,'Castro'),(299,14,'Chaitén'),(300,14,'Chonchi'),(301,14,'Cochamó'),(302,14,'Curaco de Vélez'),(303,14,'Dalcahue'),(304,14,'Fresia'),(305,14,'Frutillar'),(306,14,'Futaleufú'),(307,14,'Hualaihué'),(308,14,'LLanquihue'),(309,14,'Los Muermos'),(310,14,'Maullín'),(311,14,'Osorno'),(312,14,'Palena'),(313,14,'Puerto Montt'),(314,14,'Puerto Octay'),(315,14,'Puerto Varas'),(316,14,'Puqueldón'),(317,14,'Purranque'),(318,14,'Puyehue'),(319,14,'Queilén'),(320,14,'Quellón'),(321,14,'Quemchi'),(322,14,'Quinchao'),(323,14,'Río Negro'),(324,14,'San Juan de la Costa'),(325,14,'San Pablo'),(326,15,'Aysén'),(327,15,'Chile Chico'),(328,15,'Cisnes'),(329,15,'Cochrane'),(330,15,'Coyhaique'),(331,15,'Guaitecas'),(332,15,'Lago Verde'),(333,15,'O´Higgins'),(334,15,'Río Ibáñez'),(335,15,'Tortel'),(336,16,'Antártica'),(337,16,'Cabo dee Hornos'),(338,16,'Laguna Blanca'),(339,16,'Natales'),(340,16,'Porvenir'),(341,16,'Primavera'),(342,16,'Punta Arenas'),(343,16,'Río Verde'),(344,16,'San Gregorio'),(345,16,'Timaukel'),(346,16,'Torres del Paine');
/*!40000 ALTER TABLE `comunas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos`
--

DROP TABLE IF EXISTS `datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos` (
  `id_dato` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` text NOT NULL,
  `alias` varchar(8) NOT NULL,
  `rut` varchar(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `region` varchar(50) NOT NULL,
  `comuna` varchar(50) NOT NULL,
  `candidato` varchar(50) NOT NULL,
  `web` text NOT NULL,
  `tv` text NOT NULL,
  `redes` text NOT NULL,
  `amigos` text NOT NULL,
  PRIMARY KEY (`id_dato`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos`
--

LOCK TABLES `datos` WRITE;
/*!40000 ALTER TABLE `datos` DISABLE KEYS */;
INSERT INTO `datos` VALUES (18,'Usuario Prueba ','UPrueba1','19867456-1','Uprueba@gmail.com','7','110','5','no selecciono','tv','redes','no selecciono');
/*!40000 ALTER TABLE `datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regiones` (
  `id_region` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(80) NOT NULL,
  PRIMARY KEY (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (1,'Arica y Parinacota'),(2,'Tarapacá'),(3,'Antofagasta'),(4,'Atacama'),(5,'Coquimbo'),(6,'Valparaiso'),(7,'Metropolitana'),(8,'O´Higgins'),(9,'Maule'),(10,'Ñuble'),(11,'Bio Bío'),(12,'La Araucanía'),(13,'Los Ríos'),(14,'Los Lagos'),(15,'Aysén'),(16,'Magallanes');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17 18:36:17

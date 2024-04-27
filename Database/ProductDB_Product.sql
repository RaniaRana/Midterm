-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: ProductDB
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Product_no` bigint unsigned DEFAULT NULL,
  `Product_Name` varchar(255) DEFAULT NULL,
  `Category_ID` int DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `New` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Product_no` (`Product_no`),
  KEY `Category_ID` (`Category_ID`),
  CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `Category` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,9020240400001,'Korse Tarzında Velur Üst',1,1579.00,1),(2,9020240400002,'Yün Karışımlı Asimetrik Etek',1,2499.00,1),(3,9020240400003,'Keten Karışımlı Midi Elbise',1,929.99,1),(4,9020240400004,'Keten Karışımlı ve Baskılı Elbise',1,1579.00,1),(5,9020240400005,'Kabarık Kollu Üst',1,399.99,1),(6,9020240400006,'Keten Karışımlı Pull-on Pantolon',1,459.99,1),(7,9020240400007,'Baskılı Oversize Tişört',1,459.99,1),(8,9020240400008,'Nakış İşlemeli Maksi Etek',1,1579.00,1),(9,9020240400009,'Poplin Pijama Takımı',1,1199.00,1),(10,9020240400010,'Tek Düğmeli Blazer',1,1449.00,1),(11,9020240400011,'Kemerli Gabardin Şort',1,879.99,1),(12,9020240400012,'Wide High Cropped Jeans',1,879.99,1),(13,9020240400013,'Yün Karışımlı ve Kemerli Korse Üst',1,2499.00,1),(14,9020240400014,'Nakış İşlemeli Bluz',1,929.99,1),(15,9020240400015,'Kısa Gabardin Ceket',1,929.99,1),(16,9020240400016,'Kot Bermuda Şort',1,829.99,1),(17,9020240400017,'Kot Bandeau Üst',1,549.99,0),(18,9020240400018,'Kuşaklı Jarse Tulum',1,549.99,0),(19,9020240400019,'Geniş Pantolon',1,929.99,0),(20,9020240400020,'Kruvaze Blazer',1,1249.00,0),(21,9020240400021,'Oversized Fit Motif Detaylı ve Kapüşonlu Üst',2,1099.00,0),(22,9020240400022,'Kargo Jogger Pantolon',2,1099.00,0),(23,9020240400023,'Regular Fit Polo Tişört',2,929.99,0),(24,9020240400024,'Regular Fit Tişört ve Şortlu Pijama Takımı',2,549.00,0),(25,9020240400025,'Regular Fit Erkek Yaka Gömlek',2,749.99,1),(26,9020240400026,'Slim Fit Keten Karışımlı Ceket',2,1999.00,1),(27,9020240400027,'Slim Fit Şık Jogger Pantolon',2,929.99,1),(28,9020240400028,'Regular Fit Gabardin Ceket',2,1199.00,1),(29,9020240400029,'Loose Fit Gabardin Jogger Pantolon',2,1099.00,1),(30,9020240400030,'Regular Fit Delik Desenli Triko Tişört',2,619.99,1),(31,9020240400031,'Regular Fit Tekstüre Dokuma Erkek Yaka Gömlek',2,749.99,1),(32,9020240400032,'Loose Fit Baskılı Polo Tişört',2,929.99,1),(33,9020240400033,'Regular Fit Pike Tişört',2,769.99,1),(34,9020240400034,'Loose Jeans',2,1999.00,1),(35,9020240400035,'Çift Yönlü Pilot Ceketi',2,7999.00,1),(36,9020240400036,'Çift Yönlü ve Kapüşonlu Üst',2,2499.00,1),(37,9020240400037,'Çift Katlı Tişört',2,1249.00,1),(38,9020240400038,'Regular Fit Sweatshirt Şort',2,459.99,1),(39,9020240400039,'Baskılı Tişört',2,1249.00,1),(40,9020240400040,'Düğme Detaylı Gabardin Trençkot',2,9299.00,1),(41,9020240400041,'Jakarlı Triko Hırka',3,2499.00,1),(42,9020240400042,'İki Tonlu Baggy Jeans',3,3599.00,1),(43,9020240400043,'Çan Elbise',3,619.99,1),(44,9020240400044,'Tekstüre Jarse Tulum',3,619.99,1),(45,9020240400045,'Lastik Örgülü Kalem Etek',3,1099.00,1),(46,9020240400046,'Poplin Bralet Üst',3,619.99,1),(47,9020240400047,'Oxford Gömlek',3,579.99,1),(48,9020240400048,'Takım Yeleği',3,679.99,1),(49,9020240400049,'Loose Jeans',3,1999.00,1),(50,9020240400050,'Düğme Detaylı Yün Blazer',3,8199.00,1),(51,9020240400051,'Regular Fit Chino Şort',3,619.99,1),(52,9020240400052,'Slim Fit Ribanalı Kolsuz Üst',3,219.99,1),(53,9020240400053,'DryMove™ Spor Tişörtü',3,459.99,1),(54,9020240400054,'DryMove™ Koşu Şortu',3,1099.00,1),(55,9020240400055,'Kolsuz Üst',3,189.99,1),(56,9020240400056,'DryMove™ Kolu Kısaltılabilen Gömlek',3,1999.00,1),(57,9020240400057,'DryMove™ 4 Yönlü Streç Özellikli Spor Şortu',3,619.99,0),(58,9020240400058,'Relaxed Fit Tığ İşi Görünümlü Polo Tişört',3,699.99,0),(59,9020240400059,'Tekstüre Triko Hırka',3,1499.00,0),(60,9020240400060,'Yazı Motifli ve Kapüşonlu Üst',3,829.99,0),(61,9020240400061,'2 Parçalı Sweatshirt Set',4,549.99,1),(62,9020240400062,'Kapüşonlu Ceket',4,459.00,1),(63,9020240400063,'2 Parçalı Delik Desenli Triko Set',4,769.99,1),(64,9020240400064,'2 Parçalı Baskılı Set',4,459.99,1),(65,9020240400065,'Farbalı ve Pamuklu Elbise',4,309.99,1),(66,9020240400066,'Fırfırlı MUslin Tulum',4,459.99,1),(67,9020240400067,'Upf 50 Deniz Seti',4,719.99,1),(68,9020240400068,'Sweatshirt Tulum Şort',4,309.99,1),(69,9020240400069,'2 Parçalı Üst ve Şort Set',4,619.00,1),(70,9020240400070,'2 Parçalı Jarse Üst ve Tayt Set',4,459.00,1),(71,9020240400071,'Yıkanmış Görünümlü Sweatshirt Kargo Şort',4,309.00,1),(72,9020240400072,'2 Parçalı Desenli Set',4,549.00,1),(73,9020240400073,'Panço Havlu',4,619.99,1),(74,9020240400074,'2 li Uzun Kollu Body',4,459.00,1),(75,9020240400075,'2 li Pamuklu Şort',4,459.00,1),(76,9020240400076,'3 lü Pijama Takımı',4,759.00,1),(77,9020240400077,'Delik Desenli Triko Hırka',4,309.00,0),(78,9020240400078,'İşlemeli Tül Elbise',4,769.99,0),(79,9020240400079,'4 Parçalı Şık Set',4,879.99,0),(80,9020240400080,'2 Parçalı Pamuklu Muslin Set',4,879.99,0),(81,9020240400081,'Kısa Dantel Üst',8,159.00,0),(82,9020240400082,'Daralan Kesimli Pantolon',8,579.00,0),(83,9020240400083,'Skinny Fit Kargo Pantolon',8,689.00,0),(84,9020240400084,'Slim Fit Pamuklu Gömlek',8,445.50,0),(85,9020240400085,'Jakarlı Triko Merinos Yünlü Kazak',8,499.00,0),(86,9020240400086,'Tüylü Astarlı Kaban',8,479.00,0),(87,9020240400087,'3 lü Uzun Kollu Üst',8,249.00,0),(88,9020240400088,'Kapüşonlu Tüylü Üst',8,429.00,0),(89,9020240400089,'Desenli ve Pamuklu Elbise',5,129.99,1),(90,9020240400090,'Yakalı Jarse Üst',5,239.99,1),(91,9020240400091,'Balon Kollu Keten Elbise',5,929.99,1),(92,9020240400092,'Pamuklu Pijama Takımı',5,299.99,1),(93,9020240400093,'2 Parçalı Fırfırlı Sweatshirt Set',5,459.99,1),(94,9020240400094,'Loose Fit Kot Şort',5,619.99,1),(95,9020240400095,'Wide Fit Jeans',5,439.99,1),(96,9020240400096,'2 Parçalı Tığ İşi Görünümlü Set',5,929.99,1),(97,9020240400097,'Paraşüt Pantolon',5,749.99,1),(98,9020240400098,'Kargo Şort',5,459.99,1),(99,9020240400099,'Kısa Kollu Pamuklu Gömlek',5,459.99,1),(100,9020240400100,'Hayvan Motifli Tişört',5,239.99,1),(101,9020240400101,'Kolsuz File Basketbol Üstü',5,299.99,1),(102,9020240400102,'2 li Chino Şort',5,769.99,1),(103,9020240400103,'Pamuklu Gabardin Gömlek Ceket',5,769.99,1),(104,9020240400104,'Jarse Jogger Pantolon',5,249.99,1),(105,9020240400105,'Keten Karışımlı Pull-on Pantolon',5,479.99,0),(106,9020240400106,'Keten Karışımlı Hakim Yaka Gömlek',5,459.99,0),(107,9020240400107,'Volan Kollu Üst',5,239.99,0),(108,9020240400108,'Çan Kot Etek',5,619.99,0),(109,9020240400109,'6 lı Hamur İşi Şeklinde Yumuşak Oyuncak',6,459.99,1),(110,9020240400110,'Stoneare Kupa',6,399.99,1),(111,9020240400111,'Desenli ve Pamuklu Kırlent Kılıfı',6,159.99,1),(112,9020240400112,'Atkılı Büyük TErakota Saksı',6,1999.99,1),(113,9020240400113,'Küçük Jüt Kutu',6,189.99,1),(114,9020240400114,'Büyük Cam Vazo',6,619.99,1),(115,9020240400115,'Stoneware Sıvı Sabunluk',6,399.99,1),(116,9020240400116,'Hasır Çerçeveli Büyük Ayna',6,1349.99,1),(117,9020240400117,'Keten Karışımlı ve Çizgili Kırlent Kılıfı',6,549.99,1),(118,9020240400118,'Lastikli Bebek Beşiği Çarşafı',6,399.99,1),(119,9020240400119,'2 li Hazır Karartma Perde',6,3699.00,1),(120,9020240400120,'Stantlı Büyük Metal Saksı',6,2199.00,1),(121,9020240400121,'Triko Bukle Yastık',6,999.99,1),(122,9020240400122,'Kron ve Rattan Askı',6,769.99,1),(123,9020240400123,'4 lü Grafik Desenli Bardak Altlığı',6,359.00,1),(124,9020240400124,'Büyük Jüt Kilim',6,5999.00,1),(125,9020240400125,'Küçük Stoneware Tepsi',6,279.99,0),(126,9020240400126,'4 lü Çay Kaşığı ',6,289.99,0),(127,9020240400127,'2 li Şampanya Kadehi',6,579.99,0),(128,9020240400128,'Kapaklı Ahşap Kutu',6,929.99,0),(129,9020240400129,'DryMove™ 2’li Kolsuz Spor Üstü',7,619.99,1),(130,9020240400130,'DryMove™ Çift Katlı Koşu Şortu',7,619.99,1),(131,9020240400131,'Yüzücü Mayosu',7,929.99,1),(132,9020240400132,'2 li DryMove™ Kolsuz Spor Üstü',7,619.99,1),(133,9020240400133,'DryMove™ Pilili Tenis Eteği',7,999.99,1),(134,9020240400134,'Katlanır Belli ve Pamuklu Tayt',7,1129.00,1),(135,9020240400135,'Su Tutmaz Yürüyüş Şortu',7,929.99,1),(136,9020240400136,'DryMove™ Dikişsiz Kısa Spor Taytı',7,619.99,1),(137,9020240400137,'DryMove™ Tapered Jogger Spor Pantolonu',7,1129.00,1),(138,9020240400138,'3 lü DryMove™ Spor Tişörtü',7,929.99,1),(139,9020240400139,'Su Tutmaz Yürüyüş Pantolonu',7,1999.00,1),(140,9020240400140,'DryMove™ Hafif Bisiklet Üstü',7,1649.00,1),(141,9020240400141,'DryMove™ Tenis Elbisesi',7,1099.00,1),(142,9020240400142,'Rüzgar Geçirmez Koşu Ceketi',7,1999.00,1),(143,9020240400143,'DryMove™ Tenis Şortu',7,769.99,1),(144,9020240400144,'Bacak Cepli Şort Mayo',7,799.99,1),(145,9020240400145,'DryMove™ Daire Kloş Tenis Eteği',7,619.99,0),(146,9020240400146,'Oversize Spor Sweatshirt',7,929.99,0),(147,9020240400147,'DryMove™ Koşu Tişörtü',7,459.99,0),(148,9020240400148,'DryMove™ Kolsuz Koşu Üstü',7,459.99,0),(149,9020240400149,'Keten Karışımlı Omuzları Açık Elbise',8,499.00,0),(150,9020240400150,'Kuşgözü Detaylı Etek',8,829.00,0),(151,9020240400151,'Lastik Örgülü Kalp Yakalı Üst',8,329.00,0),(152,9020240400152,'Regular Fit Rüzgarlık',8,604.99,0),(153,9020240400153,'Relaxed Fit Overshirt Gömlek',8,589.00,0),(154,9020240400154,'Loose Fit Baskılı ve Kapüşonlu Üst',8,396.00,0),(155,9020240400155,'Pamuklu Sweatshirt Elbise',8,149.00,0),(156,9020240400156,'Merinos Yünlü Tayt',8,409.00,0),(157,9020240400157,'Merinos Yünlü Body',8,399.00,0),(158,9020240400158,'Oversize Pilot Ceketi',8,369.00,0),(159,9020240400159,'Baskılı Sweatshirt Tulum',8,699.00,0),(160,9020240400160,'Muflon Pijama Takımı',8,439.00,0);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-27 12:43:27

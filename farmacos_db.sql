-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacos_bd
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
-- Table structure for table `med_tienen_pa`
--

DROP TABLE IF EXISTS `med_tienen_pa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `med_tienen_pa` (
  `MEDICAMENTOS_codigoNacional` int NOT NULL,
  `PRINCIPIOSACTIVOS_nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`MEDICAMENTOS_codigoNacional`,`PRINCIPIOSACTIVOS_nombre`),
  KEY `fk_medicamentos_has_principios_activos_principios_activos1_idx` (`PRINCIPIOSACTIVOS_nombre`),
  KEY `fk_medicamentos_has_principios_activos_medicamentos_idx` (`MEDICAMENTOS_codigoNacional`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `med_tienen_pa`
--

LOCK TABLES `med_tienen_pa` WRITE;
/*!40000 ALTER TABLE `med_tienen_pa` DISABLE KEYS */;
INSERT INTO `med_tienen_pa` VALUES (600000,'Acido clavulanico'),(600000,'Amoxicilina'),(603029,'Paracetamol'),(603029,'Tramadol'),(603173,'Candesartan'),(603173,'Hidroclorotiazida'),(604306,'Metamizol'),(609909,'Centella'),(609909,'Neomicina'),(619510,'Clorhexidina'),(650097,'Acido acetilsalicilico'),(650097,'Cafeina'),(650097,'Codeina'),(650427,'Acetilcisteina'),(650902,'Clorfenamina'),(650902,'Fenilefrina'),(650902,'Paracetamol'),(650999,'Hidroclorotiazida'),(650999,'Valsartan'),(651877,'Acido acetilsalicilico'),(651877,'Acido ascorbico'),(651943,'Fluocinolona'),(651943,'Gramicidina'),(651943,'Neomicina'),(652319,'Aciclovir'),(653899,'Benzocaina'),(653899,'Clorhexidina'),(653899,'Tirotricina'),(654139,'Hidroclorotiazida'),(654139,'Olmesartan'),(655449,'Clorfenamina'),(655449,'Difenhidramina'),(655449,'Fenilefrina'),(655917,'Drospirenona'),(655917,'Etinilestradiol'),(656011,'Clorfenamina'),(656011,'Fenilefrina'),(656011,'Paracetamol'),(659700,'Cafeina'),(659700,'Clorfenamina'),(659700,'Paracetamol'),(659725,'Cafeina'),(659725,'Dimenhidrinato'),(659730,'Diazepan'),(659777,'Aceclofenaco'),(660286,'Acetilcisteina'),(660286,'Paracetamol'),(664347,'Clorfenamina'),(664347,'Oximetazolina'),(669887,'Cloperastina'),(672527,'Remifentanilo'),(677276,'Manidipino'),(677765,'Besilato De Cisatracurio'),(681726,'Amfotericina B'),(681817,'Clorfenamina'),(681817,'Dextrometorfano'),(681817,'Paracetamol'),(702151,'Clorfenamina'),(702151,'Fenilefrina'),(702151,'Paracetamol'),(703223,'Clorfenamina'),(703223,'Diprofilina'),(703223,'Guaifenesina'),(703223,'paracetamol'),(711033,'Dexketopofreno'),(711033,'Tramadol'),(712072,'Elbasvir'),(712072,'Grazoprevir'),(714852,'Carvedilol'),(714852,'Ivabradina'),(741512,'Codeina'),(741512,'Paracetamol'),(766824,'clorocarvacrol'),(766824,'ictamol'),(766824,'mentol'),(825992,'Ibuprofeno'),(839720,'Clorfenamina'),(839720,'Paracetamol'),(851568,'Clindamicina'),(854976,'Cetrimonio'),(854976,'Lidocaina'),(884858,'Omeprazol'),(961763,'Ciclobenzaprina'),(993667,'Cafeina'),(993667,'Ergotamina');
/*!40000 ALTER TABLE `med_tienen_pa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `codigoNacional` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `viaAdministracion` varchar(100) DEFAULT NULL,
  `presentacion` varchar(100) DEFAULT NULL,
  `formato` varchar(150) DEFAULT NULL,
  `claseMedicamento` varchar(105) DEFAULT NULL,
  `indicaciones` varchar(100) DEFAULT NULL,
  `comercializacion` tinyint DEFAULT NULL,
  `prescripcionMedica` tinyint DEFAULT NULL,
  `pvp` float DEFAULT NULL,
  PRIMARY KEY (`codigoNacional`),
  KEY `IndiceNombre` (`nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (600000,'Amoxicilnica Clav','Intravenosa','Viales','500/50mg x100 viales','Antibiotico sistemico','Tratar ciertas infecciones',1,1,8.24),(603029,'Zaldiar','Oral','Comprimidos','37.5/325mg x100 comp','Analgesico','Aliviar el dolor',1,1,3.34),(603173,'Parapres Forte','Oral','Comprimidos','32/25 mg 300 comp','Diuretico y Antihipertensivo','Aumenta la cantidad de orina , ayudando a regular la presion sanguinea',1,1,20.95),(604306,'Nolotil','Oral','Ampollas','5ml x 100 ampollas','Analgesico y Antipiretico','Disminuye el dolor y la fiebre',1,0,2.14),(609909,'Blastoestimulina','Topica','Pomada','150g','Cicatrizante','Favorece la cicatrizacion de las heridas',1,0,10.33),(619510,'Cristalmina','Topica','Solucion topica','125 ml x 30 frascos','Antiseptico','Prevenir y tratar infecciones de la piel y heridas',1,0,10.75),(650097,'Dolviran','Oral','Comprimidos','20 comp','Analgesico, Antiinflamatrio, Antipiretico','Disminuye el dolor, la inflamacion y la fiebre',1,1,1.74),(650427,'Acetilcisteina','Oral','Sobres','30 sobres','Expectorante y/o Mucolitico','Facilita la expulsion de moco desde las vias respiratorias',1,0,5.15),(650902,'Anticatarral','Oral','Sobres','20 sobres','Antigripal, Analgesico y Antipiretico','Aliviar la gripe, disminuir el dolor y la fiebre',1,1,9.99),(650999,'Co Vals Forte','Oral','Comprimidos','160/25 mg 28 comp','Diuretico y Antihipertensivo','Aumenta la cantidad de orina , ayudando a regular la presion sanguinea',1,1,11.99),(651877,'Aspirina C','Oral','Comprimidos efervescentes','(400 mg / 240 mg) x 20 comp','Analgesico, Antiinflamatorio y Antipiretico','Disminuye el dolor, la inflamacion y la fiebre',1,0,5.36),(651943,'Flodermol','Topica','Pomada','Pomada 60 g','Corticoide topico y antiinfeccioso','Tratar las inflamaciones de la piel y para combatir las infecciones',1,1,12.3),(652319,'Aciclovir','Topica','Crema','Crema 15 g','Antiviral topico','Tratar infecciones producidas por virus',1,0,3.43),(653899,'Bucometasana','Oral','Comprimidos','30 comp','Antiinfeccioso faringeo','Tratar infecciones de la garganta',1,0,7.35),(654139,'OpenVas Plus','Oral','Comprimidos recubiertos','20/25 mg 28 comp','Diuretico y Antihipertensivo','Aumenta la cantidad de orina , ayudando a regular la presion sanguinea',1,1,10.1),(655449,'Paidoterin','Oral','Jarabe','100ml','Descongestionante nasal','Alivar la congestion nasal',1,0,5.09),(655917,'Yasminelle','Oral','Comprimidos','3 mg x comp','Anticonceptivo','Evitar quedar embarazada',1,0,17.95),(656011,'Fricold','Oral','Sobres','10 sobres','Antigripal, Analgesico y Antipiretico','Aliviar la gripe, disminuir el dolor y la fiebre',1,0,6.95),(659700,'Intergrip','Oral','Sobres','10 sobres','Antigripal, Analgesico y Antipiretico','Aliviar la gripe, disminuir el dolor y la fiebre',1,0,8.51),(659725,'Cinfamar','Oral','Comprimidos','50/50 mg 4 comp','Mareo cinetico','Evitar nauseas y vomitos producidos por el movimiento',1,0,4.33),(659730,'Valium','Oral','Comprimidos','2 mg x 30 comp','Ansiolitico e hipnotico','Aliviar el nerviosismo o ansiedad y facilitar el sueno',1,1,1.5),(659777,'Aceclofenaco','Oral','Comprimidos','100 mg x 20 comp','Analgesico, Antiinflamatorio, Antipiretico','Disminuye el dolor, la inflamacion y la fiebre',0,0,2.83),(660286,'Fluimocil Forte','Oral','Comprimidos efervescentes','500/200mg x12 comp','Antigripal, Analgesico y Antipiretico','Aliviar la gripe disminuir el dolor y la fiebre',1,0,8.5),(660782,'Dalsy','Oral','Suspension','Suspension 150 ml','Analgesico, Antiinflamatorio, Antipiretico','Disminuye el dolor, la inflamacion y la fiebre',1,0,7.7),(664347,'Respibien antialergico','Nasal','Nebulizador Nasal','Recipiente 15 ml','Descongestionante nasal','Alivia la congestion de la nariz facilitando la respiracion',1,0,6.1),(669887,'Futox','Oral','Jarabe','200ml','Antitusigeno','Calmar la tos',1,0,6.8),(672527,'Ultiva','Intravenosa','Viales','3 ml x 5 viales','Anestesico general','Anestesiar en intervenciones quirurjicas',1,0,48.24),(677276,'Manidipino','Oral','Comprimidos','20 mg x 28 comp','Vasodilatador coronario, Antihipertensivo','Dilatar los vasos sanguineos',1,1,14.17),(677765,'Nimbex','Intravenosa','Ampollas','2mg x 5 ampollas','Curares endovenosos','Facilita intubaciones y relaja los musculos en anestesias generales',1,1,237.71),(681726,'Abelcet','Intravenosa','Viales','10 viales 20 ml','Antibiotico','Tratar infecciones producidas por hongos',1,0,516.16),(681817,'Frenadol Forte','Oral','Sobres','10 sobres','Analgesico, Antigripal y Antipiretico','Aliviar la gripe, disminuir el dolor y la fiebre',1,0,4.95),(702151,'Couldina con paracetamol','Oral','Comprimidos efervescentes','650 mg x 20 comp','Antigripal','Aliviar la gripe disminuir el dolor y la fiebre',1,0,10.51),(703223,'Alergical','Oral','Jarabe','150ml','Antigripal, Analgesico y Antipiretico','Aliviar la gripe, disminuir el dolor y la fiebre',1,1,7.34),(711033,'Enanplus','Oral','Comprimidos recubiertos','(75mg / 25mg) x 20 comp','Analgesico','Aliviar el dolor',1,1,7.1),(712072,'Zepatier','Oral','Comprimidos','(50mg / 100 mg) x 28 comp','Antiviral','Tratar la infeccion producida por el virus de la hepatitis C',1,1,220),(714852,'Carevalan','Oral','Comprimidos recubiertos','(12.5mg / 5mg) x 56 comp','Antianginoso y antiarritmico','Previene la angina de pecho y regula el ritmo del corazon',1,1,15.87),(741512,'Algidol','Oral','Sobres','(650 mg / 10 mg / 500 mg) x 12 sobres','Analgesico y antipiretico','Aliviar el dolor y la fiebre',1,1,3.12),(766824,'Hadensa','Rectal','Supositorios','10 supositorios','Antihemorroidal','Curar las hemorroides',0,0,5.76),(825992,'Dolorac','Oral','Sobres','600mg x 20 sob','Analgesico, Antiinflamatorio, Antipiretico y Antirreumetico','Disminuye el dolor, la inflamacion, la fiebre y reuma',1,0,7.24),(839720,'Gelocatil','Oral','Sobres','10 Sobres','Antigripal, Antianalgesico y Antipiretico','Aliviar la gripe y para disminuir el dolor y la fiebre',1,0,4.95),(851568,'Dalacin','Vaginal','Comprimido Vaginal','100 mg x 3 ovulos','Antiinfeccioso genitourinario','Tratar infecciones de los organos sexuales',1,1,12.96),(854976,'Xylonor','Topica','Spray topico','60ml Aerosol','Anestesico local','Dormir zonas determinadas',1,0,26.02),(884858,'Ulcesep','Oral','Capsulas','28 capsulas','Antiulceroso','Tratar las ulceras gastrointestinales',1,1,2.42),(961763,'Yurelax','Oral','Capsulas','30 capsulas','Miorrelajante','Relajar el musculo y aliviar espasmos',1,1,3.48),(971671,'Xazal','Oral','Comprimidos','5 mg x 20 comprimidos','Antihistaminico','Tratar ciertos tipos de alergias',1,1,5.9),(993667,'Hemicraneal','Rectal','Supositorios','10 supositorios','Antimigranoso','Aliviar los ataques de jaqueca o migrana',1,1,3.53);
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principios_activos`
--

DROP TABLE IF EXISTS `principios_activos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principios_activos` (
  `Nombre` varchar(60) NOT NULL,
  `pesoMolecular` float DEFAULT NULL,
  `formulaMolecular` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principios_activos`
--

LOCK TABLES `principios_activos` WRITE;
/*!40000 ALTER TABLE `principios_activos` DISABLE KEYS */;
INSERT INTO `principios_activos` VALUES ('Aacido acetilsalicilico',180.16,'C9 H8 O4'),('Aceclofenaco',354.2,'C16 H13 Cl2 N O4'),('Acetilcisteina',163.2,'C5 H9 N O3 S'),('Aciclovir',225.2,'C8 H11 N5 O3'),('Acido acetilsalicilico',180.16,'C9 H8 O4'),('Acido ascorbico',176.12,'C6 H8 O6'),('Acido clavulanico',199.16,'C8 H9 N O5'),('Amfotericina B',924.1,'C47 H73 N O17'),('Amoxicilina',365.4,'C16 H19 N3 O5 S'),('Benzocaina',165.19,'C9 H11 N O2'),('Besilato De Cisatracurio',1243.5,'C65 H82 N2 O18 S2'),('Cafeina',194.19,'C8 H10 N4 O2'),('Candesartan',440.5,'C24 H20 N6 O3'),('Carvedilol',406.474,'C24 H26 N2 O4'),('Centella',76.09,'C3 H8 O2'),('Cetrimonio',364.4,'C19 H42 BrN'),('Ciclobenzaprina',275.4,'C20 H21 N'),('Clindamicina',425,'C18 H33 Cl N2 O5 S'),('Cloperastina',329.9,'C20 H24 Cl N O'),('Clorfenamina',274.79,'C16 H19 Cl N2'),('Clorhexidina',505.447,'C22 H30 N10 Cl2'),('Clorocarvacrol',184.66,'C10 H13 Cl O'),('Codeina',299.364,'C18 H21 N O3'),('Dexketopofreno',254.28,'C16 H14 O3'),('Dextrometorfano',271.4,'C18 H25 N O'),('Diazepan',284.7,'C16 H13 N2 Cl O'),('Difenhidramina',255.35,'C17 H21 N O'),('Dimenhidrinato',470,'C24 H28 Cl N5 O3'),('Diprofilina',254.24,'C10 H14 N4 O4'),('Drospirenona',366.5,'C24 H30 O3'),('Elbasvir',882.015,'C49 H55 N9 O7'),('Ergotamina',581.7,'C33 H35 N5 O5'),('Etinilestradiol',296.4,'C20 H24 O2'),('Fenilefrina',167.2,'C9 H13 N O2'),('Fluocinolona',452.488,'C24 H30 F2 O6'),('Gramicidina',452.488,'C99 H140 N20 O17'),('Grazoprevir',766.9,'C38 H50 N6 O9 S'),('Guaifenesina',198.22,'C10 H14 O4'),('Hidroclorotiazida',297.7,'C7 H8 Cl N3 O4 S2'),('Ibuprofeno',206.29,'C13 H18 O2'),('Ictamol',588,'C28 H36 S5 O6 (NH4)2'),('Ivabradina',468.585,'C27 H36 N2 O5'),('Levocetrizina',388.9,'C21 H25 Cl N2 O3'),('Lidocaina',270.8,'C14 H23 Cl N2 O'),('Manidipino',610.7,'C35 H38 N4 O6'),('Mentol',156.26,'C10 H20 O'),('Metamizol',311.36,'C13 H17 N3 O4 S'),('Neomicina',614.644,'C23 H46 N6 O13'),('Olmesartan',446.5,'C24 H26 N6 O3'),('Omeprazol',345.4,'C17 H19 N3 O3 S'),('Oximetazolina',260.375,'C16 H24 N2 O'),('Paracetamol',151.16,'C8 H9 N O2'),('Remifentanilo',376.4,'C20 H28 N2 O5'),('Tirotricina',1228.46,'C65 H85 N11 O13'),('Tramadol',263.38,'C16 H25 N O2'),('Valsartan',435.5,'C24 H29 N5 O3');
/*!40000 ALTER TABLE `principios_activos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-05 17:47:33

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.17 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for iubcvt_network
CREATE DATABASE IF NOT EXISTS `iubcvt_network` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `iubcvt_network`;


-- Dumping structure for table iubcvt_network.antivirus
CREATE TABLE IF NOT EXISTS `antivirus` (
  `antivirus_id` int(10) NOT NULL AUTO_INCREMENT,
  `antivirus_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`antivirus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table iubcvt_network.antivirus: ~6 rows (approximately)
/*!40000 ALTER TABLE `antivirus` DISABLE KEYS */;
INSERT INTO `antivirus` (`antivirus_id`, `antivirus_name`, `type`) VALUES
	(1, 'Eset', 'licenta'),
	(2, 'Bitdefender', 'Licenta'),
	(3, 'Avast', 'free'),
	(4, 'Avira', 'free'),
	(5, 'AVG', 'free'),
	(6, 'Nu are', '');
/*!40000 ALTER TABLE `antivirus` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.brand
CREATE TABLE IF NOT EXISTS `brand` (
  `id_brand` int(10) NOT NULL AUTO_INCREMENT,
  `nume_brand` varchar(100) DEFAULT NULL,
  `descriere` text,
  `site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Brand echipamente';

-- Dumping data for table iubcvt_network.brand: ~4 rows (approximately)
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` (`id_brand`, `nume_brand`, `descriere`, `site`) VALUES
	(1, 'NoName', NULL, NULL),
	(2, 'HP', NULL, NULL),
	(3, 'Dell', NULL, NULL),
	(5, NULL, NULL, NULL);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.compartimente
CREATE TABLE IF NOT EXISTS `compartimente` (
  `compartiment_id` int(11) NOT NULL AUTO_INCREMENT,
  `compartiment_name` varchar(100) NOT NULL,
  `grup` varchar(100) NOT NULL,
  `sef_sectie` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `etaj` varchar(100) NOT NULL,
  `asistenta_sefa` varchar(200) NOT NULL,
  `as_contact` varchar(200) NOT NULL,
  PRIMARY KEY (`compartiment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Compartiment/Sectie';

-- Dumping data for table iubcvt_network.compartimente: ~0 rows (approximately)
/*!40000 ALTER TABLE `compartimente` DISABLE KEYS */;
INSERT INTO `compartimente` (`compartiment_id`, `compartiment_name`, `grup`, `sef_sectie`, `contact`, `etaj`, `asistenta_sefa`, `as_contact`) VALUES
	(1, 'Birou IT', 'Administrativ', '', '', '', '', '');
/*!40000 ALTER TABLE `compartimente` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.echipament_retea
CREATE TABLE IF NOT EXISTS `echipament_retea` (
  `echipament_id` int(10) NOT NULL AUTO_INCREMENT,
  `tip_echipament` varchar(50) DEFAULT NULL,
  `nume_echipament` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `an_fabricatie` varchar(50) DEFAULT NULL,
  `observatii` text,
  `locatie` varchar(50) DEFAULT NULL,
  `etaj` varchar(50) DEFAULT NULL,
  `config_file` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`echipament_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table iubcvt_network.echipament_retea: ~0 rows (approximately)
/*!40000 ALTER TABLE `echipament_retea` DISABLE KEYS */;
/*!40000 ALTER TABLE `echipament_retea` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.etaj
CREATE TABLE IF NOT EXISTS `etaj` (
  `etaj_id` int(10) NOT NULL AUTO_INCREMENT,
  `etaj` varchar(50) NOT NULL,
  PRIMARY KEY (`etaj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='etaj compartiment sectie';

-- Dumping data for table iubcvt_network.etaj: ~6 rows (approximately)
/*!40000 ALTER TABLE `etaj` DISABLE KEYS */;
INSERT INTO `etaj` (`etaj_id`, `etaj`) VALUES
	(1, 'Parter'),
	(2, 'Etaj 1'),
	(3, 'Etaj 2'),
	(4, 'Etaj 3 anexa'),
	(5, 'Etaj 4'),
	(6, 'Etaj 8');
/*!40000 ALTER TABLE `etaj` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.grup
CREATE TABLE IF NOT EXISTS `grup` (
  `grup_id` int(10) NOT NULL AUTO_INCREMENT,
  `grup_name` varchar(100) NOT NULL,
  PRIMARY KEY (`grup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Grup de selectie';

-- Dumping data for table iubcvt_network.grup: ~5 rows (approximately)
/*!40000 ALTER TABLE `grup` DISABLE KEYS */;
INSERT INTO `grup` (`grup_id`, `grup_name`) VALUES
	(1, 'Administrativ'),
	(2, 'Ambulator'),
	(3, 'Sectie'),
	(4, 'Laborator'),
	(5, 'Farmacie');
/*!40000 ALTER TABLE `grup` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.hdd
CREATE TABLE IF NOT EXISTS `hdd` (
  `hdd_id` int(10) NOT NULL AUTO_INCREMENT,
  `hdd` varchar(50) NOT NULL,
  `specificatii` varchar(255) NOT NULL,
  PRIMARY KEY (`hdd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='HDD list ';

-- Dumping data for table iubcvt_network.hdd: ~6 rows (approximately)
/*!40000 ALTER TABLE `hdd` DISABLE KEYS */;
INSERT INTO `hdd` (`hdd_id`, `hdd`, `specificatii`) VALUES
	(1, '40 Gb', ''),
	(2, '80 Gb', ''),
	(3, '160 Gb', ''),
	(4, '320 Gb', ''),
	(5, '500 Gb', ''),
	(6, '1 Tb', '');
/*!40000 ALTER TABLE `hdd` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.imprimante
CREATE TABLE IF NOT EXISTS `imprimante` (
  `printer_id` int(10) NOT NULL AUTO_INCREMENT,
  `grup` varchar(100) DEFAULT NULL,
  `compartiment` varchar(100) DEFAULT NULL,
  `etaj` varchar(50) DEFAULT NULL,
  `locatie_printer` varchar(255) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `tip_printer` varchar(50) DEFAULT 'A4',
  `nr_printuri_estimate` varchar(50) DEFAULT NULL,
  `ip_network` varchar(50) DEFAULT NULL,
  `anul_fabricatiei` varchar(50) DEFAULT NULL,
  `toner_compatibil` varchar(255) DEFAULT NULL,
  `status_printer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`printer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='nr_printuri lunare';

-- Dumping data for table iubcvt_network.imprimante: ~0 rows (approximately)
/*!40000 ALTER TABLE `imprimante` DISABLE KEYS */;
INSERT INTO `imprimante` (`printer_id`, `grup`, `compartiment`, `etaj`, `locatie_printer`, `brand`, `model`, `tip_printer`, `nr_printuri_estimate`, `ip_network`, `anul_fabricatiei`, `toner_compatibil`, `status_printer`) VALUES
	(1, '1', '1', '2', 'RUNOS', '1', '56500', 'Laser Jet', '2000', '192.168.1.300', '2005', NULL, '1');
/*!40000 ALTER TABLE `imprimante` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.memorie
CREATE TABLE IF NOT EXISTS `memorie` (
  `memorie_id` int(10) NOT NULL AUTO_INCREMENT,
  `memorie` varchar(100) NOT NULL,
  `descriere` varchar(255) NOT NULL,
  PRIMARY KEY (`memorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='Memorie RAM';

-- Dumping data for table iubcvt_network.memorie: ~6 rows (approximately)
/*!40000 ALTER TABLE `memorie` DISABLE KEYS */;
INSERT INTO `memorie` (`memorie_id`, `memorie`, `descriere`) VALUES
	(1, '512 Mbr', ''),
	(2, '768 Mbr', ''),
	(3, '1 Gb', ''),
	(4, '2 Gb', ''),
	(5, '3 Gb', ''),
	(6, '4 Gb', '');
/*!40000 ALTER TABLE `memorie` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.note
CREATE TABLE IF NOT EXISTS `note` (
  `note_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`note_id`),
  KEY `FK_note_user` (`user_id`),
  CONSTRAINT `FK_note_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table iubcvt_network.note: ~2 rows (approximately)
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` (`note_id`, `user_id`, `title`, `content`, `date_added`, `date_modified`) VALUES
	(4, 17, '193.226.0.74 AppServer', 'SNM: 255.255.255.252\r\nGW:193.226.0.73\r\nDNS1: 217.73.170.7\r\nDNS2: 192.129.4.1, 8.8.8.8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(5, 17, 'BitDefender Zone', 'user tibioltean pass KLM639air!@#\nhttps://cloud.gravityzone.bitdefender.com/', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(6, 17, 'Pentru statiile de lucru', '- parola BIOS: digital\r\n- parola administrator Windows: .Spit40.\r\n- clasa IP: 192.168.1. xxx (IP statice)\r\n- Subnet Mask: 255.255.0.0\r\n- Gateway: 192.168.1.9\r\n- DNS: 192.168.1.9\r\n- Alternate DNS: 217.73.170.7 si 192.129.4.1\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(7, 17, 'Pentru Internet', '- ISP: RoEdu Net (Universitatea Petru Maior), persoana de contact Adi Popescu tel. 0265/215.843, mobil 0744/933.880\r\n- Alternate ISP (doar back-up, 512 kbps): RDS, IP: 86.120.46.38, SNM: 255.255.255.240, GW: 86.120.46.33, DNS: 213.154.124.1 si 193.231.252.1 (se pot incerca si 193.231.236.25 si 193.231.236.30), persoana de contact: Cosmin RDS tel. 0770/065747\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `note` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.printer_brand
CREATE TABLE IF NOT EXISTS `printer_brand` (
  `printer_brd_id` int(10) NOT NULL AUTO_INCREMENT,
  `printer_name` varchar(100) NOT NULL,
  PRIMARY KEY (`printer_brd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table iubcvt_network.printer_brand: ~6 rows (approximately)
/*!40000 ALTER TABLE `printer_brand` DISABLE KEYS */;
INSERT INTO `printer_brand` (`printer_brd_id`, `printer_name`) VALUES
	(1, 'Xerox'),
	(2, 'Cannon'),
	(3, 'Lexmark'),
	(4, 'HP'),
	(5, 'Samsung'),
	(6, 'Oki');
/*!40000 ALTER TABLE `printer_brand` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.servere
CREATE TABLE IF NOT EXISTS `servere` (
  `server_id` int(10) NOT NULL AUTO_INCREMENT,
  `server` varchar(100) NOT NULL,
  `functionalitate` varchar(255) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `ip1` varchar(50) NOT NULL,
  `ip2` varchar(50) NOT NULL,
  `ip3` varchar(50) NOT NULL,
  `procesor` varchar(50) NOT NULL,
  `memorie` varchar(50) NOT NULL,
  `hdd` varchar(50) NOT NULL,
  `sistem_operare` varchar(50) NOT NULL,
  `anul_fabricatiei` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `locatie` varchar(50) NOT NULL,
  `file_config` varchar(100) NOT NULL,
  `observatii` text NOT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='Servere IuBCvT';

-- Dumping data for table iubcvt_network.servere: ~3 rows (approximately)
/*!40000 ALTER TABLE `servere` DISABLE KEYS */;
INSERT INTO `servere` (`server_id`, `server`, `functionalitate`, `brand`, `ip1`, `ip2`, `ip3`, `procesor`, `memorie`, `hdd`, `sistem_operare`, `anul_fabricatiei`, `username`, `password`, `locatie`, `file_config`, `observatii`) VALUES
	(1, 'PACS', '', 'DELL', '192.168.1.200', '192.168.169.210', '', 'Xeon', '8 Gb', '5TB', 'Win Server 2012', '2015', 'Administrator', 'KLMair', 'Etaj 1 Camera servere', '0', '0'),
	(2, 'WebApp', '', 'IBM', '193.226.0.74', '192.168.1.100', '', 'x', '2 Gb', '2x 232 Gb', 'Linux CentOS', '2005', 'root', 'IUBCvT382!@#', 'Etaj 1 Camera Servere', '0', '<p>\r\n 0</p>\r\n'),
	(3, 'Server SAN ', 'Server DiaSan + Indaco Lege 4', '', '192.168.1.2 ', '192.168.1.10', '', 'Intel pentium 4 -  3GHz', '2 Gb', '3 hdd total 200 Gb', 'Windows 2003 R2', '', 'Administrator', '.Spit40.', 'Etaj 1 Camera Servere', '', '<p>\r\n &nbsp; Server SAN</p>\r\n<p>\r\n - SO=Windows 2003 R2</p>\r\n<p>\r\n - Server DiaSan + Indaco Lege 4</p>\r\n<p>\r\n - Adresa IP: 192.168.1.2 , 192.168.1.10</p>\r\n<p>\r\n - User: Administrator, pass: .Spit40.</p>\r\n<p>\r\n - Cere parola la pornire, porneste automat dupa cadere de curent</p>\r\n'),
	(4, 'pfSense Internet', 'Server Internet pentru IBCvT (clasa 1)', '', '192.168.1.9', '193.226.0.18', 'RDS IP', '', '', '', 'pfSense', '', '', '', 'Etaj 1 Camera Servere', '', '<p>\r\n Acces web user si parola</p>\r\n'),
	(5, 'File Server IUBCvT', 'un fel de samba', 'HP Proliant', 'IP: 192.168.1.7', '', '', 'Interl Xeon 2.27 GHz', '4 Gb', '2 Hdd 1 TB', 'Windows Server 2003', '2010', 'Administrator', '.Spit40.', 'Etaj 1 Camera Servere', '', '<p>\r\n Cere parola la pornire, porneste automat dupa cadere de curent</p>\r\n<p>\r\n HP Proliant DL 180G6, 2 Hdd, 4 Gb RAM, sala servere IBCvT, &nbsp;- server File, IP: 192.168.1.7, Windows Server 2003 x 86, parola: .Spit40.</p>\r\n'),
	(6, 'Server app RSC', 'server aplicatie RSC pt IBCvT', 'HP Proliant ', '', '', '', '', '24 Gb RAM', '6 Hdd', 'Windows Server 2008 R2 x 64', '2010', 'Administrator', 'Hipo_Mures_13', 'Etaj 2 sala servere ATI', '', '<p>\r\n HP Proliant DL 380G7, 6 Hdd, 24 Gb RAM, sala servere ATI &ndash; server aplicatie RSC pt IBCvT, IP:&nbsp;&nbsp; , Windows Server 2008 R2 x 64, parola: Hipo_Mures_13</p>\r\n'),
	(7, 'Server Hospital Manager', 'server Hospital Manager virtualizat', 'HP Proliant DL 380G7', '192.168.71.66', '', '', '', '12 Gb ', '6 Hdd', 'Windows Server 2008 R2 x 64', '2010', 'Administrator', 'Hipo_Mures_13', 'Parter - sala servere SCJUM ', '', '<p>\r\n HP Proliant DL 380G7, 6 Hdd, 12 Gb RAM, sala servere SCJUM &ndash; server Hospital Manager virtualizat, IP: 192.168.71.66, Windows Server 2008 R2 x 64, parola: Hipo_Mures_13</p>\r\n'),
	(8, 'Server Salarizare ', 'Server salarizare IBCvT + SCJUM', '2. HP Proliant DL 380G7', '192.168.71.80', '', '', '', '24 Gb RAM', '4 Hdd', 'Windows Server 2008 R2 x 64', '2010', 'Administrator', 'Hipo_Mures_13', 'Etaj 2 sala servere ATI ', '', '<p>\r\n HP Proliant DL 380G7, 4 Hdd, 24 Gb RAM, sala servere ATI &ndash; server salarizare IBCvT + SCJUM, IP: 192.168.71.80, Windows Server 2008 R2 x 64, parola: Hipo_Mures_13</p>\r\n');
/*!40000 ALTER TABLE `servere` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.sisteme
CREATE TABLE IF NOT EXISTS `sisteme` (
  `sistem_id` int(10) NOT NULL AUTO_INCREMENT,
  `grup` int(11) NOT NULL,
  `compartiment` varchar(50) NOT NULL,
  `locatie` varchar(50) NOT NULL,
  `locatie_info` varchar(255) NOT NULL,
  `etaj` varchar(10) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `network_info` varchar(255) NOT NULL,
  `mac` varchar(100) NOT NULL,
  `domeniu` varchar(255) NOT NULL,
  `procesor` varchar(100) NOT NULL,
  `memorie` varchar(100) NOT NULL,
  `hdd` varchar(50) NOT NULL,
  `placa_de_baza` varchar(100) NOT NULL,
  `sistem_operare` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `anul_fabricatiei` int(10) NOT NULL,
  `nume_utilizator` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `teamviewer_id` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `antivirus` varchar(10) NOT NULL,
  `imprimanta` varchar(100) NOT NULL,
  `tipul_sistemului` varchar(50) NOT NULL,
  `status_sistem` varchar(50) NOT NULL,
  `observatii` varchar(255) NOT NULL,
  PRIMARY KEY (`sistem_id`),
  KEY `FK_sisteme_compartimente` (`compartiment`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Calculatoare din reteaua IUBCVT\r\ntipul_sistemului -laptop sau desktop';

-- Dumping data for table iubcvt_network.sisteme: ~0 rows (approximately)
/*!40000 ALTER TABLE `sisteme` DISABLE KEYS */;
INSERT INTO `sisteme` (`sistem_id`, `grup`, `compartiment`, `locatie`, `locatie_info`, `etaj`, `brand`, `ip`, `network_info`, `mac`, `domeniu`, `procesor`, `memorie`, `hdd`, `placa_de_baza`, `sistem_operare`, `office`, `anul_fabricatiei`, `nume_utilizator`, `password`, `teamviewer_id`, `contact`, `antivirus`, `imprimanta`, `tipul_sistemului`, `status_sistem`, `observatii`) VALUES
	(1, 1, '1', '', '', '2', '2', '192.168.1.202', '', '34-64-A9-21-CD-5B', 'nu', 'i5  3 GHz', '6', '5', '', '5', '2013 ', 2015, 'Tibi', '', '590 184 980', '', '2', 'Xerox Runos', '1', '1', '');
/*!40000 ALTER TABLE `sisteme` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.sistem_operare
CREATE TABLE IF NOT EXISTS `sistem_operare` (
  `os_id` int(10) NOT NULL AUTO_INCREMENT,
  `os` varchar(100) NOT NULL,
  `specificatii` varchar(100) NOT NULL,
  PRIMARY KEY (`os_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Sisteme de operare';

-- Dumping data for table iubcvt_network.sistem_operare: ~5 rows (approximately)
/*!40000 ALTER TABLE `sistem_operare` DISABLE KEYS */;
INSERT INTO `sistem_operare` (`os_id`, `os`, `specificatii`) VALUES
	(1, 'Win Xp', ''),
	(2, 'Win 7', ''),
	(3, 'Win 8.1', ''),
	(4, 'Win 10 Home', ''),
	(5, 'Win 10 Ent', 'Tudor');
/*!40000 ALTER TABLE `sistem_operare` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.status_sistem
CREATE TABLE IF NOT EXISTS `status_sistem` (
  `status_sis_id` int(10) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(150) NOT NULL,
  `informatii` text NOT NULL,
  PRIMARY KEY (`status_sis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='In functiune, depozit, casat, defect';

-- Dumping data for table iubcvt_network.status_sistem: ~4 rows (approximately)
/*!40000 ALTER TABLE `status_sistem` DISABLE KEYS */;
INSERT INTO `status_sistem` (`status_sis_id`, `status_name`, `informatii`) VALUES
	(1, 'Productie', ''),
	(2, 'Depozit', ''),
	(3, 'Casat', ''),
	(4, 'Service', '');
/*!40000 ALTER TABLE `status_sistem` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.tip_echipamente
CREATE TABLE IF NOT EXISTS `tip_echipamente` (
  `tip_id` int(11) NOT NULL AUTO_INCREMENT,
  `nume_echipament` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table iubcvt_network.tip_echipamente: ~3 rows (approximately)
/*!40000 ALTER TABLE `tip_echipamente` DISABLE KEYS */;
INSERT INTO `tip_echipamente` (`tip_id`, `nume_echipament`) VALUES
	(1, 'Router'),
	(2, 'Switch'),
	(3, 'Router Wifi');
/*!40000 ALTER TABLE `tip_echipamente` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.tip_sistem
CREATE TABLE IF NOT EXISTS `tip_sistem` (
  `tip_sis_id` int(10) NOT NULL AUTO_INCREMENT,
  `tip_name` varchar(100) NOT NULL,
  PRIMARY KEY (`tip_sis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Desktop, Laptop, Tableta, etc';

-- Dumping data for table iubcvt_network.tip_sistem: ~2 rows (approximately)
/*!40000 ALTER TABLE `tip_sistem` DISABLE KEYS */;
INSERT INTO `tip_sistem` (`tip_sis_id`, `tip_name`) VALUES
	(1, 'Desktop'),
	(2, 'Laptop');
/*!40000 ALTER TABLE `tip_sistem` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.todo
CREATE TABLE IF NOT EXISTS `todo` (
  `todo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  `completed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`todo_id`),
  KEY `FK_todo_user` (`user_id`),
  CONSTRAINT `FK_todo_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- Dumping data for table iubcvt_network.todo: ~0 rows (approximately)
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;


-- Dumping structure for table iubcvt_network.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table iubcvt_network.user: ~2 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `login`, `password`, `email`, `date_added`, `date_modified`) VALUES
	(17, 'tibioltean', '20aade7fd5a7e8e37e1f18c700d9e4a6b995e470db6df242e60745c771a0829e', 'tiberiu@cardio.ro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(18, 'admin', 'c7f5867734c1bb80892e13302d96a222e2ef25e8e0657c9d4b20e37b83e5f0af', 'office@cardio.ro', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

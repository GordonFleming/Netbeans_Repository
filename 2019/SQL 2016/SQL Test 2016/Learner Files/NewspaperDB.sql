#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.1.242
#
# OPTIONS:
#   sourcefilename=T:\Data\Work\Grade 12 IT\2016\SQL\NewspaperDB.mDB
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=NewspaperDB
#   storageengine=InnoDB
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=LONGTEXT
#

CREATE DATABASE IF NOT EXISTS `NewspaperDB`;
USE `NewspaperDB`;

#
# Table structure for table 'tblAdverts'
#

DROP TABLE IF EXISTS `tblAdverts`;

CREATE TABLE `tblAdverts` (
  `AdID` INTEGER NOT NULL AUTO_INCREMENT, 
  `ClientID` VARCHAR(5), 
  `PlacementDate` DATETIME, 
  `WeeksRunning` INTEGER DEFAULT 0, 
  `NumWords` INTEGER DEFAULT 0, 
  `Paid` TINYINT(1) DEFAULT 0, 
  `CatCode` VARCHAR(3), 
  INDEX (`AdID`), 
  INDEX (`ClientID`), 
  INDEX (`NumWords`), 
  PRIMARY KEY (`AdID`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'tblAdverts'
#

INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (1, 'PP001', '2015-10-19 00:00:00', 2, 66, 1, 'Ani');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (2, 'DB002', '2016-10-28 00:00:00', 3, 28, 0, 'Ani');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (3, 'BE013', '2015-12-10 00:00:00', 3, 16, 1, 'Car');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (4, 'BE013', '2016-10-10 00:00:00', 3, 25, 0, 'Car');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (5, 'CA012', '2016-10-24 00:00:00', 2, 15, 0, 'Car');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (6, 'CA012', '2016-11-12 00:00:00', 2, 16, 0, 'Car');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (7, 'PE014', '2016-12-15 00:00:00', 3, 36, 1, 'Car');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (8, 'EC009', '2015-12-01 00:00:00', 2, 26, 1, 'Pro');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (9, 'HI004', '2015-11-23 00:00:00', 2, 13, 1, 'Com');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (10, 'HI004', '2015-11-20 00:00:00', 2, 17, 1, 'Com');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (11, 'HI004', '2015-11-16 00:00:00', 3, 15, 1, 'Com');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (12, 'HI004', '2016-10-12 00:00:00', 2, 11, 0, 'Com');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (13, 'DO007', '2016-10-12 00:00:00', 1, 36, 1, 'Job');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (14, 'DO007', '2015-11-01 00:00:00', 1, 31, 1, 'Job');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (15, 'PH006', '2016-12-10 00:00:00', 1, 31, 1, 'Pho');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (16, 'PR010', '2015-12-10 00:00:00', 2, 16, 1, 'Pro');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (17, 'PR010', '2015-12-28 00:00:00', 1, 31, 1, 'Pro');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (18, 'PR010', '2016-08-08 00:00:00', 2, 25, 1, 'Pro');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (19, 'SP011', '2016-10-10 00:00:00', 2, 19, 0, 'Spo');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (20, 'SP011', '2015-11-12 00:00:00', 2, 21, 1, 'Spo');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (21, 'SP011', '2016-12-10 00:00:00', 2, 19, 1, 'Spo');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (22, 'SC005', '2016-12-11 00:00:00', 1, 36, 0, 'Sta');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (23, 'SC005', '2016-11-26 00:00:00', 2, 13, 0, 'Sta');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (28, 'PR010', '2016-02-10 00:00:00', 1, 21, 1, 'Pro');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (29, 'PR010', '2016-02-28 00:00:00', 1, 21, 1, 'Pro');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (30, 'PR010', '2016-02-08 00:00:00', 1, 21, 1, 'Pro');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (31, 'DO007', '2015-11-01 00:00:00', 1, 65, 1, 'Ani');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (32, 'DO007', '2015-11-01 00:00:00', 1, 31, 1, 'Ani');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (33, 'DO007', '2015-11-01 00:00:00', 1, 31, 1, 'Ani');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (34, 'DO007', '2015-11-15 00:00:00', 1, 50, 1, 'PRO');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (35, 'DO007', '2015-12-15 00:00:00', 1, 50, 1, 'PRO');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (36, 'SP011', '2016-05-10 00:00:00', 2, 31, 0, 'Spo');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (37, 'SP011', '2016-05-11 00:00:00', 2, 50, 1, 'Spo');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (38, 'SP011', '2016-05-12 00:00:00', 2, 31, 1, 'Spo');
INSERT INTO `tblAdverts` (`AdID`, `ClientID`, `PlacementDate`, `WeeksRunning`, `NumWords`, `Paid`, `CatCode`) VALUES (39, 'SC005', '2016-05-13 00:00:00', 1, 31, 0, 'Sta');
# 35 records

#
# Table structure for table 'tblClients'
#

DROP TABLE IF EXISTS `tblClients`;

CREATE TABLE `tblClients` (
  `ClientID` VARCHAR(5) NOT NULL, 
  `ClientName` VARCHAR(30), 
  `TelNum` VARCHAR(15), 
  `Location` VARCHAR(30), 
  `eMail` VARCHAR(255), 
  INDEX (`ClientID`), 
  PRIMARY KEY (`ClientID`), 
  INDEX (`TelNum`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'tblClients'
#

INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('BE013', 'Best Cars', '(011) 678 9883', 'Bedfordview', 'best.cars@gmail.co.za');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('CA012', 'CarSelect', '(011) 098 3445', 'Roodepoort', 'CarSelect@bmw.co.za');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('DB002', 'DogBox', '082 123 3210', 'Midrand', 'dogbox@dogs.org');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('DO007', 'Dotty', '(011) 285 9887', 'Bedfordview', 'dotty@gmail.com');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('EC009', 'EconoTravel', '(011) 542 3438', 'Johannesburg', 'econo@xx.co.za');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('HI004', 'HiTech Goodies', '(011)567 2341', 'Roodepoort', 'hitech@goodies.co.za');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('JF008', 'Job For You', '074 326 7851', 'Soweto', 'job@looking.org');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('PE014', 'Pedigree Cars', '(012) 343 9886', 'Centurion', 'cars@pedigree.co.za');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('PH006', 'PhotoPro', '072 786 9880', 'Centurion', 'photo@yahoo.com');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('PO003', 'PowerBackup Inc', '(012)987 6543', 'Pretoria Noord', 'pwb@gmail.com');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('PP001', 'The Pet Place', '083 456 7891', 'Centurion', 'pet@palace.co.za');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('PR010', 'Property Wizard', '084 009 8743', 'Pretoria', 'prop@wizard.co.za');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('SC005', 'Scappers Heaven', '(012) 609 8765', 'Pretoria Noord', 'sh@gmail.com');
INSERT INTO `tblClients` (`ClientID`, `ClientName`, `TelNum`, `Location`, `eMail`) VALUES ('SP011', 'SportsPro', '(012) 025 6331', 'Centurion', 'sports@pro.co.za');
# 14 records

#
# Table structure for table 'tblTariff'
#

DROP TABLE IF EXISTS `tblTariff`;

CREATE TABLE `tblTariff` (
  `CategoryCode` VARCHAR(255) NOT NULL, 
  `CategoryName` VARCHAR(255), 
  `Tariff` DOUBLE NULL DEFAULT 0, 
  PRIMARY KEY (`CategoryCode`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'tblTariff'
#

INSERT INTO `tblTariff` (`CategoryCode`, `CategoryName`, `Tariff`) VALUES ('ANI', 'Animals', 6.55);
INSERT INTO `tblTariff` (`CategoryCode`, `CategoryName`, `Tariff`) VALUES ('CAR', 'Cars', 10.79);
INSERT INTO `tblTariff` (`CategoryCode`, `CategoryName`, `Tariff`) VALUES ('COM', 'Computers', 10);
INSERT INTO `tblTariff` (`CategoryCode`, `CategoryName`, `Tariff`) VALUES ('JOB', 'Jobs', 6.99);
INSERT INTO `tblTariff` (`CategoryCode`, `CategoryName`, `Tariff`) VALUES ('PHO', 'Photographic', 6);
INSERT INTO `tblTariff` (`CategoryCode`, `CategoryName`, `Tariff`) VALUES ('PRO', 'Properties', 15.55);
INSERT INTO `tblTariff` (`CategoryCode`, `CategoryName`, `Tariff`) VALUES ('SPO', 'Sports', 16);
INSERT INTO `tblTariff` (`CategoryCode`, `CategoryName`, `Tariff`) VALUES ('STA', 'Stationery', 7.89);
# 8 records


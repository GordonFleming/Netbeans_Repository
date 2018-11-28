#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.1.242
#
# OPTIONS:
#   sourcefilename=T:\Data\Work\Grade 12 IT\2014\SQL Test Moderated\DamsDB.mdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=DamsDB
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

CREATE DATABASE IF NOT EXISTS `DamsDB`;
USE `DamsDB`;

#
# Table structure for table 'tblDams'
#

DROP TABLE IF EXISTS `tblDams`;

CREATE TABLE `tblDams` (
  `DamID` INTEGER NOT NULL, 
  `DamName` VARCHAR(30), 
  `River` VARCHAR(25), 
  `YearCompleted` INTEGER, 
  `DamLevel` INTEGER, 
  `Capacity` INTEGER, 
  `HeightOfWall` DOUBLE NULL DEFAULT 0, 
  PRIMARY KEY (`DamID`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'tblDams'
#

INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (1, 'Albasini Dam', 'Levubu River', 1952, 20053, 28200, 34.55);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (2, 'Albert Falls Dam', 'Umgeni River', 1976, 142339, 288100, 33.52);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (3, 'Allemanskraal Dam', 'Sand River', 1960, 128666, 174500, 38.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (4, 'Alphen Dam', 'Bonte River', 1990, 237, 700, 18.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (5, 'Armenia Dam', 'Leeu River', 1954, 7056, 13000, 22.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (6, 'Beervlei Dam', 'Groot River', 1957, 50460, 85800, 31.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (7, 'Berg River Dam', 'Berg River', 2007, 112394, 127100, 68.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (8, 'Bivane Dam', 'Bivane River', 2000, 47764, 115200, 72.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (9, 'Bloemhoek Dam', 'Jordaan Spruit', 1976, 8867, 26400, 28.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (10, 'Bloemhof Dam', 'Vaal River', 1970, 875662, 1240200, 33.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (11, 'BlydeRivierpoort Dam', 'Blyde River', 1974, 53441, 54400, 71.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (12, 'Boegoeberg Dam', 'Orange River', 1929, 12121, 19800, 12.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (13, 'Bon Accord Dam', 'Apies River', 1925, 3447, 4400, 18.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (14, 'Bongolo Dam', 'Komani River', 1908, 3402, 7015, 24.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (15, 'Boschmanskop No 1 Dam', 'Woes-Alleen River', 1995, 7253, 14400, 22.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (16, 'Boskop Dam', 'Mooi River', 1959, 16950, 20840, 33.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (17, 'Bospoort Dam', 'Hex River', 1933, 8866, 15800, 28.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (18, 'Bridle Drift Dam', 'Buffels River', 1969, 66835, 101600, 55.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (19, 'Bronkhorstspruit Dam', 'Bronkhorst Spruit', 1950, 47748, 57400, 35.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (20, 'Buffeljags Dam', 'Buffeljags River', 1967, 4001, 4800, 24.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (21, 'Buffelspoort Dam', 'Sterkstroom River', 1934, 10024, 10251, 34.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (22, 'Ceres Koekedouw Dam', 'Loekedouw River', 2001, 11731, 17200, 60.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (23, 'Churchill Dam', 'Krom River', 1943, 17236, 35500, 43.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (24, 'Clanwilliam Dam', 'Olifants River', 1935, 97731, 121800, 43.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (25, 'Craigie Burn Dam', 'Mnyamvubu River', 1963, 10817, 22500, 38.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (26, 'Da Gama Dam', 'Witwaters River', 1971, 7901, 13578, 38.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (27, 'Damani Dam', 'Mbwedi River', 1991, 10114, 11000, 28.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (28, 'Dap Naude Dam', 'Broederstroom River', 1958, 1692, 1900, 23.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (29, 'Darlington Dam', 'Sundays River', 1922, 101062, 188800, 48.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (30, 'De Hoop Dam', 'Kamdeboo River', 1938, 11135, 16500, 15.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (31, 'Disaneng Dam', 'Molopo River', 1980, 14676, 17400, 17.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (32, 'Doorndraai Dam', 'Sterk River', 1952, 21093, 43800, 25.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (33, 'Doring River Dam', 'Doring River', 1971, 19279, 19690, 35.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (34, 'Douglas Weir', 'Vaal River', 1977, 5910, 16700, 10.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (35, 'Driekloof Dam', 'Nuwejaar Spruit', 1979, 16759, 32071, 47.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (36, 'Driekoppies Dam', 'Lomati River', 1998, 126366, 250900, 50.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (37, 'Ebenezer Dam', 'Groot Letaba River', 1959, 31982, 69100, 61.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (38, 'Egmont Dam', 'Witte Spruit', 1937, 6181, 9300, 25.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (39, 'Eikenhof Dam', 'Palmiet River', 1977, 11000, 28900, 46.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (40, 'Elandskloof Dam', 'Elands River', 1976, 6896, 11017, 69.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (41, 'Emmarentia Dam', 'Braamfontein Spruit', 1912, 151, 250, 11.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (42, 'Erfenis Dam', 'Groot-Vet River', 1960, 186380, 207500, 46.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (43, 'Fika-Patso Dam', 'Namahadi River', 1987, 26126, 28000, 65.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (44, 'Flag Boshielo Dam', 'Olifants River', 1987, 126647, 185100, 36.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (45, 'Floriskraal Dam', 'Buffels River', 1957, 29439, 50334, 33.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (46, 'Gamkapoort Dam', 'Gamka River', 1969, 28772, 37213, 42.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (47, 'Gariep Dam', 'Orange River', 1971, 4869524, 5340600, 88.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (48, 'Glen Alpine Dam', 'Magalakwena River', 1968, 17653, 18900, 28.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (49, 'Goedertrouw Dam', 'Mhlatuze River', 1982, 135084, 301300, 88.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (50, 'Grassridge Dam', 'Great Brak River', 1924, 15636, 46200, 24.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (51, 'Greater Brandvlei Dam', 'Breede River', 1989, 323041, 474046, 18.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (52, 'Groendal Dam', 'Swartkops River', 1934, 10105, 12100, 51.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (53, 'Grootdraai Dam', 'Vaal River', 1981, 223881, 349500, 42.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (54, 'Hartbeespoort Dam', 'Crocodile River', 1925, 120453, 186400, 59.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (55, 'Hazelmere Dam', 'Mdloti River', 1977, 9358, 17858, 50.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (56, 'Hellsgate Dam', 'Klip River', 1910, 50, 120, 26.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (57, 'Heyshope Dam', 'Assegaai River', 1983, 402230, 451300, 29.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (58, 'Impofu Dam', 'Krom River', 1982, 35653, 105800, 75.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (59, 'Inanda Dam', 'Umgeni River', 1989, 173323, 241700, 65.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (60, 'Injaka Dam', 'Marite River', 2002, 71478, 123700, 53.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (61, 'Jericho Dam', 'Mpama River', 1966, 52453, 59500, 22.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (62, 'Kalkfontein Dam', 'Riet River', 1938, 259338, 325100, 36.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (63, 'Kammanassie Dam', 'Kammanassie River', 1923, 35189, 35870, 41.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (64, 'Katrivier Dam', 'Kat River', 1969, 10954, 24690, 55.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (65, 'Kilburn Dam', 'Mnjaneni River', 1981, 16878, 35577, 51.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (66, 'Klerkskraal Dam', 'Mooi River', 1965, 5730, 7900, 15.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (67, 'Klipberg Dam', 'Konings River', 1964, 1243, 1996, 29.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (68, 'Klipdrif Dam', 'Loop Spruit', 1918, 4629, 13300, 12.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (69, 'Klipkoppie Dam', 'White River', 1960, 5001, 12256, 20.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (70, 'Klipvoor Dam', 'Pienaars River', 1970, 19692, 47000, 30.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (71, 'Knellpoort Dam', 'Riet Spruit', 1988, 73252, 130000, 50.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (72, 'Kogelberg Dam', 'Palmiet River', 1986, 17755, 19000, 54.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (73, 'Kommandodrif Dam', 'Tarka River', 1956, 32948, 58114, 39.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (74, 'Koppies Dam', 'Renoster River', 1911, 39163, 42300, 25.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (75, 'Kouga Dam', 'Kouga River', 1969, 111644, 125900, 81.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (76, 'Kromfontein Middle Cofferdam', 'Steenkool Spruit', 1990, 14359, 18000, 16.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (77, 'Kromfontein Lower Cofferdam', 'Steenkool Spruit', 1992, 11121, 13000, 17.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (78, 'Krugersdrift Dam', 'Modder River', 1970, 59997, 66000, 26.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (79, 'Kwaggaskloof Dam', 'Wabooms River', 1975, 146215, 173900, 18.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (80, 'Kwena Dam', 'Crocodile River', 1987, 118659, 158900, 52.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (81, 'Laing Dam', 'Buffalo River', 1951, 8216, 19860, 45.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (82, 'Lake Arthur Dam', 'Tarka River', 1924, 8502, 10700, 38.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (83, 'Lake Mzingazi Dam', 'Mzingazi River', 1942, 19678, 37000, 8.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (84, 'Lakenvallei Dam', 'Sanddrifskloof River', 1974, 5823, 10300, 56.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (85, 'Leeu-Gamka Dam', 'Leeuw River', 1958, 15763, 42211, 21.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (86, 'Lindleyspoort Dam', 'Elands River', 1943, 11710, 14381, 39.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (87, 'Loskop Dam', 'Olifants River', 1939, 169576, 361500, 54.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (88, 'Lubisi Dam', 'Indwe River', 1968, 123016, 158000, 52.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (89, 'Luphephe Dam', 'Luphephe River', 1963, 7516, 14000, 42.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (90, 'Madikwe Dam', 'Thulane River', 1976, 7829, 14000, 17.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (91, 'Makuleke Dam', 'Mphongolo River', 1990, 11034, 13000, 22.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (92, 'Marico-Bosveld Dam', 'Groot Marico River', 1933, 19062, 27813, 34.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (93, 'Middelburg Dam', 'Klein Olifants River', 1978, 45475, 48435, 36.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (94, 'Middle Letaba Dam', 'Middle Letaba River', 1984, 100825, 171900, 34.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (95, 'Midmar Dam', 'Umgeni River', 1965, 124641, 235400, 32.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (96, 'Misverstand Dam', 'Berg River', 1977, 3997, 6400, 26.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (97, 'Modderpoort Dam', 'Rietfontein River', 1953, 3784, 10000, 15.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (98, 'Mokolo Dam', 'Mokolo River', 1980, 145242, 145400, 57.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (99, 'Molatedi Dam', 'Marico River', 1986, 97187, 200800, 23.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (100, 'Molteno Dam', 'Table Mountain River', 1881, 99, 200, 15.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (101, 'Morgenstond Dam', 'Ngwempisi River', 1978, 97221, 100773, 43.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (102, 'Mtata Dam', 'Mtata River', 1977, 128835, 253674, 18.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (103, 'Mutshedzi Dam', 'Mutshedzi River', 1990, 2269, 2300, 25.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (104, 'Nagle Dam', 'Umgeni River', 1950, 18623, 23200, 46.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (105, 'Nahoon Dam', 'Nahoon River', 1966, 16849, 19934, 44.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (106, 'Nandoni Dam', 'Levuvuhu River', 2004, 147060, 166100, 47.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (107, 'Ncora Dam', 'Tsomo River', 1975, 104133, 150100, 44.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (108, 'Ngodwana Dam', 'Ngodwana River', 1984, 5854, 10400, 47.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (109, 'Ngotwane Dam', 'Ngotwane River', 1982, 17736, 18800, 19.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (110, 'Nooitgedacht Dam', 'Komati River', 1962, 42229, 78400, 42.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (111, 'Nqweba Dam', 'Sundays River', 1925, 26241, 46369, 42.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (112, 'Ntshingwayo Dam', 'Nsama River', 1961, 151563, 194600, 28.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (113, 'Nwanedzi Dam', 'Nwanedzi River', 1964, 4211, 5100, 36.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (114, 'Nzhelele Dam', 'Nzhelele River', 1948, 42077, 51200, 47.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (115, 'Ohrigstad Dam', 'Ohrigstad River', 1955, 9012, 13400, 52.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (116, 'Olifantsnek Dam', 'Hex River', 1928, 9324, 14200, 31.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (117, 'Oudebaaskraal Dam', 'Tankwa River', 1969, 15708, 34000, 21.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (118, 'Phiphidi Dam', 'Mutshindudi River', 1971, 110414, 187355, 16.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (119, 'Pietersfontein Dam', 'Pietersfontein River', 1968, 1610, 1984, 33.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (120, 'Pongolapoort Dam', 'Pongola River', 1973, 1196920, 2267100, 89.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (121, 'Poortjieskloof Dam', 'Groot River', 1955, 5381, 9700, 38.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (122, 'Qedusizi Dam', 'Klip River', 1998, 130238, 133295, 32.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (123, 'Rhenosterkop Dam', 'Elands River', 1984, 166059, 204600, 36.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (124, 'Rietvlei Dam', 'Rietvlei River', 1933, 7767, 12300, 21.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (125, 'Rockview Dam', 'Palmiet River', 1986, 6280, 16400, 48.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (126, 'Roodekoppies Dam', 'Crocodile River', 1984, 89458, 103000, 25.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (127, 'Roodeplaat Dam', 'Pienaars River', 1959, 23617, 41200, 59.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (128, 'Rustfontein Dam', 'Modder River', 1955, 70529, 72200, 36.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (129, 'Sandile Dam', 'Keiskamma River', 1983, 12318, 30960, 61.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (130, 'Setumo Dam', 'Molopo River', 1995, 15667, 19600, 17.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (131, 'Slangdraai Dam', 'Sundays River', 1986, 4901, 10300, 15.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (132, 'Smartt Dam', 'Ongers River', 1912, 34510, 100300, 28.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (133, 'Sol Plaatjie Dam', 'Liebenbergsvlei River', 1968, 10963, 15676, 24.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (134, 'Spioenkop Dam', 'Tugela River', 1973, 228369, 270600, 53.1);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (135, 'Spitskop Dam', 'Harts River', 1974, 53064, 57800, 18.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (136, 'Steenbras Dam', 'Steenbras River', 1921, 24239, 33897, 37.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (137, 'Steenbras Dam - Upper', 'Steenbras River', 1977, 19034, 32483, 37.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (138, 'Sterkfontein Dam', 'Nuwejaar Spruit', 1980, 2156267, 2616900, 93.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (139, 'Stettynskloof Dam', 'Holsloot River', 1955, 11641, 14700, 48.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (140, 'Stompdrift Dam', 'Olifants River', 1965, 43925, 55300, 49.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (141, 'Taung Dam', 'Harts River', 1993, 57645, 58900, 44.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (142, 'Theewaterskloof Dam', 'Riviersonderend River', 1978, 299015, 480200, 38.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (143, 'Trichardtsfontein Dam', 'Trichardt Spruit', 1981, 13848, 15200, 26.8);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (144, 'Tsojana Dam', 'Tsojana River', 1978, 11238, 12340, 23.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (145, 'Tweedraai Dam', 'Trichardt Spruit', 1991, 11161, 16000, 21.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (146, 'Vaal Barrage', 'Vaal River', 1922, 48897, 56712, 10.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (147, 'Vaal Dam', 'Vaal River', 1939, 2036835, 2603400, 63.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (148, 'Vaalharts Storage Weir', 'Vaal River', 1936, 24105, 48700, 12.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (149, 'Vanderkloof Dam', 'Orange River', 1977, 1919675, 3171300, 108.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (150, 'Vanwyksvlei Dam', 'Vanwyksvlei', 1884, 140112, 143081, 15.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (151, 'Vondo Dam', 'Mutshindudi River', 1982, 12186, 30540, 47.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (152, 'Voëlvlei Dam', 'Voëlvlei River', 1971, 131302, 158600, 10.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (153, 'Wagendrift Dam', 'Bushmans River', 1963, 27028, 55900, 41.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (154, 'Waterdown Dam', 'Klipplaat River', 1958, 15467, 38400, 44.7);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (155, 'Welbedacht Dam', 'Caledon River', 1973, 4708, 10200, 32.2);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (156, 'Wemmershoek Dam', 'Wemmers River', 1957, 34470, 58700, 53.5);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (157, 'Westoe Dam', 'Usutu River', 1968, 54116, 61900, 26.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (158, 'Witbank Dam', 'Olifants River', 1971, 70246, 104000, 44.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (159, 'Witklip Dam', 'Sand River', 1969, 11446, 12970, 21.9);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (160, 'Wolwedans Dam', 'Great Brak River', 1990, 13636, 25530, 70.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (161, 'Woodstock Dam', 'Tugela River', 1983, 322366, 373300, 49.3);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (162, 'Wriggleswade Dam', 'Kubusi River', 1991, 34578, 93200, 35.4);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (163, 'Xonxa Dam', 'White Kei River', 1974, 95440, 115900, 49.6);
INSERT INTO `tblDams` (`DamID`, `DamName`, `River`, `YearCompleted`, `DamLevel`, `Capacity`, `HeightOfWall`) VALUES (164, 'Zaaihoek Dam', 'Slang River', 1988, 75296, 184600, 46.5);
# 164 records

#
# Table structure for table 'tblTowns'
#

DROP TABLE IF EXISTS `tblTowns`;

CREATE TABLE `tblTowns` (
  `TownID` INTEGER NOT NULL, 
  `TownName` VARCHAR(25), 
  `Province` VARCHAR(25), 
  `WaterRestrictions` TINYINT(1) DEFAULT 0, 
  `Population` INTEGER, 
  `DamID` INTEGER, 
  INDEX (`DamID`), 
  PRIMARY KEY (`TownID`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'tblTowns'
#

INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (1, 'Willowmore', 'Eastern Cape', 0, 7100, 6);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (2, 'Queenstown', 'Eastern Cape', 0, 55800, 14);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (3, 'East London', 'Eastern Cape', 0, 423500, 18);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (4, 'Kareedouw', 'Eastern Cape', 0, 3400, 23);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (5, 'Tsomo', 'Eastern Cape', 0, 10600, 107);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (6, 'Stutterheim', 'Eastern Cape', 0, 20800, 162);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (7, 'Kirkwood', 'Eastern Cape', 1, 10200, 29);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (8, 'Indwe', 'Eastern Cape', 1, 12300, 33);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (9, 'Uitenhage', 'Eastern Cape', 1, 198800, 52);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (10, 'Hazelmere', 'Eastern Cape', 1, 3700, 55);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (11, 'Humansdorp', 'Eastern Cape', 1, 15600, 58);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (12, 'Cradock', 'Eastern Cape', 1, 30200, 73);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (13, 'Qamata', 'Eastern Cape', 1, 6700, 88);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (14, 'Umtata', 'Eastern Cape', 1, 79000, 102);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (15, 'Graaff Reinet', 'Eastern Cape', 1, 35400, 111);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (16, 'Cofimvaba', 'Eastern Cape', 1, 3500, 144);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (17, 'Whittlesea', 'Eastern Cape', 1, 12100, 154);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (18, 'Kroonstad', 'Free State', 0, 90800, 9);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (19, 'Van Stadensrus', 'Free State', 0, 4500, 38);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (20, 'Theunissen', 'Free State', 0, 21300, 42);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (21, 'Phuthaditjhaba', 'Free State', 0, 43800, 43);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (22, 'Koffiefontein', 'Free State', 0, 10200, 62);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (23, 'Wepener', 'Free State', 0, 9200, 71);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (24, 'Bethlehem', 'Free State', 0, 59800, 133);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (25, 'Ventersburg', 'Free State', 1, 10700, 3);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (26, 'Harrismith', 'Free State', 1, 35200, 35);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (27, 'Norvals Pont', 'Free State', 1, 3400, 47);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (28, 'Koppies', 'Free State', 1, 11500, 74);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (29, 'Bloemfontein', 'Free State', 1, 349000, 78);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (30, 'Thaba Nchu', 'Free State', 1, 38800, 128);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (31, 'Deneysville', 'Free State', 0, 12400, 147);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (32, 'Johannesburg', 'Gauteng', 0, 1975500, 41);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (33, 'Tshwane', 'Gauteng', 1, 1473800, 13);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (34, 'Bronkhorstspruit', 'Gauteng', 1, 26700, 19);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (35, 'Vanderbijlpark', 'Gauteng', 1, 338000, 146);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (36, 'Newcastle', 'KwaZulu-Natal', 0, 309400, 112);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (37, 'Estcourt', 'KwaZulu-Natal', 0, 8900, 153);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (38, 'Pietermaritzburg', 'KwaZulu-Natal', 1, 457700, 2);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (39, 'Vryheid', 'KwaZulu-Natal', 1, 63600, 8);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (40, 'Greytown', 'KwaZulu-Natal', 1, 13800, 25);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (41, 'Eshowe', 'KwaZulu-Natal', 1, 14700, 49);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (42, 'Hillcrest', 'KwaZulu-Natal', 1, 22500, 59);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (43, 'Bergville', 'KwaZulu-Natal', 1, 3000, 65);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (44, 'Richards Bay', 'KwaZulu-Natal', 1, 86800, 83);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (45, 'Howick', 'KwaZulu-Natal', 1, 18100, 95);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (46, 'Cato Ridge', 'KwaZulu-Natal', 1, 5700, 104);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (47, 'Jozini', 'KwaZulu-Natal', 1, 1300, 120);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (48, 'Ladysmith', 'KwaZulu-Natal', 1, 74500, 122);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (49, 'Giyani', 'Limpopo', 0, 23200, 91);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (50, 'Polokwane', 'Limpopo', 1, 104000, 1);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (51, 'Thohoyandou', 'Limpopo', 1, 43900, 27);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (52, 'Mokopane', 'Limpopo', 1, 5600, 32);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (53, 'Tzaneen', 'Limpopo', 1, 16900, 37);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (54, 'Marble Hall', 'Limpopo', 1, 9600, 44);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (55, 'Musina', 'Limpopo', 1, 53900, 89);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (56, 'Lephalale', 'Limpopo', 1, 13500, 98);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (57, 'Middelburg', 'Mpumalanga', 0, 123700, 15);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (58, 'Hazyview', 'Mpumalanga', 0, 19600, 60);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (59, 'Groblersdal', 'Mpumalanga', 0, 3900, 87);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (60, 'White River', 'Mpumalanga', 1, 15600, 26);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (61, 'Malelane', 'Mpumalanga', 1, 5600, 36);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (62, 'Standerton', 'Mpumalanga', 1, 65400, 53);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (63, 'Nelspruit', 'Mpumalanga', 1, 112400, 57);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (64, 'Amsterdam', 'Mpumalanga', 1, 9520, 61);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (65, 'Witbank', 'Mpumalanga', 1, 198500, 76);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (66, 'Lydenburg', 'Mpumalanga', 1, 21200, 80);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (67, 'Carolina', 'Mpumalanga', 1, 4500, 110);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (68, 'Trichardt', 'Mpumalanga', 1, 21300, 143);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (69, 'Sabie', 'Mpumalanga', 1, 4500, 159);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (70, 'Wakkerstroom', 'Mpumalanga', 1, 7100, 164);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (71, 'Potchefstroom', 'North West', 0, 122100, 16);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (72, 'Rustenburg', 'North West', 0, 123000, 17);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (73, 'Mmabatho', 'North West', 0, 50900, 31);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (74, 'Ventersdorp', 'North West', 0, 15600, 66);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (75, 'Madikwe', 'North West', 0, 10900, 90);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (76, 'Zeerust', 'North West', 0, 17600, 99);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (77, 'Lobathleng', 'North West', 0, 25700, 109);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (78, 'Taung', 'North West', 0, 11000, 141);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (79, 'Bloemhof', 'North West', 1, 17000, 10);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (80, 'Brits', 'North West', 1, 58900, 54);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (81, 'Swartruggens', 'North West', 1, 3400, 86);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (82, 'Groot Marico', 'North West', 1, 4200, 92);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (83, 'Warrenton', 'North West', 1, 17900, 148);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (84, 'Britstown', 'Northern Cape', 0, 58900, 132);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (85, 'Prieska', 'Northern Cape', 1, 11200, 12);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (86, 'Douglas', 'Northern Cape', 1, 11200, 34);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (87, 'Vanwyksvlei', 'Northern Cape', 1, 12200, 150);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (88, 'Clanwilliam', 'Western Cape', 0, 8100, 24);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (89, 'Grabouw', 'Western Cape', 0, 19800, 39);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (90, 'Beaufort West', 'Western Cape', 0, 34500, 85);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (91, 'Cape Town', 'Western Cape', 0, 2984100, 100);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (92, 'Montagu', 'Western Cape', 0, 12300, 119);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (93, 'Stellenbosch', 'Western Cape', 1, 73700, 4);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (94, 'Franschhoek', 'Western Cape', 1, 4200, 7);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (95, 'Swellendam', 'Western Cape', 1, 14100, 20);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (96, 'Ceres', 'Western Cape', 1, 28000, 22);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (97, 'Villiersdorp', 'Western Cape', 1, 11300, 40);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (98, 'Laingsburg', 'Western Cape', 1, 2800, 45);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (99, 'Prince Albert', 'Western Cape', 1, 1100, 46);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (100, 'Worcester', 'Western Cape', 1, 95000, 51);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (101, 'De Rust', 'Western Cape', 1, 3400, 63);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (102, 'McGregor', 'Western Cape', 1, 34000, 67);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (103, 'Porterville', 'Western Cape', 1, 17700, 96);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (104, 'Somerset West', 'Western Cape', 1, 139000, 136);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (105, 'Gordons Bay', 'Western Cape', 1, 14200, 137);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (106, 'Gouda', 'Western Cape', 1, 15400, 152);
INSERT INTO `tblTowns` (`TownID`, `TownName`, `Province`, `WaterRestrictions`, `Population`, `DamID`) VALUES (107, 'Mossel Bay', 'Western Cape', 1, 76000, 160);
# 107 records


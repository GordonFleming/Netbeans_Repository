#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.4.274
#
# OPTIONS:
#   sourcefilename=T:\Data\Work\Grade 11 IT\2017\Nov Exam\LeaderDB.mdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=LeaderDB
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
#   datetimetype=DATETIME
#

CREATE DATABASE IF NOT EXISTS `LeaderDB`;
USE `LeaderDB`;

#
# Table structure for table 'tblPortfolio'
#

DROP TABLE IF EXISTS `tblPortfolio`;

CREATE TABLE `tblPortfolio` (
  `portfoliosID` DOUBLE NOT NULL, 
  `portfolio` VARCHAR(255), 
  `Section` VARCHAR(255), 
  `LeaderName` VARCHAR(255), 
  `DOB` DATETIME, 
  `StaffRating` INTEGER, 
  `StudentRating` INTEGER, 
  `NumberLearners` INTEGER, 
  `Boarder` TINYINT(1), 
  INDEX (`NumberLearners`), 
  PRIMARY KEY (`portfoliosID`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'tblPortfolio'
#

INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (1, 'Outreach', 'Outreach', 'Jason', '1999-02-15 00:00:00', 2, 2, 38, 1);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (2, 'Rowing', 'Sport', 'Karan', '1998-06-07 00:00:00', 2, 3, 11, 1);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (3, 'Cricket', 'Sport', 'Amed', '1999-12-28 00:00:00', 4, 4, 27, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (4, 'Hockey', 'Sport', 'John', '1998-07-15 00:00:00', 1, 2, 47, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (5, 'Swimming', 'Sport', 'Tyron', '1999-03-24 00:00:00', 4, 5, 39, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (6, 'Rugby', 'Sport', 'Colin', '2000-01-01 00:00:00', 1, 1, 23, 1);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (7, 'Tennis', 'Sport', 'Tyron', '1999-03-24 00:00:00', 5, 2, 43, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (8, 'Boarding House', 'Boarding', NULL, NULL, NULL, NULL, 19, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (9, 'Waterpolo', 'Sport', 'Jacob', '1999-08-07 00:00:00', 4, 4, 25, 1);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (10, 'Basketball', 'Sport', 'Johannes', '1999-06-16 00:00:00', 3, 2, 38, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (11, 'Grade 8', 'Student Affairs', 'Frank', '1998-12-30 00:00:00', 1, 5, 41, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (12, 'Grade 9', 'Student Affairs', NULL, NULL, NULL, NULL, 13, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (13, 'Grade 10', 'Student Affairs', 'Phadke', '1999-10-20 00:00:00', 5, 1, 44, 1);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (14, 'Grade 11', 'Student Affairs', 'Jamael', '1999-05-09 00:00:00', 5, 5, 13, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (15, 'Grade 12', 'Student Affairs', 'Themba', '1998-12-10 00:00:00', 4, 4, 15, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (16, 'Debating', 'Culture', 'Bob', '2000-01-25 00:00:00', 2, 5, 37, 1);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (17, 'Public Speaking', 'Culture', 'Clive', '1999-04-20 00:00:00', 5, 1, 46, 1);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (18, 'Drama', 'Culture', 'Dominic', '1999-09-23 00:00:00', 2, 1, 50, 1);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (19, 'Clubs and Societies', 'Culture', NULL, NULL, NULL, NULL, 29, 0);
INSERT INTO `tblPortfolio` (`portfoliosID`, `portfolio`, `Section`, `LeaderName`, `DOB`, `StaffRating`, `StudentRating`, `NumberLearners`, `Boarder`) VALUES (20, 'Pipe Band', 'Culture', 'Jared', '1999-09-23 00:00:00', 5, 4, 16, 0);
# 20 records


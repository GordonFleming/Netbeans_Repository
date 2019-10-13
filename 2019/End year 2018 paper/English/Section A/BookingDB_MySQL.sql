SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `BookingDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Excursion`
--

CREATE TABLE IF NOT EXISTS `Excursion` (
  `ExcursionID` int(11) NOT NULL COMMENT 'A unique identification number for each excursion',
  `ExcursionName` varchar(50) NOT NULL COMMENT 'The name given for the excursion',
  `StartHour` int(11) NOT NULL COMMENT 'The excursion commences on this hour. This number is in 24 hour clock format, i.e. 0–11 would be considered morning, 12–16 would be considered afternoon and 17–23 would be evening.',
  `EndHour` int(11) NOT NULL COMMENT 'The excursion ends on this hour. It is also in 24 hour clock with values from 0 to 23.',
  `CurrentCost` double NOT NULL COMMENT 'The current cost of this excursion',
  `Surcharge` double NOT NULL COMMENT 'The conservation surcharge that is added on directly to the current cost. Some excursion that are not related to conservation will have 0 surcharge.',
  PRIMARY KEY (`ExcursionID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Excursion`
--

INSERT INTO `Excursion` (`ExcursionID`, `ExcursionName`, `StartHour`, `EndHour`, `CurrentCost`, `Surcharge`) VALUES
(1, 'Sunrise Breakfast River Cruise', 5, 8, 550, 25),
(2, 'Sunset River Cruise', 17, 20, 700, 25),
(3, 'Morning Safari', 9, 12, 450, 15),
(4, 'Afternoon Safari', 13, 16, 450, 15),
(5, 'Night Safari', 21, 23, 450, 20),
(6, 'Township Excursion 1', 8, 10, 250, 0),
(7, 'Township Excursion 2', 10, 12, 250, 0),
(8, 'Township Excursion 3', 12, 14, 250, 0),
(9, 'Township Excursion 4', 14, 16, 250, 0),
(10, 'Township Excursion 5', 16, 18, 250, 0),
(11, 'National Art Museum Excursion 1', 8, 11, 350, 0),
(12, 'National Art Museum Excursion 2', 11, 14, 350, 0),
(13, 'National Art Museum Excursion 3', 14, 17, 350, 0),
(14, 'Splash Marine Park Morning Excursion', 8, 12, 550, 0),
(15, 'Splash Marine Park Afternoon Excursion', 12, 16, 550, 0),
(16, 'Splash Marine Park Day Excursion', 8, 16, 800, 0),
(17, 'National Park Day Excursion', 8, 16, 800, 20);

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE IF NOT EXISTS `Booking` (
  `BookingID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'A unique identification number for each booking',
  `TouristID` int(11) NOT NULL COMMENT 'The TouristID of the tourist that booked this excursion. This field is the foreign key to the TOURIST table.',
  `ExcursionID` int(11) NOT NULL COMMENT 'The ExcursionID of the excursion linked to this booking. This field is the foreign key to the EXCURSION table.',
  `ExcursionDate` date NOT NULL COMMENT 'The date on which the excursion was booked for by the tourist',
  `CostCharged` double NOT NULL COMMENT 'The cost that the tourist paid for this excursion',
  PRIMARY KEY (`BookingID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`BookingID`, `TouristID`, `ExcursionID`, `ExcursionDate`, `CostCharged`) VALUES
(1, 1, 1, '2018-10-05', 620),
(2, 1, 3, '2018-10-05', 465),
(3, 1, 9, '2018-10-05', 225),
(4, 1, 3, '2018-10-06', 465),
(5, 1, 13, '2018-10-06', 315),
(6, 1, 16, '2018-10-07', 720),
(7, 2, 6, '2018-10-07', 225),
(8, 2, 12, '2018-10-07', 315),
(9, 2, 2, '2018-10-07', 785),
(10, 3, 4, '2018-10-07', 475),
(11, 3, 2, '2018-10-07', 785),
(12, 4, 4, '2018-10-07', 475),
(13, 4, 2, '2018-10-07', 785),
(14, 1, 17, '2018-10-08', 865),
(15, 1, 2, '2018-10-08', 785),
(16, 2, 3, '2018-10-08', 475),
(17, 2, 4, '2018-10-08', 475),
(18, 3, 14, '2018-10-08', 495),
(19, 3, 9, '2018-10-08', 225),
(20, 4, 14, '2018-10-08', 495),
(21, 4, 9, '2018-10-08', 225),
(22, 2, 17, '2018-10-09', 865);

-- --------------------------------------------------------

--
-- Table structure for table `Tourist`
--

CREATE TABLE IF NOT EXISTS `Tourist` (
  `TouristID` int(11) NOT NULL COMMENT 'A unique identification number for each tourist registered on the system',
  `TouristName` varchar(40) NOT NULL COMMENT 'The name of the tourist',
  `Email` varchar(100) NOT NULL COMMENT 'The email address as registered on the system',
  `Hotel` varchar(40) NOT NULL COMMENT 'The name of the hotel the tourist is currently staying at',
  `DateRegistered` date NOT NULL COMMENT 'The date on which the tourist registered on the system',
  PRIMARY KEY (`TouristID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tourist`
--

INSERT INTO `Tourist` (`TouristID`, `TouristName`, `Email`, `Hotel`, `DateRegistered`) VALUES
(1, 'Andris Nuth', 'anuth0@dyndns.org', 'Peninsula Hotel', '2015-05-15'),
(2, 'Flor Byres', 'fbyres1@cargocollective.com', 'President Hotel', '2018-02-05'),
(3, 'Dwight Crisell', 'dwight@crisell.com', 'Village Lodge', '2018-04-18'),
(4, 'Mary Crisell', 'mary@crisell.com', 'Village Lodge', '2018-04-18'),
(5, 'Darryl Poleykett', 'dpoleykett4@bbb.org', 'Mount Grace Hotel', '2017-06-02'),
(6, 'Kort McAndie', 'kmcandie5@diigo.com', 'Village Lodge', '2015-08-22'),
(7, 'Arron Haney', 'ahaney6@blogspot.com', 'Peninsula Hotel', '2012-05-17'),
(8, 'Jorrie Potten', 'jpotten@seattletimes.com', 'Mount Grace Hotel', '2016-11-03'),
(9, 'Mic MacArd', 'mmacard8@weebly.com', 'Peninsula Hotel', '2018-08-02'),
(10, 'Johnath Nixon', 'jnixon@seattletimes.com', 'Peninsula Hotel', '2016-05-13'),
(11, 'Davis Eginton', 'degintona@seattletimes.com', 'Peninsula Hotel', '2018-07-30'),
(12, 'Sharlene Bendall', 'sbendallb@vk.com', 'President Hotel', '2018-07-28'),
(13, 'Rozalie Kebell', 'rkebellc@apple.com', 'Village Lodge', '2013-11-12'),
(14, 'Eleen Yeomans', 'eyeomansd@nhs.uk', 'Mount Grace Hotel', '2017-02-01'),
(15, 'Marge Hengoed', 'mhengoede@posterous.com', 'President Hotel', '2016-12-23'),
(16, 'Paul Buller', 'pbullerf@nbcnews.com', 'Mount Grace Hotel', '2017-01-15'),
(17, 'Eba Gillison', 'egillisong@admin.ch', 'Mount Grace Hotel', '2017-09-26'),
(18, 'Sharl MacMenamy', 'smacmenamyh@ebay.co.uk', 'Peninsula Hotel', '2018-05-21'),
(19, 'Irina Gouny', 'igounyi@opera.com', 'Lunar Hotel', '2018-03-11'),
(20, 'Cornall Prout', 'cproutj@tripod.com', 'Village Lodge', '2016-05-14');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

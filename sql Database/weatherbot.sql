-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2020 at 08:48 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weatherbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
CREATE TABLE IF NOT EXISTS `weather` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(250) NOT NULL,
  `return_message` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`id`, `message`, `return_message`) VALUES
(1, 'Hi', 'Hi, How may I help you? '),
(2, 'Hey', 'Hey, How may I help you? '),
(3, 'Hello', 'Hello, How may I help you? '),
(4, 'Weather', 'For Which city you would like to know the weather? '),
(5, 'Today weather', 'For Which city you would like to know the weather? '),
(6, 'Current weather', 'For Which city you would like to know the weather? '),
(7, 'weather', 'For Which city you would like to know the weather? '),
(8, 'today weather', 'For Which city you would like to know the weather? '),
(9, 'current weather', 'For Which city you would like to know the weather? '),
(10, 'Surat', 'City Name :- Surat,<br> Date :- 28 Oct 2020,<br> Temperature :- 33C,<br> Day :- Sunny'),
(11, 'Ahmedabad', 'City Name :- Ahmedabad,<br> Date :- 28 Oct 2020,<br> Temperature :- 34C, Cloudy'),
(12, 'Vadodara', 'City Name :- Vadodara,<br> Date :- 28 Oct 2020,<br> Temperature :- 29C,<br> Day :- Sunny'),
(13, 'Mumbai', 'City Name :- Mumbai,<br> Date :- 28 Oct 2020,<br> Temperature :- 29C,<br> Day :-  Sunny'),
(14, 'Chennai', 'City Name :- Chennai,<br> Date :- 28 Oct 2020,<br> Temperature :- 29C,<br> Day :-  rain'),
(15, 'Vapi', 'City Name :- Vapi,<br> Date :- 28 Oct 2020,<br> Temperature :- 29C,<br> Day :-  Sunny'),
(16, 'Amreli', 'City Name :- Amreli,<br> Date :- 28 Oct 2020,<br> Temperature :- 29C,<br> Day :-  Cloudy'),
(17, 'Delhi', 'City Name :- Delhi,<br> Date :- 28 Oct 2020,<br> Temperature :- 29C,<br> Day :-  Cloudy'),
(18, 'what is the today weather', 'Surat,Clear with periodic clouds'),
(19, 'Is there any chance of rain today', 'No,Today Clean Weaather'),
(20, 'thanks', 'Thanks for using Weather Bot. Please visit again to know weather for any city in the world.'),
(21, 'no', 'Thanks for using Weather Bot. Please visit again to know weather for any city in the world.'),
(22, 'ok', 'Thanks for using Weather Bot. Please visit again to know weather for any city in the world.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

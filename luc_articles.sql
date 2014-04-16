-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2014 at 12:48 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `luc_articles`
--

-- --------------------------------------------------------

--
-- Table structure for table `bbc_article`
--

DROP TABLE IF EXISTS `bbc_article`;
CREATE TABLE IF NOT EXISTS `bbc_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `news` varchar(600) NOT NULL,
  `news_type` varchar(100) NOT NULL,
  `img_title` varchar(100) NOT NULL,
  `img_path` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bbc_article`
--

INSERT INTO `bbc_article` (`id`, `title`, `news`, `news_type`, `img_title`, `img_path`) VALUES
(1, 'River pollution could be increased by wetter winte', 'Wetter winters in the future could increase agricu...', 'small', 'rain', 'img/rain_small.jpg'),
(2, 'Real Madrid 3-4 Barcelona', 'Lionel Messi''s hat-trick helps Barcelona beat 10-m', 'small', 'messi', 'img/messi_small.jpg'),
(3, 'Juan Martin del Potro Wrist surgery set to end sea', 'Argentine world number eight Juan Martin del Potro...', 'small', 'tennis', 'img/delpotro_small.jpg'),
(4, 'Malaysia flight MH370 China spots suspicious objecs', 'A Chinese plane hunting for the missing Malaysia Airlines plane has spotted "suspicious" objects, state media say, as more nations joined the search. Searchers saw two "relatively big" objects with "many white smaller ones scattered within a radius of several kilometres", Xinhua news agency said. Australia said it had been informed and would try to locate the objects.', 'big', 'plane', 'img/plane_med.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

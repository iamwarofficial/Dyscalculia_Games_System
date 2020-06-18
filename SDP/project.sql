-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 23, 2018 at 05:22 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5ba708f82d4f5', '5ba708f82d789'),
('5ba708f82e31b', '5ba708f82e4c1'),
('5ba708f82eb58', '5ba708f82ed77'),
('5ba708f82f2ef', '5ba708f82f408'),
('5ba708f82f951', '5ba708f82fa6b'),
('5ba708f83004d', '5ba708f8301a3'),
('5ba708f830805', '5ba708f83095f'),
('5ba708f831048', '5ba708f8311bd'),
('5ba708f83195a', '5ba708f831afa'),
('5ba708f832303', '5ba708f8324cc'),
('5ba70b63546ec', '5ba70b63548d2'),
('5ba70b6354cc6', '5ba70b6354d9f'),
('5ba70b6355254', '5ba70b6355340'),
('5ba70b6355872', '5ba70b6355999'),
('5ba70b6355e26', '5ba70b6355f18'),
('5ba70b6356408', '5ba70b6356539'),
('5ba70b6356afb', '5ba70b6356c34'),
('5ba70b635728a', '5ba70b63573d7'),
('5ba70b6357b18', '5ba70b6357c97'),
('5ba70b6358417', '5ba70b63585be'),
('5ba70f4939e4c', '5ba70f493a0ed'),
('5ba70f493a5fd', '5ba70f493a6df'),
('5ba70f493ab0b', '5ba70f493abe3'),
('5ba70f493b161', '5ba70f493b241'),
('5ba70f493b6b2', '5ba70f493b7e9'),
('5ba70f493bce6', '5ba70f493bdef'),
('5ba70f493c3ac', '5ba70f493c50d'),
('5ba70f493cc1f', '5ba70f493cd7d'),
('5ba70f493d45b', '5ba70f493d5ce'),
('5ba70f493dd6e', '5ba70f493df1c'),
('5ba710a49f781', '5ba710a49f926'),
('5ba710a49fca9', '5ba710a49fd66'),
('5ba710a4a0110', '5ba710a4a01e4'),
('5ba710a4a062f', '5ba710a4a0704'),
('5ba710a4a0c0b', '5ba710a4a0d09'),
('5ba710a4a120e', '5ba710a4a132c'),
('5ba710a4a1965', '5ba710a4a1ab8'),
('5ba710a4a20f6', '5ba710a4a2244'),
('5ba710a4a291a', '5ba710a4a2ac2'),
('5ba710a4a323d', '5ba710a4a33f9');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5ba714063eade', 'omar marcial ', 'test@gmail.com', 'test', 'testing testing ', '2018-09-23', '04:18:14am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('admin@admin.com', '5ba70a446154a', 0, 3, 0, 3, '2018-09-23 03:42:14'),
('tim@gmail.com', '5ba70a446154a', 6, 10, 6, 4, '2018-09-23 03:45:18'),
('tim@gmail.com', '5ba70f72a4dc4', 4, 10, 4, 6, '2018-09-23 05:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5ba708f82d4f5', '3', '5ba708f82d77d'),
('5ba708f82d4f5', '5', '5ba708f82d784'),
('5ba708f82d4f5', '4', '5ba708f82d789'),
('5ba708f82d4f5', '1', '5ba708f82d78d'),
('5ba708f82e31b', '3', '5ba708f82e4bc'),
('5ba708f82e31b', '1', '5ba708f82e4c1'),
('5ba708f82e31b', '5', '5ba708f82e4c3'),
('5ba708f82e31b', '2', '5ba708f82e4c6'),
('5ba708f82eb58', '3', '5ba708f82ed77'),
('5ba708f82eb58', '5', '5ba708f82ed7a'),
('5ba708f82eb58', '2', '5ba708f82ed7d'),
('5ba708f82eb58', '4', '5ba708f82ed7f'),
('5ba708f82f2ef', '3', '5ba708f82f400'),
('5ba708f82f2ef', '5', '5ba708f82f403'),
('5ba708f82f2ef', '2', '5ba708f82f406'),
('5ba708f82f2ef', '4', '5ba708f82f408'),
('5ba708f82f951', '1', '5ba708f82fa67'),
('5ba708f82f951', '3', '5ba708f82fa6b'),
('5ba708f82f951', '6', '5ba708f82fa6d'),
('5ba708f82f951', '2', '5ba708f82fa6f'),
('5ba708f83004d', '2', '5ba708f83019b'),
('5ba708f83004d', '12', '5ba708f83019d'),
('5ba708f83004d', '6', '5ba708f8301a0'),
('5ba708f83004d', '5', '5ba708f8301a3'),
('5ba708f830805', '1', '5ba708f83095a'),
('5ba708f830805', '2', '5ba708f83095d'),
('5ba708f830805', '5', '5ba708f83095f'),
('5ba708f830805', '6', '5ba708f830961'),
('5ba708f831048', '1', '5ba708f8311bd'),
('5ba708f831048', '3', '5ba708f8311c0'),
('5ba708f831048', '5', '5ba708f8311c3'),
('5ba708f831048', '2', '5ba708f8311c5'),
('5ba708f83195a', '5', '5ba708f831af6'),
('5ba708f83195a', '3', '5ba708f831afa'),
('5ba708f83195a', '1', '5ba708f831afc'),
('5ba708f83195a', '4', '5ba708f831afe'),
('5ba708f832303', '5', '5ba708f8324c2'),
('5ba708f832303', '20', '5ba708f8324c6'),
('5ba708f832303', '15', '5ba708f8324c9'),
('5ba708f832303', '10', '5ba708f8324cc'),
('5ba70b63546ec', '5', '5ba70b63548c9'),
('5ba70b63546ec', '4', '5ba70b63548d2'),
('5ba70b63546ec', '1', '5ba70b63548d7'),
('5ba70b63546ec', '3', '5ba70b63548da'),
('5ba70b6354cc6', '2', '5ba70b6354d96'),
('5ba70b6354cc6', '4', '5ba70b6354d9a'),
('5ba70b6354cc6', '3', '5ba70b6354d9c'),
('5ba70b6354cc6', '1', '5ba70b6354d9f'),
('5ba70b6355254', '3', '5ba70b6355340'),
('5ba70b6355254', '5', '5ba70b6355344'),
('5ba70b6355254', '2', '5ba70b6355348'),
('5ba70b6355254', '4', '5ba70b635534b'),
('5ba70b6355872', '1', '5ba70b6355992'),
('5ba70b6355872', '2', '5ba70b6355996'),
('5ba70b6355872', '4', '5ba70b6355999'),
('5ba70b6355872', '3', '5ba70b635599c'),
('5ba70b6355e26', '3', '5ba70b6355f18'),
('5ba70b6355e26', '5', '5ba70b6355f1b'),
('5ba70b6355e26', '2', '5ba70b6355f1d'),
('5ba70b6355e26', '4', '5ba70b6355f20'),
('5ba70b6356408', '2', '5ba70b6356530'),
('5ba70b6356408', '4', '5ba70b6356534'),
('5ba70b6356408', '3', '5ba70b6356537'),
('5ba70b6356408', '5', '5ba70b6356539'),
('5ba70b6356afb', '2', '5ba70b6356c2e'),
('5ba70b6356afb', '3', '5ba70b6356c31'),
('5ba70b6356afb', '5', '5ba70b6356c34'),
('5ba70b6356afb', '1', '5ba70b6356c36'),
('5ba70b635728a', '1', '5ba70b63573d7'),
('5ba70b635728a', '3', '5ba70b63573da'),
('5ba70b635728a', '5', '5ba70b63573dc'),
('5ba70b635728a', '4', '5ba70b63573df'),
('5ba70b6357b18', '7', '5ba70b6357c91'),
('5ba70b6357b18', '6', '5ba70b6357c94'),
('5ba70b6357b18', '3', '5ba70b6357c97'),
('5ba70b6357b18', '5', '5ba70b6357c9a'),
('5ba70b6358417', '20', '5ba70b63585bb'),
('5ba70b6358417', '10', '5ba70b63585be'),
('5ba70b6358417', '30', '5ba70b63585c1'),
('5ba70b6358417', '40', '5ba70b63585c4'),
('5ba70f4939e4c', '0', '5ba70f493a0ed'),
('5ba70f4939e4c', '4', '5ba70f493a0f2'),
('5ba70f4939e4c', '2', '5ba70f493a0f5'),
('5ba70f4939e4c', '3', '5ba70f493a0f8'),
('5ba70f493a5fd', '2', '5ba70f493a6d9'),
('5ba70f493a5fd', '4', '5ba70f493a6dc'),
('5ba70f493a5fd', '1', '5ba70f493a6df'),
('5ba70f493a5fd', '5', '5ba70f493a6e1'),
('5ba70f493ab0b', '3', '5ba70f493abe0'),
('5ba70f493ab0b', '5', '5ba70f493abe3'),
('5ba70f493ab0b', '2', '5ba70f493abe7'),
('5ba70f493ab0b', '6', '5ba70f493abea'),
('5ba70f493b161', '4', '5ba70f493b241'),
('5ba70f493b161', '6', '5ba70f493b245'),
('5ba70f493b161', '3', '5ba70f493b248'),
('5ba70f493b161', '1', '5ba70f493b24b'),
('5ba70f493b6b2', '1', '5ba70f493b7e0'),
('5ba70f493b6b2', '3', '5ba70f493b7e3'),
('5ba70f493b6b2', '2', '5ba70f493b7e6'),
('5ba70f493b6b2', '4', '5ba70f493b7e9'),
('5ba70f493bce6', '5', '5ba70f493bdef'),
('5ba70f493bce6', '4', '5ba70f493bdf2'),
('5ba70f493bce6', '3', '5ba70f493bdf4'),
('5ba70f493bce6', '2', '5ba70f493bdf7'),
('5ba70f493c3ac', '1', '5ba70f493c509'),
('5ba70f493c3ac', '0', '5ba70f493c50d'),
('5ba70f493c3ac', '2', '5ba70f493c510'),
('5ba70f493c3ac', '4', '5ba70f493c514'),
('5ba70f493cc1f', '5', '5ba70f493cd74'),
('5ba70f493cc1f', '2', '5ba70f493cd77'),
('5ba70f493cc1f', '3', '5ba70f493cd7a'),
('5ba70f493cc1f', '1', '5ba70f493cd7d'),
('5ba70f493d45b', '2', '5ba70f493d5c9'),
('5ba70f493d45b', '1', '5ba70f493d5cc'),
('5ba70f493d45b', '3', '5ba70f493d5ce'),
('5ba70f493d45b', '4', '5ba70f493d5d1'),
('5ba70f493dd6e', '5', '5ba70f493df1c'),
('5ba70f493dd6e', '3', '5ba70f493df20'),
('5ba70f493dd6e', '4', '5ba70f493df22'),
('5ba70f493dd6e', '7', '5ba70f493df25'),
('5ba710a49f781', '1', '5ba710a49f922'),
('5ba710a49f781', '4', '5ba710a49f926'),
('5ba710a49f781', '3', '5ba710a49f929'),
('5ba710a49f781', '4', '5ba710a49f92c'),
('5ba710a49fca9', '2', '5ba710a49fd66'),
('5ba710a49fca9', '4', '5ba710a49fd69'),
('5ba710a49fca9', '6', '5ba710a49fd6c'),
('5ba710a49fca9', '8', '5ba710a49fd6e'),
('5ba710a4a0110', '1', '5ba710a4a01dc'),
('5ba710a4a0110', '4', '5ba710a4a01df'),
('5ba710a4a0110', '5', '5ba710a4a01e1'),
('5ba710a4a0110', '3', '5ba710a4a01e4'),
('5ba710a4a062f', '2', '5ba710a4a0701'),
('5ba710a4a062f', '1', '5ba710a4a0704'),
('5ba710a4a062f', '3', '5ba710a4a0707'),
('5ba710a4a062f', '6', '5ba710a4a0709'),
('5ba710a4a0c0b', '3', '5ba710a4a0d09'),
('5ba710a4a0c0b', '5', '5ba710a4a0d0d'),
('5ba710a4a0c0b', '6', '5ba710a4a0d0f'),
('5ba710a4a0c0b', '2', '5ba710a4a0d12'),
('5ba710a4a120e', '2', '5ba710a4a132c'),
('5ba710a4a120e', '6', '5ba710a4a1330'),
('5ba710a4a120e', '8', '5ba710a4a1332'),
('5ba710a4a120e', '1', '5ba710a4a1334'),
('5ba710a4a1965', '1', '5ba710a4a1ab2'),
('5ba710a4a1965', '2', '5ba710a4a1ab5'),
('5ba710a4a1965', '10', '5ba710a4a1ab8'),
('5ba710a4a1965', '4', '5ba710a4a1aba'),
('5ba710a4a20f6', '0', '5ba710a4a2241'),
('5ba710a4a20f6', '1', '5ba710a4a2244'),
('5ba710a4a20f6', '2', '5ba710a4a2246'),
('5ba710a4a20f6', '3', '5ba710a4a2248'),
('5ba710a4a291a', '10', '5ba710a4a2abe'),
('5ba710a4a291a', '5', '5ba710a4a2ac2'),
('5ba710a4a291a', '2', '5ba710a4a2ac4'),
('5ba710a4a291a', '1', '5ba710a4a2ac6'),
('5ba710a4a323d', '25', '5ba710a4a33f9'),
('5ba710a4a323d', '10', '5ba710a4a33fc'),
('5ba710a4a323d', '15', '5ba710a4a33ff'),
('5ba710a4a323d', '5', '5ba710a4a3402');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5ba706f82f745', '5ba708f82d4f5', '2 + 2 = ?', 4, 1),
('5ba706f82f745', '5ba708f82e31b', '3 + ? = 4', 4, 2),
('5ba706f82f745', '5ba708f82eb58', '? + 2 = 5', 4, 3),
('5ba706f82f745', '5ba708f82f2ef', '3 + 1 = ?', 4, 4),
('5ba706f82f745', '5ba708f82f951', '? + 3 = 6', 4, 5),
('5ba706f82f745', '5ba708f83004d', '2 + ? = 7', 4, 6),
('5ba706f82f745', '5ba708f830805', '3 + 2 = ?', 4, 7),
('5ba706f82f745', '5ba708f831048', '1 + ? = 2', 4, 8),
('5ba706f82f745', '5ba708f83195a', '? + 4 = 7', 4, 9),
('5ba706f82f745', '5ba708f832303', '5 + 5 = ?', 4, 10),
('5ba70a446154a', '5ba70b63546ec', '2 + 2 = ?\r\n', 4, 1),
('5ba70a446154a', '5ba70b6354cc6', '3 + ? = 4\r\n', 4, 2),
('5ba70a446154a', '5ba70b6355254', '? + 2 = 5', 4, 3),
('5ba70a446154a', '5ba70b6355872', '3 + 1 = ?', 4, 4),
('5ba70a446154a', '5ba70b6355e26', '? + 3 = 6', 4, 5),
('5ba70a446154a', '5ba70b6356408', '2 + ? = 7', 4, 6),
('5ba70a446154a', '5ba70b6356afb', '3 + 2 = ?', 4, 7),
('5ba70a446154a', '5ba70b635728a', '1 + ? = 2', 4, 8),
('5ba70a446154a', '5ba70b6357b18', '? + 4 = 7', 4, 9),
('5ba70a446154a', '5ba70b6358417', '5 + 5 = ?', 4, 10),
('5ba70d9f4a76d', '5ba70f4939e4c', '2 - 2 = ?', 4, 1),
('5ba70d9f4a76d', '5ba70f493a5fd', '2 - ? = 1', 4, 2),
('5ba70d9f4a76d', '5ba70f493ab0b', '? - 3 = 2', 4, 3),
('5ba70d9f4a76d', '5ba70f493b161', '6 - 2 = ?', 4, 4),
('5ba70d9f4a76d', '5ba70f493b6b2', '5 - 1 = ?', 4, 5),
('5ba70d9f4a76d', '5ba70f493bce6', '? - 7 = 2', 4, 6),
('5ba70d9f4a76d', '5ba70f493c3ac', '3 - 3 = ?', 4, 7),
('5ba70d9f4a76d', '5ba70f493cc1f', '4 - ? = 3', 4, 8),
('5ba70d9f4a76d', '5ba70f493d45b', '? - 5 = 2', 4, 9),
('5ba70d9f4a76d', '5ba70f493dd6e', '10 - 5 = ?', 4, 10),
('5ba70f72a4dc4', '5ba710a49f781', '2  x 2  = ?', 4, 1),
('5ba70f72a4dc4', '5ba710a49fca9', '2 x 1 = ?', 4, 2),
('5ba70f72a4dc4', '5ba710a4a0110', '2 x ? = 6', 4, 3),
('5ba70f72a4dc4', '5ba710a4a062f', '3 x 1 = ?', 4, 4),
('5ba70f72a4dc4', '5ba710a4a0c0b', '3 x ? = 9', 4, 5),
('5ba70f72a4dc4', '5ba710a4a120e', '? x 3 = 6', 4, 6),
('5ba70f72a4dc4', '5ba710a4a1965', '2 x 5 = ?', 4, 7),
('5ba70f72a4dc4', '5ba710a4a20f6', '? x 1 = 1', 4, 8),
('5ba70f72a4dc4', '5ba710a4a291a', '5 x 1 = ?', 4, 9),
('5ba70f72a4dc4', '5ba710a4a323d', '5 x 5 = ? ', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5ba70a446154a', 'Addition', 1, 0, 10, 5, 'Additional', 'Addition', '2018-09-23 03:36:36'),
('5ba70d9f4a76d', 'Subtraction', 1, 0, 10, 5, 'Subtraction', 'Subtraction', '2018-09-23 03:50:55'),
('5ba70f72a4dc4', 'Multiplication ', 1, 0, 10, 5, 'Multiplication', 'Multiplication', '2018-09-23 03:58:42'),
('5ba71740c202c', 'Ee', 1, 0, 1, 5, 'abha', 'fba', '2018-09-23 04:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('omar@gmail.com', 3, '2018-09-20 01:04:41'),
('tim@gmail.com', 11, '2018-09-23 05:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Omar Marcial ', 'M', '12', 'omar@gmail.com', 12345, '827ccb0eea8a706c4c34a16891f84e7b'),
('Tim', 'M', '12', 'tim@gmail.com', 12345, '827ccb0eea8a706c4c34a16891f84e7b'),
('Wdwadaw', 'M', 'dddd', 'tom@gmail.com', 1222, '074fd28eff0f5adea071694061739e55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2025 at 02:46 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--
CREATE DATABASE IF NOT EXISTS `course_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `course_db`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `student_phone` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `address` text NOT NULL,
  `department` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `year` int NOT NULL,
  `preferred_time` time NOT NULL,
  `mode_of_study` text,
  `photo` varchar(255) DEFAULT NULL,
  `pdf_file` varchar(255) DEFAULT NULL,
  `registration_date` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `search` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `interest_level` int DEFAULT NULL,
  `favorite_color` varchar(7) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_email` (`student_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `student_name`, `student_email`, `student_phone`, `date_of_birth`, `gender`, `address`, `department`, `course_name`, `semester`, `year`, `preferred_time`, `mode_of_study`, `photo`, `pdf_file`, `registration_date`, `password`, `search`, `url`, `interest_level`, `favorite_color`, `created_at`) VALUES
(1, 'Bhoomika ', 'bhoomikakamannavar@gmail.com', '8618777511', '2025-11-06', 'Female', 'gadag', 'Commerce', 'BCA', '5th', 2025, '10:17:00', 'Offline', 'uploads/Screenshot (1).png', 'uploads/APFS_AcknowledgementPreview.pdf', '2025-11-06 18:18:00', 'bhoomi123', 'dancing', 'https://bhoomi.com', 6, '#000000', '2025-11-06 14:07:39');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

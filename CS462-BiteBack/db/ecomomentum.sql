-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 08:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomomentum`
--


--
-- Table structure for table `climate_actions`
--

CREATE TABLE `climate_actions` (
  `action_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action_description` text NOT NULL,
  `action_type` enum('event','pledge','other') DEFAULT 'other',
  `action_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `name`, `event_date`, `description`, `location`) VALUES
(9, 'iop', '2024-12-14', 'opkkluiiohjj', 'klp'),
(10, 'iop', '2024-12-14', 'opkkluiiohjj', 'klp'),
(11, 'rtyui', '2024-12-14', 'rtyui', 'hve'),
(12, 'rtyui', '2024-12-14', 'rtyui', 'hve'),
(13, 'patrionl', '2024-12-19', 'mnilkopl', 'oplikol'),
(14, 'Dorren', '2024-12-13', 'jiol', 'oplikol');

-- --------------------------------------------------------

--
-- Table structure for table `impact_content`
--

CREATE TABLE `impact_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `impact_content`
--

INSERT INTO `impact_content` (`id`, `title`, `description`) VALUES
(1, 'Mission', 'Our mission is to mobilise and empower millions of young activists globally to demand urgent climate action from world leaders.'),
(2, 'Achievements', 'We’ve successfully organised over 14,000 climate strikes across 7,500 cities and influenced policy changes in several countries.'),
(3, 'Impact', 'The movement has reached over 10 million participants worldwide, fostering awareness, resilience, and hope for a sustainable future.'),
(4, 'Future Goals', 'By 2030, we aim to mobilise 100 million individuals, with concrete changes in emissions policies globally.');

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `expertise` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- D
INSERT INTO `mentors` (`id`, `name`, `expertise`, `email`, `twitter`, `linkedin`, `description`, `created_at`) VALUES
(1, 'Dr. Sarah Green', 'Renewable Energy and Policy', 'sarah.green@hotmail.com', 'https://twitter.com/sarahgreen', 'https://linkedin.com/in/sarahgreen', 'Dr. Green has over 15 years of experience in climate policy and renewable energy solutions. She has guided multiple projects in Europe and Africa, focusing on clean energy transitions.', '2024-12-09 19:08:26'),
(2, 'Mr. James Eco', 'Sustainable Agriculture', 'james.eco@hotmail.com', 'https://twitter.com/jameseco', 'https://linkedin.com/in/jameseco', 'Mr. Eco specialises in sustainable farming practices and agroecology. With a decade of experience, he has mentored numerous activists in creating impactful agricultural reforms.', '2024-12-09 19:08:26'),
(3, 'Ms. Angela Woods', 'Urban Sustainability', 'angela.woods@hotmail.com', 'https://twitter.com/angelawoods', 'https://linkedin.com/in/angelawoods', 'Ms. Woods has worked extensively on urban greening projects, helping cities incorporate sustainable practices. Her mentorship is perfect for those passionate about eco-friendly urban planning.', '2024-12-09 19:08:26'),
(4, 'Prof. Richard Leaf', 'Environmental Economics', 'richard.leaf@hotmail.com', 'https://twitter.com/richardleaf', 'https://linkedin.com/in/richardleaf', 'Prof. Leaf is an economist who connects environmental preservation with economic benefits. He has advised governments on climate investments and eco-tourism development.', '2024-12-09 19:08:26');

-- --------------------------------------------------------



--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `rid` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`rid`, `role_name`) VALUES
(1, 'admin'),
(2, 'regular');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `profile_image` longtext DEFAULT NULL,
  `role_id` int(11) DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2025 at 09:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ABC', 'ABC', 'pending', 1, '2025-04-12 21:36:59', '2025-04-12 21:36:59'),
(2, 'ABC', 'ABC', 'pending', 1, '2025-04-12 21:38:46', '2025-04-12 21:38:46'),
(3, 'ABC', 'ABC', 'pending', 1, '2025-04-12 21:39:38', '2025-04-12 21:39:38'),
(4, 'ABC', 'ABC', 'pending', 1, '2025-04-12 21:39:40', '2025-04-12 21:39:40'),
(5, 'ABC', 'ABC', 'pending', 1, '2025-04-12 21:40:17', '2025-04-12 21:40:17'),
(6, 'ABC', 'ABC', 'pending', NULL, '2025-04-12 21:40:59', '2025-04-12 21:40:59'),
(7, 'ABC', 'ABC', 'pending', 1, '2025-04-12 21:41:26', '2025-04-12 21:41:26'),
(8, 'ABC', 'ABC', 'pending', 1, '2025-04-12 21:42:09', '2025-04-12 21:42:09'),
(9, 'ABC', 'ABC', 'pending', 1, '2025-04-12 21:42:31', '2025-04-12 21:42:31'),
(11, 'RAJAN', '123', 'pending', 1, '2025-04-12 22:13:18', '2025-04-12 22:13:18'),
(12, 'RAJAN', '123', 'pending', 1, '2025-04-12 22:15:24', '2025-04-12 22:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `status`, `user_id`, `project_id`, `created_at`, `updated_at`) VALUES
(2, 'RAJAN', '123', 'pending', 1, 8, '2025-04-12 22:24:50', '2025-04-12 22:24:50'),
(3, 'RAJAN', '123', 'pending', 1, 8, '2025-04-12 22:24:53', '2025-04-12 22:24:53'),
(4, 'RAJAN', '123', 'pending', 1, 8, '2025-04-12 22:24:55', '2025-04-12 22:24:55'),
(5, 'RAJAN', '123', 'pending', 1, 8, '2025-04-12 22:34:19', '2025-04-12 22:34:19'),
(6, 'RAJAN', '123', 'pending', 1, 8, '2025-04-12 22:34:37', '2025-04-12 22:34:37'),
(7, 'RAJAN', '123', 'pending', 1, 8, '2025-04-12 22:35:07', '2025-04-12 22:35:07'),
(8, 'RAJAN', '123', 'pending', 1, 8, '2025-04-12 23:53:15', '2025-04-12 23:53:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

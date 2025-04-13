-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2025 at 09:01 AM
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
-- Database: `db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `method`, `url`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'GET', 'http://127.0.0.1:8000/api/tasks', 1, '127.0.0.1', '2025-04-12 22:33:43', '2025-04-12 22:33:43'),
(2, 'GET', 'http://127.0.0.1:8000/api/tasks', 1, '127.0.0.1', '2025-04-12 22:33:43', '2025-04-12 22:33:43'),
(3, 'GET', 'http://127.0.0.1:8000/api/tasks', 1, '127.0.0.1', '2025-04-12 22:33:45', '2025-04-12 22:33:45'),
(4, 'GET', 'http://127.0.0.1:8000/api/tasks', 1, '127.0.0.1', '2025-04-12 22:33:45', '2025-04-12 22:33:45'),
(9, 'POST', 'http://127.0.0.1:8000/api/tasks', 1, '127.0.0.1', '2025-04-12 22:35:07', '2025-04-12 22:35:07'),
(10, 'POST', 'http://127.0.0.1:8000/api/tasks', 1, '127.0.0.1', '2025-04-12 23:53:16', '2025-04-12 23:53:16'),
(11, 'GET', 'http://127.0.0.1:8000/api/user/projects-tasks', NULL, '127.0.0.1', '2025-04-13 00:03:11', '2025-04-13 00:03:11'),
(12, 'GET', 'http://127.0.0.1:8000/api/user/projects-tasks', NULL, '127.0.0.1', '2025-04-13 00:04:43', '2025-04-13 00:04:43'),
(13, 'GET', 'http://127.0.0.1:8000/api/user/projects-tasks', NULL, '127.0.0.1', '2025-04-13 00:04:45', '2025-04-13 00:04:45'),
(14, 'GET', 'http://127.0.0.1:8000/api/user/projects-tasks', NULL, '127.0.0.1', '2025-04-13 00:06:52', '2025-04-13 00:06:52'),
(15, 'GET', 'http://127.0.0.1:8000/api/user/projects-tasks', NULL, '127.0.0.1', '2025-04-13 00:06:53', '2025-04-13 00:06:53'),
(16, 'GET', 'http://127.0.0.1:8000/api/user/projects-tasks', NULL, '127.0.0.1', '2025-04-13 00:08:37', '2025-04-13 00:08:37'),
(17, 'GET', 'http://127.0.0.1:8000/api/user/projects-tasks', NULL, '127.0.0.1', '2025-04-13 00:08:39', '2025-04-13 00:08:39'),
(18, 'POST', 'http://127.0.0.1:8000/api/login', 1, '127.0.0.1', '2025-04-13 00:09:02', '2025-04-13 00:09:02'),
(19, 'GET', 'http://127.0.0.1:8000/api/user/projects-tasks', 1, '127.0.0.1', '2025-04-13 00:09:37', '2025-04-13 00:09:37'),
(20, 'GET', 'http://127.0.0.1:8000/api/user/projects-tasks', 1, '127.0.0.1', '2025-04-13 00:10:01', '2025-04-13 00:10:01'),
(21, 'GET', 'http://127.0.0.1:8000/api/user/projects-tasks', 1, '127.0.0.1', '2025-04-13 00:13:15', '2025-04-13 00:13:15'),
(22, 'POST', 'http://127.0.0.1:8000/api/register', NULL, '127.0.0.1', '2025-04-13 00:18:48', '2025-04-13 00:18:48'),
(23, 'GET', 'http://127.0.0.1:8000/storage/img/Raj_13_04.jpg', NULL, '127.0.0.1', '2025-04-13 00:21:46', '2025-04-13 00:21:46'),
(24, 'POST', 'http://127.0.0.1:8000/api/register', NULL, '127.0.0.1', '2025-04-13 00:24:51', '2025-04-13 00:24:51'),
(25, 'POST', 'http://127.0.0.1:8000/api/register', NULL, '127.0.0.1', '2025-04-13 00:25:37', '2025-04-13 00:25:37'),
(26, 'POST', 'http://127.0.0.1:8000/api/register', NULL, '127.0.0.1', '2025-04-13 00:26:48', '2025-04-13 00:26:48'),
(27, 'POST', 'http://127.0.0.1:8000/api/register', NULL, '127.0.0.1', '2025-04-13 01:25:15', '2025-04-13 01:25:15'),
(28, 'POST', 'http://127.0.0.1:8000/api/register', NULL, '127.0.0.1', '2025-04-13 01:25:25', '2025-04-13 01:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_04_12_162718_create_users_table', 2),
(6, '2025_04_12_162832_create_activities_table', 3),
(7, '2025_04_12_162936_create_projects_table', 4),
(8, '2025_04_12_163034_create_tasks_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', '2a4f3373bda834b21cc0b883608cfb0f0b138ec16789801e5c7ac9df7d0677be', '[\"*\"]', NULL, '2025-04-12 21:28:01', '2025-04-12 21:28:01'),
(2, 'App\\Models\\User', 1, 'MyApp', '230660bbe84994600c0559a041ac05a17863af6852420fc225bc5f658c7ea4a9', '[\"*\"]', '2025-04-12 23:53:14', '2025-04-12 21:30:24', '2025-04-12 23:53:14'),
(3, 'App\\Models\\User', 1, 'MyApp', 'f7e805539ae8c256ecbc148f37a26168e23d808f2bcabff0b154133da5a86fe5', '[\"*\"]', '2025-04-13 00:13:15', '2025-04-13 00:09:01', '2025-04-13 00:13:15'),
(4, 'App\\Models\\User', 2, 'MyApp', '4bb5a6b10a591edd4e5d2b6d80082213c55bf67ae72641c2c6d5b6dcc2ed7783', '[\"*\"]', NULL, '2025-04-13 00:24:51', '2025-04-13 00:24:51'),
(5, 'App\\Models\\User', 3, 'MyApp', '7c731fd364e40dcdbc298c90ad1b00f37188e6ea49b26f78d2cd1cb8b8cb267c', '[\"*\"]', NULL, '2025-04-13 00:25:37', '2025-04-13 00:25:37'),
(6, 'App\\Models\\User', 4, 'MyApp', '424e125f948cfc800afb4ce71aae3796c9da25345c2678d9fc14293209190ec6', '[\"*\"]', NULL, '2025-04-13 01:25:25', '2025-04-13 01:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Rajan', '$2y$10$HHqpQd0Vdt/9IvILecguseMlxAfBJ6Z/hpaTNBQmwxs4NQujB8Z2m', 'rajanbutani1810@gmail.com', 'http://127.0.0.1:8000/storage/img/Raj_13_04.jpg', '2025-04-12 21:28:01', '2025-04-12 21:28:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

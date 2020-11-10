-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2020 at 10:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `map_location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(9, '2020_11_08_164804_change_users_table', 3),
(10, '2020_11_08_165114_create_companies_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('08432ce17e6d199daf901803a8dfa07b99c5c4f411e33b19f87568a796c73f8d0a62ec81d9ac3080', 2, 1, 'Personal Access Token', '[]', 0, '2020-11-09 18:29:46', '2020-11-09 18:29:46', '2021-11-09 22:29:46'),
('0f2e7fcfdea027293072235f0fa5fc920a8909646d18796a9b9735f4958867ddd4f8e19f8a217cb2', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 12:13:10', '2020-11-09 12:13:10', '2021-11-09 16:13:10'),
('11f154fdeb7abfd7b3e7e506e71595f6a55d95cdddd728b25f6bb1fd5ef932da6e6ec082a89854dc', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 13:07:08', '2020-11-09 13:07:08', '2021-11-09 17:07:08'),
('140f4915ec9f8b17dfcb7cd4b0cafe3b4ced57062b302011a2d1ca5d0adecfb1f638bf8ccfc7a934', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 13:22:43', '2020-11-09 13:22:43', '2021-11-09 17:22:43'),
('4117e3c41b1b20e158064a30ea1ffac2df9f9c5a35c647e21dc79532dd2996429810109411c2ce6b', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-08 13:06:40', '2020-11-08 13:06:40', '2021-11-08 17:06:40'),
('4cc41a309686bc57cbe7a1bb360b747c5a23dad10276ee6a821e65eae019370096cf1f5c652421b2', 2, 1, 'Personal Access Token', '[]', 0, '2020-11-09 18:08:41', '2020-11-09 18:08:41', '2021-11-09 22:08:41'),
('5c8650f3dc03fab7a9fed6cb502f84b4f17148bbe7196b066aba5f21123809f083c9a89c6cce5d10', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 12:37:39', '2020-11-09 12:37:39', '2021-11-09 16:37:39'),
('630a82578b0a7e5ad82eae9f0ef81d7981df04bbca73cf784767a0ab0760e7859809097c9b1c53b9', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 12:37:27', '2020-11-09 12:37:27', '2021-11-09 16:37:27'),
('6c1762f28aa885213db54d914fb2d09c192081a7b8308cb3bfe846e52d2b59cd83a161fe2fd48189', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 13:08:23', '2020-11-09 13:08:23', '2021-11-09 17:08:23'),
('7d2cb9143d695adc9afd0b52030f533b40b72bb1e8d8d3f6e8946f8b24001443ff1bfcfe11105517', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 12:16:19', '2020-11-09 12:16:19', '2021-11-09 16:16:19'),
('7e7b396a3dc0d99896781c4178679fbcef6f24efab9125d789a3ff6c2855d04e542e8aaca720e350', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 18:36:26', '2020-11-09 18:36:26', '2021-11-09 22:36:26'),
('818b8ad3d6cf305a78d7e45fb7b7119f5907db97abc6067cd7e2d8d5bc524a924ad16d62561aba87', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 12:37:40', '2020-11-09 12:37:40', '2021-11-09 16:37:40'),
('830a1ad00871d24dca7451450e571989f5856ff31312fb95a919612d7ed778bbfa0c4035322cdce4', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 18:02:24', '2020-11-09 18:02:24', '2021-11-09 22:02:24'),
('9171ec6aa6b742675e47ea6b7b29b8ba4a6aad76a6f61cd4f9484d8028295628dda27dce580c40cb', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 18:04:03', '2020-11-09 18:04:03', '2021-11-09 22:04:03'),
('9261e40276e3fd360627096d66db15a7e772f1a0f33abe6e01376bb44af47660cc1488aa5eb2eabd', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 12:37:36', '2020-11-09 12:37:36', '2021-11-09 16:37:36'),
('9f6a9df32427389661fab97f715e85000f8844af62974d5a7a5520c0205d1df76fd25817b0afb372', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 12:37:39', '2020-11-09 12:37:39', '2021-11-09 16:37:39'),
('b92f64529923e0dbad551b66ec8b20fe7b89afbbfec270fefd89e8339778968cf0e3cad1cfeff2fa', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 18:05:24', '2020-11-09 18:05:24', '2021-11-09 22:05:24'),
('ba40bb7e4a88e1a3754a2a6883f689e204b2272134f65fbfb3a88e58981c6675eb45e1949791bb5c', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 13:08:01', '2020-11-09 13:08:01', '2021-11-09 17:08:01'),
('cafaff14211409361c443be6c82eeb4d3972cbf62e52c05c4e635b23dffdc61de9b2633cafc49c55', 2, 1, 'Personal Access Token', '[]', 0, '2020-11-09 18:09:07', '2020-11-09 18:09:07', '2021-11-09 22:09:07'),
('cffc8bc23c21ad15eeb29ce08305e37aa7616ad89a752e429b315312237fe813e6de3d2884c581fa', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 12:37:42', '2020-11-09 12:37:42', '2021-11-09 16:37:42'),
('dd9ef29ecd0afd7f5371b352a22b89c53ec6be01a4ef45c1d4f8724527b3dc378c6fffc5a9b88f8c', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-08 12:47:25', '2020-11-08 12:47:25', '2021-11-08 16:47:25'),
('e36766798a5b70ad4a281dfaa92ec2dde29fe15e4ced663f49f6cfdb0d04cb70b9135d8947a5cabe', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 18:25:27', '2020-11-09 18:25:27', '2021-11-09 22:25:27'),
('f764a3c308c1e3559fd8e8c478f1b0478891837ae063c8af53e5cf267bd3d179e23260ee2b3468eb', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-09 12:06:57', '2020-11-09 12:06:57', '2021-11-09 16:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'M03SEr0l0gbMoVTkSr9WnKqVYP6jY6HmUM49Owy3', NULL, 'http://localhost', 1, 0, 0, '2020-11-08 12:27:59', '2020-11-08 12:27:59'),
(2, NULL, 'Laravel Password Grant Client', 'x82fDMX6fz5qfgfGTknSqZXo6VDLfqBI4z8aHIkG', 'users', 'http://localhost', 0, 1, 0, '2020-11-08 12:27:59', '2020-11-08 12:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-08 12:27:59', '2020-11-08 12:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`) VALUES
(1, 'ahmad', 'ahmad@gmail.com', NULL, '$2y$12$NKS8yzNpr1PBlSX/rG.IYOCV3rqcS9S9sgTDbHVFIxMF65d9PYjUC', NULL, NULL, NULL, 'admin'),
(2, 'CLient', 'client@gmail.com', NULL, '$2y$12$NKS8yzNpr1PBlSX/rG.IYOCV3rqcS9S9sgTDbHVFIxMF65d9PYjUC', NULL, NULL, NULL, 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

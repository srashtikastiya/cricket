-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 03:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_team` int(11) NOT NULL,
  `second_team` int(11) NOT NULL,
  `won_team` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `first_team`, `second_team`, `won_team`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, '2020-05-13 22:58:34', '2020-06-26 17:41:19', '2020-06-26 17:41:19'),
(2, 3, 4, 3, '2020-05-15 23:00:22', '2020-06-26 17:41:39', '2020-06-26 17:41:39'),
(3, 2, 3, 3, '2020-05-27 23:01:01', '2020-06-26 17:42:05', '2020-06-26 17:42:05'),
(4, 1, 2, 2, '2020-06-02 23:01:54', '2020-06-26 17:42:19', '2020-06-26 17:42:19'),
(5, 2, 4, 4, '2020-06-10 23:02:20', '2020-06-26 17:42:36', '2020-06-26 17:42:36'),
(6, 1, 4, 1, '2020-06-17 23:03:26', '2020-06-26 17:42:56', '2020-06-26 17:42:56');

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
(3, '2020_06_25_160633_create_teams_table', 1),
(4, '2020_06_25_161300_create_players_table', 2),
(5, '2020_06_25_161511_create_matches_table', 3),
(6, '2020_06_25_161649_create_points_table', 4);

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
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int(11) NOT NULL,
  `imageuri` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `player_jersey_number` int(11) NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matches` int(11) NOT NULL,
  `run` int(11) DEFAULT NULL,
  `highest_score` int(11) DEFAULT NULL,
  `avg` float DEFAULT NULL,
  `strike_rate` float DEFAULT NULL,
  `hundreds` int(11) DEFAULT NULL,
  `fifties` int(11) DEFAULT NULL,
  `total_wickets` int(11) DEFAULT NULL,
  `bowl_avg` float DEFAULT NULL,
  `econ` float DEFAULT NULL,
  `bowl_strike` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `first_name`, `last_name`, `team_id`, `imageuri`, `player_jersey_number`, `country`, `matches`, `run`, `highest_score`, `avg`, `strike_rate`, `hundreds`, `fifties`, `total_wickets`, `bowl_avg`, `econ`, `bowl_strike`, `created_at`, `updated_at`) VALUES
(1, 'Ms', 'Dhoni', 2, 'image/ms.png', 7, 'India', 190, 4432, 84, 42.2, 137.85, 0, 23, NULL, NULL, NULL, NULL, '2020-06-26 08:44:02', '2020-06-26 08:44:02'),
(2, 'Dwayne', 'Bravo', 2, 'image/db.png', 23, 'west indies', 134, 1483, 70, 23.17, 128.28, 0, 5, 147, 24.6, 8.39, 17.59, '2020-06-26 08:58:06', '2020-06-26 08:58:06'),
(3, 'Shreyas', 'Iyer', 3, 'image/si.png', 2, 'India', 62, 1681, 96, 30.56, 126.96, 0, 13, 0, NULL, NULL, NULL, '2020-06-26 09:06:40', '2020-06-26 09:06:40'),
(4, 'Hardik', 'Pandya', 1, 'image/hp.png', 5, 'India', 66, 1068, 91, 28.86, 154.78, 0, 3, 42, 31.26, 9.06, 20.69, '2020-06-26 09:19:10', '2020-06-26 09:19:10'),
(6, 'Mitchell', 'McClenaghan', 1, 'image/mm.png', 17, 'New Zealand', 56, 85, 20, 6.53, 121.42, 0, 0, 71, 25.39, 8.49, 17.94, '2020-06-26 15:38:29', '2020-06-26 15:38:29'),
(7, 'Rishabh', 'Pant', 3, 'image/rp.png', 4, 'India', 54, 1736, 128, 36.16, 162.69, 1, 11, 0, NULL, NULL, NULL, '2020-06-26 15:46:32', '2020-06-26 15:46:32'),
(8, 'David', 'Warner', 4, 'image/dw.png', 10, 'Australian', 126, 4706, 126, 43.17, 142.39, 4, 44, 0, NULL, NULL, NULL, '2020-06-26 15:51:52', '2020-06-26 15:51:53'),
(9, 'Bhuvneshwar', 'Kumar', 4, 'image/bk.png', 8, 'India', 117, 183, 24, 7.62, 95.31, 0, 0, 133, 23.71, 7.24, 19.63, '2020-06-26 15:57:17', '2020-06-26 15:57:17'),
(10, 'Rashid', 'Khan', 4, 'image/rk.png', 22, 'Afghanistan', 46, 104, 34, 8.66, 165.07, 0, 0, 55, 21.69, 6.55, 19.85, '2020-06-26 16:04:30', '2020-06-26 16:04:30'),
(11, 'Billy', 'Stanlake', 4, 'image/bs.png', 1, 'Australia', 6, 5, 5, NULL, 250, 0, 0, 7, 28.57, 8.33, 20.57, '2020-06-26 16:09:33', '2020-06-26 16:09:33'),
(12, 'Kane', 'Williamson', 4, 'image/kw.png', 15, 'New Zealand', 41, 1302, 89, 38.29, 135.06, 0, 12, 0, NULL, 7, NULL, '2020-06-26 16:15:30', '2020-06-26 16:15:30'),
(13, 'Harbhajan', 'Singh', 2, 'image/hs.png', 14, 'India', 160, 829, 64, 15.64, 138.16, 0, 1, 150, 26.44, 7.05, 22.49, '2020-06-26 16:20:41', '2020-06-26 16:20:41'),
(14, 'Ravindra', 'Jadeja', 2, 'image/rj.png', 2, 'India', 170, 1927, 48, 24.08, 122.58, 0, 0, 108, 29.18, 7.57, 23.1, '2020-06-26 16:25:04', '2020-06-26 16:25:04'),
(15, 'Shane', 'Watson', 2, 'image/sw.png', 33, 'Australia', 134, 3575, 117, 31.08, 139.53, 4, 19, 92, 29.15, 7.93, 22.05, '2020-06-26 16:29:06', '2020-06-26 16:29:06'),
(16, 'Kieron', 'Pollard', 1, 'image/kp.png', 19, 'west indies', 148, 2755, 83, 28.69, 146.77, 0, 14, 56, 31.6, 8.85, 21.41, '2020-06-26 16:34:54', '2020-06-26 16:34:54'),
(17, 'Jasprit', 'Bumrah', 1, 'image/jb.png', 9, 'India', 77, 35, 16, 11.66, 92.1, 0, 0, 82, 26.59, 7.55, 21.12, '2020-06-26 16:42:11', '2020-06-26 16:42:11'),
(18, 'Rahul', 'Chahar', 1, 'image/rc.png', 16, 'India', 16, 15, 10, 7.5, 115.38, 0, 0, 15, 24.4, 6.77, 21.6, '2020-06-26 16:46:41', '2020-06-26 16:46:41'),
(19, 'Kagiso', 'Rabada', 3, 'image/kr.png', 23, 'South Africa', 18, 69, 44, 11.5, 87.34, 0, 0, 31, 17.93, 8.13, 13.22, '2020-06-26 16:58:52', '2020-06-26 16:58:52'),
(20, 'Harshal', 'Patel', 3, 'image/hap.png', 3, 'India', 43, 107, 36, 9.72, 155.07, 0, 0, 43, 28.25, 8.72, 19.44, '2020-06-26 17:04:13', '2020-06-26 17:04:13'),
(21, 'Keemo', 'Paul', 3, 'image/kp.png', 8, 'West Indies', 8, 18, 7, 3.6, 75, 0, 0, 9, 26.33, 8.72, 18.11, '2020-06-26 17:10:53', '2020-06-26 17:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` int(11) NOT NULL,
  `played` int(11) NOT NULL,
  `won` int(11) NOT NULL,
  `loose` int(11) NOT NULL,
  `pts` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `team_id`, `played`, `won`, `loose`, `pts`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, 1, 4, '2020-06-26 17:34:54', '2020-06-26 17:34:54'),
(2, 2, 3, 1, 2, 2, '2020-06-26 17:37:36', '2020-06-26 17:37:36'),
(3, 3, 3, 2, 1, 4, '2020-06-26 17:38:37', '2020-06-26 17:38:37'),
(4, 4, 3, 1, 2, 2, '2020-06-26 17:39:22', '2020-06-26 17:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logouri` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_state` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `logouri`, `club_state`, `created_at`, `updated_at`) VALUES
(1, 'Mumbai Indians', 'image/mi.png', 'maharashtra', '2020-06-26 07:41:14', '2020-06-26 07:41:14'),
(2, 'Chennai Super Kings', 'image/csk.png', 'Tamilnadu', '2020-06-26 07:41:14', '2020-06-26 07:41:14'),
(3, 'Delhi Capitals', 'image/dc.png', 'Delhi', '2020-06-26 07:41:14', '2020-06-26 07:41:14'),
(4, 'Sunrisers Hyderabad', 'image/srh.png', 'Telangana', '2020-06-26 07:41:14', '2020-06-26 07:41:14');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

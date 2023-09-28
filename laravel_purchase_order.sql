-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 08:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_purchase_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1),
(8, '2019_10_31_152451_add_last_login_to_users', 1),
(9, '2023_09_19_043618_create_products_table', 2),
(10, '2023_09_19_070028_create_purchase_order_lines_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `product_code` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Voluptas officiis et nulla.', 'rerum', 100000, '2004-09-26 12:46:31', '2022-06-19 13:58:50'),
(2, 'Optio enim in ratione est.', 'dolores', 20000, '1973-01-26 14:00:52', '1986-01-04 10:01:03'),
(3, 'Illo molestiae ratione consequatur qui ducimus et qui.', 'molestiae', 15000, '1980-10-19 04:12:10', '1970-11-08 02:08:02'),
(4, 'Dolore voluptatibus animi et magnam et.', 'cum', 80000, '1993-03-20 22:04:17', '2007-03-05 19:33:05'),
(5, 'Quo temporibus a cum dolore.', 'et', 1541140, '2022-11-09 10:30:52', '2023-09-15 09:41:22'),
(6, 'Ut nihil nobis ut incidunt voluptatem.', 'similique', 757656000, '1993-04-10 03:31:35', '1972-10-29 00:02:35'),
(7, 'Beatae ut amet illo repellat est ab.', 'dolor', 282582, '2019-04-04 16:01:22', '2021-03-27 03:15:31'),
(8, 'Labore dolor rerum totam porro.', 'quo', 564972, '1980-07-07 19:53:13', '2020-02-26 04:34:05'),
(9, 'Aspernatur fugiat non consequatur consequatur quibusdam in quo.', 'ut', 85000, '1972-09-19 22:30:37', '1983-04-12 22:49:42'),
(10, 'Enim beatae quos consequuntur quia rem enim labore.', 'cumque', 950000, '2007-10-07 12:19:10', '2017-03-04 14:41:24'),
(11, 'Explicabo voluptates consequatur dolor ut alias non.', 'natus', 569798, '1984-01-15 18:32:11', '2011-10-09 23:32:14'),
(12, 'Sapiente et eos recusandae maxime non inventore natus.', 'eum', 741619, '1989-01-11 17:07:20', '1994-03-30 17:25:27'),
(13, 'Animi velit assumenda sed.', 'qui', 654393, '1984-02-20 14:23:48', '1982-02-07 12:42:00'),
(14, 'Voluptatem est fuga quisquam quia sed ut non.', 'numquam', 74981500, '1997-09-28 17:57:11', '1978-01-01 11:53:59'),
(15, 'Quod aspernatur qui ea veniam sit hic neque.', 'aut', 227696000, '1974-11-19 08:35:13', '2001-12-15 20:16:40'),
(16, 'Ipsum et molestias ipsum aperiam blanditiis.', 'ut', 100000, '1984-10-10 10:18:47', '1990-05-25 05:25:22'),
(17, 'Reiciendis et enim dolor laudantium odio dolor.', 'ratione', 1930040, '1974-02-21 19:24:19', '2012-09-13 06:20:39'),
(18, 'Aut amet reiciendis eveniet magnam molestiae maxime.', 'ut', 110000, '2005-12-22 23:26:43', '2008-03-22 00:55:02'),
(19, 'Corrupti suscipit cum exercitationem illum.', 'qui', 10000, '2007-12-01 14:09:30', '2012-04-26 05:18:03'),
(20, 'Sint id in et earum quos.', 'quis', 50000, '1996-10-08 10:18:37', '1975-03-21 05:35:02'),
(21, 'Velit tenetur ducimus rem pariatur nemo animi.', 'quis', 68570400, '1977-12-16 03:53:24', '1986-05-15 21:35:31'),
(22, 'Sint est et quis quisquam.', 'ipsum', 40000, '2010-07-15 04:14:48', '1982-06-21 09:01:57'),
(23, 'Et blanditiis mollitia quo.', 'quo', 19922800, '2023-05-08 00:19:44', '1975-06-18 06:44:04'),
(24, 'Amet et et autem nemo dolorum sint hic.', 'natus', 35000, '1979-06-10 11:52:49', '1985-12-28 08:30:39'),
(25, 'Nostrum eveniet ut aut molestiae dolore est magnam corporis.', 'quibusdam', 10720500, '2004-06-21 21:06:20', '1985-10-21 10:48:49'),
(26, 'Porro nihil id beatae.', 'aut', 8459720, '1970-03-22 21:06:02', '2010-10-21 18:59:07'),
(27, 'Alias fugit iure reiciendis illo at eum quasi.', 'non', 2984580, '2013-03-13 18:34:50', '1981-02-16 04:01:52'),
(28, 'Consequatur voluptatum cum provident voluptatum.', 'incidunt', 284530000, '1977-10-16 03:23:53', '2008-02-11 17:53:03'),
(29, 'Perspiciatis ea aliquid suscipit ut.', 'rerum', 100000, '2003-10-02 15:25:27', '2022-01-03 00:55:16'),
(30, 'Ipsam eveniet quis ea explicabo quibusdam.', 'ullam', 3169510, '2011-09-08 16:39:54', '1976-06-23 15:36:53'),
(31, 'Et ducimus quod quo non asperiores rerum.', 'et', 100000, '1982-01-16 17:57:52', '1985-02-11 05:49:46'),
(32, 'Culpa accusantium ut ducimus debitis et aliquid non.', 'temporibus', 100000, '2014-12-25 21:05:37', '1973-08-06 03:28:18'),
(33, 'Voluptas eveniet provident repellat necessitatibus nam quia quia.', 'dicta', 100000, '1977-08-26 23:43:02', '1980-08-13 22:02:35'),
(34, 'Quam sequi possimus incidunt blanditiis.', 'architecto', 100000, '1977-01-22 05:27:45', '2013-10-19 13:53:45'),
(35, 'Et ad est dicta sed natus odio quo.', 'et', 100000, '2001-06-20 18:07:19', '2020-02-13 12:32:48'),
(36, 'Beatae qui sit debitis omnis voluptas nihil.', 'voluptas', 100000, '2006-11-29 20:10:51', '1990-07-12 23:52:37'),
(37, 'Labore aliquid ut sed.', 'qui', 60999300, '2019-02-02 15:43:08', '2011-05-25 08:05:36'),
(38, 'Eveniet magni non facere blanditiis.', 'veniam', 100000, '2005-06-10 14:39:22', '2015-09-18 19:37:20'),
(39, 'Totam culpa quisquam dolorem et.', 'consequatur', 100000, '1991-04-10 20:39:44', '1994-05-28 12:27:11'),
(40, 'Dolorem recusandae et ea corrupti.', 'placeat', 100000, '2004-03-08 21:07:53', '1999-06-21 14:17:13'),
(41, 'Est eos recusandae ducimus ipsa.', 'nisi', 100000, '2020-04-22 04:21:37', '1990-03-10 20:33:05'),
(42, 'Quis sint sed soluta amet molestiae soluta.', 'veniam', 100000, '1980-08-19 00:00:44', '1995-09-18 11:41:59'),
(43, 'Doloremque consequatur nam a fugiat labore.', 'voluptas', 169673000, '2020-02-12 15:07:10', '1991-03-18 19:31:27'),
(44, 'Voluptatem sit temporibus aut eaque dolores voluptates.', 'totam', 100000, '2014-04-05 07:02:45', '1999-08-24 01:06:05'),
(45, 'Et dolor vero laborum vel.', 'quis', 1701980, '2008-08-25 00:07:43', '1989-11-17 03:29:21'),
(46, 'Nobis maxime sit esse laborum quisquam.', 'asperiores', 808765, '2011-11-06 05:28:33', '2020-05-08 15:58:25'),
(47, 'Aut voluptas eum similique alias omnis consequatur.', 'non', 4618770, '1987-09-30 18:32:04', '1999-07-31 16:56:31'),
(48, 'Harum praesentium voluptas qui sit doloremque illo.', 'et', 100000, '1985-02-08 02:49:00', '1974-01-21 17:06:24'),
(49, 'Non et impedit non ab suscipit.', 'nisi', 88007400, '1978-04-14 21:55:46', '2016-06-06 07:02:17'),
(50, 'Molestias esse nulla maxime dignissimos.', 'dolore', 100000, '1975-07-10 04:35:15', '2007-11-19 14:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `success_url` varchar(191) NOT NULL,
  `cancel_url` varchar(191) NOT NULL,
  `success_url_title` varchar(191) NOT NULL,
  `cancel_url_title` varchar(191) NOT NULL,
  `shop_url` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `validation_result` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_lines`
--

CREATE TABLE `purchase_order_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_lines`
--

INSERT INTO `purchase_order_lines` (`id`, `product_id`, `qty`, `price`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(6, 5, 4, 2000, 50, 4000, '2023-09-19 04:37:00', '2023-09-19 04:37:00'),
(7, 2, 2, 5000, 10, 9000, '2023-09-28 09:11:20', '2023-09-28 09:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `token` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` char(36) DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login`) VALUES
(1, 'Admin', 'admin.laravel@labs64.com', '$2y$10$VPesviPtDdrVYsVv3so6UuicJtRgrsXlWU0Pq7f3W2osJ2b5DHdQu', 1, 'ba7e2c0b-a510-48ad-9764-00da9966049d', 1, NULL, NULL, '2023-09-18 23:37:08', '2023-09-28 09:10:14', NULL, '2023-09-28 16:10:14'),
(2, 'Demo', 'demo.laravel@labs64.com', '$2y$10$OX65IWjuQ7Wxi4ZlvQ0zHOMQj.NUNIiST2FkFe9Qdyw6HMXr804Fi', 1, '208ebdd7-392f-417d-ba7f-607af8eeaab4', 1, NULL, NULL, '2023-09-18 23:37:08', '2023-09-18 23:37:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indexes for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indexes for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD CONSTRAINT `purchase_order_lines_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

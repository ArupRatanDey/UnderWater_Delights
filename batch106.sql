-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 07:43 AM
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
-- Database: `batch106`
--

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
(2, '2021_07_28_143154_create_products_table', 1),
(3, '2021_09_26_085701_create_orders_table', 1),
(4, '2021_09_26_085729_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `truck_no` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `truck_no`, `price`, `quantity`, `status`, `name`, `email`, `address`, `phone`, `payment_method`, `txn_id`, `created_at`, `updated_at`) VALUES
(1, 2, '21633342116', '500', '4', 'Confirmed', 'Abuzar Gifari', 'customer@gmail.com', 'Mirpur 14, Dhaka', '+8801783753653', 'Bkash', '57457587', '2021-10-04 04:08:36', '2021-10-04 04:48:05'),
(2, 2, '21633346855', '260', '2', 'Completed', 'Abuzar Gifari', 'customer@gmail.com', 'Mirpur 14, Dhaka', '+8801783753653', 'Bkash', 'rdgd67', '2021-10-04 05:27:35', '2021-10-04 05:27:57'),
(3, 2, '21633369147', '960', '7', 'Processing', 'Abuzar Gifari', 'customer@gmail.com', 'Mirpur 14, Dhaka', '+8801783753653', 'Bkash', 'yvchfhfj686', '2021-10-04 11:39:07', '2021-10-04 11:41:09'),
(4, 3, '31633407270', '1130', '6', 'Pending', 'Anowarul Islam Sujon', 'sujon@gmail.com', 'Dhanmondi-32, Dhaka', '+8801749993653', 'Bkash', 'tr57yjj9078gdhh', '2021-10-04 22:14:30', '2021-10-10 04:54:22'),
(5, 2, '21633857992', '200', '1', 'Pending', 'Abuzar Gifari', 'customer@gmail.com', 'Mirpur 14, Dhaka', '+8801783753653', 'Bkash', '57457587', '2021-10-10 03:26:32', '2021-10-10 03:26:32'),
(6, 2, '21633858599', '800', '4', 'Pending', 'Abuzar Gifari', 'customer@gmail.com', 'Mirpur 14, Dhaka', '+8801783753653', 'Bkash', 'yvchfhfj686', '2021-10-10 03:36:39', '2021-10-10 03:36:39'),
(7, 2, '21633858767', '800', '4', 'Pending', 'Abuzar Gifari', 'customer@gmail.com', 'Mirpur 14, Dhaka', '+8801783753653', 'Bkash', 'yvchfhfj686', '2021-10-10 03:39:27', '2021-10-10 03:39:27'),
(8, 2, '21633859226', '230', '2', 'Pending', 'Abuzar Gifari', 'customer@gmail.com', 'Mirpur 14, Dhaka', '+8801783753653', 'Bkash', 'tr57yjj9078gdhh', '2021-10-10 03:47:06', '2021-10-10 03:47:06'),
(9, 2, '21633861779', '200', '1', 'Pending', 'Abuzar Gifari', 'customer@gmail.com', 'Mirpur 14, Dhaka', '+8801783753653', 'Bkash', 'yvchfhfj686', '2021-10-10 04:29:39', '2021-10-10 04:29:39'),
(10, 2, '21633861813', '0', '0', 'Pending', 'Abuzar Gifari', 'customer@gmail.com', 'Mirpur 14, Dhaka', '+8801783753653', 'Bkash', '57457587', '2021-10-10 04:30:13', '2021-10-10 04:30:13'),
(11, 2, '21640024750', '450', '1', 'Pending', 'Abuzar Gifari', 'customer@gmail.com', 'Mirpur 14, Dhaka', '+8801783753653', 'Bkash', 'rdgd6789', '2021-12-20 12:25:50', '2021-12-20 12:25:50'),
(12, 5, '51642517998', '552', '1', 'Pending', 'Customer', 'customer@gmail.com', 'Dhaka, Bangladesh', '01783753653', 'Bkash', 'awf', '2022-01-18 08:59:58', '2022-01-18 08:59:58'),
(13, 5, '51642518017', '552', '1', 'Pending', 'Customer', 'customer@gmail.com', 'Dhaka, Bangladesh', '01783753653', 'Bkash', 'awfadfsf', '2022-01-18 09:00:17', '2022-01-18 09:00:17'),
(14, 5, '51642518079', '1682', '3', 'Processing', 'Customer', 'customer@gmail.com', 'Dhaka, Bangladesh', '01783753653', 'Bkash', 'eyriyoupi', '2022-01-18 09:01:19', '2022-01-18 10:03:51'),
(15, 5, '51642872298', '2001', '4', 'Pending', 'Customer', 'customer@gmail.com', 'Dhaka, Bangladesh', '01783753653', 'Bkash', 'tr57yjj9078gdhh', '2022-01-22 11:24:58', '2022-01-22 11:24:58'),
(16, 5, '51642872735', '552', '1', 'Pending', 'Customer', 'customer@gmail.com', 'Dhaka, Bangladesh', '01783753653', 'Bkash', 'sfsws', '2022-01-22 11:32:15', '2022-01-22 11:32:15'),
(17, 5, '51642872804', '1301', '2', 'Pending', 'Customer', 'customer@gmail.com', 'Dhaka, Bangladesh', '01783753653', 'Bkash', 'wtetyrutiy', '2022-01-22 11:33:24', '2022-01-22 11:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Jacket', 200, 1, '2021-10-04 04:08:36', '2021-10-04 04:08:36'),
(2, 1, 1, 'Washing machine', 100, 3, '2021-10-04 04:08:36', '2021-10-04 04:08:36'),
(3, 2, 3, 'Watch', 130, 2, '2021-10-04 05:27:35', '2021-10-04 05:27:35'),
(4, 3, 3, 'Watch', 130, 2, '2021-10-04 11:39:07', '2021-10-04 11:39:07'),
(5, 3, 2, 'Jacket', 200, 2, '2021-10-04 11:39:07', '2021-10-04 11:39:07'),
(6, 3, 1, 'Washing machine', 100, 3, '2021-10-04 11:39:07', '2021-10-04 11:39:07'),
(7, 4, 2, 'Jacket', 200, 5, '2021-10-04 22:14:30', '2021-10-04 22:14:30'),
(8, 4, 3, 'Watch', 130, 1, '2021-10-04 22:14:30', '2021-10-04 22:14:30'),
(9, 5, 2, 'Jacket', 200, 1, '2021-10-10 03:26:32', '2021-10-10 03:26:32'),
(10, 6, 2, 'Jacket', 200, 4, '2021-10-10 03:36:39', '2021-10-10 03:36:39'),
(11, 8, 1, 'Washing machine', 100, 1, '2021-10-10 03:47:06', '2021-10-10 03:47:06'),
(12, 8, 3, 'Watch', 130, 1, '2021-10-10 03:47:06', '2021-10-10 03:47:06'),
(13, 9, 2, 'Jacket', 200, 1, '2021-10-10 04:29:39', '2021-10-10 04:29:39'),
(14, 11, 5, 'OPPO Watch', 450, 1, '2021-12-20 12:25:50', '2021-12-20 12:25:50'),
(15, 12, 12, 'Nayeli Welch', 552, 1, '2022-01-18 08:59:58', '2022-01-18 08:59:58'),
(16, 14, 12, 'Nayeli Welch', 552, 1, '2022-01-18 09:01:19', '2022-01-18 09:01:19'),
(17, 14, 13, 'Athena Kirlin', 493, 1, '2022-01-18 09:01:19', '2022-01-18 09:01:19'),
(18, 14, 15, 'Mrs. Margret Jast DVM', 637, 1, '2022-01-18 09:01:19', '2022-01-18 09:01:19'),
(19, 15, 11, 'Demario Dickinson II', 291, 1, '2022-01-22 11:24:58', '2022-01-22 11:24:58'),
(20, 15, 15, 'Mrs. Margret Jast DVM', 637, 1, '2022-01-22 11:24:58', '2022-01-22 11:24:58'),
(21, 15, 19, 'German Orn', 521, 1, '2022-01-22 11:24:58', '2022-01-22 11:24:58'),
(22, 15, 12, 'Nayeli Welch', 552, 1, '2022-01-22 11:24:58', '2022-01-22 11:24:58'),
(23, 16, 12, 'Nayeli Welch', 552, 1, '2022-01-22 11:32:15', '2022-01-22 11:32:15'),
(24, 17, 18, 'Alyce Moen', 617, 1, '2022-01-22 11:33:24', '2022-01-22 11:33:24'),
(25, 17, 21, 'Carole Thiel', 684, 1, '2022-01-22 11:33:24', '2022-01-22 11:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `desc` text NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'test.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `desc`, `photo`, `created_at`, `updated_at`) VALUES
(11, 'Demario Dickinson II', 291, 'Jack-in-the-box, and up the chimney, has he?\'.', 'https://via.placeholder.com/640x480.png/00aa99?text=consequatur', '2022-01-18 08:40:35', '2022-01-18 08:40:35'),
(12, 'Nayeli Welch', 552, 'Improve his shining tail, And pour the waters of.', 'https://via.placeholder.com/640x480.png/004488?text=temporibus', '2022-01-18 08:40:35', '2022-01-18 08:40:35'),
(13, 'Athena Kirlin', 493, 'Alice. \'Off with his knuckles. It was high time.', 'https://via.placeholder.com/640x480.png/0022cc?text=laudantium', '2022-01-18 08:40:35', '2022-01-18 08:40:35'),
(14, 'Helene Zboncak MD', 902, 'Alice, and she had gone through that day. \'A.', 'https://via.placeholder.com/640x480.png/00cc00?text=aut', '2022-01-18 08:40:35', '2022-01-18 08:40:35'),
(15, 'Mrs. Margret Jast DVM', 637, 'She was looking down with wonder at the end of.', 'https://via.placeholder.com/640x480.png/001122?text=quia', '2022-01-18 08:40:35', '2022-01-18 08:40:35'),
(16, 'Gerry Kiehn', 308, 'The pepper when he sneezes: He only does it to.', 'https://via.placeholder.com/640x480.png/00cc44?text=odio', '2022-01-18 08:40:35', '2022-01-18 08:40:35'),
(17, 'Ward Bergstrom', 662, 'THAT. Then again--\"BEFORE SHE HAD THIS FIT--\".', 'https://via.placeholder.com/640x480.png/00ddbb?text=perspiciatis', '2022-01-18 08:40:35', '2022-01-18 08:40:35'),
(18, 'Alyce Moen', 617, 'So you see, so many tea-things are put out.', 'https://via.placeholder.com/640x480.png/005544?text=dicta', '2022-01-18 08:40:35', '2022-01-18 08:40:35'),
(19, 'German Orn', 521, 'SOMETHING interesting is sure to make out which.', 'https://via.placeholder.com/640x480.png/00ff44?text=ipsa', '2022-01-18 08:40:35', '2022-01-18 08:40:35'),
(20, 'Jaren Wunsch', 794, 'It was so much at first, but, after watching it.', 'https://via.placeholder.com/640x480.png/007777?text=natus', '2022-01-18 08:40:35', '2022-01-18 08:40:35'),
(21, 'Carole Thiel', 684, 'Very soon the Rabbit was still in sight, and no.', 'https://via.placeholder.com/640x480.png/00cc66?text=pariatur', '2022-01-22 11:23:51', '2022-01-22 11:23:51'),
(22, 'Manley O\'Conner III', 853, 'Mock Turtle; \'but it sounds uncommon nonsense.\'.', 'https://via.placeholder.com/640x480.png/0044aa?text=et', '2022-01-22 11:23:51', '2022-01-22 11:23:51'),
(23, 'Chanel Stanton', 176, 'She felt that there was not an encouraging tone.', 'https://via.placeholder.com/640x480.png/009900?text=eaque', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(24, 'Hershel Durgan II', 200, 'ME,\' but nevertheless she uncorked it and put.', 'https://via.placeholder.com/640x480.png/00bbcc?text=eum', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(25, 'Prof. Sandra Bogan', 837, 'However, at last the Gryphon as if he doesn\'t.', 'https://via.placeholder.com/640x480.png/00dd11?text=qui', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(26, 'Mrs. Ursula Wuckert Sr.', 504, 'I didn\'t,\' said Alice: \'besides, that\'s not a.', 'https://via.placeholder.com/640x480.png/000066?text=ipsa', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(27, 'Antonia Donnelly', 219, 'March Hare interrupted, yawning. \'I\'m getting.', 'https://via.placeholder.com/640x480.png/0055ff?text=doloremque', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(28, 'Mr. Theodore Berge Sr.', 316, 'Alice heard the Queen was in confusion, getting.', 'https://via.placeholder.com/640x480.png/001188?text=neque', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(29, 'Prof. Duncan Wehner I', 930, 'Alice was more hopeless than ever: she sat still.', 'https://via.placeholder.com/640x480.png/00dd33?text=voluptatum', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(30, 'Prof. Alexandre D\'Amore', 237, 'ME,\' but nevertheless she uncorked it and put it.', 'https://via.placeholder.com/640x480.png/0044ff?text=sed', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(31, 'Ora Friesen', 537, 'I\'d only been the right house, because the.', 'https://via.placeholder.com/640x480.png/0011bb?text=error', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(32, 'Leta Prohaska', 694, 'White Rabbit, jumping up in spite of all her.', 'https://via.placeholder.com/640x480.png/00dd88?text=nemo', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(33, 'Edd Schneider', 860, 'CHAPTER II. The Pool of Tears \'Curiouser and.', 'https://via.placeholder.com/640x480.png/007722?text=consequatur', '2022-01-22 11:43:19', '2022-01-22 11:43:19'),
(34, 'Felicia Runolfsdottir Jr.', 522, 'Queen. First came ten soldiers carrying clubs.', 'https://via.placeholder.com/640x480.png/0066cc?text=vel', '2022-01-22 11:43:19', '2022-01-22 11:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT 'photo.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `role`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'Admin', 'admin@gmail.com', '$2y$10$GLiigeC50PIKJOQsNo3Mj.B7j2AGmdvxcIrcUk12aNGXj02Zsxh8.', 'Dhaka, Bangladesh', '01783753653', 'admin', 'photo.png', '2022-01-18 08:25:25', '2022-01-18 08:25:25'),
(5, 'Customer', 'customer@gmail.com', '$2y$10$7urIdqU12QY4Qlfly2OyH.cNZtaMuPfoMqCSmqQSmX4CeDiWYLj86', 'Dhaka, Bangladesh', '01783753653', 'customer', 'user_1642516910.jpg', '2022-01-18 08:27:00', '2022-01-18 08:41:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

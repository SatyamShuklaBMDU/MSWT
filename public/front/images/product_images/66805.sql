-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2024 at 04:32 AM
-- Server version: 5.7.44-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mediclear`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `for`, `banner`, `created_at`, `updated_at`) VALUES
(4, 'vertigo', 'banner1704710558.preview.png', '2024-01-08 17:42:38', '2024-01-08 17:42:38'),
(6, 'vertigo', 'banner1704712487.Capture.png', '2024-01-08 18:14:47', '2024-01-08 18:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `mobile_no`, `email`, `city`, `status`, `created_at`, `updated_at`) VALUES
(1, 'C company', 9625222640, 'Sanjayadav448@gmail.com', 'Morna Sector 35 Noida', 'Active', '2023-12-12 01:01:51', '2023-12-13 02:29:10'),
(4, 'Mohit', 9599796587, 'bmdu.mohit@gmail.com', 'Noida', 'Active', '2023-12-16 18:04:27', '2024-01-17 15:22:51'),
(5, 'rohit', 9667371301, 'mohitkumargarg529@gmail.com', 'Noida', 'Active', '2024-02-02 19:35:23', '2024-02-02 19:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `user_id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, '12', 'Demo123', 'namaste g', '2023-12-12 08:11:49', '2023-12-12 08:11:49'),
(4, 'imsanjayadav', 'duddux', 'cifcjc', '2023-12-21 19:13:46', '2023-12-21 19:13:46'),
(5, 'imsanjayadav', 'fgjccj', 'cjjcj', '2023-12-21 19:15:12', '2023-12-21 19:15:12'),
(6, 'CUST000007', 'Hello', 'Namaste', '2023-12-25 17:10:04', '2023-12-25 17:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `corporatebatchs`
--

CREATE TABLE `corporatebatchs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `test` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `corporatebatchs`
--

INSERT INTO `corporatebatchs` (`id`, `batch_no`, `payment_status`, `test`, `company_id`, `created_at`, `updated_at`) VALUES
(3, '8976', '0', '15', 4, '2024-01-01 20:19:16', '2024-01-02 13:42:00'),
(4, '8976', '0', '18', 1, '2024-01-01 20:20:03', '2024-01-01 20:20:03'),
(5, '99999', '0', '19', 1, '2024-01-02 13:40:21', '2024-01-02 13:40:21'),
(6, '12121', '0', '12', 4, '2024-01-02 14:16:42', '2024-01-02 14:16:42'),
(7, '8976', '0', '13', 1, '2024-01-03 20:23:07', '2024-01-03 20:23:08'),
(8, 'dcfecfe46565', '0', '11', 1, '2024-01-04 13:07:16', '2024-01-04 13:07:40'),
(9, '11111111', '0', '12', 1, '2024-01-09 13:29:12', '2024-01-09 13:29:39'),
(10, '123456', '0', '11', 1, '2024-01-09 15:57:50', '2024-01-09 15:57:50'),
(11, '12345', '0', '20', 4, '2024-01-24 19:00:15', '2024-01-24 19:00:15'),
(12, '12', '0', '12', 4, '2024-01-30 18:49:01', '2024-01-30 18:49:01'),
(13, '13', '0', '13', 5, '2024-02-02 19:36:06', '2024-02-02 19:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `corporate_i_d_s`
--

CREATE TABLE `corporate_i_d_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `corporate_i_d_s`
--

INSERT INTO `corporate_i_d_s` (`id`, `created_at`, `updated_at`, `name`, `mobile_no`, `email`, `status`, `user_id`, `password`) VALUES
(9, '2023-12-27 17:04:35', '2024-01-17 15:06:05', 'Sanjay Singhaniya', '9625222640', 'sachin1234@gmail.com', 'Active', 'Sachin123', '$2y$10$oaZr8G5mSyGuMgEACESnTuI9eSuTUBajfeP9TJ2zp9BC6SuTrscn6'),
(10, '2023-12-27 18:30:33', '2024-01-04 13:04:49', 'Sanjay Yadav', '9625222888', 'demo@gmail.com', 'Active', 'imsanjayadav', '$2y$10$14zth3u7VQMBRO3xnbwZ0u4CI2DwUGUJT362fySsSDZjgG3PuY8Ei'),
(12, '2024-01-09 15:51:04', '2024-01-09 15:51:04', 'Ajay', '7428702988', 'health@mediclear.in', 'Active', 'Demo@gmail.com', '$2y$10$HgpP9W1RiDQV0q/0rJdAoerTOaSexF.ZI/7W181.3K8Iy0/EFR6F.'),
(13, '2024-01-09 15:55:30', '2024-01-17 15:04:56', 'Neha', '9599796587', 'mohitkumargarg529@gmail.com', 'Active', 'mohitkumar', '$2y$10$q6nfxudkv2n6E4SHTwg1huVPGIKK7g3xvFurbUYZrVnBh6.3wIhKy'),
(14, '2024-01-24 18:57:43', '2024-01-24 18:57:43', 'neelam', '7017902832', 'demo1@gmail.com', 'Active', '12345', '$2y$10$ObQImD5U9XK65g9scStESOpqAf994OSS7XHSH/82q2vpVzraoJoPy');

-- --------------------------------------------------------

--
-- Table structure for table `customerbatchs`
--

CREATE TABLE `customerbatchs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `test` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customerbatchs`
--

INSERT INTO `customerbatchs` (`id`, `batch_no`, `payment_status`, `test`, `customer_id`, `created_at`, `updated_at`) VALUES
(17, '89876', '0', '50', 18, '2023-12-23 06:53:38', '2023-12-28 18:47:09'),
(22, '8767865', '0', '13', 9, '2023-12-29 21:28:49', '2023-12-29 21:28:49'),
(23, '895446', '0', '19', 10, '2023-12-30 20:42:33', '2023-12-30 20:42:33'),
(24, '989987Qwee', '0', '17', 9, '2023-12-30 20:47:38', '2023-12-30 20:47:38'),
(25, '786', '0', '50', 35, '2024-01-03 18:21:49', '2024-01-03 18:21:49'),
(26, 'tgtvt', '0', '2', 9, '2024-01-04 13:09:51', '2024-01-04 13:09:51'),
(27, '99999', '0', '40', 9, '2024-01-09 13:27:19', '2024-01-09 13:28:03'),
(28, '123456', '0', '98', 9, '2024-01-09 16:57:12', '2024-01-09 16:57:12'),
(29, '1111', '0', '18', 38, '2024-01-10 21:25:59', '2024-01-10 21:25:59'),
(30, '8888', '0', '10', 39, '2024-01-15 14:25:15', '2024-01-15 14:25:15'),
(31, '125487', '0', '5', 9, '2024-02-02 14:23:07', '2024-02-02 14:23:07'),
(32, '125489', '0', '2', 49, '2024-02-02 14:26:06', '2024-02-02 14:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_profile_image_name` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` bigint(20) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin_code` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `customer_profile_image_name`, `email`, `password`, `remember_token`, `user_id`, `mobile_no`, `status`, `state`, `city`, `pin_code`, `address`, `created_at`, `updated_at`) VALUES
(9, 'Sanjay', NULL, 'sanjayadav444@gmail.com', '$2y$10$1/kRYxKsN8FBHuKdNLVxUuSydQjXj67AyfrIDZbay58VL3s2dD56S', NULL, 'CUST000007', 9625222610, 'Active', NULL, NULL, NULL, 'Morna', '2023-12-12 11:38:15', '2023-12-13 07:18:27'),
(10, 'Sanjay', '1704201993.image_cropper_1704201987772.jpg', 'sanjayadav448@gmail.com', '$2y$10$ofLT9xxYNrKhBsTplNWkze57oIo2mEC67M2H0RPVNZs2dlZWWFfJS', NULL, 'CUST000005', 9625222640, 'Active', 'ghsgs', NULL, NULL, 'Morna', '2023-12-16 17:49:24', '2024-01-03 17:55:31'),
(11, 'Saurabh', NULL, 'baghel12@gmail.com', '$2y$10$46InojC1EGdvXIj1ZD0F8Ox.4FXCqBfzU6w/O4nji00HcwGzASute', NULL, 'CUST000002', 8979034037, 'Active', NULL, NULL, NULL, '12dasad', '2023-12-19 16:53:43', '2023-12-19 16:53:43'),
(12, 'sa', NULL, 'saurabhbmdu94@gmail.com', '$2y$10$TK8qfA/QJ6mt1gWBRjC4YuZ33U2wWAZU7UFhmPW9gfx.NUldj/PH.', NULL, 'CUST000003', 8979034039, 'Active', NULL, NULL, NULL, 'sf', '2023-12-19 17:40:23', '2023-12-19 17:40:23'),
(13, 'sa', NULL, 'saurabhbmdu4@gmail.com', '$2y$10$OKVHopp6X6cbPsFWJZXlmenu3ovIUvQ8A6nEhfh/bvTOzA8cMKk12', NULL, 'CUST000004', 8979034038, 'Active', NULL, NULL, NULL, 'sf', '2023-12-19 17:40:50', '2023-12-19 17:40:50'),
(14, 'sa', NULL, 'saurabhbmd4@gmail.com', '$2y$10$skxtZmY.TpTAWLXP.04uSem1JQgVGbgD/0HdR1y/Bkagm.VH0ahyC', NULL, 'CUST000005', 8979034036, 'Active', NULL, NULL, NULL, 'sf', '2023-12-19 17:41:20', '2023-12-19 17:41:20'),
(15, 'sg', NULL, 'saurabhbmdu54@gmail.com', '$2y$10$c2fIFIet/vkbIsNLlJkl6OoXpV1Jyi2bo.BvOuCeggF5hJvu/eham', NULL, 'CUST000006', 8979034032, 'Active', NULL, NULL, NULL, 'gs', '2023-12-19 17:44:11', '2023-12-19 17:44:11'),
(16, 'sg', NULL, 'saurabhbdu4@gmail.com', '$2y$10$Si8.BqyrnEyxkcXhycdJuO8kcutcX5i/8womx//qiDAB274k3kDvm', NULL, 'CUST000007', 8979034030, 'Active', NULL, NULL, NULL, 'gs', '2023-12-19 17:47:53', '2023-12-19 17:47:53'),
(17, 'sa', NULL, 'saurabbmdu94@gmail.com', '$2y$10$aOVT2Bu.D8HJGKvIzN2Z7eE8jfVQba6bTkHiWmzsD.W7z0m1bf2y2', NULL, 'CUST000008', 1234564891, 'Active', NULL, NULL, NULL, 'gsg', '2023-12-19 17:50:47', '2023-12-19 17:50:47'),
(18, 'Kumbhakaran', '1703941534.pokeymon2.png', 'ravna@gmail.com', '$2y$10$ygLQmwNTHJKLUoflgr6nAOZzJztvARECN4sSiZ0qXbrex.Oq6ELBm', NULL, 'CUST000009', 8967431561, 'Active', 'Utterpradesh', 'Agra', '22023', 'n-87787 hindaclfgsh', '2023-12-19 18:12:21', '2023-12-30 20:05:34'),
(19, 'Saurabh', NULL, 'baghel12@gmail.co', '$2y$10$Rhb1z5afRRRcCSAZ6HaKee2t3Tl7A/ULETgaEFZUscY.jxGvCvQti', NULL, 'CUST000010', 8179034036, 'Active', NULL, NULL, NULL, '12dasad', '2023-12-19 18:13:37', '2023-12-19 18:13:37'),
(20, 'saurabh', NULL, 'baghel23saurabh@gmail.com', '$2y$10$5ZYTaasowYcC2oNJpXogd.cKbzKBjlfVSQIF90cUEjZ7fuH6sFyrG', NULL, 'CUST000011', 8979034041, 'Active', NULL, NULL, NULL, 'fsgsvsh', '2023-12-19 21:12:16', '2023-12-19 21:12:16'),
(21, 'sgsh', NULL, 'baghelsauabh687@gmail.com', '$2y$10$LzXCY3FkRmaoiiN6BHeWSuDGGi36xSySpl6EIRyNlqWr2MZkHOKkC', NULL, 'CUST000012', 9876543210, 'Active', NULL, NULL, NULL, 'ga', '2023-12-19 22:59:05', '2023-12-19 22:59:05'),
(22, 'saurabh', NULL, 'baghelaurabh687@gmail.com', '$2y$10$3j5BQ4BD4GQ.zD0BOuZFsegxxX5D5V5yISXQ5X1vpesw5N/HxAq9O', NULL, 'CUST000013', 9548863929, 'Active', NULL, NULL, NULL, 'qwerty12', '2023-12-20 11:45:54', '2023-12-20 11:45:54'),
(23, 'sa', NULL, 'baghelsaurabh687@gmail.com', '$2y$10$Kqu5cGRNZyl6gyvrzbwPZeenSIRwJRCW9guvzM.vRonszqcppwzLm', NULL, 'CUST000014', 8979034013, 'Active', NULL, NULL, NULL, 'sa', '2023-12-20 12:05:34', '2023-12-20 12:05:34'),
(24, 'aff', NULL, 'saubhbmdu94@gmail.com', '$2y$10$HZzjRMbK/nj7CB0CO6hCAe2ET/wwxo5ohWzRJ7LzPCzk8P1fxMe/6', NULL, 'CUST000015', 8979034017, 'Active', NULL, NULL, NULL, 'sgsg', '2023-12-20 12:08:39', '2023-12-20 12:08:39'),
(25, 'Mohit Kumar', NULL, 'Mohitkumargarg529@gmail.com', '$2y$10$7B8zuii.UusasHrbVfDFh.4uRrvEGuoh9x9sB2kfXrWxY3CTNGb3a', NULL, 'CUST000016', 9599796587, 'Active', NULL, NULL, NULL, 'Noida', '2023-12-20 12:10:10', '2023-12-28 16:41:10'),
(26, 'Kumbhakaran', NULL, 'ravnatyty@gmail.com', '$2y$10$u62CM.bjxapH0NKC9HJnEOl1HH2WCTTPxKrvXaMKLK.hFpB2S8ite', NULL, 'CUST000017', 8967431563, 'Active', NULL, NULL, NULL, 'n-87787 hindaclfgsh', '2023-12-20 12:31:09', '2023-12-20 12:31:09'),
(27, 'Saurabh', NULL, 'baghe12@gmail.com', '$2y$10$cm4oF3KzmiZAfPduOYws2eGqgc3Wn9oL/EuHlc1LtlxyahSmY63bi', NULL, 'CUST000018', 8979034137, 'Active', NULL, NULL, NULL, '12dasad', '2023-12-21 15:54:14', '2023-12-21 15:54:14'),
(28, 'ghnb', NULL, 'hhjh@gmail.com', '$2y$10$FdZ6dcw83y/Gyv6pxbdHkOt9d6rg55nKwf2GgcdLENJ50lqFswIJi', NULL, 'CUST000019', 8999812222, 'Active', NULL, NULL, NULL, 'ghhhh', '2023-12-21 16:51:42', '2023-12-21 16:51:42'),
(29, 'saurabh', NULL, 'baghel@gmail.com', '$2y$10$YJM96jNjtcOQIzdafg1eWeocja3meLZsnOo0mJOyb82VdmRqECjm6', NULL, 'CUST000020', 9548863939, 'Active', NULL, NULL, NULL, 'ghaziabad', '2023-12-21 17:11:38', '2023-12-21 17:11:38'),
(30, 'saurabh', NULL, 'bhel23saurabh@gmail.com', '$2y$10$X034WO2NF3h4T6XYaPXvrum3Y1dViYtBiWSEA.KeyVc6gN4jq2cm2', NULL, 'CUST000021', 8979034034, 'Active', NULL, NULL, NULL, 'Ghar', '2023-12-21 17:14:22', '2023-12-21 17:14:22'),
(31, 'saurabh', NULL, 'bhel2saurabh@gmail.com', '$2y$10$TJQm5pRJFkYDs4A8hb6amOUsUgxB.wsAe3fdgsVqfXuN0lJotDtOC', NULL, 'CUST000022', 8972034034, 'Active', NULL, NULL, NULL, 'Ghar', '2023-12-21 17:14:51', '2023-12-21 17:14:51'),
(32, 'saurabh', NULL, 'im12@gmail.com', '$2y$10$SvYqL24efek/Vm7jS.kBWeMLFz5pb6CIQ5jLYBJ1w0xeFKJ0rTmEi', NULL, 'CUST000023', 9048560295, 'Active', NULL, NULL, NULL, 'ghanta', '2023-12-21 19:42:08', '2023-12-21 19:42:08'),
(33, 'sau', NULL, 'baglsaurabh687@gmail.com', '$2y$10$PLxvoMjCF5pNn5jszj89gexPII7MfuLD3sLfDUOa1yvc5hNcUxeJq', NULL, 'CUST000024', 1234554321, 'Active', NULL, NULL, NULL, 'gsgswh', '2023-12-30 22:22:21', '2023-12-30 22:22:21'),
(34, 'sde1', '1704202953.image_cropper_1704202944653.jpg', 'bl23saurabh@gmail.com', '$2y$10$H731q9AYesumTSNt1UEsoeYg1St35pFPvoE8iNWsHt92UuVW7yv9S', NULL, 'CUST000025', 9876543211, 'Pending', 'Uttarakhand', 'Bazpur', '3455336', 'hsha', '2024-01-02 01:32:32', '2024-01-02 21:20:29'),
(35, 's1', '1704778710.image_cropper_1704778704127.jpg', 'bagsabh687@gmail.com', '$2y$10$1e.6bq0zz9a8DmMYYb3Vgu1bPp9SPPIeHst7XWJT/EDc9rxx6zqqG', NULL, 'CUST000026', 1111122222, 'Active', 'Chhattisgarh', 'Bagbahara', '201045', 'aggs', '2024-01-02 21:23:56', '2024-01-13 23:33:26'),
(36, 'Ajay', NULL, 'health@mediclear.in', '$2y$10$k6eakkwTu4C2At3c2hOfteXU1pfkW4gy13kL8OHFLSRrjnPV0Yi0y', NULL, 'CUST000027', 7428702988, 'Pending', NULL, NULL, NULL, 'Vashundhara', '2024-01-09 12:13:25', '2024-01-09 12:13:25'),
(38, 'sanjay', NULL, 'sanjayadav4@gmail.com', '$2y$10$cttWnNy4jljqnKSVIrCaa.ZYaH03lI3fJCiOGw2l0jib.NRajZnBa', NULL, 'CUST000028', 9625222642, 'Active', NULL, NULL, NULL, 'morna', '2024-01-10 21:24:49', '2024-01-10 21:24:49'),
(39, 'Ashish Singh', NULL, 'as3542541@gmail.com', '$2y$10$itjSeKvqq1xwzzF2/yzBNeUKWc91PILMmXl85nTCAFIEx2Y77xcue', NULL, 'CUST000029', 8077556234, 'Active', NULL, NULL, NULL, 'N-556 hindlaco colony', '2024-01-15 14:18:08', '2024-01-15 14:18:08'),
(40, 'Rohan Kaushal', NULL, 'rohankaushal010@gmail.com', '$2y$10$d5/DusZ1pdnMIy7JaIjeuubsHUQvYzZgiTB/ejXoLDipQ.wcBkpjW', NULL, 'CUST000030', 9161928414, 'Active', NULL, NULL, NULL, 'vasundhara', '2024-01-16 15:30:36', '2024-01-16 15:30:36'),
(41, 'Ajay', NULL, 'ajayarya2907@gmail.com', '$2y$10$wDgMV8ueduHz2gDqmaQ6F.ytlHAi4khhW/V83kK3g3RTvoKh39uaO', NULL, 'CUST000031', 9643456957, 'Active', NULL, NULL, NULL, 'Noida', '2024-01-17 16:47:58', '2024-01-17 16:47:58'),
(42, 'Nisha', NULL, 'gangwarnisha21@gmail.com', '$2y$10$25nC4nv5CooUlqJYVvI3JeS9gJOLZrltBdWoJAaflS5tPlTvMWyoG', NULL, 'CUST000032', 9548863119, 'Active', 'Uttarakhand', 'Rudrapur', '204215', 'Rkgit', '2024-01-17 19:39:12', '2024-01-17 19:40:21'),
(43, 'neha', NULL, 'amritm7355@gmail.com', '$2y$10$Tlx7yW6I8i.lt9vUy7D1yego6g4OSagABBoHlzAhAVrw5FS3b7WdW', NULL, 'CUST000033', 7355050564, 'Active', NULL, NULL, NULL, 'b 41 Noida sector 63', '2024-01-24 14:29:50', '2024-01-24 14:29:50'),
(44, 'satyam shukla', NULL, 'shuklasatyam23056@gmail.com', '$2y$10$c1bJQoYJaN48ycKS4XzGCe0KM3wf2jfrkvxNOGrbmJIB2QJIUixkG', NULL, 'CUST000034', 6393805011, 'Active', NULL, NULL, NULL, 'sector 62 noida', '2024-01-30 12:54:59', '2024-01-30 12:54:59'),
(45, 'Balawant kumar', NULL, 'balawantra42@gmail.com', '$2y$10$Qy0mVuUsma77AOv7KvJYtuniNwJN8OgVNTEsJHU0/rs2Wz8nyFN7K', NULL, 'CUST000035', 9161470607, 'Active', NULL, NULL, NULL, 'pune', '2024-01-30 12:55:45', '2024-01-30 12:55:45'),
(46, 'munish', '1706855854.image_cropper_1706855842910.jpg', 'munishrai.bmdu@gmail.com', '$2y$10$j0ideAxgArq5MmPPkJqexu.e3isLYQzAyTMZ6P4.l9qspDxtW5BzC', NULL, 'CUST000036', 8707012220, 'Active', NULL, 'noida', '221108', 'noida', '2024-01-30 13:04:24', '2024-02-02 13:38:09'),
(47, 'munish', NULL, 'munshrai41983@gmail.com', '$2y$10$VejH6dfIVJnbJoziZogvT.MrpQDysGdptQfUWJJLEcFb/BOzWD1K.', NULL, 'CUST000037', 8707012221, 'Active', NULL, NULL, NULL, 'noida', '2024-02-01 16:37:54', '2024-02-01 16:37:54'),
(48, 'munish', NULL, 'munish@gmail.com', '$2y$10$InAahqBUbPi0qysZf67LEO9z/7QWznFJpBw8IOh5K0/FyUVZ7j0yW', NULL, 'CUST000038', 8707012210, 'Active', NULL, NULL, NULL, 'noida', '2024-02-01 16:41:59', '2024-02-01 16:41:59'),
(49, 'satyam', NULL, 'satyam@gmail.com', '$2y$10$Q33SqJLuEDIZ4vG.yxMPIeB7w4Fmw.XQQwgsoLhiqwDlOJzKRTPE2', NULL, 'CUST000039', 9598527326, 'Active', NULL, NULL, NULL, 'ittygkskg', '2024-02-02 14:19:08', '2024-02-02 14:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` bigint(20) NOT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seal_of_doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `post`, `email`, `mobile_no`, `sign`, `seal_of_doctor`, `registration_number`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Aswani', 'MD', 'aswani@gmail.com', 8649867341, '1704113706.doctor.jpg', NULL, NULL, 'Active', '2024-01-01 19:55:06', '2024-01-01 19:55:06'),
(4, 'BAnu Pratap', 'MD', 'bhanu@gmail.com', 9076453212, '1704177879.pokeymon1.png', NULL, NULL, 'Active', '2024-01-02 13:44:39', '2024-01-02 13:44:39');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(3, 'imsanjayadav', 'Hello', 'Namaste', '2023-12-13 01:29:31', '2023-12-13 01:29:31'),
(4, 'imsanjayadav', 'Medical', 'Medical procuration', '2023-12-21 17:38:17', '2023-12-21 17:38:17'),
(5, 'imsanjayadav', 'Medical', 'Medical procuration', '2023-12-21 17:39:06', '2023-12-21 17:39:06'),
(6, 'imsanjayadav', 'Medical', 'Medical procuration', '2023-12-21 18:42:14', '2023-12-21 18:42:14'),
(7, 'imsanjayadav', 'Medical', NULL, '2023-12-21 18:55:11', '2023-12-21 18:55:11'),
(8, 'imsanjayadav', 'g', NULL, '2023-12-21 18:55:34', '2023-12-21 18:55:34'),
(9, 'imsanjayadav', 'fggf', NULL, '2023-12-21 19:05:54', '2023-12-21 19:05:54'),
(10, 'imsanjayadav', 'huu', 'ffhxhssh', '2023-12-21 19:13:18', '2023-12-21 19:13:18'),
(11, 'imsanjayadav', 'duudyd', 'cjcc', '2023-12-21 19:14:58', '2023-12-21 19:14:58'),
(12, 'imsanjayadav', 'fssgsg', 'atwtwwv', '2023-12-21 19:41:11', '2023-12-21 19:41:11'),
(13, 'CUST000018', 'gfdggg', NULL, '2023-12-21 20:06:32', '2023-12-21 20:06:32'),
(14, 'imsanjayadav', 'yrthu', NULL, '2023-12-21 20:15:37', '2023-12-21 20:15:37'),
(15, 'imsanjayadav', 'dfgg', 'cgbff', '2023-12-21 20:15:52', '2023-12-21 20:15:52'),
(16, 'CUST000016', 'hsjjsbs', 'jjsjej', '2023-12-21 20:43:47', '2023-12-21 20:43:47'),
(17, 'CUST000016', 'jjejwj', 'jjsjwj', '2023-12-21 20:43:58', '2023-12-21 20:43:58'),
(18, 'CUST000032', 'hfugg', 'hcuccuucu', '2024-01-17 19:41:51', '2024-01-17 19:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `medical_details`
--

CREATE TABLE `medical_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctorid` bigint(255) UNSIGNED DEFAULT NULL,
  `doctor_final_result` enum('1','0','-1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_submit_date` date DEFAULT NULL,
  `cusmerbatchdetails_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cusmerbatchdetails_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `certification_number` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumer_status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `consumer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumer_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumer_mob_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumer_dob` date DEFAULT NULL,
  `consumer_addhar_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumer_profile_image_name` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumer_sign_image_name` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','others') COLLATE utf8mb4_unicode_ci DEFAULT 'others',
  `light_hedness_or_swim_sensation_in_the_head` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `blacking_out_or_loss_of_consciousness` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `object_spinning_or_turning_around_you` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `nausea_or_vomiting` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `tingling_in_your_fingers_toes_around_your_mouth` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `does_changes_of_position_make_you_dizzy` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `when_you_are_dizzy_must_support_yourself_when_standing` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `post_mediacal_history_disease` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `defficulting_in_hearing` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `noise_in_ears` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `fullness_or_stuffiness_in_your_ears` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `tendency_to_fall` longtext COLLATE utf8mb4_unicode_ci,
  `loss_of_balance_while_walking` longtext COLLATE utf8mb4_unicode_ci,
  `complaint` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medical_details`
--

INSERT INTO `medical_details` (`id`, `doctorid`, `doctor_final_result`, `doctor_submit_date`, `cusmerbatchdetails_id`, `cusmerbatchdetails_type`, `parent_id`, `test_type_id`, `certification_number`, `consumer_status`, `consumer_name`, `consumer_location`, `consumer_mob_no`, `consumer_dob`, `consumer_addhar_number`, `consumer_profile_image_name`, `consumer_sign_image_name`, `gender`, `light_hedness_or_swim_sensation_in_the_head`, `blacking_out_or_loss_of_consciousness`, `object_spinning_or_turning_around_you`, `nausea_or_vomiting`, `tingling_in_your_fingers_toes_around_your_mouth`, `does_changes_of_position_make_you_dizzy`, `when_you_are_dizzy_must_support_yourself_when_standing`, `post_mediacal_history_disease`, `defficulting_in_hearing`, `noise_in_ears`, `fullness_or_stuffiness_in_your_ears`, `tendency_to_fall`, `loss_of_balance_while_walking`, `complaint`, `created_at`, `updated_at`) VALUES
(21, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', '8979034037', NULL, '89790340312', '1703852403.image_cropper_1703846141141.jpg', NULL, 'male', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', '\"[1, 3, 4]\"', '\"[1, 2, 1, 2, 3, 3, 5, 6]\"', '\"[]\"', '\"[]\"', NULL, NULL, NULL, '2023-12-29 19:20:03', '2023-12-29 19:20:03'),
(22, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', '8979034037', NULL, '89790340312', '1703852830.image_cropper_1703846141141.jpg', NULL, 'male', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', '\"[1, 3, 4]\"', '\"[1, 2, 1, 2, 3, 3, 5, 6]\"', '\"[]\"', '\"[]\"', NULL, NULL, NULL, '2023-12-29 19:27:10', '2023-12-29 19:27:10'),
(23, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', '8979034037', NULL, '89790340312', '1703852838.image_cropper_1703846141141.jpg', NULL, 'male', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', '\"[1, 3, 4]\"', '\"[1, 2, 1, 2, 3, 3, 5, 6]\"', '\"[]\"', '\"[]\"', NULL, NULL, NULL, '2023-12-29 19:27:18', '2023-12-29 19:27:18'),
(24, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1703854232.image_cropper_1703854222751.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', 'null', NULL, NULL, '\"null\"', '2023-12-29 19:50:32', '2023-12-29 19:50:32'),
(25, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1703854541.image_cropper_1703854222751.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', 'null', NULL, NULL, '\"null\"', '2023-12-29 19:55:41', '2023-12-29 19:55:41'),
(26, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1703854594.image_cropper_1703854586632.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', 'null', NULL, NULL, '\"null\"', '2023-12-29 19:56:34', '2023-12-29 19:56:34'),
(27, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1703854633.image_cropper_1703854586632.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', 'null', NULL, NULL, '\"null\"', '2023-12-29 19:57:13', '2023-12-29 19:57:13'),
(28, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1703855061.image_cropper_1703855052276.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-29 20:04:21', '2023-12-29 20:04:21'),
(29, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', '8979034037', '2000-12-21', '897903403712', '1703855220.image_cropper_1703855052276.jpg', NULL, 'male', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '\"[1]\"', '\"[6, 1]\"', '\"[3]\"', '\"[]\"', NULL, NULL, '\"\\\"[4, 3]\\\"\"', '2023-12-29 20:07:00', '2023-12-29 20:07:00'),
(30, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1703855402.image_cropper_1703855052276.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[1, 3]\"', '\"[1]\"', '\"[1]\"', '\"[1]\"', NULL, NULL, '\"\\\"[2]\\\"\"', '2023-12-29 20:10:02', '2023-12-29 20:10:02'),
(31, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', '8979034037', '2000-12-21', '901869464721', '1703856710.image_cropper_1703856656240.jpg', NULL, 'male', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '\"[1]\"', '\"[1]\"', '\"[]\"', 'null', NULL, NULL, '\"null\"', '2023-12-29 20:31:50', '2023-12-29 20:31:50'),
(32, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', '8979034037', '2000-12-21', '901869464721', '1703856724.image_cropper_1703856656240.jpg', NULL, 'male', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '\"[1]\"', '\"[1]\"', '\"[]\"', 'null', NULL, NULL, '\"null\"', '2023-12-29 20:32:04', '2023-12-29 20:32:04'),
(33, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', '8979034037', '2000-12-21', '901869464721', '1703856827.image_cropper_1703856656240.jpg', NULL, 'male', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '\"[1]\"', '\"[1]\"', '\"[]\"', '\"[1]\"', NULL, NULL, '\"\\\"[2, 1]\\\"\"', '2023-12-29 20:33:47', '2023-12-29 20:33:47'),
(34, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, '1703857193.image_cropper_1703856656240.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-29 20:39:53', '2023-12-29 20:39:53'),
(35, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', '8970034037', '2000-12-21', '901869464721', '1703857339.image_cropper_1703856656240.jpg', NULL, 'male', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', '\"[1, 5]\"', '\"[1, 2, 5]\"', '\"[1, 3]\"', '\"[1, 2]\"', NULL, NULL, '\"\\\"[2, 3, 4]\\\"\"', '2023-12-29 20:42:19', '2023-12-29 20:42:19'),
(36, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'Noida', '8979034037', '2001-12-21', '897903403711', '1703857482.image_cropper_1703857441851.jpg', NULL, 'male', 'yes', NULL, 'yes', NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', 'null', NULL, NULL, '\"null\"', '2023-12-29 20:44:42', '2023-12-29 20:44:42'),
(37, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'Noida', '8979034037', '2001-12-21', '897903403711', '1703857491.image_cropper_1703857441851.jpg', NULL, 'male', 'yes', NULL, 'yes', NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', 'null', NULL, NULL, '\"null\"', '2023-12-29 20:44:51', '2023-12-29 20:44:51'),
(38, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'Noida', '8979034037', '2001-12-21', '897903403711', '1703857498.image_cropper_1703857441851.jpg', NULL, 'male', 'yes', NULL, 'yes', NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', 'null', NULL, NULL, '\"null\"', '2023-12-29 20:44:58', '2023-12-29 20:44:58'),
(39, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'Noida', '8979034037', '2001-12-21', '897903403711', '1703857557.image_cropper_1703857441851.jpg', NULL, 'male', 'yes', NULL, 'yes', NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[6]\\\"\"', '2023-12-29 20:45:57', '2023-12-29 20:45:57'),
(40, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', NULL, '2000-12-21', '897903403712', '1703914363.image_cropper_1703914355622.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-30 12:32:43', '2023-12-30 12:32:43'),
(41, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'Noida', NULL, '2000-12-21', '901869474621', '1703914589.image_cropper_1703914355622.jpg', NULL, 'male', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 'yes', '\"[1]\"', '\"[1]\"', '\"[3]\"', '\"[2]\"', NULL, NULL, '\"\\\"[1, 3]\\\"\"', '2023-12-30 12:36:29', '2023-12-30 12:36:29'),
(42, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', NULL, '2000-12-21', '901869464721', '1703914799.image_cropper_1703914355622.jpg', NULL, 'male', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'yes', '\"[1]\"', '\"[1]\"', '\"[]\"', '\"[1]\"', NULL, NULL, NULL, '2023-12-30 12:39:59', '2023-12-30 12:39:59'),
(43, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', NULL, '2000-12-21', '901869464721', '1703915193.image_cropper_1703914355622.jpg', NULL, 'male', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', '\"[1]\"', '\"[1]\"', '\"[1]\"', '\"[3]\"', NULL, NULL, '\"\\\"[2, 1]\\\"\"', '2023-12-30 12:46:33', '2023-12-30 12:46:33'),
(44, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'Noida', NULL, '2000-12-21', '901865355457', '1703916882.image_cropper_1703916760963.jpg', NULL, 'male', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', '\"[1]\"', '\"[1]\"', '\"[1]\"', '\"[1]\"', NULL, NULL, '\"\\\"[1, 3]\\\"\"', '2023-12-30 13:14:42', '2023-12-30 13:14:42'),
(45, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'noida', NULL, '2000-11-21', '901847462111', '1703918071.image_cropper_1703918065227.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-30 13:34:31', '2023-12-30 13:34:31'),
(46, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'noida', NULL, '2011-12-11', '784151313164', '1703918758.image_cropper_1703918065227.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-30 13:45:58', '2023-12-30 13:45:58'),
(47, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saurabh', 'Noida', NULL, '2000-12-21', '897904545511', '1703921369.image_cropper_1703921363334.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-30 14:29:29', '2023-12-30 14:29:29'),
(48, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'noida', NULL, '2000-12-12', '901221311654', '1703923520.image_cropper_1703923486146.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-30 15:05:20', '2023-12-30 15:05:20'),
(49, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'noida', NULL, '2000-12-21', '901869464772', '1703923642.image_cropper_1703923636203.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-30 15:07:22', '2023-12-30 15:07:22'),
(50, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Saur', 'hcufuufuf', NULL, '2000-05-12', '897903412588', '1703924132.image_cropper_1703923636203.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-30 15:15:32', '2023-12-30 15:15:32'),
(51, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'sadd', 'chtfghh', NULL, '2000-12-12', '455485254288', '1703924712.image_cropper_1703924706608.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-30 15:25:12', '2023-12-30 15:25:12'),
(52, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabh', 'Noida', NULL, '2000-12-21', '897903403745', '1703928313.image_cropper_1703928301995.jpg', NULL, 'male', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '\"[1]\"', '\"[1]\"', '\"[1]\"', '\"[1]\"', NULL, NULL, '\"\\\"[3, 4, 6]\\\"\"', '2023-12-30 16:25:13', '2023-12-30 16:25:13'),
(53, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'saurabhg', 'dfds', NULL, '2100-12-12', '124455774570', '1703929110.image_cropper_1703928301995.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-30 16:38:30', '2023-12-30 16:38:30'),
(54, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, 'CN170444149020689', '1', 'dfdff', 'fgfff', NULL, '2100-12-21', '555555725353', '1703930013.image_cropper_1703928301995.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"\\\"[]\\\"\"', '2023-12-30 16:53:33', '2024-01-05 14:58:10'),
(55, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Sachin Ramesh Tendulkar', 'Mumbai', '7866516734', '1998-06-12', '908765486745', '1703930236.pokeymon2.png', NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '[\"1\",\"2\"]', '[\"3\",\"2\"]', '[\"3\",\"3\"]', '[\"2\",\"3\"]', NULL, NULL, '\"[\\\"4\\\",\\\"5\\\"]\"', '2023-12-30 16:57:16', '2023-12-30 16:57:16'),
(56, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', NULL, 1, NULL, '0', 'Sachin Ramesh Tendulkar', 'Mumbai', '7866516734', '1998-06-12', '908765486745', '1703931757.pokeymon2.png', NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '[\"1\",\"2\"]', '[\"3\",\"2\"]', '[\"3\",\"3\"]', '[\"2\",\"3\"]', NULL, NULL, '\"[\\\"4\\\",\\\"5\\\"]\"', '2023-12-30 17:22:37', '2023-12-30 17:22:37'),
(57, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', 'CUST000009', 1, NULL, '0', 'Sachin Ramesh Tendulkar', 'Mumbai', '7866516734', '1998-06-12', '908765486745', NULL, NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '[\"1\",\"2\"]', '[\"3\",\"2\"]', '[\"3\",\"3\"]', '[\"2\",\"3\"]', NULL, NULL, NULL, '2024-01-02 19:03:44', '2024-01-02 19:03:44'),
(62, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', 'CUST000009', 1, NULL, '0', 'Sachin Ramesh Tendulkar', 'Mumbai', '7866516734', '1998-06-12', '908765486745', NULL, NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '[\"1\",\"2\"]', '[\"3\",\"2\"]', '[\"3\",\"3\"]', '[\"2\",\"3\"]', NULL, NULL, NULL, '2024-01-03 16:56:32', '2024-01-03 16:56:32'),
(63, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170444748176512', '1', 'saurabhg', 'Noida', NULL, '2000-11-11', '455484848484', '1704280955.image_cropper_1704280468460.jpg', NULL, 'male', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', '\"[1, 2]\"', '\"[2, 1]\"', '\"[1]\"', '\"[2]\"', NULL, NULL, NULL, '2024-01-03 18:22:35', '2024-01-05 16:38:01'),
(64, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170444764351562', '1', 'sukhi', 'ffdff', NULL, '2000-05-12', '455558855658', '1704281058.image_cropper_1704281046971.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, NULL, '2024-01-03 18:24:18', '2024-01-08 19:52:24'),
(65, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170444789261664', '1', 'Dracula', 'Noida', NULL, '2000-12-21', '125454848484', '1704281780.image_cropper_1704281745978.jpg', NULL, 'male', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '\"[1]\"', '\"[1]\"', '\"[3]\"', '\"[1]\"', NULL, NULL, NULL, '2024-01-03 18:36:20', '2024-01-05 16:44:52'),
(66, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170444799540439', '1', 'saurabh', 'fhgg', NULL, '2000-10-12', '445555555555', '1704282025.image_cropper_1704281902939.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, NULL, '2024-01-03 18:40:25', '2024-01-05 16:46:35'),
(68, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170444883589708', '1', 'saurabh', 'ghhh', NULL, '2000-11-22', '155505868386', '1704282267.image_cropper_1704282262865.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, NULL, '2024-01-03 18:44:27', '2024-01-08 19:16:30'),
(69, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170444957167188', '1', 'Thor', 'noida', NULL, '2000-12-01', '215154545455', '1704282613.image_cropper_1704282593462.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, NULL, '2024-01-03 18:50:13', '2024-01-05 17:12:51'),
(70, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170444987256034', '1', 'Ironman', 'Noida', NULL, '2000-01-21', '124887878787', '1704282701.image_cropper_1704282663354.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, NULL, '2024-01-03 18:51:41', '2024-01-05 17:17:52'),
(71, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170445423065777', '1', 'Ms Dhoni', 'Ranchi', NULL, '2008-12-11', '245484484838', '1704282972.image_cropper_1704282962884.jpg', '1704282972.image_cropper_1704282951255.jpg', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, NULL, '2024-01-03 18:56:12', '2024-01-05 18:30:30'),
(72, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170445396516119', '1', 'Papa', 'Noida', NULL, '2000-12-10', '424548484884', '1704283832.image_cropper_1704283643593.jpg', NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, NULL, '2024-01-03 19:10:32', '2024-01-08 17:31:03'),
(73, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', 'CUST000009', 1, NULL, '0', 'Sachin Ramesh Tendulkar', 'Mumbai', '7866516734', '1998-06-12', '908765486745', '1704351879.pokeymon2.png', NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '[\"1\",\"2\"]', '[\"3\",\"2\"]', '[\"3\",\"3\"]', '[\"2\",\"3\"]', NULL, NULL, NULL, '2024-01-04 14:04:39', '2024-01-04 14:04:39'),
(74, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', 'CUST000009', 1, NULL, '0', 'Sachin Ramesh Tendulkar', 'Mumbai', '7866516734', '1998-06-12', '908765486745', '1704352051.pokeymon2.png', NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '[\"1\",\"2\"]', '[\"3\",\"2\"]', '[\"3\",\"3\"]', '[\"2\",\"3\"]', NULL, NULL, NULL, '2024-01-04 14:07:31', '2024-01-04 14:07:31'),
(94, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170469525255009', '1', NULL, NULL, NULL, NULL, NULL, '1704432232.image_cropper_1704432178500.jpg', '1704432232.image_cropper_1704432212309.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', 'null', NULL, NULL, '\"[1,2,3]\"', '2024-01-05 12:23:52', '2024-01-11 20:08:55'),
(95, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170470929463414', '1', NULL, NULL, NULL, NULL, NULL, '1704695458.image_cropper_1704695379491.jpg', '1704695458.image_cropper_1704695425661.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', 'null', NULL, NULL, 'null', '2024-01-08 13:30:58', '2024-01-11 19:26:52'),
(96, NULL, NULL, NULL, 5, 'App\\Models\\CorporateBatch', 'imsanjayadav', 1, 'CN170478239528502', '1', 'mohit', 'Noida', '9454645445', '2000-12-11', '454545454545', '1704782342.image_cropper_1704782217190.jpg', '1704782342.image_cropper_1704782323100.jpg', 'male', 'yes', NULL, NULL, NULL, 'yes', 'no', NULL, '\"[1, 2]\"', '\"[1, 2]\"', '\"[1]\"', '\"[]\"', NULL, NULL, '\"[1, 4]\"', '2024-01-09 13:39:02', '2024-01-09 13:39:55'),
(97, NULL, NULL, NULL, 10, 'App\\Models\\CorporateBatch', 'mohitkumar', 1, 'CN170479085323828', '1', 'Ajay', 'Noida', '963456957', '2000-07-29', '123456789012', NULL, NULL, 'male', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '\"[]\"', '\"[2]\"', '\"[]\"', '\"[2]\"', NULL, NULL, '\"[]\"', '2024-01-09 15:59:42', '2024-01-09 16:00:53'),
(98, NULL, NULL, NULL, 10, 'App\\Models\\CorporateBatch', 'mohitkumar', 1, NULL, '0', 'Ajay', 'noida', '9643456957', '2000-07-29', '123456789123', NULL, NULL, 'male', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '\"[]\"', '\"[2]\"', '\"[1]\"', '\"[2]\"', NULL, NULL, '\"[]\"', '2024-01-09 17:11:38', '2024-01-09 17:11:38'),
(99, NULL, NULL, NULL, 10, 'App\\Models\\CorporateBatch', 'mohitkumar', 1, NULL, '0', 'ajay', 'noida', '7838541649', '1998-04-22', '815753488795', NULL, NULL, 'male', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '\"[]\"', '\"[2]\"', '\"[]\"', '\"[2]\"', NULL, NULL, '\"[]\"', '2024-01-09 17:20:36', '2024-01-09 17:20:36'),
(100, NULL, NULL, NULL, 10, 'App\\Models\\CorporateBatch', 'mohitkumar', 1, NULL, '0', 'ajay', 'noida', '9643456957', '2000-07-29', '123456789123', NULL, NULL, 'male', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '\"[]\"', '\"[2]\"', '\"[]\"', '\"[2]\"', NULL, NULL, '\"[]\"', '2024-01-09 17:21:33', '2024-01-09 17:21:33'),
(101, NULL, NULL, NULL, 10, 'App\\Models\\CorporateBatch', 'mohitkumar', 1, NULL, '0', 'Ajay', 'Noida', '9643456957', '2000-07-29', '123456789123', NULL, NULL, 'male', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '\"[]\"', '\"[2]\"', '\"[]\"', '\"[2]\"', NULL, NULL, '\"[]\"', '2024-01-09 17:30:31', '2024-01-09 17:30:31'),
(102, NULL, NULL, NULL, 10, 'App\\Models\\CorporateBatch', 'mohitkumar', 1, 'CN170479653552980', '1', 'Ajay', 'Noida', '9643456957', '2000-07-29', '123456789012', NULL, NULL, 'male', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '\"[]\"', '\"[2]\"', '\"[]\"', '\"[2]\"', NULL, NULL, '\"[]\"', '2024-01-09 17:34:46', '2024-01-09 17:35:35'),
(103, NULL, NULL, NULL, 10, 'App\\Models\\CorporateBatch', 'mohitkumar', 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"[]\"', '2024-01-09 20:42:48', '2024-01-09 20:42:48'),
(104, NULL, NULL, NULL, 10, 'App\\Models\\CorporateBatch', 'mohitkumar', 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', NULL, NULL, '\"[]\"', '2024-01-09 20:42:48', '2024-01-09 20:42:48'),
(105, 4, '1', '2024-01-17', 29, 'App\\Models\\CustomerBatch', 'CUST000028', 1, 'CN170489684570168', '1', 'sanjay yadav', 'noida', NULL, '2023-01-01', '548757575755', NULL, NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '\"[1, 3]\"', '\"[1, 3, 6]\"', '\"[1, 4]\"', '\"[1]\"', NULL, NULL, '\"[1, 3]\"', '2024-01-10 21:26:39', '2024-01-17 17:51:17'),
(106, NULL, NULL, NULL, 29, 'App\\Models\\CustomerBatch', 'CUST000028', 1, 'CN170489776061203', '1', 'mohit', 'noida', '9599796578', '1994-09-25', '155448848484', NULL, NULL, 'male', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', '\"[1, 3, 4, 2]\"', '\"[1, 3, 6, 6, 5]\"', '\"[1, 6, 3, 5]\"', '\"[2, 3, 1]\"', NULL, NULL, '\"[1, 3, 5]\"', '2024-01-10 21:41:41', '2024-01-10 21:42:40'),
(107, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', 'CUST000009', 1, NULL, '0', 'Sachin Ramesh Tendulkar', 'Mumbai', '7866516734', '1998-06-12', '908765486745', '1704898193.pokeymon2.png', NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '\"[1,4]\"', '\"[3,3]\"', '\"[1,2]\"', '\"[1,2,3]\"', NULL, NULL, '\"[1,2,3,4]\"', '2024-01-10 21:49:53', '2024-01-10 21:49:53'),
(108, NULL, NULL, NULL, 25, 'App\\Models\\CustomerBatch', 'CUST000026', 1, 'CN170494964023909', '1', NULL, NULL, NULL, NULL, NULL, '1704949116.image_cropper_1704949100979.jpg', '1704949116.image_cropper_1704949050625.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', 'null', NULL, NULL, 'null', '2024-01-11 11:58:36', '2024-01-11 19:11:17'),
(113, NULL, NULL, NULL, 17, 'App\\Models\\CustomerBatch', 'CUST000009', 1, NULL, '0', 'Sachin Ramesh Tendulkar', 'Mumbai', '7866516734', '1998-06-12', '908765486745', '1704979871.pokeymon2.png', NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '\"[1,4]\"', '\"[3,3]\"', '\"[1,2,]\"', '\"[1,2,3]\"', 'null', 'null', '\"[1,2,3,4]\"', '2024-01-11 20:31:11', '2024-01-11 20:31:11'),
(115, NULL, NULL, NULL, 29, 'App\\Models\\CustomerBatch', 'CUST000028', 1, 'CN170512414237021', '1', 'ab', 'noida', '9625222640', '2013-08-02', '111111111444', NULL, NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '\"[1, 5]\"', '\"[1, 3, 6, 5, 6]\"', '\"[1, 5]\"', '\"[]\"', 'null', 'null', '\"[1, 2, 3, 5]\"', '2024-01-13 12:31:39', '2024-01-13 12:35:42'),
(116, NULL, NULL, '2024-02-01', 30, 'App\\Models\\CustomerBatch', 'CUST000029', 1, 'CN170530381466253', '1', 'Aswani wasnav', 'hind', '8063449823', '1996-02-01', '80754564321', NULL, NULL, 'male', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '\"[1, 2]\"', '\"[1, 2]\"', '\"[1, 2]\"', '\"[1, 2]\"', 'null', 'null', '\"[2, 3, 4]\"', '2024-01-15 14:27:45', '2024-02-01 15:50:20'),
(117, NULL, NULL, NULL, 11, 'App\\Models\\CorporateBatch', 'mohitkumar', 1, 'CN170609857762649', '1', 'mohit', NULL, '9997979799', NULL, '979979797979', NULL, NULL, 'male', NULL, 'yes', 'no', 'yes', 'no', 'no', NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', 'null', 'null', '\"[6, 4, 2, 1]\"', '2024-01-24 19:08:04', '2024-01-24 19:16:17'),
(118, NULL, NULL, NULL, 12, 'App\\Models\\CorporateBatch', '12345', 1, 'CN170661553416139', '1', 'mohit', 'noida', '9599796587', '1994-12-11', '878484848484', NULL, NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '\"[1]\"', '\"[1]\"', '\"[1]\"', '\"[]\"', 'null', 'null', '\"[2, 4, 6]\"', '2024-01-30 18:50:51', '2024-01-30 18:52:14'),
(119, NULL, NULL, NULL, 32, 'App\\Models\\CustomerBatch', 'CUST000039', 1, NULL, '0', 'satyam', 'dgkrvugehvogfbk', '9598527326', '2005-06-15', '348028504858', NULL, NULL, 'male', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '\"[1, 3, 5]\"', '\"[3, 2]\"', '\"[3]\"', '\"[2, 3]\"', 'null', 'null', '\"[1, 3, 5]\"', '2024-02-02 14:26:33', '2024-02-02 14:26:33'),
(120, NULL, NULL, NULL, 11, 'App\\Models\\CorporateBatch', '12345', 1, 'CN170730473261752', '1', 'Mohit Garg', 'Noida', '7355050564', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', 'null', 'null', '\"[]\"', '2024-02-06 20:04:37', '2024-02-07 18:18:52'),
(121, NULL, NULL, NULL, 11, 'App\\Models\\CorporateBatch', '12345', 1, NULL, '0', 'Mohit Garg', 'Noida', '7355050564', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', 'null', 'null', '\"[]\"', '2024-02-06 20:04:37', '2024-02-06 20:04:37'),
(122, NULL, NULL, NULL, 11, 'App\\Models\\CorporateBatch', '12345', 1, NULL, '0', 'Mohit Garg', 'Noida', '7355050564', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"[]\"', '\"[]\"', '\"[]\"', '\"[]\"', 'null', 'null', '\"[]\"', '2024-02-06 20:04:37', '2024-02-06 20:04:37');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_08_083105_create_corporate_i_d_s_table', 2),
(7, '2023_12_12_055033_create_company_table', 3),
(8, '2023_12_12_073431_create_feedback_table', 4),
(9, '2023_12_12_080217_create_complaint_table', 5),
(10, '2023_12_12_131816_create_customer_table', 6),
(11, '2023_12_13_114751_create_notification_for_table', 7),
(12, '2023_12_13_122902_create_notifications_table', 8),
(13, '2023_12_12_094227_create_docter_table', 9),
(14, '2023_12_14_081550_create_doctors_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('03c8914e-90d2-479b-93ae-9ba5158ac7c1', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"rgrgrgrg\",\"massage\":\"rgrgrgrg\"}', '2024-01-06 17:29:58', '2024-01-06 17:28:01', '2024-01-06 17:29:58'),
('04b43e7a-3ce4-45be-a9c4-12f62d10b74f', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 15, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('057c2120-2787-4b69-8f8b-f8719796711c', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 17, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('05c14c6b-b4b8-41c2-821c-f759e8e80e4f', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 23, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('07c382c3-169f-4e75-9d05-136dd6958e59', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 25, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('09e27473-c6ff-4482-8d53-f5e483789d61', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 33, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('0b2718b6-4f98-4b6b-ad6d-43f4acd66d4d', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 30, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('13c78ec5-83b8-4d89-b3ee-db3e0c518303', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 7, '{\"subject\":\"test56\",\"massage\":\"hhjbjhjh\"}', NULL, '2023-12-13 07:44:50', '2023-12-13 07:44:50'),
('13f78365-c332-4513-b559-bf3e6194988b', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test4\",\"massage\":\"test4\"}', '2024-01-06 16:52:27', '2024-01-06 16:33:25', '2024-01-06 16:52:27'),
('1464fb4e-6609-4f13-aa96-30669267d20f', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 26, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('17577163-1b00-4953-adc2-8e8b9373b5f9', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 15, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('17ee5ece-d6ae-4be3-bcc4-85ec55f4230e', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test2\",\"massage\":\"test2\"}', NULL, '2024-01-06 16:32:48', '2024-01-06 16:32:48'),
('1d0f23d1-f78e-4b23-827d-ea01fefc75b0', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"amrit\",\"massage\":\"fdcrrfhgyujhbhgf bgdhjyt\"}', NULL, '2024-01-10 13:47:50', '2024-01-10 13:47:50'),
('1db758a9-cc7b-434f-926c-d7fe2c5042cf', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test3\",\"massage\":\"test4\"}', NULL, '2024-01-06 16:53:56', '2024-01-06 16:53:56'),
('1dd3ca9e-12c7-4313-bee5-88e71a4b8873', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test58\",\"massage\":\"test58\"}', '2024-01-06 17:29:58', '2024-01-06 17:12:03', '2024-01-06 17:29:58'),
('1ffa204e-9b30-4e77-9005-81d7781d7c10', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 13, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('20ecc6c5-dc68-4009-b81b-487a2afba1d2', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test notificaation\",\"massage\":\"test notificaation\"}', NULL, '2024-01-06 15:36:48', '2024-01-06 15:36:48'),
('23e2dffa-a0cf-4b57-b760-4238262ce11c', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 24, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('264d8046-c93a-4e35-a017-a2813e69a456', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 28, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('271a596d-2d83-4e00-96ba-feb4ecd4ed31', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 35, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', '2024-01-08 18:08:40', '2024-01-03 16:52:44', '2024-01-08 18:08:40'),
('27bf2ba5-dd74-4362-a673-febef39906f8', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test3\",\"massage\":\"test3\"}', '2024-01-06 16:52:27', '2024-01-06 16:36:15', '2024-01-06 16:52:27'),
('27f1e9a1-ebc0-4c3e-a89d-23e96546577b', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test43\",\"massage\":\"test43\"}', '2024-01-06 16:58:29', '2024-01-06 16:57:13', '2024-01-06 16:58:29'),
('2814f44a-5035-4f91-95b5-4e45ab1bb21c', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 22, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('29eb1c29-7b98-4f26-960a-c979b69c7626', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', '2024-01-06 15:08:38', '2024-01-03 16:52:44', '2024-01-06 15:08:38'),
('2a6c2b9e-9d80-44ee-a43e-bc2703464a9c', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 28, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('2c1fccad-a7ba-43f9-8416-660c54e0216f', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 34, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('2d765c5d-ca52-454b-b37d-d2e4755bf7ad', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', '2024-01-06 15:08:38', '2024-01-02 15:05:30', '2024-01-06 15:08:38'),
('2ed08555-cd11-42c5-8340-4bef0c4b270d', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"amrit\",\"massage\":\"fdcrrfhgyujhbhgf bgdhjyt\"}', NULL, '2024-01-10 13:47:50', '2024-01-10 13:47:50'),
('30d40fdd-bd1e-40c4-bbbc-46dbd44089bb', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 25, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('30dede47-826c-43c8-9533-af76311c3b28', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test50\",\"massage\":\"test50\"}', NULL, '2024-01-06 16:57:41', '2024-01-06 16:57:41'),
('31f5bbc6-f845-448a-bb55-c0c3b75d0834', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 3, '{\"subject\":\"test56\",\"massage\":\"hhjbjhjh\"}', NULL, '2023-12-13 07:44:50', '2023-12-13 07:44:50'),
('32c6a700-8ad6-4b7e-8069-31806c882a9b', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 10, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('33ada996-7b2b-423c-8404-f34ddd0aca4f', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test3\",\"massage\":\"test4\"}', '2024-01-06 16:54:48', '2024-01-06 16:53:56', '2024-01-06 16:54:48'),
('3442ba4a-38ca-4323-88bd-42593dcd2883', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('34dc8dfe-d580-4109-ba95-4537dc3a0112', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 9, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('36bc3ad8-156e-423a-8f3d-8bd840678d09', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 14, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('36cf9765-7dfc-4f4d-822c-1aa555226528', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 26, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('372bce1e-f769-423e-8306-a7a3f6b52e98', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test1\",\"massage\":\"test2\"}', NULL, '2024-01-06 16:32:35', '2024-01-06 16:32:35'),
('3796d029-f36f-4b8e-8aa1-0d405212916c', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 9, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('38275b09-81a9-4ef3-96b8-09380a9cdbf7', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test58\",\"massage\":\"test58\"}', NULL, '2024-01-06 17:12:03', '2024-01-06 17:12:03'),
('38b139df-3a6a-452d-a633-92204674fad5', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 27, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('38b384a1-ab48-46f0-aaed-8e458d702761', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 21, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('39bee16c-19a7-4fef-adc7-bf922bbf9e16', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 22, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('3b0e382f-75b0-48fe-adfd-c2f8282c16ef', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test2\",\"massage\":\"test2\"}', '2024-01-06 16:52:27', '2024-01-06 16:32:48', '2024-01-06 16:52:27'),
('3e841832-db0a-4592-93e9-cf5150ef4f11', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test3\",\"massage\":\"test3\"}', NULL, '2024-01-06 16:36:04', '2024-01-06 16:36:04'),
('40871ff2-01a5-4c47-9543-e39d56b70652', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"Physics\",\"massage\":\"Physics\"}', NULL, '2024-01-06 17:23:17', '2024-01-06 17:23:17'),
('422e25d1-df93-4f35-8e44-f16099b95c4e', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test3434\",\"massage\":\"test3434\"}', '2024-01-06 17:29:58', '2024-01-06 17:22:52', '2024-01-06 17:29:58'),
('42757efd-bfa3-4e5e-b94e-12312873a5c4', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 9, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('42bfd378-613e-4bfb-a653-3c816216b572', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test3\",\"massage\":\"tes33\"}', '2024-01-06 16:57:07', '2024-01-06 16:56:20', '2024-01-06 16:57:07'),
('4397f6d6-6184-4c15-9983-92777643da3b', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 34, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('447d8584-6e83-4970-8fd4-02aa079630c5', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 23, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('48e79847-c16c-451d-9039-f6bc9b906cd8', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test60\",\"massage\":\"test60\"}', NULL, '2024-01-06 17:20:31', '2024-01-06 17:20:31'),
('4959a548-3b11-45b0-9a1e-22b6b995a6f0', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 31, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('49a017b9-9f8f-425d-94e1-f69b1c485ecd', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 16, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('4acd7acc-fd55-4e6c-985b-16f36185a374', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 30, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('4b89a533-3af1-4e62-8a9e-ca3e871fa953', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test51\",\"massage\":\"test51\"}', NULL, '2024-01-06 17:03:28', '2024-01-06 17:03:28'),
('4b92be3c-607d-497c-9b3e-41422502a9ae', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 11, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('4bfe086a-71e5-481c-b567-774b99239038', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 33, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('4c35f688-0c49-4e21-9611-99a5d7dfdeac', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 17, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('4c981da0-2d35-47eb-aa54-3052ea6a562d', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test51\",\"massage\":\"test51\"}', '2024-01-06 17:10:43', '2024-01-06 17:03:28', '2024-01-06 17:10:43'),
('4d6479ad-3cd5-4547-84df-5abd1ba511e5', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 24, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('5061eb9d-b19d-4284-b77c-8046b0c6fb3c', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 10, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('513eabf3-2793-4e25-b226-13d0bb8adce3', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 29, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('5286a4b6-983e-45cd-999a-d1c0d65be626', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test3\",\"massage\":\"test3\"}', NULL, '2024-01-06 16:33:11', '2024-01-06 16:33:11'),
('557d14aa-0a5a-427b-b40c-83c8f98d0dd2', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 22, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('55961db1-af75-4022-a8bb-fdc55257216e', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test34\",\"massage\":\"test34\"}', '2024-01-06 17:29:58', '2024-01-06 17:21:16', '2024-01-06 17:29:58'),
('55c6b69f-61b3-4c90-8c2b-3c940771ad5f', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 13, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('57d6aa56-565b-4246-9943-9529ea3403fb', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test34\",\"massage\":\"test34\"}', NULL, '2024-01-06 17:21:16', '2024-01-06 17:21:16'),
('5b501c99-9b59-45a3-b1a1-ab6c0a2c2e45', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test notificaation\",\"massage\":\"test notificaation\"}', '2024-01-06 16:31:13', '2024-01-06 15:36:48', '2024-01-06 16:31:13'),
('5c7811bc-8548-4061-8c74-cce49c333e96', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test3\",\"massage\":\"tes33\"}', NULL, '2024-01-06 16:56:20', '2024-01-06 16:56:20'),
('5e1fe04f-89ff-4b08-a83e-f61e34031571', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 33, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('5e5f987c-3487-427f-b218-524c37109985', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 11, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('611ef0e7-6b78-4753-ba3e-1356b25805ce', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('61c6e1c9-da67-4981-b658-3b4d05bfae43', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 35, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('6247757c-68f9-48bd-b3b3-306526e2918d', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 15, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('6445b84b-85d2-4487-b0a7-f65d143467ac', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 18, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('64c1058b-0aaf-4f03-9f07-c9cb3f3f646c', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test45\",\"massage\":\"rgrgrg\"}', '2024-01-06 17:29:58', '2024-01-06 17:27:51', '2024-01-06 17:29:58'),
('658d5ec8-e3f5-45bb-bc03-bf0287734dc5', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"dfghjkjh gfssdfgh kjug fdfgkij\",\"massage\":\"Remember to handle file paths, error checking, and other production considerations based on your specific requirements. Additionally, consider implementing proper security measures when working with file uploads and processing in a production environment.\"}', NULL, '2024-01-06 17:32:41', '2024-01-06 17:32:41'),
('65e90abc-feaa-4f63-b50a-555fc4da148b', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 12, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('6719e860-7a88-4e26-a052-cede5464d7e2', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 13, '{\"subject\":\"amrit\",\"massage\":\"fdcrrfhgyujhbhgf bgdhjyt\"}', NULL, '2024-01-10 13:47:50', '2024-01-10 13:47:50'),
('693cf70f-26dc-420a-92a4-17f8686170b5', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 5, '{\"subject\":\"test56\",\"massage\":\"hhjbjhjh\"}', NULL, '2023-12-13 07:44:50', '2023-12-13 07:44:50'),
('6a58fb4c-f1ab-4c73-a5dc-daf09aaa6de7', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 1, '{\"subject\":\"test56\",\"massage\":\"hhjbjhjh\"}', NULL, '2023-12-13 07:44:50', '2023-12-13 07:44:50'),
('6d24875a-1936-4eaf-9492-1f5931ce01e4', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 24, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('6e146882-6d77-4e4d-83c5-95c7399fd3f3', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 34, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('6e59950f-76bf-48d6-ba5e-fe64d674dca0', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 27, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('71f0901f-a80c-4b89-9ce7-990b2f7fe2ab', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 26, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('7203b7e8-afb0-46ea-930c-3cb9e0460baa', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 10, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('72731bdc-52a6-4a14-a6a6-7f02987e58b0', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 31, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('746d17d8-bd2e-4d92-b654-43028c00268b', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test3\",\"massage\":\"test3\"}', '2024-01-06 16:52:27', '2024-01-06 16:36:04', '2024-01-06 16:52:27'),
('7594b73e-1c04-42ff-854c-5a97736a80f3', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test1\",\"massage\":\"test2\"}', '2024-01-06 16:52:27', '2024-01-06 16:32:35', '2024-01-06 16:52:27'),
('75c495d1-1d69-49bf-a975-9ab024da835d', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 23, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('765066bc-872a-4e89-8331-bab9b92991ea', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"ghjkj\",\"massage\":\"ghjkj\"}', NULL, '2024-01-06 17:30:23', '2024-01-06 17:30:23'),
('76b095cc-ec97-44eb-9033-a7d96ac51ecf', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 31, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('76c505cd-a251-4859-a0ff-662f2b7a2534', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 9, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('77b8179f-8bea-4457-8596-20dfc76b623d', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 4, '{\"subject\":\"test56\",\"massage\":\"hhjbjhjh\"}', NULL, '2023-12-13 07:44:50', '2023-12-13 07:44:50'),
('7a3d1780-cd0e-4a1d-a4a4-925a08bdcb8b', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 31, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('7c8c30c1-c9aa-4043-8556-f101708e2be9', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test5\",\"massage\":\"test5\"}', '2024-01-06 16:52:27', '2024-01-06 16:33:44', '2024-01-06 16:52:27'),
('7c8c8abf-ff91-43d8-a5c5-68d0ba785c87', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 12, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('819dcdce-4578-43b0-b4d9-80929ab47959', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 25, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('81bad344-1f6e-44a9-ac85-665ce02b055f', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 32, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('82212caf-446f-4c00-a0a3-3de785a1e225', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 36, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('8490bbe2-74b5-41bb-a925-378a5110d48c', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test5\",\"massage\":\"test5\"}', NULL, '2024-01-06 16:33:36', '2024-01-06 16:33:36'),
('8814a3e4-b8f0-404a-91f8-76b6c769d53b', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 12, '{\"subject\":\"mohit\",\"massage\":\"mj mhbg mbhgb mhg mhg mhg ,hgg gytf uygvug vfgu fyufuy gugu gugugu gugugu gfydt g7uf7yf ufyfugf fyfyfu gugugugu guguguhg bigugugu jugugug igigigujg igigugugu igugigugug higug bgugtuygih buguguh bgugugug igi8gigig giygugug higgug khiguf hyggh\"}', NULL, '2024-01-10 13:32:12', '2024-01-10 13:32:12'),
('88945ee7-c870-474c-9870-ee068bba5a05', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test3\",\"massage\":\"test3\"}', NULL, '2024-01-06 16:35:54', '2024-01-06 16:35:54'),
('88e1f8a7-6555-4033-bd2a-65da500b9b30', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 26, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('89763acb-de1a-4e3b-ba59-c34f7d3f343a', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 20, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('8a42a713-a016-437b-addb-be9b60facb31', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 25, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('8ace5634-c1bb-4315-a2bf-c6281aaf6797', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 18, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('8b7efdeb-76ba-4b98-b225-4b91041d0c1b', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test43\",\"massage\":\"test43\"}', NULL, '2024-01-06 16:57:13', '2024-01-06 16:57:13'),
('8d3202c0-93c8-40f4-9d4f-4f91390b2cdf', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"dfghjkjh gfssdfgh kjug fdfgkij\",\"massage\":\"Remember to handle file paths, error checking, and other production considerations based on your specific requirements. Additionally, consider implementing proper security measures when working with file uploads and processing in a production environment.\"}', '2024-01-06 17:32:51', '2024-01-06 17:32:41', '2024-01-06 17:32:51'),
('8e1a0cd2-cd38-423a-8607-0f028586cc41', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 34, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('8edc6939-9ead-4161-a777-b9ee86a69e81', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 12, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('8f2e6b9b-de50-4c05-a900-fa5b6fd5211c', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 12, '{\"subject\":\"amrit\",\"massage\":\"fdcrrfhgyujhbhgf bgdhjyt\"}', NULL, '2024-01-10 13:47:50', '2024-01-10 13:47:50'),
('8f3a0bd2-ea1a-4ef2-8910-6fe23abe1b5f', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 13, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('905243f1-34f5-4f8a-b717-4244d73b0361', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 20, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('90bc9a58-16a9-4700-a479-cb4fd2e1ec96', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 20, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('90e3fd1e-d8bd-4ab0-8c45-f768c83578a1', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 30, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('916c3ac0-2e1a-4d73-8fc8-2b5da12b9f56', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 12, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('91cca3d1-d7c5-434e-a479-a89f5670a1e2', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test60\",\"massage\":\"test60\"}', '2024-01-06 17:29:58', '2024-01-06 17:20:31', '2024-01-06 17:29:58'),
('92bf40c3-1f41-4e2a-bb31-183f44b19f21', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 33, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('92c02791-7d19-4ca9-be70-fbdf51261be0', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 29, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('94dcd038-d559-467b-9040-0dff2dcec793', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test4\",\"massage\":\"test4\"}', NULL, '2024-01-06 16:33:25', '2024-01-06 16:33:25'),
('971bc3cc-0864-4d12-a2e0-819d03d86435', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 41, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('983e35ef-a10b-4b21-98fa-4f3c274687d5', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 20, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('9bf12e56-8203-4fec-a99d-8ebf2a2b9d51', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 28, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('9cc52e61-ebed-40b6-96f3-c835b3cec828', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('9f821bbf-29d7-4df8-81c8-a65318043a54', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"mohit\",\"massage\":\"mj mhbg mbhgb mhg mhg mhg ,hgg gytf uygvug vfgu fyufuy gugu gugugu gugugu gfydt g7uf7yf ufyfugf fyfyfu gugugugu guguguhg bigugugu jugugug igigigujg igigugugu igugigugug higug bgugtuygih buguguh bgugugug igi8gigig giygugug higgug khiguf hyggh\"}', NULL, '2024-01-10 13:32:12', '2024-01-10 13:32:12'),
('a2ea4175-d572-419c-93ce-db75a1976f65', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 22, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('a2ed8b54-ddb6-466c-9333-c73189a7615a', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 11, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('a4ab5c7d-3824-4174-9468-bee1a8cf690a', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test56\",\"massage\":\"test56\"}', '2024-01-06 17:29:58', '2024-01-06 17:10:43', '2024-01-06 17:29:58'),
('a5375473-9d46-4a83-9179-18d110284998', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 21, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('a5bff329-cd55-4361-bebe-719070afd0a9', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 13, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('a6df9607-1ff4-40eb-8567-8ea9548ec9b6', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 8, '{\"subject\":\"test56\",\"massage\":\"hhjbjhjh\"}', NULL, '2023-12-13 07:44:50', '2023-12-13 07:44:50'),
('ac516e15-1947-49fb-bdb1-b8a02e92a9f8', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test3\",\"massage\":\"test3\"}', '2024-01-06 16:52:27', '2024-01-06 16:35:54', '2024-01-06 16:52:27'),
('ac543064-96da-4e8f-9542-a53313d2235f', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 38, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('ae075ebe-9005-4840-88da-f6d0dead63d8', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', '2024-01-06 15:08:38', '2024-01-02 18:43:59', '2024-01-06 15:08:38'),
('aebf3bcc-9e8f-4088-93fc-332f26ac1d73', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('aec856bf-2922-4b30-bf7e-7564249383a6', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 16, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('af8de231-02a7-4ea5-a675-63a10f32ade4', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 32, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('b20553b8-4093-4a1c-9c8b-8d912ff26f3c', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test59\",\"massage\":\"test59\"}', '2024-01-06 17:29:58', '2024-01-06 17:18:47', '2024-01-06 17:29:58'),
('b5d15fa0-a046-4229-8705-89a6dd648202', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 24, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('b641e63a-e884-4825-bc99-c9f841ab0b67', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 9, '{\"subject\":\"test56\",\"massage\":\"hhjbjhjh\"}', NULL, '2023-12-13 07:44:50', '2023-12-13 07:44:50'),
('b6c7aaaa-3843-49da-9daf-f06b00f3e3be', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 14, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('b79e1c1b-28bf-4c9f-9268-455ba746c6ca', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test5\",\"massage\":\"test5\"}', NULL, '2024-01-06 16:33:44', '2024-01-06 16:33:44'),
('b9513cb5-500f-47e9-8eb1-13f7bdeb24b2', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test56\",\"massage\":\"test56\"}', NULL, '2024-01-06 17:10:43', '2024-01-06 17:10:43'),
('b9b6375a-0096-45d5-be08-621457a135b5', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 4, '{\"subject\":\"Physics\",\"massage\":null}', NULL, '2023-12-13 07:37:13', '2023-12-13 07:37:13'),
('ba93e88f-4ffa-4eb7-a238-b05e4f070d3a', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"ghjkj\",\"massage\":\"ghjkj\"}', '2024-01-06 17:30:31', '2024-01-06 17:30:23', '2024-01-06 17:30:31'),
('bbd3e7d4-fc40-4cec-9709-b1522c27d473', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test57\",\"massage\":\"test57\"}', '2024-01-06 17:29:58', '2024-01-06 17:11:47', '2024-01-06 17:29:58'),
('bc20d360-8fbf-4e30-ad5e-9cbdc4ea07c2', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test3\",\"massage\":\"test3\"}', NULL, '2024-01-06 16:36:24', '2024-01-06 16:36:24'),
('bc489c1b-f75f-49f5-b9cc-f03b4168a12b', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 16, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('bc77ef7b-5185-48a5-8a69-b705af962ccd', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 29, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('bf7974c4-6c6e-4256-9574-68a1bcaf3588', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"mohit\",\"massage\":\"mj mhbg mbhgb mhg mhg mhg ,hgg gytf uygvug vfgu fyufuy gugu gugugu gugugu gfydt g7uf7yf ufyfugf fyfyfu gugugugu guguguhg bigugugu jugugug igigigujg igigugugu igugigugug higug bgugtuygih buguguh bgugugug igi8gigig giygugug higgug khiguf hyggh\"}', NULL, '2024-01-10 13:32:12', '2024-01-10 13:32:12'),
('bf8bd2dd-8e4a-46c3-a5b3-549bfe710e85', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 19, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('c2e18783-1c0d-4051-b9f7-817b16302267', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 18, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('c35091f1-e583-4990-a649-468685ffc68b', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"rgrgrgrg\",\"massage\":\"rgrgrgrg\"}', NULL, '2024-01-06 17:28:01', '2024-01-06 17:28:01'),
('c75ded20-7ae8-4f85-9b8f-1f91ccdc4cb4', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 30, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('c84e625d-a50b-48d0-8eaf-256798d4d293', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 27, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('c8e2f13a-7161-437d-b9e2-188e1ca5cc82', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 19, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('c9261812-2ad0-4113-8092-f1fde00621d7', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test3\",\"massage\":\"test3\"}', '2024-01-06 16:52:27', '2024-01-06 16:36:24', '2024-01-06 16:52:27'),
('cac204da-bbb6-42ca-ab23-ddc06e03453c', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 11, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('cbea78a6-1a69-4275-a3d0-3ccd6eccabab', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test45\",\"massage\":\"rgrgrg\"}', NULL, '2024-01-06 17:27:51', '2024-01-06 17:27:51'),
('ce7d63e6-fa6e-41b3-ba6e-6eb903398bbb', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 4, '{\"subject\":\"Select Subject\",\"massage\":null}', NULL, '2023-12-13 07:33:38', '2023-12-13 07:33:38'),
('cfc14331-af38-41e6-91cb-7ac4da4de4be', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 32, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('d1f5ed98-350f-4966-8713-aa5c31f39a2a', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test52\",\"massage\":\"test52\"}', '2024-01-06 17:10:43', '2024-01-06 17:04:55', '2024-01-06 17:10:43'),
('d258dd55-5bda-4469-bf22-b20525f582d4', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('d6f49f9e-ec6e-4925-aa99-dbc0396131bb', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 29, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('d747dc25-8925-4c1c-a667-d71a7052a51d', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 14, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('d771aeb9-bd1a-48d2-b41e-df46234ce298', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"Physics\",\"massage\":\"Physics\"}', '2024-01-06 17:29:58', '2024-01-06 17:23:17', '2024-01-06 17:29:58'),
('d7d6b98c-1f38-426b-9aec-a943a98c1421', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 15, '{\"subject\":\"Test 5\",\"massage\":\"Hanuman Ji ki Jay ho\"}', NULL, '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
('d859475c-f7aa-4bf4-98f0-60ad506d7633', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 21, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('da3e61cd-9d5a-45f5-82db-e01a2b7d7c54', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 39, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('db13ada3-80e0-4d6c-91c3-6904c489f4d6', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 23, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('db1a98b5-777a-4c17-81ce-913daad47893', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 17, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('db8144e4-39e5-4881-89c7-3a4a11b7623f', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 14, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('dca265ce-d484-4ff7-a281-eea770a024d2', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 40, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('dce9f391-6e1f-4816-8331-838887df3fe3', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test52\",\"massage\":\"test52\"}', NULL, '2024-01-06 17:04:55', '2024-01-06 17:04:55'),
('dd1379e3-5bc9-41c7-a3b4-bee1d48dd4ec', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 27, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('ddd2fa28-f01c-454a-aed0-8ce318c6a3c0', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 32, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('e0305171-6742-4542-aa21-87ebe0c110b3', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 28, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('e1c3675d-80f8-4515-b415-f32e69c93914', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 13, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('e2354366-0923-4b16-b3e0-d44efd1c1fb4', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test3434\",\"massage\":\"test3434\"}', NULL, '2024-01-06 17:22:52', '2024-01-06 17:22:52'),
('e5f16955-2cd4-4d0a-94e0-50a9d8167414', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test57\",\"massage\":\"test57\"}', NULL, '2024-01-06 17:11:47', '2024-01-06 17:11:47'),
('e6167776-c805-419c-8b33-8b1020410fc2', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test50\",\"massage\":\"test50\"}', '2024-01-06 16:58:29', '2024-01-06 16:57:41', '2024-01-06 16:58:29'),
('e64392d4-d301-4b31-ad0b-2c929694e62f', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 12, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('e9886cd3-b7a4-4da4-8492-2550d093f3b6', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 42, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53'),
('ea90970f-e815-4a6c-9e16-a459755b2741', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 21, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('eac6a59e-85ba-49f4-aba6-d056a5695275', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 10, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('ef4de13d-b537-4540-90e1-5d40a3941e03', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 19, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('f0fbecec-60f3-448b-afb0-7c13879b52fd', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 18, '{\"subject\":\"Test2\",\"massage\":\"Dracula world\"}', NULL, '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
('f2c607b8-41e5-4db2-86e7-ffe0f645aacc', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test4\",\"massage\":\"test\"}', NULL, '2024-01-06 16:53:47', '2024-01-06 16:53:47'),
('f49c674a-6cd2-4188-947d-6223fb800abe', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test3\",\"massage\":\"test3\"}', '2024-01-06 16:52:27', '2024-01-06 16:33:11', '2024-01-06 16:52:27'),
('f5d201e1-3612-4ac5-ab4c-e806b98879b5', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 4, '{\"subject\":\"test\",\"massage\":\"Demo123\"}', NULL, '2023-12-13 07:42:29', '2023-12-13 07:42:29'),
('f6fe9962-39e1-4fe2-91c8-45f49257660a', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 13, '{\"subject\":\"mohit\",\"massage\":\"mj mhbg mbhgb mhg mhg mhg ,hgg gytf uygvug vfgu fyufuy gugu gugugu gugugu gfydt g7uf7yf ufyfugf fyfyfu gugugugu guguguhg bigugugu jugugug igigigujg igigugugu igugigugug higug bgugtuygih buguguh bgugugug igi8gigig giygugug higgug khiguf hyggh\"}', '2024-01-10 13:33:13', '2024-01-10 13:32:12', '2024-01-10 13:33:13'),
('f804d7ac-179d-4ebd-92b2-f8398ab6509e', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 19, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('f811fdee-060a-49a9-ac61-5bd353d1989a', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test59\",\"massage\":\"test59\"}', NULL, '2024-01-06 17:18:47', '2024-01-06 17:18:47'),
('fa57e2cb-d223-4ee3-9b0f-a4d874caae0e', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test5\",\"massage\":\"test5\"}', '2024-01-06 16:52:27', '2024-01-06 16:33:36', '2024-01-06 16:52:27'),
('fa87a1e1-8e88-4d58-9902-7e4c0dfcd74d', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 6, '{\"subject\":\"test56\",\"massage\":\"hhjbjhjh\"}', NULL, '2023-12-13 07:44:50', '2023-12-13 07:44:50'),
('fb641cf3-3f05-4a1c-9e9a-3b3f6ec980ec', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 9, '{\"subject\":\"test3\",\"massage\":\"test3\"}', NULL, '2024-01-06 16:36:15', '2024-01-06 16:36:15'),
('fc52b019-2a99-4535-a4ef-82bf3de611e4', 'App\\Notifications\\MyNotification', 'App\\Models\\CorporateID', 10, '{\"subject\":\"test4\",\"massage\":\"test\"}', '2024-01-06 16:54:48', '2024-01-06 16:53:47', '2024-01-06 16:54:48'),
('fcd9b9d8-46c3-4eed-afc7-fdf4e2b3b540', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 17, '{\"subject\":\"Test1\",\"massage\":\"Blood Surgery\"}', NULL, '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
('ff2982c2-7555-4869-9453-f16cedc203eb', 'App\\Notifications\\MyNotification', 'App\\Models\\Customer', 16, '{\"subject\":\"vikas\",\"massage\":\"This is a good\"}', NULL, '2024-01-22 16:34:53', '2024-01-22 16:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `notification_for`
--

CREATE TABLE `notification_for` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_for`
--

INSERT INTO `notification_for` (`id`, `for`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'corporate', 'Select Subject', 'eryhtthth', '2023-12-13 07:31:54', '2023-12-13 07:31:54'),
(2, 'corporate', 'Select Subject', 'eryhtthth', '2023-12-13 07:33:38', '2023-12-13 07:33:38'),
(3, 'corporate', 'Physics', 'fghjkjh', '2023-12-13 07:37:13', '2023-12-13 07:37:13'),
(6, 'customer', 'test56', 'hhjbjhjh', '2023-12-13 07:44:50', '2023-12-13 07:44:50'),
(7, 'all', 'Test1', 'Blood Surgery', '2024-01-02 15:05:30', '2024-01-02 15:05:30'),
(8, 'all', 'Test2', 'Dracula world', '2024-01-02 18:43:59', '2024-01-02 18:43:59'),
(9, 'all', 'Test 5', 'Hanuman Ji ki Jay ho', '2024-01-03 16:52:44', '2024-01-03 16:52:44'),
(10, 'corporate', 'test notificaation', 'test notificaation', '2024-01-06 15:36:48', '2024-01-06 15:36:48'),
(11, 'corporate', 'test1', 'test2', '2024-01-06 16:32:35', '2024-01-06 16:32:35'),
(12, 'corporate', 'test2', 'test2', '2024-01-06 16:32:48', '2024-01-06 16:32:48'),
(13, 'corporate', 'test3', 'test3', '2024-01-06 16:33:11', '2024-01-06 16:33:11'),
(14, 'corporate', 'test4', 'test4', '2024-01-06 16:33:25', '2024-01-06 16:33:25'),
(15, 'corporate', 'test5', 'test5', '2024-01-06 16:33:36', '2024-01-06 16:33:36'),
(16, 'corporate', 'test5', 'test5', '2024-01-06 16:33:44', '2024-01-06 16:33:44'),
(17, 'corporate', 'test3', 'test3', '2024-01-06 16:35:54', '2024-01-06 16:35:54'),
(18, 'corporate', 'test3', 'test3', '2024-01-06 16:36:04', '2024-01-06 16:36:04'),
(19, 'corporate', 'test3', 'test3', '2024-01-06 16:36:15', '2024-01-06 16:36:15'),
(20, 'corporate', 'test3', 'test3', '2024-01-06 16:36:24', '2024-01-06 16:36:24'),
(21, 'corporate', 'test4', 'test', '2024-01-06 16:53:47', '2024-01-06 16:53:47'),
(22, 'corporate', 'test3', 'test4', '2024-01-06 16:53:56', '2024-01-06 16:53:56'),
(23, 'corporate', 'test3', 'tes33', '2024-01-06 16:56:20', '2024-01-06 16:56:20'),
(24, 'corporate', 'test43', 'test43', '2024-01-06 16:57:13', '2024-01-06 16:57:13'),
(25, 'corporate', 'test50', 'test50', '2024-01-06 16:57:41', '2024-01-06 16:57:41'),
(26, 'corporate', 'test51', 'test51', '2024-01-06 17:03:27', '2024-01-06 17:03:27'),
(27, 'corporate', 'test52', 'test52', '2024-01-06 17:04:55', '2024-01-06 17:04:55'),
(28, 'corporate', 'test56', 'test56', '2024-01-06 17:10:43', '2024-01-06 17:10:43'),
(29, 'corporate', 'test57', 'test57', '2024-01-06 17:11:47', '2024-01-06 17:11:47'),
(30, 'corporate', 'test58', 'test58', '2024-01-06 17:12:03', '2024-01-06 17:12:03'),
(31, 'corporate', 'test59', 'test59', '2024-01-06 17:18:47', '2024-01-06 17:18:47'),
(32, 'corporate', 'test60', 'test60', '2024-01-06 17:20:31', '2024-01-06 17:20:31'),
(33, 'corporate', 'test34', 'test34', '2024-01-06 17:21:16', '2024-01-06 17:21:16'),
(34, 'corporate', 'test3434', 'test3434', '2024-01-06 17:22:52', '2024-01-06 17:22:52'),
(35, 'corporate', 'Physics', 'Physics', '2024-01-06 17:23:17', '2024-01-06 17:23:17'),
(36, 'corporate', 'test45', 'rgrgrg', '2024-01-06 17:27:51', '2024-01-06 17:27:51'),
(37, 'corporate', 'rgrgrgrg', 'rgrgrgrg', '2024-01-06 17:28:01', '2024-01-06 17:28:01'),
(38, 'corporate', 'ghjkj', 'ghjkj', '2024-01-06 17:30:23', '2024-01-06 17:30:23'),
(39, 'corporate', 'dfghjkjh gfssdfgh kjug fdfgkij', 'Remember to handle file paths, error checking, and other production considerations based on your specific requirements. Additionally, consider implementing proper security measures when working with file uploads and processing in a production environment.', '2024-01-06 17:32:41', '2024-01-06 17:32:41'),
(40, 'corporate', 'mohit', 'mj mhbg mbhgb mhg mhg mhg ,hgg gytf uygvug vfgu fyufuy gugu gugugu gugugu gfydt g7uf7yf ufyfugf fyfyfu gugugugu guguguhg bigugugu jugugug igigigujg igigugugu igugigugug higug bgugtuygih buguguh bgugugug igi8gigig giygugug higgug khiguf hyggh', '2024-01-10 13:32:12', '2024-01-10 13:32:12'),
(41, 'corporate', 'amrit', 'fdcrrfhgyujhbhgf bgdhjyt', '2024-01-10 13:47:50', '2024-01-10 13:47:50'),
(42, 'all', 'vikas', 'This is a good', '2024-01-22 16:34:53', '2024-01-22 16:34:53');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Customer', 1, 'MyApp', '8ffd7f6dfc74347b20187f08109102010c0706951ca9451b3b0a601c7ea2bfac', '[\"*\"]', NULL, NULL, '2023-12-12 08:03:20', '2023-12-12 08:03:20'),
(2, 'App\\Models\\Customer', 3, 'MyApp', '9b36f3543256c095c349650af30da909630ca92d38e6d75db21454b4509948b0', '[\"*\"]', NULL, NULL, '2023-12-12 08:08:35', '2023-12-12 08:08:35'),
(3, 'App\\Models\\Customer', 4, 'MyApp', '11a4fdac85b7477178304c18a536b609adf54f0f245ee7b0d004d2cd7f44ae72', '[\"*\"]', NULL, NULL, '2023-12-12 08:11:48', '2023-12-12 08:11:48'),
(4, 'App\\Models\\Customer', 5, 'MyApp', '17b6fc2c06f0ad469fcac82b18280aae89dfdf5d6898b93b8b404b2bb0bce321', '[\"*\"]', NULL, NULL, '2023-12-12 08:12:56', '2023-12-12 08:12:56'),
(5, 'App\\Models\\Customer', 6, 'MyApp', '5a3276f54babafd764864c91bbf59887fdad51ccc9d6668979d993694d7a2089', '[\"*\"]', NULL, NULL, '2023-12-12 08:16:03', '2023-12-12 08:16:03'),
(6, 'App\\Models\\Customer', 7, 'MyApp', 'b2f93aa62f29750b4feb933ecae05869569b250332b46e6b45c7df8ff5b723c7', '[\"*\"]', NULL, NULL, '2023-12-12 09:54:07', '2023-12-12 09:54:07'),
(7, 'App\\Models\\Customer', 7, 'mobile', '384e7904b578fb656b7dabcaceb10094c6fabdb7f93e2c35470383aabd14414b', '[\"role:customer\"]', NULL, NULL, '2023-12-12 09:57:22', '2023-12-12 09:57:22'),
(8, 'App\\Models\\Customer', 7, 'mobile', 'fbf205d6b4a5cf9bd7bf27edb337fa25c8355cbb88f8071357151c1b35f3588a', '[\"role:customer\"]', NULL, NULL, '2023-12-12 10:07:32', '2023-12-12 10:07:32'),
(9, 'App\\Models\\Customer', 7, 'mobile', 'd0a6537f434ee7bf6568d0ce08d6995b023d8942ddf06b0a6e283b48868a0b51', '[\"role:customer\"]', NULL, NULL, '2023-12-12 10:07:56', '2023-12-12 10:07:56'),
(10, 'App\\Models\\Customer', 7, 'mobile', '2d5e7c591bb19f45d2c264944122043c4009163170a13573d4269bcbed61d81a', '[\"role:customer\"]', NULL, NULL, '2023-12-12 10:08:54', '2023-12-12 10:08:54'),
(11, 'App\\Models\\Customer', 8, 'MyApp', '0c9285e1f2f9f0333fb4d5dd5124a961ed5afe78fc24ab987dbca8dca596a4e7', '[\"*\"]', NULL, NULL, '2023-12-12 10:40:42', '2023-12-12 10:40:42'),
(12, 'App\\Models\\Customer', 9, 'MyApp', '0a6cd474cf5d9ece751ab3642291c39a19250a7647b9dbd1e105ec81bd8a8dd5', '[\"*\"]', '2023-12-12 11:45:49', NULL, '2023-12-12 11:38:15', '2023-12-12 11:45:49'),
(13, 'App\\Models\\Customer', 9, 'mobile', '0cfc4c4d94fd3d9cb83232cc3e28aff1811cbee804bd0bacc6b17857f02b3925', '[\"role:customer\"]', '2023-12-12 11:49:10', NULL, '2023-12-12 11:48:36', '2023-12-12 11:49:10'),
(14, 'App\\Models\\CorporateID', 3, 'mobile', '29181c4b79378eef067823cef0eae88b394626660920dc7387a978201c30f39c', '[\"role:corporate\"]', '2023-12-12 11:53:10', NULL, '2023-12-12 11:52:31', '2023-12-12 11:53:10'),
(15, 'App\\Models\\CorporateID', 4, 'mobile', 'cb3895ff1cd55d3945e1f3c0ef05d1f62e3fe3d90954ee4a23293cc44a82f69a', '[\"role:corporate\"]', '2023-12-13 23:15:12', NULL, '2023-12-13 00:50:09', '2023-12-13 23:15:12'),
(16, 'App\\Models\\Customer', 9, 'mobile', 'c8b7a0228fc062d3916db373d7388ac646716a6336d0d37f08f3872ce1df423e', '[\"role:customer\"]', NULL, NULL, '2023-12-13 04:55:11', '2023-12-13 04:55:11'),
(17, 'App\\Models\\CorporateID', 4, 'mobile', '68e297bd296da6ba13422a4bd15719100671ef540267a0aea7a84540e30e8a80', '[\"role:corporate\"]', NULL, NULL, '2023-12-13 04:55:39', '2023-12-13 04:55:39'),
(18, 'App\\Models\\CorporateID', 4, 'mobile', 'f52acf5c1f46d0c0b9988813e6d05d2c2841ec4801c79fadafaa73213bb54835', '[\"role:corporate\"]', NULL, NULL, '2023-12-13 05:05:14', '2023-12-13 05:05:14'),
(19, 'App\\Models\\CorporateID', 4, 'mobile', '4bddea3be0db0147e195097b558bdd49dad965983f18c111786da88d69bef8c3', '[\"role:corporate\"]', NULL, NULL, '2023-12-13 05:06:03', '2023-12-13 05:06:03'),
(20, 'App\\Models\\Customer', 10, 'MyApp', '289db0d7cf099929169e70ea0e86c72b2578fe4917402cf9d74a2f62a4e038a0', '[\"*\"]', NULL, NULL, '2023-12-16 17:49:24', '2023-12-16 17:49:24'),
(21, 'App\\Models\\Customer', 11, 'MyApp', '4cedf5095526ab553489a6338b452621eedb64c2ae6236535e581ad6bdc7f387', '[\"*\"]', NULL, NULL, '2023-12-19 16:53:43', '2023-12-19 16:53:43'),
(22, 'App\\Models\\Customer', 12, 'MyApp', '755f002fa5d667aaea345d4efb380495a7eb11b3c04aa928c03399ed792246e7', '[\"*\"]', NULL, NULL, '2023-12-19 17:40:23', '2023-12-19 17:40:23'),
(23, 'App\\Models\\Customer', 13, 'MyApp', '323dbf4113fb4fde97d20c13368047fc9a4fdd8b45b272839e31d84ef9e9f407', '[\"*\"]', NULL, NULL, '2023-12-19 17:40:50', '2023-12-19 17:40:50'),
(24, 'App\\Models\\Customer', 14, 'MyApp', '1cbe657e8c645af1a4b226cc1c5e0095ca830d6ea71b5945539deec095853664', '[\"*\"]', NULL, NULL, '2023-12-19 17:41:20', '2023-12-19 17:41:20'),
(25, 'App\\Models\\Customer', 15, 'MyApp', '47d49ca9c07dae51e88bd48733cea57ccc83a00cf200543e2166cfedfca73848', '[\"*\"]', NULL, NULL, '2023-12-19 17:44:11', '2023-12-19 17:44:11'),
(26, 'App\\Models\\Customer', 16, 'MyApp', '82b1963c29fd6d3fd8010aaa01f76f1ef6221c3cb348f7caab06bbbdf4476492', '[\"*\"]', NULL, NULL, '2023-12-19 17:47:53', '2023-12-19 17:47:53'),
(27, 'App\\Models\\Customer', 17, 'MyApp', '0bc358e346d0f51b4eb8357825d48d363187a7d01e20e2f343356e738e17f412', '[\"*\"]', NULL, NULL, '2023-12-19 17:50:47', '2023-12-19 17:50:47'),
(28, 'App\\Models\\Customer', 18, 'MyApp', '28b19f1ccbcbb6a608829fe51ea6efa18d39b95e37d9a5bb672fdfc8e2df5fef', '[\"*\"]', NULL, NULL, '2023-12-19 18:12:21', '2023-12-19 18:12:21'),
(29, 'App\\Models\\Customer', 19, 'MyApp', '4ed21ca0cc54fcdafdf8bbd6d01a1567fb7fdacacaff1ddffdec095bde9a5a34', '[\"*\"]', NULL, NULL, '2023-12-19 18:13:37', '2023-12-19 18:13:37'),
(30, 'App\\Models\\Customer', 18, 'mobile', '00ff7290e7443581d702bd69ac7191094767146abb27124cc56c78ebbdf1fc2d', '[\"role:customer\"]', NULL, NULL, '2023-12-19 18:18:07', '2023-12-19 18:18:07'),
(31, 'App\\Models\\Customer', 18, 'mobile', '62628492739602cc90139e25b54e7d39f57c5531b8b1c2883e51ecb8df647acb', '[\"role:customer\"]', NULL, NULL, '2023-12-19 18:27:59', '2023-12-19 18:27:59'),
(32, 'App\\Models\\Customer', 18, 'mobile', '1904ba5c681fe4d0df58c36e1e26fbbd5d0ed7bfdaeb4ccd1071d8010dedfe08', '[\"role:customer\"]', NULL, NULL, '2023-12-19 18:29:27', '2023-12-19 18:29:27'),
(33, 'App\\Models\\Customer', 18, 'mobile', '43ce0c41af3f23b07ab7c5baa8c7a9f946cf62ff40049033ff03bda370280a16', '[\"role:customer\"]', '2023-12-19 18:55:46', NULL, '2023-12-19 18:31:37', '2023-12-19 18:55:46'),
(34, 'App\\Models\\Customer', 18, 'mobile', '3dff127e51d2162ef553bb9e696a2aa32da672121fdcfd3d02e15c8cf9169335', '[\"role:customer\"]', NULL, NULL, '2023-12-19 18:32:16', '2023-12-19 18:32:16'),
(35, 'App\\Models\\Customer', 18, 'mobile', 'd76f74a5e41c5200b70d9e0e7704b32683dd232d84a42b1118d884576bb0052b', '[\"role:customer\"]', NULL, NULL, '2023-12-19 18:33:52', '2023-12-19 18:33:52'),
(36, 'App\\Models\\Customer', 18, 'mobile', 'b4dc5edd32449fb5a5c95d93ded57f8fccb8f5b4490bf7f40238d9cff3e734e0', '[\"role:customer\"]', NULL, NULL, '2023-12-19 20:30:59', '2023-12-19 20:30:59'),
(37, 'App\\Models\\Customer', 18, 'mobile', '3dc8e35c79809b5bcdfd39ea6cf9a90cd375178a7f5e9fb4b7ee45254652fc71', '[\"role:customer\"]', NULL, NULL, '2023-12-19 20:31:12', '2023-12-19 20:31:12'),
(38, 'App\\Models\\Customer', 20, 'MyApp', '283adedf402ba0cd8f443da26ff83326df67b5226d44fd45e0ce41a22068c9b0', '[\"*\"]', NULL, NULL, '2023-12-19 21:12:16', '2023-12-19 21:12:16'),
(39, 'App\\Models\\Customer', 21, 'MyApp', '4ecea14ddc9c1d7d340e45851adcfb7c523cb2b551f38bd1ac6f90948ccfc3d3', '[\"*\"]', NULL, NULL, '2023-12-19 22:59:05', '2023-12-19 22:59:05'),
(40, 'App\\Models\\Customer', 22, 'MyApp', '788916fe47a707fce008a50f4d8f8e14c229308b3e0929c7a8024e97af6f636b', '[\"*\"]', NULL, NULL, '2023-12-20 11:45:54', '2023-12-20 11:45:54'),
(41, 'App\\Models\\Customer', 23, 'MyApp', 'd56a0c38947286aa56b00b193ee8d0d5c49678c14d81d3cb9f4425a922c74bee', '[\"*\"]', NULL, NULL, '2023-12-20 12:05:34', '2023-12-20 12:05:34'),
(42, 'App\\Models\\Customer', 24, 'MyApp', '1d4517dc3b911999aa83370f41a7f5ac02790509559f327870fc79e769db6af2', '[\"*\"]', NULL, NULL, '2023-12-20 12:08:39', '2023-12-20 12:08:39'),
(43, 'App\\Models\\Customer', 25, 'MyApp', 'f4a3e9c013e8543a689b3e4365c0a6a82da2783b3d57a16f726e57bd84f721b2', '[\"*\"]', NULL, NULL, '2023-12-20 12:10:10', '2023-12-20 12:10:10'),
(44, 'App\\Models\\CorporateID', 8, 'mobile', 'a7b1a0fc2602ba23e4871fd4c88d5bc2c8807c6df479a67022f665a6a6b28417', '[\"role:corporate\"]', NULL, NULL, '2023-12-20 12:25:08', '2023-12-20 12:25:08'),
(45, 'App\\Models\\Customer', 26, 'MyApp', '391e03f2a00672fdcc96f040a78a33e550e177096d857aa42fc22835ff01f522', '[\"*\"]', NULL, NULL, '2023-12-20 12:31:10', '2023-12-20 12:31:10'),
(46, 'App\\Models\\Customer', 18, 'mobile', '8e5b5b71ce5d06e067ffea183b3e9c66de709dbc3b9f0dcc82886d326d55c0c4', '[\"role:customer\"]', NULL, NULL, '2023-12-20 12:32:55', '2023-12-20 12:32:55'),
(47, 'App\\Models\\Customer', 19, 'mobile', 'c19e7391d43d7bfaed3d0f99e07b02f91eaea1e91c40fb5b9626f6902089a5a5', '[\"role:customer\"]', NULL, NULL, '2023-12-21 14:13:38', '2023-12-21 14:13:38'),
(48, 'App\\Models\\Customer', 27, 'MyApp', '9dd7c527bb2b5d1c5d56eda1ddea79d31dadf48e9adfda6d636aeb44e11b56ee', '[\"*\"]', NULL, NULL, '2023-12-21 15:54:14', '2023-12-21 15:54:14'),
(49, 'App\\Models\\Customer', 27, 'mobile', '6317048418c26f08082c96300647060f15b4f9499cf4c25467b043432f6fc5aa', '[\"role:customer\"]', NULL, NULL, '2023-12-21 15:54:33', '2023-12-21 15:54:33'),
(50, 'App\\Models\\Customer', 27, 'mobile', '6997a9d197f6272aecfeb51e857b96581c66ba0693ffce663252adba0fb2decf', '[\"role:customer\"]', NULL, NULL, '2023-12-21 15:54:36', '2023-12-21 15:54:36'),
(51, 'App\\Models\\Customer', 27, 'mobile', '98ac2946a8a068202f889d7d530ddcb161754ecedadb54a526a9a5b9f308de79', '[\"role:customer\"]', NULL, NULL, '2023-12-21 15:55:28', '2023-12-21 15:55:28'),
(52, 'App\\Models\\Customer', 27, 'mobile', '32c2eabdeca50a19b161bf369f91c585e66c08a49ba8f944d95c18eb5c6f7e57', '[\"role:customer\"]', NULL, NULL, '2023-12-21 15:56:37', '2023-12-21 15:56:37'),
(53, 'App\\Models\\CorporateID', 8, 'mobile', 'bac9243deccd84490c7aba196f018b4e88c40b16b6b8405640953276d8c68b9b', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:02:37', '2023-12-21 16:02:37'),
(54, 'App\\Models\\CorporateID', 8, 'mobile', 'e01d7fcad6b3bfbf851a48e0ad27c9bccece9c1027140d1e77fed8e320cdec27', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:19:50', '2023-12-21 16:19:50'),
(55, 'App\\Models\\CorporateID', 8, 'mobile', '414a152153df6c963a07028120133873298c94f0227a56950ece8e2ab0a9f1a7', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:23:51', '2023-12-21 16:23:51'),
(56, 'App\\Models\\Customer', 27, 'mobile', 'fbae238851e4a2f0d28f758da0bd3b9c1b8b6bedd806d9b1718cd8ef4b72f220', '[\"role:customer\"]', NULL, NULL, '2023-12-21 16:33:50', '2023-12-21 16:33:50'),
(57, 'App\\Models\\CorporateID', 8, 'mobile', 'af7995061009ed9af3f66d251e6e075786cb1a9b365af7e8a9eceb1f404fb083', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:34:33', '2023-12-21 16:34:33'),
(58, 'App\\Models\\CorporateID', 8, 'mobile', '31f33a3d3b41e8d8e2006dd56cf1c836743afc9620ebaf3a4ae498db0a4822b6', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:34:37', '2023-12-21 16:34:37'),
(59, 'App\\Models\\CorporateID', 8, 'mobile', 'eeb57f495c0f5957a34fd7f17248a7a9b1b65c3b4454c5fd706fa3515f0c41d6', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:35:18', '2023-12-21 16:35:18'),
(60, 'App\\Models\\CorporateID', 8, 'mobile', '5ed71079b13cbf02b38760f1bd9fe3214a49db1235649b3567200fa38f868a06', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:36:41', '2023-12-21 16:36:41'),
(61, 'App\\Models\\CorporateID', 8, 'mobile', 'f340a42e7c2ba27265650d93725a8e9e517c2f25e54f44f06722df95d3b37c9f', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:37:29', '2023-12-21 16:37:29'),
(62, 'App\\Models\\CorporateID', 8, 'mobile', '61994e39ec826fe1d874f26657c21d5232c75bc40696517deab7d69480f0e2f8', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:39:47', '2023-12-21 16:39:47'),
(63, 'App\\Models\\CorporateID', 8, 'mobile', 'c341491627c407ce12c7be9f61d995ba5a7fcde2e3c6cc14caaba948c5b6e348', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:43:32', '2023-12-21 16:43:32'),
(64, 'App\\Models\\Customer', 27, 'mobile', 'a27c58cbcc2b7668947d72cecbfd87cdf69ae2c9a92b2f92728204c18147bc99', '[\"role:customer\"]', NULL, NULL, '2023-12-21 16:44:33', '2023-12-21 16:44:33'),
(65, 'App\\Models\\CorporateID', 8, 'mobile', '0cb5ab7486d54d069c60ce2d43deef7120ad9b956b4dcb7391472dfb50ddc48e', '[\"role:corporate\"]', '2023-12-21 17:39:06', NULL, '2023-12-21 16:44:54', '2023-12-21 17:39:06'),
(66, 'App\\Models\\CorporateID', 8, 'mobile', '76ca24808a34f8fdec2ee44807e1c9f84f4620ea58c977c79e59dba4b4226ab9', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:46:11', '2023-12-21 16:46:11'),
(67, 'App\\Models\\CorporateID', 8, 'mobile', 'dd7f5691f05477ddae92b0b4b38615607887a5e2f90fc97133e5e306d370c8f3', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 16:46:58', '2023-12-21 16:46:58'),
(68, 'App\\Models\\Customer', 28, 'MyApp', '775aa69ffbc368628f77b8bccdb9725ff847ab5084ea801092cc82e1e4fd06d6', '[\"*\"]', NULL, NULL, '2023-12-21 16:51:42', '2023-12-21 16:51:42'),
(69, 'App\\Models\\CorporateID', 8, 'mobile', 'b0da28af02cd38688a6e241ef54d1a5310c2955291a172996a83f0a22bb73195', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 17:01:01', '2023-12-21 17:01:01'),
(70, 'App\\Models\\Customer', 27, 'mobile', '0c27d80a9d408ce2ea582923afb1a5586fdab9752b02b3bb72addf5c54a8c0b7', '[\"role:customer\"]', NULL, NULL, '2023-12-21 17:09:23', '2023-12-21 17:09:23'),
(71, 'App\\Models\\Customer', 29, 'MyApp', 'e567e9d4f8d44b3b61160f7de4b0d42d9ec23f5bb2a547061fec31a815c61eb4', '[\"*\"]', NULL, NULL, '2023-12-21 17:11:38', '2023-12-21 17:11:38'),
(72, 'App\\Models\\Customer', 30, 'MyApp', '61a5ba1741d0cca61f6c860dc9269efebe34c57cbb7978cbfaf5b3b43aa66c35', '[\"*\"]', NULL, NULL, '2023-12-21 17:14:22', '2023-12-21 17:14:22'),
(73, 'App\\Models\\Customer', 31, 'MyApp', '8d317d6517dde8341314c2bcd368bd7de63ed9fdf510f58cb93bf7e5af78e679', '[\"*\"]', NULL, NULL, '2023-12-21 17:14:51', '2023-12-21 17:14:51'),
(74, 'App\\Models\\Customer', 27, 'mobile', 'c5d856ba2c302a3f56c623da7e139eba8cf90b0fa92ff15af3819c78f6c44b8a', '[\"role:customer\"]', NULL, NULL, '2023-12-21 17:15:23', '2023-12-21 17:15:23'),
(75, 'App\\Models\\Customer', 27, 'mobile', 'bf4f561f638e9bd1582a4c01802106ae9ee6f98f88d866c0969018e1b4742c65', '[\"role:customer\"]', NULL, NULL, '2023-12-21 17:18:44', '2023-12-21 17:18:44'),
(76, 'App\\Models\\Customer', 27, 'mobile', 'cd9863bccdca1692ffc5fa7dd53be2519db462603dee9538ffc7553b0ad63bde', '[\"role:customer\"]', NULL, NULL, '2023-12-21 17:19:15', '2023-12-21 17:19:15'),
(77, 'App\\Models\\Customer', 27, 'mobile', 'd2005794606b5203af9905e96e7028fb40634620eb26852ba4d2b909efddb3ba', '[\"role:customer\"]', NULL, NULL, '2023-12-21 17:20:11', '2023-12-21 17:20:11'),
(78, 'App\\Models\\Customer', 27, 'mobile', '64c05458d7c8b7f931a775dbbe5f470f97e377d7344e9f2a35d7b5023ff58d62', '[\"role:customer\"]', NULL, NULL, '2023-12-21 17:23:02', '2023-12-21 17:23:02'),
(79, 'App\\Models\\CorporateID', 8, 'mobile', '05faf7c09a2ecaea8105049fe5d9843c4b22da19dbe0ba90e01f08d02c3bd1a1', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 17:26:36', '2023-12-21 17:26:36'),
(80, 'App\\Models\\CorporateID', 8, 'mobile', 'a24af2d7c054f5a91c063cd5b9c1cdb265913799c4bcec8e0652fb315d31e474', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 17:27:05', '2023-12-21 17:27:05'),
(81, 'App\\Models\\CorporateID', 8, 'mobile', 'c1a736953a4d0f6f748897621ebfebba7af097a889baad80c13acf125f867ef5', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 17:47:25', '2023-12-21 17:47:25'),
(82, 'App\\Models\\CorporateID', 8, 'mobile', '293280db463bf1b2657dff7fbf8a51db25a1d4788cb64b783cacac488c9b6c54', '[\"role:corporate\"]', '2023-12-21 19:15:12', NULL, '2023-12-21 18:34:03', '2023-12-21 19:15:12'),
(83, 'App\\Models\\Customer', 27, 'mobile', '843eb4c66fff32bc2ca33f319af64995d2fdf713c6bae51f24c58d64eab80717', '[\"role:customer\"]', NULL, NULL, '2023-12-21 19:28:27', '2023-12-21 19:28:27'),
(84, 'App\\Models\\Customer', 27, 'mobile', '7c5c54b72afaa44b655b13bbbd7433b649cb88d33689fd48194618906d261c52', '[\"role:customer\"]', NULL, NULL, '2023-12-21 19:32:56', '2023-12-21 19:32:56'),
(85, 'App\\Models\\Customer', 27, 'mobile', '18bdac306ec5a3e255caebbeb26e53c4e1a92f23e2926bdad208a52410410fdf', '[\"role:customer\"]', NULL, NULL, '2023-12-21 19:40:40', '2023-12-21 19:40:40'),
(86, 'App\\Models\\CorporateID', 8, 'mobile', 'cfb3d4a00529a10c39a1cab9095db084f3f3597d2e7b7f706ad6d453b00f62cc', '[\"role:corporate\"]', '2023-12-21 19:41:11', NULL, '2023-12-21 19:40:55', '2023-12-21 19:41:11'),
(87, 'App\\Models\\Customer', 32, 'MyApp', 'd2428578b9c8eb80a1f55d1f3adc89c364a8afabb05738cbdb03fd70db962df4', '[\"*\"]', NULL, NULL, '2023-12-21 19:42:08', '2023-12-21 19:42:08'),
(88, 'App\\Models\\Customer', 27, 'mobile', 'd04887e8756b75e41e3b65410d94c3f76d94f757e68f27029bbf8a10c1f098d5', '[\"role:customer\"]', NULL, NULL, '2023-12-21 19:58:37', '2023-12-21 19:58:37'),
(89, 'App\\Models\\Customer', 27, 'mobile', '57c0ecbd7ecb6de38b0728098a23f46e7c89af4510dc37f702ecda58a796f910', '[\"role:customer\"]', NULL, NULL, '2023-12-21 20:00:05', '2023-12-21 20:00:05'),
(90, 'App\\Models\\Customer', 27, 'mobile', 'ba1a585fe7cafe4bb855a3b7f3afb0506c5126667ac80972f2aed673c5d8f47d', '[\"role:customer\"]', NULL, NULL, '2023-12-21 20:01:48', '2023-12-21 20:01:48'),
(91, 'App\\Models\\Customer', 27, 'mobile', 'bbc95b07cc636bf5f886558e5be88820929f42d3146e82c9b82f835cf83e93e2', '[\"role:customer\"]', NULL, NULL, '2023-12-21 20:03:08', '2023-12-21 20:03:08'),
(92, 'App\\Models\\Customer', 27, 'mobile', '3eec9ae76465dc9148ca08e4e05cdc2202603dc6e2dd6fd1e22ccfc36cee4cd3', '[\"role:customer\"]', '2023-12-21 20:06:32', NULL, '2023-12-21 20:05:55', '2023-12-21 20:06:32'),
(93, 'App\\Models\\CorporateID', 8, 'mobile', '8929a9bdf1ec00ad67b1d1e18d1d7ac5034bb148edd3947edcbe225a431b5571', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 20:11:21', '2023-12-21 20:11:21'),
(94, 'App\\Models\\CorporateID', 8, 'mobile', '5533772a97fc1f0dfa0bd2f603a6b9846657b1b9423a6c26e8a4486e963d448f', '[\"role:corporate\"]', '2023-12-21 20:15:52', NULL, '2023-12-21 20:15:13', '2023-12-21 20:15:52'),
(95, 'App\\Models\\Customer', 27, 'mobile', 'fc0cc65a4cd68e37aa7664daa1b775f6e4f9ce5b5e1d30bfdda1705c50070da5', '[\"role:customer\"]', NULL, NULL, '2023-12-21 20:29:55', '2023-12-21 20:29:55'),
(96, 'App\\Models\\CorporateID', 8, 'mobile', '056f02716a8fa467dccab5d6e7465c263e4461d8d84a55769eb8db54bf6a471b', '[\"role:corporate\"]', NULL, NULL, '2023-12-21 20:30:19', '2023-12-21 20:30:19'),
(97, 'App\\Models\\Customer', 25, 'mobile', '245eb9dafef09a8f089dfc78e4efdbeee697422205da15a638a4145d4bbc1ac6', '[\"role:customer\"]', '2023-12-21 20:43:58', NULL, '2023-12-21 20:42:34', '2023-12-21 20:43:58'),
(98, 'App\\Models\\Customer', 25, 'mobile', 'f8fe9c19dad2211e9295330bb8d78e5f83d754b02443128f4fdabac58576a420', '[\"role:customer\"]', NULL, NULL, '2023-12-22 12:56:26', '2023-12-22 12:56:26'),
(99, 'App\\Models\\Customer', 25, 'mobile', '5ffa58a81e0dc04da3fd798ec94d4db14439a61c9be5486a88d46dac4ee053fb', '[\"role:customer\"]', NULL, NULL, '2023-12-25 13:43:28', '2023-12-25 13:43:28'),
(100, 'App\\Models\\Customer', 18, 'mobile', '948279cfb5da4efc58644231b5502a7764d40c14f9078f0c6271dd7575181eb4', '[\"role:customer\"]', NULL, NULL, '2023-12-25 16:57:33', '2023-12-25 16:57:33'),
(101, 'App\\Models\\Customer', 18, 'mobile', '8fc1d0e1c15d88811b240acd9c1d9aba9645222a233f74223441a8ef05f66790', '[\"role:customer\"]', NULL, NULL, '2023-12-25 17:00:18', '2023-12-25 17:00:18'),
(102, 'App\\Models\\Customer', 18, 'mobile', '738ffdb5c2249e6469128bb65280c45b662c16bcb14f9ba1556c69fc950a4a10', '[\"role:customer\"]', NULL, NULL, '2023-12-25 17:03:43', '2023-12-25 17:03:43'),
(103, 'App\\Models\\Customer', 9, 'mobile', '0a7d6001c111a9fe0e827f60adc24651cc898a8e160465427e0cf2b9b117506e', '[\"role:customer\"]', '2023-12-25 17:10:04', NULL, '2023-12-25 17:09:05', '2023-12-25 17:10:04'),
(104, 'App\\Models\\Customer', 18, 'mobile', '1e346162620812cbf9f543743b64139f4071047af41822fd0b9b9db97216142b', '[\"role:customer\"]', NULL, NULL, '2023-12-25 17:09:13', '2023-12-25 17:09:13'),
(105, 'App\\Models\\Customer', 18, 'mobile', 'fe1fda1a45e711f8951467413158bea970583f4345d49a3a233872bbb4c4e0a6', '[\"role:customer\"]', NULL, NULL, '2023-12-25 17:11:23', '2023-12-25 17:11:23'),
(106, 'App\\Models\\CorporateID', 8, 'mobile', 'f01fd193c59da3378e1d4a0bc683dd984a5b840da4ed0ba39824e7b14274f448', '[\"role:corporate\"]', NULL, NULL, '2023-12-27 16:58:38', '2023-12-27 16:58:38'),
(107, 'App\\Models\\Customer', 18, 'mobile', '061b04151e08825cccf1db9c2b42c359837de5a46a0d6ca9d6edc28645f0ab38', '[\"role:customer\"]', '2024-01-03 16:56:32', NULL, '2023-12-27 17:08:44', '2024-01-03 16:56:32'),
(108, 'App\\Models\\CorporateID', 10, 'mobile', '2e9deb8c2530e1f96dc13465a64a122be9c670e1f7b9f776d4a652512a933d1e', '[\"role:corporate\"]', NULL, NULL, '2023-12-27 18:30:48', '2023-12-27 18:30:48'),
(109, 'App\\Models\\CorporateID', 10, 'mobile', '5db5904a6c672df367dab84d7b9aa19470b1af7575b1270fd5b2589dd19b22b4', '[\"role:corporate\"]', NULL, NULL, '2023-12-27 18:30:53', '2023-12-27 18:30:53'),
(110, 'App\\Models\\CorporateID', 10, 'mobile', '96349761d492735300ed01beeb40fe7bf61dd75638b7311242367a5a233166df', '[\"role:corporate\"]', '2023-12-29 16:57:37', NULL, '2023-12-27 18:30:58', '2023-12-29 16:57:37'),
(111, 'App\\Models\\Customer', 18, 'mobile', '9354fd5f869cb1db49261717f4637de40bf7ba2e3ff88d47073d1d1e972ca29e', '[\"role:customer\"]', '2024-01-11 20:32:55', NULL, '2023-12-27 18:59:20', '2024-01-11 20:32:55'),
(112, 'App\\Models\\Customer', 25, 'mobile', '5699f9e6af362f7884c39efec7022edeee13753fd18d13686e31b044bf162522', '[\"role:customer\"]', NULL, NULL, '2023-12-28 16:37:23', '2023-12-28 16:37:23'),
(113, 'App\\Models\\Customer', 25, 'mobile', '5cb90cdb1f1cdb4848424bba9fe1212846101ecaa2fa9eaa9df50c417e0ff769', '[\"role:customer\"]', NULL, NULL, '2023-12-28 16:37:23', '2023-12-28 16:37:23'),
(114, 'App\\Models\\Customer', 25, 'mobile', '2bda55a4cd824146eeabc6ef32dfaf50c13a185f250d1d2d1a6c90507f6c8426', '[\"role:customer\"]', '2024-01-02 20:54:04', NULL, '2023-12-28 16:41:14', '2024-01-02 20:54:04'),
(115, 'App\\Models\\CorporateID', 10, 'mobile', '2d6bcbf441ced1bd128a19fd8442ea141e16c96030c247460bbee0566f17e8c4', '[\"role:corporate\"]', NULL, NULL, '2023-12-29 20:04:47', '2023-12-29 20:04:47'),
(116, 'App\\Models\\CorporateID', 10, 'mobile', '58b120cdcf4d61e1042494f661a7bf6849785163627385486984603985008c69', '[\"role:corporate\"]', NULL, NULL, '2023-12-29 20:08:19', '2023-12-29 20:08:19'),
(117, 'App\\Models\\CorporateID', 10, 'mobile', 'bdb38733826b93781c33591f7bdce21a3d5ae209048651a56d90239a3db47bdf', '[\"role:corporate\"]', NULL, NULL, '2023-12-29 20:24:32', '2023-12-29 20:24:32'),
(118, 'App\\Models\\CorporateID', 10, 'mobile', '0a75c73391c7c15f7edb4d7916711fc513238303e5e71c3df77073639cf28d09', '[\"role:corporate\"]', NULL, NULL, '2023-12-29 20:38:27', '2023-12-29 20:38:27'),
(119, 'App\\Models\\CorporateID', 10, 'mobile', 'c0d82f7c37095d85042a7e336d61b0cc8d9606b2807f3ffedbd0d40e2648c66a', '[\"role:corporate\"]', NULL, NULL, '2023-12-29 20:41:18', '2023-12-29 20:41:18'),
(120, 'App\\Models\\CorporateID', 10, 'mobile', 'b2d4780f41342407be41b27ab5aeeb0e015192f0b1d7b3dc1c20b4f4e59aca33', '[\"role:corporate\"]', NULL, NULL, '2023-12-30 12:15:27', '2023-12-30 12:15:27'),
(121, 'App\\Models\\CorporateID', 10, 'mobile', 'fd2386d4067becfcf08e1a22c456983e0cd52c4925a3a6b02723a4ccada6b0de', '[\"role:corporate\"]', NULL, NULL, '2023-12-30 12:35:29', '2023-12-30 12:35:29'),
(122, 'App\\Models\\CorporateID', 10, 'mobile', '9516a2a45b6fdd83179def6a1758a7694c057ea5792c237b961fdabe513285fa', '[\"role:corporate\"]', NULL, NULL, '2023-12-30 12:38:34', '2023-12-30 12:38:34'),
(123, 'App\\Models\\Customer', 18, 'mobile', '32013949adbffa80e967e194857dfda848436b6974f67f16eea0ea8ece912b35', '[\"role:customer\"]', '2024-01-04 19:27:59', NULL, '2023-12-30 12:42:27', '2024-01-04 19:27:59'),
(124, 'App\\Models\\CorporateID', 10, 'mobile', '48edfed94fecaf6586470e2dc4e703a8e77cb724300f450216a8901fdc5f0554', '[\"role:corporate\"]', NULL, NULL, '2023-12-30 12:45:20', '2023-12-30 12:45:20'),
(125, 'App\\Models\\CorporateID', 10, 'mobile', 'f0a2c2f16419e337863dd24d1c2fd8bd1278ba619b5f0b014f8833ed36557d73', '[\"role:corporate\"]', NULL, NULL, '2023-12-30 12:50:16', '2023-12-30 12:50:16'),
(126, 'App\\Models\\CorporateID', 10, 'mobile', '8d9119065e394374e2198def41ba5c0aef34dde132c77706edeadca175a6f3cd', '[\"role:corporate\"]', NULL, NULL, '2023-12-30 13:11:08', '2023-12-30 13:11:08'),
(127, 'App\\Models\\CorporateID', 10, 'mobile', 'e30a83d0388b3ab004a32a7e9944bf2972d59c9e0782d4a46e54ab889142dd27', '[\"role:corporate\"]', NULL, NULL, '2023-12-30 13:32:35', '2023-12-30 13:32:35'),
(128, 'App\\Models\\CorporateID', 10, 'mobile', '5feab8802a4c8380f5dc1bd529c92443e1f33e4115726303dc16d1ef42ae5895', '[\"role:corporate\"]', NULL, NULL, '2023-12-30 13:32:55', '2023-12-30 13:32:55'),
(129, 'App\\Models\\CorporateID', 10, 'mobile', '67619541fbe4641c65a599451ea3f5c5be8e9e76086abb0134486e30965fb7af', '[\"role:corporate\"]', '2023-12-30 13:59:56', NULL, '2023-12-30 13:45:17', '2023-12-30 13:59:56'),
(130, 'App\\Models\\CorporateID', 10, 'mobile', '0aa84f41fbd70ca219a382c871ec012a315ac83b084394808236e1425ce48715', '[\"role:corporate\"]', NULL, NULL, '2023-12-30 14:07:41', '2023-12-30 14:07:41'),
(131, 'App\\Models\\Customer', 18, 'mobile', 'd73fab44361626799f06b7659029b319aec0b9359023d1f5dd30d1e0f9bd20be', '[\"role:customer\"]', '2023-12-30 21:01:47', NULL, '2023-12-30 14:22:41', '2023-12-30 21:01:47'),
(132, 'App\\Models\\Customer', 18, 'mobile', '113679665b88ea7b3eb70e655bd4105a4c74a498bdb2087338ce6f3f94053469', '[\"role:customer\"]', '2023-12-30 20:05:46', NULL, '2023-12-30 19:52:25', '2023-12-30 20:05:46'),
(133, 'App\\Models\\Customer', 18, 'mobile', '3a4a65ee9ea779d1c5c2c4e3ebc92c2ff81a1a489e69413e3bc08d2527546047', '[\"role:customer\"]', '2023-12-30 21:19:51', NULL, '2023-12-30 20:48:12', '2023-12-30 21:19:51'),
(134, 'App\\Models\\CorporateID', 10, 'mobile', '0ca1804d68ef04760d9841c472485bdfba3d7872e7ab80e9e40a718ba7b0d31d', '[\"role:corporate\"]', '2023-12-30 21:22:22', NULL, '2023-12-30 21:20:38', '2023-12-30 21:22:22'),
(135, 'App\\Models\\Customer', 18, 'mobile', '0e668743043f579d3c1d866a351cdd6da5fab78dfc6bc03fc5d91a5b35cff289', '[\"role:customer\"]', '2023-12-30 22:09:14', NULL, '2023-12-30 21:23:34', '2023-12-30 22:09:14'),
(136, 'App\\Models\\CorporateID', 10, 'mobile', '6eb983aaa84e190dfd16d4a3b0c6f3c384f96c36eb06700d612aa009e7655403', '[\"role:corporate\"]', '2023-12-30 22:11:21', NULL, '2023-12-30 22:10:57', '2023-12-30 22:11:21'),
(137, 'App\\Models\\CorporateID', 10, 'mobile', '83bba5baa9418cf834b412a325760a33d459ce45772d965185b0135956fa655c', '[\"role:corporate\"]', '2023-12-30 22:21:18', NULL, '2023-12-30 22:13:28', '2023-12-30 22:21:18'),
(138, 'App\\Models\\Customer', 33, 'MyApp', '07db88100d1408afd4fa8c8de6ff7a38cfb91129e87e51498fc85ad338b9a3db', '[\"*\"]', NULL, NULL, '2023-12-30 22:22:21', '2023-12-30 22:22:21'),
(139, 'App\\Models\\Customer', 33, 'mobile', '0c915eb9bc40fedd26cc200c1234a205448a889c8659aa655a8b5bd31e70e04f', '[\"role:customer\"]', '2023-12-31 20:29:39', NULL, '2023-12-30 22:22:48', '2023-12-31 20:29:39'),
(140, 'App\\Models\\CorporateID', 10, 'mobile', '355d405569466f62a595a27df4c1cdf181791f6d502d6057c7d48aba3a905c5c', '[\"role:corporate\"]', '2023-12-31 20:34:59', NULL, '2023-12-31 20:31:37', '2023-12-31 20:34:59'),
(141, 'App\\Models\\Customer', 34, 'MyApp', '0bb2ea57eeb4a237510a5fd0303fc11c039054ff29d751cfe89256342e0eb4fb', '[\"*\"]', NULL, NULL, '2024-01-02 01:32:32', '2024-01-02 01:32:32'),
(142, 'App\\Models\\Customer', 34, 'mobile', 'deddfb94c593f3a76b8ceb36ef210161b18be88c5e24b0233cfb9504b336394a', '[\"role:customer\"]', '2024-01-02 01:35:25', NULL, '2024-01-02 01:32:49', '2024-01-02 01:35:25'),
(143, 'App\\Models\\Customer', 34, 'mobile', '4f1279dabef8d9f7f90cbb34f3037ac77b72f6c36fba3b79d59ed08a08833ef0', '[\"role:customer\"]', '2024-01-02 20:27:05', NULL, '2024-01-02 11:39:34', '2024-01-02 20:27:05'),
(144, 'App\\Models\\Customer', 18, 'mobile', 'a443e2cac3f0e8ca4ad75861fd80752f4e82fb64be3998d04f399523363e565a', '[\"role:customer\"]', NULL, NULL, '2024-01-02 15:00:29', '2024-01-02 15:00:29'),
(145, 'App\\Models\\Customer', 18, 'mobile', '0186a35ef295b615f9e909f86071ed586bc2daac7759fc11b8642bb9b628d646', '[\"role:customer\"]', '2024-01-02 15:05:45', NULL, '2024-01-02 15:04:12', '2024-01-02 15:05:45'),
(146, 'App\\Models\\CorporateID', 10, 'mobile', 'ca71795decc3f73a6e914fb7418092a7d67fe22f20198375c6afe88f55aabd38', '[\"role:corporate\"]', '2024-01-02 20:06:41', NULL, '2024-01-02 19:51:06', '2024-01-02 20:06:41'),
(147, 'App\\Models\\Customer', 34, 'mobile', 'd516ae894d3be34226e8d3ddf6b4ea90d63d5d63e36d3c5b49757665d897ecd7', '[\"role:customer\"]', '2024-01-02 20:23:06', NULL, '2024-01-02 20:07:14', '2024-01-02 20:23:06'),
(148, 'App\\Models\\CorporateID', 10, 'mobile', 'c4d6647c949ab897361041023d4afedba1f14152fa6b7c9bcbf89fd1de9d4255', '[\"role:corporate\"]', '2024-01-02 20:26:34', NULL, '2024-01-02 20:23:29', '2024-01-02 20:26:34'),
(149, 'App\\Models\\Customer', 34, 'mobile', '5b16d5fb491261d6f6530ad7fac58941b2f409508aa6fb5af9d156e6c6890f1a', '[\"role:customer\"]', '2024-01-02 20:35:09', NULL, '2024-01-02 20:27:24', '2024-01-02 20:35:09'),
(150, 'App\\Models\\CorporateID', 10, 'mobile', 'fdb1d1025712dbbdbda39282ccd06e9011b69f875b28ad65b9a9a6a132ef9591', '[\"role:corporate\"]', '2024-01-02 20:40:44', NULL, '2024-01-02 20:35:30', '2024-01-02 20:40:44'),
(151, 'App\\Models\\Customer', 34, 'mobile', '077476d4060bd25f2fac224b89ffcd4733e330788291420db627e300c7ea6a7c', '[\"role:customer\"]', '2024-01-02 21:21:04', NULL, '2024-01-02 20:41:10', '2024-01-02 21:21:04'),
(152, 'App\\Models\\CorporateID', 10, 'mobile', '51ddf7d9ec63a6182d2bb2bbae7b1f90a1887a904704dea95f230b22c1dfeab5', '[\"role:corporate\"]', '2024-01-02 20:58:02', NULL, '2024-01-02 20:55:09', '2024-01-02 20:58:02'),
(153, 'App\\Models\\Customer', 34, 'mobile', '6428277ad6365b044a320019ce0249b56f902761cef97886f4c133f83884d999', '[\"role:customer\"]', '2024-01-03 18:05:47', NULL, '2024-01-02 20:58:25', '2024-01-03 18:05:47'),
(154, 'App\\Models\\CorporateID', 10, 'mobile', '6d190f1293c552224de41aae1039425ec70ecf7c699cfd8c6c51e8c544c7f05e', '[\"role:corporate\"]', '2024-01-02 21:23:04', NULL, '2024-01-02 21:21:51', '2024-01-02 21:23:04'),
(155, 'App\\Models\\Customer', 35, 'MyApp', '06c791c86614ea8abeffd1e59a46cd5eba16d3563a460cfc0f17154b195007a6', '[\"*\"]', NULL, NULL, '2024-01-02 21:23:56', '2024-01-02 21:23:56'),
(156, 'App\\Models\\Customer', 35, 'mobile', '23d93ab9fcd2af1e9d6356db7d74a3f88c622b7fb0402c4e1087fa02342d862a', '[\"role:customer\"]', '2024-01-02 21:26:31', NULL, '2024-01-02 21:24:15', '2024-01-02 21:26:31'),
(157, 'App\\Models\\Customer', 35, 'mobile', '204d5266c732119b96783577ce48f7dd03c920e46f11538444ef3fb7bc3f64be', '[\"role:customer\"]', '2024-01-03 12:15:36', NULL, '2024-01-03 12:15:31', '2024-01-03 12:15:36'),
(158, 'App\\Models\\Customer', 35, 'mobile', '6e9d7d04113be7a0890edfd1d0532f9f6dcecae2fa646a08a268cf7963e029d0', '[\"role:customer\"]', '2024-01-03 12:20:59', NULL, '2024-01-03 12:15:36', '2024-01-03 12:20:59'),
(159, 'App\\Models\\CorporateID', 10, 'mobile', 'd2e2cab28896c4791fad2991ad1850b4f08575330545a9eccb566ff368ef85da', '[\"role:corporate\"]', '2024-01-03 16:55:52', NULL, '2024-01-03 12:26:14', '2024-01-03 16:55:52'),
(160, 'App\\Models\\CorporateID', 10, 'mobile', 'f7ebd3d3b8385caf467a99e4d4e1142cd27e5cfdc2f66ee5a560f508db497ee6', '[\"role:corporate\"]', '2024-01-03 17:55:49', NULL, '2024-01-03 16:35:19', '2024-01-03 17:55:49'),
(161, 'App\\Models\\Customer', 35, 'mobile', '6bb83764417ad28270366ceba061439d045f8f315d7ffe8f4968ce65fc619ced', '[\"role:customer\"]', '2024-01-04 13:21:40', NULL, '2024-01-03 16:46:35', '2024-01-04 13:21:40'),
(162, 'App\\Models\\Customer', 35, 'mobile', 'd85c7181a96015d678b8d5fcd64a4f1faa4d05e8bbcfe77bc1ae74f05bbdbc9b', '[\"role:customer\"]', '2024-01-03 17:19:24', NULL, '2024-01-03 17:04:08', '2024-01-03 17:19:24'),
(163, 'App\\Models\\Customer', 25, 'mobile', '4dee0ddc2f83f718c11baa553ea612ab16d29166b7a0e28d7ecf239fad71be74', '[\"role:customer\"]', '2024-01-04 13:02:10', NULL, '2024-01-03 20:51:10', '2024-01-04 13:02:10'),
(164, 'App\\Models\\Customer', 18, 'mobile', 'd48d8ac45306faf3d2abbd0787b73c124a18b79fe4c1fff44eb889ac9db18dcc', '[\"role:customer\"]', NULL, NULL, '2024-01-04 00:45:17', '2024-01-04 00:45:17'),
(165, 'App\\Models\\Customer', 35, 'mobile', '5cc23f1c4190ab9fd03bf6a92a176454b988867d255804e93f2898b930141229', '[\"role:customer\"]', '2024-01-04 13:54:03', NULL, '2024-01-04 13:53:53', '2024-01-04 13:54:03'),
(166, 'App\\Models\\Customer', 35, 'mobile', '82a80dce5ff68040da85e797c5461e7807e30c50babb05a428933122820b4c13', '[\"role:customer\"]', '2024-01-04 13:54:59', NULL, '2024-01-04 13:54:58', '2024-01-04 13:54:59'),
(167, 'App\\Models\\Customer', 35, 'mobile', '0f37cb87fc8917916f20801dc07cdbdefd2e4e319f305c71dc6da3bfab782b12', '[\"role:customer\"]', '2024-01-04 13:55:51', NULL, '2024-01-04 13:55:50', '2024-01-04 13:55:51'),
(168, 'App\\Models\\Customer', 35, 'mobile', '67f8891cfbe2ca5e04422d7ca61bea0885bfb699102af0988b02e96e61369bae', '[\"role:customer\"]', '2024-01-04 14:21:29', NULL, '2024-01-04 13:56:38', '2024-01-04 14:21:29'),
(169, 'App\\Models\\Customer', 18, 'mobile', '9b40876b85eedb625f20c51f5b48140f71a905f5aac0cddadd7cf92be0715d5d', '[\"role:customer\"]', NULL, NULL, '2024-01-04 13:58:08', '2024-01-04 13:58:08'),
(170, 'App\\Models\\CorporateID', 10, 'mobile', '7867f4998f58c712d1e86fc67cc583714c0c79e0dfbc49fd9fba9a6c9792d885', '[\"role:corporate\"]', NULL, NULL, '2024-01-04 14:00:44', '2024-01-04 14:00:44'),
(171, 'App\\Models\\Customer', 35, 'mobile', 'a9d9a9b73c5fb8bf05f5a6bacec8f8a7bc42ea224f95f99cb9059daee94d7142', '[\"role:customer\"]', '2024-01-04 14:24:27', NULL, '2024-01-04 14:23:29', '2024-01-04 14:24:27'),
(172, 'App\\Models\\Customer', 35, 'mobile', '4ee947e8dd9053ca5decc448fbb371146094fb7694ba2a075e9ac21cf95b963a', '[\"role:customer\"]', '2024-01-04 14:26:57', NULL, '2024-01-04 14:25:32', '2024-01-04 14:26:57'),
(173, 'App\\Models\\Customer', 35, 'mobile', '78452ac9433c7830055e12b55e5f201d398ba22861eb589c404d5c9a5266f04e', '[\"role:customer\"]', '2024-01-04 14:30:31', NULL, '2024-01-04 14:29:09', '2024-01-04 14:30:31'),
(174, 'App\\Models\\CorporateID', 10, 'mobile', '480429cf5e9d2cc685fe6288d5355763e4b11aca7cb528f258b1d9a8d86a05cd', '[\"role:corporate\"]', '2024-01-08 01:27:17', NULL, '2024-01-04 14:29:59', '2024-01-08 01:27:17'),
(175, 'App\\Models\\CorporateID', 10, 'mobile', '732c6f0f4e59af8d3e5ad609ec45dcbff311eb4758e1a8c2ddaa6ea6121514e5', '[\"role:corporate\"]', '2024-01-04 14:39:22', NULL, '2024-01-04 14:30:44', '2024-01-04 14:39:22'),
(176, 'App\\Models\\CorporateID', 10, 'mobile', 'e6d3f19334bfa974c5da28635d96b2290569868e7213205898ca7c1b74766bf2', '[\"role:corporate\"]', '2024-01-04 14:56:46', NULL, '2024-01-04 14:39:54', '2024-01-04 14:56:46'),
(177, 'App\\Models\\CorporateID', 10, 'mobile', 'bfbf3258be4e36fb8dbab548657cb180c2ca8c1797acae17db72df3e9002f6d8', '[\"role:corporate\"]', '2024-01-04 20:20:40', NULL, '2024-01-04 14:58:12', '2024-01-04 20:20:40'),
(178, 'App\\Models\\Customer', 35, 'mobile', '4a193f5e0ac6a704855b90aa5836685802e1ec3ed76e2d963f9aa1dfa222fb62', '[\"role:customer\"]', '2024-01-04 19:35:08', NULL, '2024-01-04 19:32:13', '2024-01-04 19:35:08'),
(179, 'App\\Models\\CorporateID', 10, 'mobile', '64c40b55fa8b6a925e9eb39ab8c344f35a3d8ce9f286c2bd30a9b36daee5d063', '[\"role:corporate\"]', '2024-01-04 21:01:01', NULL, '2024-01-04 19:35:26', '2024-01-04 21:01:01'),
(180, 'App\\Models\\Customer', 35, 'mobile', 'd8be17310c811d8ed67817971355a0cc4875f8a4d8a5495cc3d5a0ecb44702f4', '[\"role:customer\"]', '2024-01-04 21:03:00', NULL, '2024-01-04 21:01:39', '2024-01-04 21:03:00'),
(181, 'App\\Models\\CorporateID', 10, 'mobile', '0ec7049d3faad70ae7b8535f8b273e879d4582e61d5eaee4f20a577f20ce6f2d', '[\"role:corporate\"]', '2024-01-05 12:20:52', NULL, '2024-01-05 12:06:45', '2024-01-05 12:20:52'),
(182, 'App\\Models\\Customer', 35, 'mobile', '69b70c88bc0791a5b866513a2ea56c224d8227235014e4842252a6a68e81f22f', '[\"role:customer\"]', '2024-01-05 19:43:34', NULL, '2024-01-05 12:21:17', '2024-01-05 19:43:34'),
(183, 'App\\Models\\CorporateID', 10, 'mobile', '3638885c466af1637c21e5c50cb6c4f07cc73471568cae71aeee537a7b56f7a8', '[\"role:corporate\"]', '2024-01-06 21:14:01', NULL, '2024-01-05 19:43:54', '2024-01-06 21:14:01'),
(184, 'App\\Models\\CorporateID', 10, 'mobile', '9640336ccd5427aa54e956f6b6dd32a3d1cbc59bad27612773f3d6562273a395', '[\"role:corporate\"]', '2024-01-06 17:11:15', NULL, '2024-01-06 12:34:37', '2024-01-06 17:11:15'),
(185, 'App\\Models\\CorporateID', 10, 'mobile', '3d69404b4331d83944645cac1d7170c350e638792eec4f037a4671a4a37113be', '[\"role:corporate\"]', '2024-01-06 17:14:05', NULL, '2024-01-06 17:13:07', '2024-01-06 17:14:05'),
(186, 'App\\Models\\CorporateID', 10, 'mobile', 'e832bfbcfa2d8032d04c7fc9e529165c8ca48e7fe6484e021db5fc84d6e18341', '[\"role:corporate\"]', '2024-01-06 17:14:23', NULL, '2024-01-06 17:14:22', '2024-01-06 17:14:23'),
(187, 'App\\Models\\CorporateID', 10, 'mobile', 'b57fba6c0a681a7d5a900c1859c15b0f0c87bf92b3c2f96e8d982a890c006ea7', '[\"role:corporate\"]', '2024-01-06 18:00:36', NULL, '2024-01-06 17:14:44', '2024-01-06 18:00:36'),
(188, 'App\\Models\\CorporateID', 10, 'mobile', 'd85f76949ef8efbd3294841c1fc9b7f172483cfc3c7787316b99ae67e3bab04f', '[\"role:corporate\"]', '2024-01-09 18:42:54', NULL, '2024-01-06 18:02:04', '2024-01-09 18:42:54'),
(189, 'App\\Models\\Customer', 35, 'mobile', '41fddfe9fd34cda58f2d3c6646988420e0bdc69bbf151e59c3383a8d6725e974', '[\"role:customer\"]', '2024-01-08 14:06:44', NULL, '2024-01-08 13:24:36', '2024-01-08 14:06:44'),
(190, 'App\\Models\\Customer', 35, 'mobile', '1c55a3ae8f446db0df15f15cb221c155d51c114d6cbe494e51d908c72d2368b0', '[\"role:customer\"]', '2024-01-15 14:05:30', NULL, '2024-01-08 14:14:36', '2024-01-15 14:05:30'),
(191, 'App\\Models\\Customer', 35, 'mobile', 'b850f8c6c018018a5b77da09c12e19e69d6693168f93d4e5eb4a2b374ee2b252', '[\"role:customer\"]', '2024-01-08 20:06:49', NULL, '2024-01-08 17:19:14', '2024-01-08 20:06:49'),
(192, 'App\\Models\\CorporateID', 10, 'mobile', '87751979d242c65145a20619da7b8ace161723b5671860190d7072d8bbc64445', '[\"role:corporate\"]', '2024-01-08 17:49:00', NULL, '2024-01-08 17:38:14', '2024-01-08 17:49:00'),
(193, 'App\\Models\\CorporateID', 10, 'mobile', 'b54b2e3362f237d904e7e9fcf8425d9a0c8f27136f4688b65701126d16da4973', '[\"role:corporate\"]', '2024-01-08 20:27:08', NULL, '2024-01-08 20:07:01', '2024-01-08 20:27:08'),
(194, 'App\\Models\\Customer', 35, 'mobile', 'a43a16b784fadc17d2c0d3e04d26386da7bd7a9e4c2ad8d7472c8b65e693bd21', '[\"role:customer\"]', '2024-01-09 12:49:45', NULL, '2024-01-08 20:27:22', '2024-01-09 12:49:45'),
(195, 'App\\Models\\Customer', 36, 'MyApp', '0062955af509b6a58e52a771828a437b97caf5344fb5840778019b94c1673b72', '[\"*\"]', NULL, NULL, '2024-01-09 12:13:25', '2024-01-09 12:13:25'),
(196, 'App\\Models\\Customer', 36, 'mobile', '2f4c4a5814f9269e70e05e06965d1d3c15282ea3459f678b73de0e3db7866f92', '[\"role:customer\"]', '2024-01-09 15:28:52', NULL, '2024-01-09 12:13:49', '2024-01-09 15:28:52'),
(197, 'App\\Models\\Customer', 35, 'mobile', 'c7943814a42f4cb8f71d3b1931399448ae4a691a17d90720afaac45228401bab', '[\"role:customer\"]', '2024-01-09 13:31:45', NULL, '2024-01-09 12:25:45', '2024-01-09 13:31:45'),
(198, 'App\\Models\\CorporateID', 10, 'mobile', '41ee29877b658eb1434ebb1035fac0700228271bee4af4369595dc41c43a2842', '[\"role:corporate\"]', '2024-01-09 13:09:11', NULL, '2024-01-09 12:56:56', '2024-01-09 13:09:11'),
(199, 'App\\Models\\Customer', 35, 'mobile', 'ea8fc09c5b6bc6847d7f5574f1eb7ae88086faa9f09915002f5e04beb723ac3e', '[\"role:customer\"]', '2024-01-09 13:15:58', NULL, '2024-01-09 13:12:13', '2024-01-09 13:15:58'),
(200, 'App\\Models\\Customer', 35, 'mobile', '098457ff0163356c347e81eb7d98d63deaeabbd5d91ef9388cdb522458e33f1b', '[\"role:customer\"]', '2024-01-09 13:31:47', NULL, '2024-01-09 13:25:09', '2024-01-09 13:31:47'),
(201, 'App\\Models\\CorporateID', 10, 'mobile', '8c07f65e60b7a0ea81d000b10413af177fafb111a1b3db32f96faf94051ed623', '[\"role:corporate\"]', '2024-01-09 14:13:51', NULL, '2024-01-09 13:35:12', '2024-01-09 14:13:51'),
(202, 'App\\Models\\Customer', 35, 'mobile', '4ef62997f556ccbcbf352a1bdda0574ddc675ff37fe2b35c4df771812e584fd3', '[\"role:customer\"]', '2024-01-09 14:27:24', NULL, '2024-01-09 14:26:33', '2024-01-09 14:27:24'),
(203, 'App\\Models\\Customer', 35, 'mobile', '97a0d4cd1490948e236c724b4dadcf059fea0173db93cb1deaa6b7632b094e77', '[\"role:customer\"]', '2024-01-09 15:16:12', NULL, '2024-01-09 14:59:23', '2024-01-09 15:16:12'),
(204, 'App\\Models\\Customer', 35, 'mobile', 'b1733a26042706018a50ed78b57864b807b7dc33eb55524fc6b31962b2c39479', '[\"role:customer\"]', '2024-01-09 17:33:46', NULL, '2024-01-09 15:16:29', '2024-01-09 17:33:46'),
(205, 'App\\Models\\CorporateID', 13, 'mobile', 'b3e606c27dae88ff43f3c46d188643e876b92722669e0fc3edd7bec555e0de5e', '[\"role:corporate\"]', '2024-01-09 16:02:48', NULL, '2024-01-09 15:56:38', '2024-01-09 16:02:48'),
(206, 'App\\Models\\CorporateID', 13, 'mobile', '978249c160b231bba51e982fdef3db08df1ebe5c0b29a0f0d5607efa32414bab', '[\"role:corporate\"]', '2024-01-09 16:37:34', NULL, '2024-01-09 16:03:29', '2024-01-09 16:37:34'),
(207, 'App\\Models\\CorporateID', 13, 'mobile', '97e842e3a504b7eeb80681a8f29833fbe1bd52c6f306820507d3281786bc39f6', '[\"role:corporate\"]', '2024-01-09 17:33:27', NULL, '2024-01-09 17:07:25', '2024-01-09 17:33:27'),
(208, 'App\\Models\\CorporateID', 13, 'mobile', 'ef71a98aa869e3f9184a7f1e7e2a816f8e639add50d2f56bb0ef8a47c10c80e2', '[\"role:corporate\"]', '2024-01-09 19:53:53', NULL, '2024-01-09 17:33:50', '2024-01-09 19:53:53'),
(209, 'App\\Models\\CorporateID', 10, 'mobile', 'ebc48eaec9ecba30166f18794fbbd5d3ea9e7e9a1f89e2e6be3fb92968858e27', '[\"role:corporate\"]', '2024-01-09 17:34:47', NULL, '2024-01-09 17:34:00', '2024-01-09 17:34:47'),
(210, 'App\\Models\\CorporateID', 13, 'mobile', 'fdab3ccd9a26f5eecdebc39bc49998ba995ace9056e13786bc6119193e062d07', '[\"role:corporate\"]', '2024-01-09 17:39:34', NULL, '2024-01-09 17:35:05', '2024-01-09 17:39:34'),
(211, 'App\\Models\\CorporateID', 10, 'mobile', 'd6374abcde8a8e312120d46f52918c9f5a1dd100febc93743da889ea8af707a5', '[\"role:corporate\"]', '2024-01-09 17:40:37', NULL, '2024-01-09 17:39:49', '2024-01-09 17:40:37'),
(212, 'App\\Models\\CorporateID', 13, 'mobile', 'c1498b6163ada63d14b558810644565a295e5613c8444e7262294e9254d71768', '[\"role:corporate\"]', '2024-01-09 19:57:08', NULL, '2024-01-09 17:41:00', '2024-01-09 19:57:08'),
(213, 'App\\Models\\Customer', 35, 'mobile', 'a9599b608b83a07c8a8a8d45a60f4aee2212269d552eb13e7e60b4fc36075d34', '[\"role:customer\"]', '2024-01-09 20:20:39', NULL, '2024-01-09 19:57:42', '2024-01-09 20:20:39'),
(214, 'App\\Models\\CorporateID', 10, 'mobile', '00360c221c4996adc1143210d78d3a61578ac8f4c7f4ba9c8186a25440f909e4', '[\"role:corporate\"]', '2024-01-09 20:21:52', NULL, '2024-01-09 20:20:51', '2024-01-09 20:21:52'),
(215, 'App\\Models\\CorporateID', 13, 'mobile', 'eaae3c012aa1ba8da27e18046e1390e3901b08f2b5e7405822f0d91618738045', '[\"role:corporate\"]', '2024-01-09 20:31:15', NULL, '2024-01-09 20:22:06', '2024-01-09 20:31:15'),
(216, 'App\\Models\\Customer', 35, 'mobile', '895d39a7cbbb44fe5ad70eb072ae0c8cdf74e3928c4b0413cadf59b5b5d10aeb', '[\"role:customer\"]', '2024-01-11 12:22:40', NULL, '2024-01-09 20:31:38', '2024-01-11 12:22:40'),
(217, 'App\\Models\\CorporateID', 13, 'mobile', '708a4540a50c7401379b2ad3820b6455a44f1d336801be06729632efc77b9a94', '[\"role:corporate\"]', '2024-01-10 00:27:03', NULL, '2024-01-09 20:40:27', '2024-01-10 00:27:03'),
(218, 'App\\Models\\CorporateID', 13, 'mobile', '7ec5b8fc6efd7cd788295f2edfebae6b9732da5e9f32be092e5aabcb4b2972ff', '[\"role:corporate\"]', '2024-01-10 21:38:32', NULL, '2024-01-10 13:30:43', '2024-01-10 21:38:32'),
(219, 'App\\Models\\Customer', 37, 'MyApp', 'f25c1ec303ddd818609eadf8b5f1c38a6a215e6621dcdbf0c15317047fdddfa5', '[\"*\"]', NULL, NULL, '2024-01-10 21:16:05', '2024-01-10 21:16:05'),
(220, 'App\\Models\\Customer', 37, 'mobile', '6c4cbd6103d0546332e63267d09c1c5381eeda7398f9effcc02754443df0bfc5', '[\"role:customer\"]', '2024-01-10 21:23:49', NULL, '2024-01-10 21:16:19', '2024-01-10 21:23:49'),
(221, 'App\\Models\\Customer', 38, 'MyApp', 'd068afd26346400520ee8d910b805773eeb4a38f2d64ed8ffa84fce3abd154ba', '[\"*\"]', NULL, NULL, '2024-01-10 21:24:49', '2024-01-10 21:24:49'),
(222, 'App\\Models\\Customer', 38, 'mobile', '7430d3ee76453f01df57b0115e6ee944ca8633c3c60dcac7190687d03f395ec9', '[\"role:customer\"]', '2024-01-10 22:00:07', NULL, '2024-01-10 21:25:01', '2024-01-10 22:00:07'),
(223, 'App\\Models\\Customer', 38, 'mobile', '62f77ac836de318a6c87b270e82433a21c3b31eb8d62ab7017b3e1a023f9578c', '[\"role:customer\"]', '2024-01-11 16:33:21', NULL, '2024-01-10 21:39:23', '2024-01-11 16:33:21'),
(224, 'App\\Models\\Customer', 35, 'mobile', '2d697e7095960a2cc6c726da3f3a49b72f00c4d7b875f7453e3842f43a819d15', '[\"role:customer\"]', '2024-01-11 16:26:31', NULL, '2024-01-11 12:38:13', '2024-01-11 16:26:31'),
(225, 'App\\Models\\Customer', 35, 'mobile', '851b5f360157a6cb83ac210156f412e654a4798640ce0227726f4c9f3af0fccf', '[\"role:customer\"]', '2024-01-11 20:38:52', NULL, '2024-01-11 16:51:53', '2024-01-11 20:38:52'),
(226, 'App\\Models\\Customer', 35, 'mobile', '24c915755b463fbc0d58e1ea7d2eafefaba505160d46923430614671ac348783', '[\"role:customer\"]', '2024-01-11 20:47:39', NULL, '2024-01-11 20:47:23', '2024-01-11 20:47:39'),
(227, 'App\\Models\\Customer', 38, 'mobile', '2a85fab1cda6642efb043519365a8801bb7d1a9b1a32dddc61b3d597d55b56b1', '[\"role:customer\"]', '2024-01-13 14:47:21', NULL, '2024-01-13 12:12:59', '2024-01-13 14:47:21'),
(228, 'App\\Models\\CorporateID', 13, 'mobile', '7699ab00db6a5fe5e7951d4f8cad346f9a5a6c9b275f3ab52977da8eba807f17', '[\"role:corporate\"]', '2024-01-13 14:48:31', NULL, '2024-01-13 14:47:21', '2024-01-13 14:48:31'),
(229, 'App\\Models\\Customer', 10, 'mobile', 'fed255e15070b088382e63061a3dffe3938e869a71875353a0301e625c5c0ce7', '[\"role:customer\"]', '2024-01-13 14:54:48', NULL, '2024-01-13 14:54:37', '2024-01-13 14:54:48'),
(230, 'App\\Models\\CorporateID', 13, 'mobile', 'a426878cbca5fa3e4090c2cb3c5778303f929c7d00bdf589ee98d0b4adca7d7e', '[\"role:corporate\"]', '2024-01-25 15:11:44', NULL, '2024-01-13 14:54:41', '2024-01-25 15:11:44'),
(231, 'App\\Models\\Customer', 38, 'mobile', 'd39fe202dcee322d2866beb1b7d864099652c91c197932f25c6a5a161f659e6a', '[\"role:customer\"]', '2024-01-13 15:02:33', NULL, '2024-01-13 14:55:42', '2024-01-13 15:02:33'),
(232, 'App\\Models\\Customer', 35, 'mobile', '608d014bf1b126e1f92b1bf421c0c2c6da7d0decc3948dd714de71e7bb1dc114', '[\"role:customer\"]', '2024-01-13 23:40:57', NULL, '2024-01-13 23:32:29', '2024-01-13 23:40:57'),
(233, 'App\\Models\\Customer', 35, 'mobile', '53078687712d9ad442bd4ebe07f8685a80e8ae07f8b2d01bfd9ce7bfbf137656', '[\"role:customer\"]', '2024-01-14 12:44:34', NULL, '2024-01-13 23:42:46', '2024-01-14 12:44:34'),
(234, 'App\\Models\\Customer', 38, 'mobile', '4f88f0af2aa9557ff306a8f8332a46dd106c255052b0bfd44cceb26da4cdd992', '[\"role:customer\"]', '2024-01-17 13:21:50', NULL, '2024-01-15 12:13:13', '2024-01-17 13:21:50'),
(235, 'App\\Models\\Customer', 35, 'mobile', '3a3ec169c82032cf5baca26d95ad65818d0b67d290266ce7b953481ab1fbf26e', '[\"role:customer\"]', '2024-01-21 01:18:22', NULL, '2024-01-15 12:45:51', '2024-01-21 01:18:22'),
(236, 'App\\Models\\Customer', 39, 'MyApp', '877fa90053073181596636648e1ae28785e2833be2f7d42b1f301e6eb58c896c', '[\"*\"]', NULL, NULL, '2024-01-15 14:18:08', '2024-01-15 14:18:08'),
(237, 'App\\Models\\Customer', 39, 'mobile', '83c6d04860faf60c88e77be061d2e662ac1cef9ea6468d96154ead65bd69ebb5', '[\"role:customer\"]', '2024-01-17 14:04:37', NULL, '2024-01-15 14:20:48', '2024-01-17 14:04:37'),
(238, 'App\\Models\\Customer', 40, 'MyApp', '5c17ca06dc8fa4fde46c20865087949d6a4d970504afabd8cd0687c43bbf3f18', '[\"*\"]', NULL, NULL, '2024-01-16 15:30:36', '2024-01-16 15:30:36'),
(239, 'App\\Models\\Customer', 40, 'mobile', 'a08f0ccd5abdc1bc2d3cc248405ed3c6175165ac592c4543489ed20cb417943a', '[\"role:customer\"]', '2024-01-17 22:53:30', NULL, '2024-01-16 15:30:56', '2024-01-17 22:53:30'),
(240, 'App\\Models\\Customer', 39, 'mobile', '3355bcfc00a376cd97381d4080c2b09c1c038345be60f965229d47e51990a9f9', '[\"role:customer\"]', '2024-01-17 14:41:34', NULL, '2024-01-17 14:08:31', '2024-01-17 14:41:34'),
(241, 'App\\Models\\Customer', 39, 'mobile', 'd53c1bbb8c6922ca0a63fe1194daa36a841d39285a60fd429a0d625cb2a96666', '[\"role:customer\"]', '2024-01-17 15:21:12', NULL, '2024-01-17 14:44:19', '2024-01-17 15:21:12'),
(242, 'App\\Models\\Customer', 38, 'mobile', 'ab1c75eee6d190919929ac9b23d748eead0779e8f89011a8334d1279543771b0', '[\"role:customer\"]', '2024-01-17 17:54:43', NULL, '2024-01-17 16:30:48', '2024-01-17 17:54:43'),
(243, 'App\\Models\\Customer', 41, 'MyApp', '6f882e642637b6e44998a9557db7b610fd9d251f6fa43ac7ff26666ca12e4c34', '[\"*\"]', NULL, NULL, '2024-01-17 16:47:58', '2024-01-17 16:47:58'),
(244, 'App\\Models\\Customer', 41, 'mobile', 'dd35370ac6b19f3d01c4f5205ee1022d7290fe3963cbdc83d0b5fe3f0fcd6e81', '[\"role:customer\"]', '2024-01-27 18:45:03', NULL, '2024-01-17 16:48:19', '2024-01-27 18:45:03'),
(245, 'App\\Models\\Customer', 42, 'MyApp', '749b23d9fa2d9defe8fe1a883011220cd95b451e7047cd4e4c5eff7b392990a5', '[\"*\"]', NULL, NULL, '2024-01-17 19:39:12', '2024-01-17 19:39:12'),
(246, 'App\\Models\\Customer', 42, 'mobile', '697f0b4eec6bea0dea6760970a0e735a7045c71ae3aa8d9bc81ae9f95b33a487', '[\"role:customer\"]', '2024-01-17 19:41:59', NULL, '2024-01-17 19:39:39', '2024-01-17 19:41:59'),
(247, 'App\\Models\\Customer', 43, 'MyApp', 'a217ecc97212987721f2b815e92b405ffff29ee55c6170f435a9a9d39452c6dc', '[\"*\"]', NULL, NULL, '2024-01-24 14:29:50', '2024-01-24 14:29:50'),
(248, 'App\\Models\\Customer', 43, 'mobile', 'ef0a5f19d8439543b886bf7a096081d30f36b19016735143647320cce5f636fd', '[\"role:customer\"]', '2024-01-31 16:11:05', NULL, '2024-01-24 14:30:42', '2024-01-31 16:11:05'),
(249, 'App\\Models\\CorporateID', 14, 'mobile', 'b0b732c40b0b1a5d7a3ec5fbe3601dec90725efbcd86ecf48da60f4a7eed32f6', '[\"role:corporate\"]', '2024-01-24 19:01:41', NULL, '2024-01-24 18:58:12', '2024-01-24 19:01:41');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(250, 'App\\Models\\CorporateID', 14, 'mobile', '130253de255761e70f2767845545ced66850631bb0f0114951eeeea8d1c13f56', '[\"role:corporate\"]', '2024-01-24 20:14:48', NULL, '2024-01-24 19:01:53', '2024-01-24 20:14:48'),
(251, 'App\\Models\\CorporateID', 14, 'mobile', '3bba4c8499eb76fa2c18447497368ba3a78d86adda29d0cfc2525413d91556f6', '[\"role:corporate\"]', '2024-01-25 12:27:58', NULL, '2024-01-25 12:26:45', '2024-01-25 12:27:58'),
(252, 'App\\Models\\CorporateID', 14, 'mobile', '85ab0540605d3b6b9c2b48f99af48c16d45ae9461dcc25f72bc1628d523d411c', '[\"role:corporate\"]', '2024-01-25 12:39:46', NULL, '2024-01-25 12:31:31', '2024-01-25 12:39:46'),
(253, 'App\\Models\\CorporateID', 14, 'mobile', '6b179bc71c8361709fb504cb47b3ded4b611e889260c133d7769701b56e220f0', '[\"role:corporate\"]', '2024-01-25 12:47:43', NULL, '2024-01-25 12:43:33', '2024-01-25 12:47:43'),
(254, 'App\\Models\\CorporateID', 14, 'mobile', 'db4794db801f0bcbd3251c3112792a95369c952a27c29223fe697d4939d74df0', '[\"role:corporate\"]', '2024-01-25 12:54:04', NULL, '2024-01-25 12:51:15', '2024-01-25 12:54:04'),
(255, 'App\\Models\\CorporateID', 14, 'mobile', 'c9a9ac0dc7f75b405c83831351ebf3399e06c641615bfb5004643ba445497a1b', '[\"role:corporate\"]', '2024-01-25 14:49:42', NULL, '2024-01-25 12:58:44', '2024-01-25 14:49:42'),
(256, 'App\\Models\\CorporateID', 14, 'mobile', 'd06cca502a63bc69b1a1aaa80788b86d74f1375f701ffba2a062514590e97f08', '[\"role:corporate\"]', '2024-01-25 16:51:37', NULL, '2024-01-25 15:06:25', '2024-01-25 16:51:37'),
(257, 'App\\Models\\CorporateID', 14, 'mobile', 'bd8dcce9d1e147402e1a45e02e44af802df65e37b3af3acc50158f5919cc8492', '[\"role:corporate\"]', '2024-01-25 17:01:52', NULL, '2024-01-25 16:56:06', '2024-01-25 17:01:52'),
(258, 'App\\Models\\CorporateID', 14, 'mobile', '524197bd3a63ca75146d7fd048438ede497cdc2334fd3e7064af31a060c401c1', '[\"role:corporate\"]', '2024-01-25 18:26:59', NULL, '2024-01-25 17:02:59', '2024-01-25 18:26:59'),
(259, 'App\\Models\\CorporateID', 14, 'mobile', '507c396a5cd5d43d0727f4c2056b642c84c9d117460762ac3dd5ff3e89903f73', '[\"role:corporate\"]', '2024-01-25 20:37:38', NULL, '2024-01-25 20:13:11', '2024-01-25 20:37:38'),
(260, 'App\\Models\\Customer', 35, 'mobile', '7172ba8560e9ec2db61131e212d45ae4e7d424359f0ed4dadd310b8c3047ef77', '[\"role:customer\"]', '2024-01-29 11:47:39', NULL, '2024-01-26 14:59:49', '2024-01-29 11:47:39'),
(261, 'App\\Models\\Customer', 44, 'MyApp', '90a5694268890ccf2e357b3f1ef801795a125e3b2ba9bcbfdda8544c75be1052', '[\"*\"]', NULL, NULL, '2024-01-30 12:54:59', '2024-01-30 12:54:59'),
(262, 'App\\Models\\Customer', 44, 'mobile', '1a00ad507b32147a925813b2951dcbd75f232739171c64bc7cbf23f5802a4caa', '[\"role:customer\"]', '2024-01-30 19:44:36', NULL, '2024-01-30 12:55:16', '2024-01-30 19:44:36'),
(263, 'App\\Models\\Customer', 45, 'MyApp', 'd5387addf3f9b67c74d56a352d4ac0179a58b2083eab9c4c213414bedfb0ca3d', '[\"*\"]', NULL, NULL, '2024-01-30 12:55:45', '2024-01-30 12:55:45'),
(264, 'App\\Models\\Customer', 45, 'mobile', '8aa753b1f4bd07ee9c0afac2bf27a85915d8d519ff3cf1f0cffdec3fb6163618', '[\"role:customer\"]', '2024-01-30 12:56:56', NULL, '2024-01-30 12:56:02', '2024-01-30 12:56:56'),
(265, 'App\\Models\\Customer', 46, 'MyApp', '7dea1560810006966316c56eff5d3bd4383ac155a8c6220a8e3dafd04dbd4317', '[\"*\"]', NULL, NULL, '2024-01-30 13:04:24', '2024-01-30 13:04:24'),
(266, 'App\\Models\\Customer', 46, 'mobile', '51128cad56fae9780c02e15406d322902a0c49293aef347f7e74e9b440d465cd', '[\"role:customer\"]', '2024-01-30 16:18:47', NULL, '2024-01-30 13:04:46', '2024-01-30 16:18:47'),
(267, 'App\\Models\\CorporateID', 14, 'mobile', 'ba3cfa917ba34413098be13e1e984c502283ffaca86ff00e838be318ab6a91b1', '[\"role:corporate\"]', '2024-01-31 17:18:44', NULL, '2024-01-30 13:52:21', '2024-01-31 17:18:44'),
(268, 'App\\Models\\Customer', 46, 'mobile', '46025528f2d5e2ee793492a2e6d0ebbe1111486f27ebd912eff5106795fa2678', '[\"role:customer\"]', '2024-01-30 15:18:31', NULL, '2024-01-30 15:08:06', '2024-01-30 15:18:31'),
(269, 'App\\Models\\Customer', 46, 'mobile', 'ec2af759a138d8022f89ba02f6029fe507ed86f28afde48be084ed6efe030309', '[\"role:customer\"]', '2024-01-30 16:24:49', NULL, '2024-01-30 16:24:47', '2024-01-30 16:24:49'),
(270, 'App\\Models\\Customer', 46, 'mobile', '1f7fec0b6119772812b125e5badec60d5c36c086f4a70abdaa687218541f1039', '[\"role:customer\"]', '2024-01-30 16:35:48', NULL, '2024-01-30 16:35:45', '2024-01-30 16:35:48'),
(271, 'App\\Models\\Customer', 46, 'mobile', 'da274738b2f73647e183f5b06eb102ddacc487c53839074f58f8eb1b143c5576', '[\"role:customer\"]', '2024-02-01 15:39:31', NULL, '2024-02-01 15:25:33', '2024-02-01 15:39:31'),
(272, 'App\\Models\\Customer', 47, 'MyApp', '80b6eb1d1b40edf78edba581637ace6b91eb1915b7462882ad8541ee30fb3050', '[\"*\"]', NULL, NULL, '2024-02-01 16:37:54', '2024-02-01 16:37:54'),
(273, 'App\\Models\\Customer', 48, 'MyApp', '33874647316af21db50f152b7fbe7a61121ec1b056fb6521ce1817163f1a0686', '[\"*\"]', NULL, NULL, '2024-02-01 16:41:59', '2024-02-01 16:41:59'),
(274, 'App\\Models\\Customer', 46, 'mobile', '5fae8734e264f11849213a1012fbd34a412c0ec29d4c0744cf47e405b3436473', '[\"role:customer\"]', '2024-02-01 17:02:11', NULL, '2024-02-01 16:57:12', '2024-02-01 17:02:11'),
(275, 'App\\Models\\Customer', 46, 'mobile', '4992ba7c355e2a827e1f84c6fd73d957ebb73f7b9009fd81d7afebcdc2d6ed86', '[\"role:customer\"]', NULL, NULL, '2024-02-01 16:57:26', '2024-02-01 16:57:26'),
(276, 'App\\Models\\CorporateID', 14, 'mobile', '1838d74b2331959825d89c89f61fec322a7c54a623c71e2dad5ab9d72167f9d3', '[\"role:corporate\"]', '2024-02-02 18:54:18', NULL, '2024-02-02 12:24:44', '2024-02-02 18:54:18'),
(277, 'App\\Models\\Customer', 46, 'mobile', '020b6d0dea8b3bb1018696ff3390fb8382b83e15626a0adc1e075e92655b2036', '[\"role:customer\"]', '2024-02-02 13:38:14', NULL, '2024-02-02 13:34:37', '2024-02-02 13:38:14'),
(278, 'App\\Models\\Customer', 49, 'MyApp', 'dbffbbf22d928bdafcdd8b0993edc436626fa07b675796d459e340c38eba839a', '[\"*\"]', NULL, NULL, '2024-02-02 14:19:08', '2024-02-02 14:19:08'),
(279, 'App\\Models\\Customer', 49, 'mobile', '0fcf632d94a8d6203614d45a1997aa705308ef8b33c32e82596df688cc236423', '[\"role:customer\"]', '2024-02-02 14:28:01', NULL, '2024-02-02 14:19:22', '2024-02-02 14:28:01'),
(280, 'App\\Models\\Customer', 49, 'mobile', 'a3d2bfb33113e8eb3e1c62799210e45a143cd5c98c4c5e02e3ba0c261f4cd03f', '[\"role:customer\"]', '2024-02-02 18:51:44', NULL, '2024-02-02 18:45:44', '2024-02-02 18:51:44'),
(281, 'App\\Models\\CorporateID', 14, 'mobile', '0512305b858c5160c48525668278d6d5bc8161eb52f139bccfd08505c4600ca2', '[\"role:corporate\"]', '2024-02-06 20:02:28', NULL, '2024-02-02 18:51:54', '2024-02-06 20:02:28'),
(282, 'App\\Models\\CorporateID', 14, 'mobile', '1d8d077d2d4fd16fabc4c5fd9e278fefd01f43be5648e923b596aeebd3e5d272', '[\"role:corporate\"]', '2024-02-02 18:59:00', NULL, '2024-02-02 18:57:10', '2024-02-02 18:59:00'),
(283, 'App\\Models\\CorporateID', 14, 'mobile', '6fc9e5c20a03b941d8db0f5cd48a9fb9ea0bd4ca9583e65c51721c67cc459ca3', '[\"role:corporate\"]', '2024-02-06 20:18:03', NULL, '2024-02-02 19:00:45', '2024-02-06 20:18:03'),
(284, 'App\\Models\\Customer', 49, 'mobile', 'b215f723f111db7d9a1e9b459af7a673796781f2202f57cf4c20b6ea6aab04bf', '[\"role:customer\"]', '2024-02-02 19:15:20', NULL, '2024-02-02 19:14:45', '2024-02-02 19:15:20'),
(285, 'App\\Models\\CorporateID', 14, 'mobile', '977c1ad9328430915f09d02c3c19d14c00b4ce36b79aecc139b1e853d466c913', '[\"role:corporate\"]', '2024-02-02 19:16:55', NULL, '2024-02-02 19:15:42', '2024-02-02 19:16:55'),
(286, 'App\\Models\\CorporateID', 14, 'mobile', 'c4eef1155fca36a3aff4934efb3f2cc3875038891df88a8dcfae4ae9b2719fb2', '[\"role:corporate\"]', '2024-02-02 19:28:23', NULL, '2024-02-02 19:21:38', '2024-02-02 19:28:23'),
(287, 'App\\Models\\CorporateID', 14, 'mobile', 'e62939710cab86579804f6c112306456c89c790afddb7385c1ae77fc5040b005', '[\"role:corporate\"]', '2024-02-02 20:18:13', NULL, '2024-02-02 19:28:33', '2024-02-02 20:18:13'),
(288, 'App\\Models\\CorporateID', 14, 'mobile', 'ef5cff421904f0f76c373ffc499b4eb99a9845ac8f142c258b8b0fbf28743074', '[\"role:corporate\"]', '2024-02-02 19:54:39', NULL, '2024-02-02 19:54:37', '2024-02-02 19:54:39'),
(289, 'App\\Models\\CorporateID', 14, 'mobile', 'e8a2cb3b289ba872a152bc70b6c7b6db9c14c70f1d13e38429d463bad71a1f58', '[\"role:corporate\"]', '2024-02-02 20:11:39', NULL, '2024-02-02 19:54:38', '2024-02-02 20:11:39'),
(290, 'App\\Models\\CorporateID', 14, 'mobile', '8527107b6107c852d00f840e59ab4dda30a8ba6504c1e4cd6aa0d87ef96be9bb', '[\"role:corporate\"]', '2024-02-06 20:28:57', NULL, '2024-02-02 20:57:26', '2024-02-06 20:28:57'),
(291, 'App\\Models\\Customer', 46, 'mobile', '4ec8742cda65430239c5240b4974699b7cf93a26f0888cf04b694448300dd4be', '[\"role:customer\"]', '2024-02-03 17:59:19', NULL, '2024-02-03 17:45:02', '2024-02-03 17:59:19'),
(292, 'App\\Models\\Customer', 35, 'mobile', '29041a2147e4f4f20c66fbb5845f7435bf382aae08dfe400c4f6abe46105581c', '[\"role:customer\"]', '2024-02-06 12:26:35', NULL, '2024-02-06 12:13:59', '2024-02-06 12:26:35'),
(293, 'App\\Models\\CorporateID', 14, 'mobile', 'c4358596f2df874c6ebc2188fbde13b2f82673ef2a07745ed7fcd5eb562cc8af', '[\"role:corporate\"]', '2024-02-06 20:14:11', NULL, '2024-02-06 20:02:41', '2024-02-06 20:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `test_type_id` bigint(20) UNSIGNED NOT NULL,
  `test_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `test_results` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_results_remarks` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_details_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `features`, `data`, `test_type_id`, `test_status`, `test_results`, `test_results_remarks`, `medical_details_id`, `created_at`, `updated_at`) VALUES
(1, 'bp', '{\"pre_lower_bp\":\"80\",\"pre_upper_bp\":\"130\",\"post_lower_bp\":\"120\",\"post_upper_bp\":\"150\"}', 1, '1', '1', NULL, 54, '2024-01-05 14:58:10', '2024-01-09 20:32:43'),
(3, 'bp', '{\"pre_lower_bp\":\"78\",\"pre_upper_bp\":\"120\",\"post_lower_bp\":\"100\",\"post_upper_bp\":\"180\"}', 1, '1', '0', NULL, 63, '2024-01-05 16:38:01', '2024-01-05 16:38:01'),
(4, 'bp', '{\"pre_lower_bp\":\"100\",\"pre_upper_bp\":\"130\",\"post_lower_bp\":\"130\",\"post_upper_bp\":\"180\"}', 1, '1', '0', NULL, 64, '2024-01-05 16:40:43', '2024-01-05 16:40:43'),
(5, 'bp', '{\"pre_lower_bp\":\"120\",\"pre_upper_bp\":\"140\",\"post_lower_bp\":\"140\",\"post_upper_bp\":\"190\"}', 1, '1', '0', NULL, 65, '2024-01-05 16:44:52', '2024-01-05 16:44:52'),
(6, 'bp', '{\"pre_lower_bp\":\"70\",\"pre_upper_bp\":\"120\",\"post_lower_bp\":\"100\",\"post_upper_bp\":\"140\"}', 1, '1', '0', NULL, 66, '2024-01-05 16:46:35', '2024-01-05 16:46:35'),
(7, 'bp', '{\"pre_lower_bp\":\"120\",\"pre_upper_bp\":\"150\",\"post_lower_bp\":\"90\",\"post_upper_bp\":\"180\"}', 1, '1', '0', NULL, 68, '2024-01-05 17:00:35', '2024-01-05 17:00:35'),
(8, 'bp', '{\"pre_lower_bp\":\"80\",\"pre_upper_bp\":\"130\",\"post_lower_bp\":\"120\",\"post_upper_bp\":\"150\"}', 1, '1', '0', NULL, 69, '2024-01-05 17:12:51', '2024-01-05 17:12:51'),
(9, 'bp', '{\"pre_lower_bp\":\"70\",\"pre_upper_bp\":\"120\",\"post_lower_bp\":\"100\",\"post_upper_bp\":\"170\"}', 1, '1', '0', NULL, 70, '2024-01-05 17:17:52', '2024-01-05 17:17:52'),
(10, 'bp', '{\"pre_lower_bp\":\"100\",\"pre_upper_bp\":\"130\",\"post_lower_bp\":\"130\",\"post_upper_bp\":\"160\"}', 1, '1', '0', NULL, 72, '2024-01-05 18:26:05', '2024-01-05 18:26:05'),
(11, 'bp', '{\"pre_lower_bp\":\"100\",\"pre_upper_bp\":\"140\",\"post_lower_bp\":\"130\",\"post_upper_bp\":\"160\"}', 1, '1', '1', NULL, 71, '2024-01-05 18:30:30', '2024-01-16 18:08:10'),
(27, 'bp', '{\"pre_lower_bp\":\"100\",\"pre_upper_bp\":\"120\",\"post_lower_bp\":\"120\",\"post_upper_bp\":\"160\"}', 1, '1', '0', NULL, 94, '2024-01-08 13:27:32', '2024-01-08 13:27:32'),
(28, 'eyecheckup', '{\"q1\":false,\"q2\":false,\"q3\":false,\"q4\":false,\"q5\":true,\"q6\":true}', 1, '1', '0', NULL, 95, '2024-01-08 14:39:28', '2024-01-08 14:39:28'),
(29, 'bp', '{\"pre_lower_bp\":\"130\",\"pre_upper_bp\":\"170\",\"post_lower_bp\":\"180\",\"post_upper_bp\":\"200\"}', 1, '1', '0', NULL, 95, '2024-01-08 17:21:34', '2024-01-08 17:21:34'),
(30, 'rt', '{\"both_legs\":\"both_legs1704709863.demo.mp4\",\"left_leg\":\"left_leg1704709863.demo.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 72, '2024-01-08 17:31:03', '2024-01-08 17:31:03'),
(31, 'rt', '{\"both_legs\":\"both_legs1704720511.VID-20240105-WA0005.mp4\",\"left_leg\":\"left_leg1704720511.VID-20240105-WA0005.mp4\",\"right_leg\":{}}', 1, '1', '0', NULL, 64, '2024-01-08 19:09:37', '2024-01-08 20:28:31'),
(32, 'rt', '{\"both_legs\":\"both_legs1704716011.b30b5a7c-83a2-4f0e-ba35-7381f58c48554274605189736255907.mp4\",\"left_leg\":\"left_leg1704716011.c881247c-6261-4da1-8faf-48c194b05c444367263194452388654.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 64, '2024-01-08 19:13:32', '2024-01-08 19:13:32'),
(33, 'rt', '{\"both_legs\":\"both_legs1704716120.VID-20240104-WA0011.mp4\",\"left_leg\":\"left_leg1704716120.VID-20240104-WA0011.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 68, '2024-01-08 19:15:21', '2024-01-08 19:15:21'),
(34, 'rt', '{\"both_legs\":\"both_legs1704716189.VID-20240104-WA0011.mp4\",\"left_leg\":\"left_leg1704716189.VID-20240104-WA0011.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 68, '2024-01-08 19:16:30', '2024-01-08 19:16:30'),
(35, 'rt', '{\"both_legs\":\"both_legs1704717183.VID-20240104-WA0011.mp4\",\"left_leg\":\"left_leg1704717183.VID-20240105-WA0007.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 64, '2024-01-08 19:33:04', '2024-01-08 19:33:04'),
(36, 'rt', '{\"both_legs\":\"both_legs1704717647.VID-20240105-WA0005.mp4\",\"left_leg\":\"left_leg1704717647.VID-20240105-WA0005.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 64, '2024-01-08 19:40:47', '2024-01-08 19:40:47'),
(37, 'rt', '{\"both_legs\":\"both_legs1704717850.VID-20240105-WA0005.mp4\",\"left_leg\":\"left_leg1704717850.VID-20240105-WA0005.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 64, '2024-01-08 19:44:10', '2024-01-08 19:44:10'),
(38, 'rt', '{\"both_legs\":\"both_legs1704717953.VID-20240105-WA0005.mp4\",\"left_leg\":\"left_leg1704717953.VID-20240105-WA0005.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 64, '2024-01-08 19:45:53', '2024-01-08 19:45:53'),
(39, 'rt', '{\"both_legs\":\"both_legs1704718040.VID-20240105-WA0005.mp4\",\"left_leg\":\"left_leg1704718040.VID-20240105-WA0005.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 64, '2024-01-08 19:47:20', '2024-01-08 19:47:20'),
(40, 'rt', '{\"both_legs\":\"both_legs1704718150.977f9c7b-86e3-4413-9f68-1ef655231cfe7349961237592191770.mp4\",\"left_leg\":\"left_leg1704718150.f2fcb407-d7cd-40c7-a604-fa5460a832704253001672849860170.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 64, '2024-01-08 19:49:10', '2024-01-08 19:49:10'),
(41, 'rt', '{\"both_legs\":\"both_legs1704718278.df2e6932-596a-4cf4-9852-34e7e972202c4772567797085110202.mp4\",\"left_leg\":\"left_leg1704718278.1ef9dadc-f805-4e37-ae87-547589226b758161249586447382227.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 64, '2024-01-08 19:51:18', '2024-01-08 19:51:18'),
(42, 'rt', '{\"both_legs\":\"both_legs1704718344.df2e6932-596a-4cf4-9852-34e7e972202c4772567797085110202.mp4\",\"left_leg\":\"left_leg1704718344.1ef9dadc-f805-4e37-ae87-547589226b758161249586447382227.mp4\",\"right_leg\":{}}', 1, '0', '0', NULL, 64, '2024-01-08 19:52:24', '2024-01-08 19:52:24'),
(44, 'fukuda', '{\"fukuda_video\":null}', 1, '1', '0', NULL, 68, '2024-01-08 20:51:16', '2024-01-08 20:51:16'),
(45, 'fukuda', '{\"fukuda_video\":null}', 1, '1', '0', NULL, 64, '2024-01-08 21:00:54', '2024-01-08 21:00:54'),
(46, 'flatfoot', '{\"flatfoot\":\"flatfoot1704777204.image_cropper_1704777196162.jpg\"}', 1, '1', '0', NULL, 64, '2024-01-09 12:13:24', '2024-01-09 12:13:24'),
(47, 'eyecheckup', '{\"q1\":true,\"q2\":true,\"q3\":true,\"q4\":true,\"q5\":false,\"q6\":true}', 1, '1', '0', NULL, 64, '2024-01-09 12:13:47', '2024-01-09 12:13:47'),
(49, 'bp', '{\"pre_lower_bp\":\"120\",\"pre_upper_bp\":\"140\",\"post_lower_bp\":\"200\",\"post_upper_bp\":\"220\"}', 1, '1', '0', NULL, 96, '2024-01-09 13:39:55', '2024-01-09 13:39:55'),
(50, 'rt', '{\"both_legs\":\"both_legs1704782529.c6b70572-ea93-42f4-807b-3e47ad763fdf8298656450201945912.mp4\",\"left_leg\":\"left_leg1704782529.51178e24-14de-4a05-81ca-543b1492012a9192505176688333950.mp4\",\"right_leg\":{}}', 1, '1', '0', NULL, 96, '2024-01-09 13:42:09', '2024-01-09 13:42:09'),
(51, 'flatfoot', '{\"flatfoot\":\"flatfoot1704782586.image_cropper_1704782575717.jpg\"}', 1, '1', '0', NULL, 96, '2024-01-09 13:43:06', '2024-01-09 13:43:06'),
(52, 'eyecheckup', '{\"q1\":true,\"q2\":true,\"q3\":true,\"q4\":true,\"q5\":true,\"q6\":true}', 1, '1', '0', NULL, 96, '2024-01-09 13:45:21', '2024-01-09 13:45:21'),
(53, 'bp', '{\"pre_lower_bp\":\"123\",\"pre_upper_bp\":\"80\",\"post_lower_bp\":\"125\",\"post_upper_bp\":\"83\"}', 1, '1', '0', NULL, 97, '2024-01-09 16:00:53', '2024-01-09 16:00:53'),
(54, 'rt', '{\"both_legs\":\"both_legs1704795275.62ef2993-0aa3-45d0-975c-091eb29441815503289994555931773.mp4\",\"left_leg\":\"left_leg1704795275.6af0ba20-1002-42ab-a56c-82add72986ca7611876360655615669.mp4\",\"right_leg\":{}}', 1, '1', '0', NULL, 97, '2024-01-09 17:14:36', '2024-01-09 17:14:36'),
(55, 'eyecheckup', '{\"q1\":false,\"q2\":false,\"q3\":false,\"q4\":false,\"q5\":false,\"q6\":true}', 1, '1', '0', NULL, 97, '2024-01-09 17:15:22', '2024-01-09 17:15:22'),
(56, 'bp', '{\"pre_lower_bp\":\"80\",\"pre_upper_bp\":\"120\",\"post_lower_bp\":\"480\",\"post_upper_bp\":\"85\"}', 1, '1', '0', NULL, 102, '2024-01-09 17:35:35', '2024-01-09 17:35:35'),
(57, 'rt', '{\"both_legs\":\"both_legs1704796607.ee92f54e-f962-4d3b-ab8f-5e03c3628cb66645759324511320327.mp4\",\"left_leg\":\"left_leg1704796607.fb92d720-5f95-42d0-ae4e-e76e91cd83731985440656050878782.mp4\",\"right_leg\":{}}', 1, '1', '0', NULL, 102, '2024-01-09 17:36:47', '2024-01-09 17:36:47'),
(58, 'eyecheckup', '{\"q1\":true,\"q2\":true,\"q3\":true,\"q4\":true,\"q5\":true,\"q6\":true}', 1, '1', '0', NULL, 102, '2024-01-09 17:37:15', '2024-01-09 17:37:15'),
(59, 'bp', '{\"pre_lower_bp\":\"12\",\"pre_upper_bp\":\"25\",\"post_lower_bp\":\"45\",\"post_upper_bp\":\"80\"}', 1, '1', '0', NULL, 105, '2024-01-10 21:27:25', '2024-01-10 21:27:25'),
(60, 'rt', '{\"both_legs\":\"both_legs1704896915.c7151904-489a-4d7f-8359-4e936f89c5042967346806245121229.mp4\",\"left_leg\":\"left_leg1704896915.ed3921d1-7d99-4d71-b3f4-3417824f6e633293202948631929499.mp4\",\"right_leg\":\"right_leg1704896915.3e0715a9-5ee9-4494-bef0-3ffffd44ad3c3686599964109009545.mp4\"}', 1, '1', '0', NULL, 105, '2024-01-10 21:28:35', '2024-01-10 21:28:35'),
(61, 'eyecheckup', '{\"q1\":true,\"q2\":true,\"q3\":true,\"q4\":true,\"q5\":true,\"q6\":true}', 1, '1', '0', NULL, 105, '2024-01-10 21:28:53', '2024-01-10 21:28:53'),
(62, 'flatfoot', '{\"flatfoot\":\"flatfoot1704896978.image_cropper_1704896973139.jpg\"}', 1, '1', '0', NULL, 105, '2024-01-10 21:29:38', '2024-01-10 21:29:38'),
(64, 'bp', '{\"pre_lower_bp\":\"120\",\"pre_upper_bp\":\"120\",\"post_lower_bp\":\"120\",\"post_upper_bp\":\"120\"}', 1, '1', '0', NULL, 106, '2024-01-10 21:42:40', '2024-01-10 21:42:40'),
(65, 'eyecheckup', '{\"q1\":false,\"q2\":false,\"q3\":false,\"q4\":false,\"q5\":false,\"q6\":true}', 1, '1', '0', NULL, 94, '2024-01-11 11:37:50', '2024-01-11 11:37:50'),
(66, 'eyecheckup', '{\"q1\":true,\"q2\":true,\"q3\":true,\"q4\":true,\"q5\":false,\"q6\":false}', 1, '1', '0', NULL, 108, '2024-01-11 12:07:20', '2024-01-11 12:07:20'),
(67, 'bp', '{\"pre_lower_bp\":\"10\",\"pre_upper_bp\":\"20\",\"post_lower_bp\":\"40\",\"post_upper_bp\":\"80\"}', 1, '1', '1', NULL, 115, '2024-01-13 12:35:42', '2024-01-17 13:19:21'),
(68, 'rt', '{\"both_legs\":\"both_legs1705124218.450df9c8-fb06-46be-a92d-23bd93af5e6f120338709319883820.mp4\",\"left_leg\":\"left_leg1705124218.8b4db1e9-30ed-4a4f-9501-d01025dff4686458161566037206053.mp4\",\"right_leg\":\"right_leg1705124218.4495097f-811a-47de-bc57-f7724aca0ad94545500406801110984.mp4\"}', 1, '1', '1', NULL, 115, '2024-01-13 12:36:58', '2024-01-17 13:20:08'),
(69, 'eyecheckup', '{\"q1\":true,\"q2\":true,\"q3\":true,\"q4\":true,\"q5\":true,\"q6\":true}', 1, '1', '0', NULL, 115, '2024-01-13 12:42:36', '2024-01-13 12:45:48'),
(70, 'flatfoot', '{\"flatfoot\":\"flatfoot1705124971.image_cropper_1705124963780.jpg\"}', 1, '1', '1', NULL, 115, '2024-01-13 12:49:31', '2024-01-17 13:20:18'),
(71, 'fukuda', '{\"fukuda_video\":\"fukuda1705125585.6f1babed-8f6b-44f3-9e33-8b11fd88ec718704135910323209882.mp4\"}', 1, '1', '1', NULL, 115, '2024-01-13 12:51:15', '2024-01-17 13:20:37'),
(72, 'bppv', '{\"bppv_video\":null}', 1, '1', NULL, NULL, 63, '2024-01-15 12:51:02', '2024-01-15 12:51:02'),
(73, 'bppv', '{\"bppv_video\":null}', 1, '1', NULL, NULL, 64, '2024-01-15 13:29:40', '2024-01-15 13:29:40'),
(74, 'eyecheckup', '{\"q1\":true,\"q2\":false,\"q3\":true,\"q4\":false,\"q5\":true,\"q6\":true}', 1, '1', '1', NULL, 116, '2024-01-15 14:30:14', '2024-01-17 16:44:33'),
(75, 'bp', '{\"pre_lower_bp\":\"100\",\"pre_upper_bp\":\"130\",\"post_lower_bp\":\"130\",\"post_upper_bp\":\"160\"}', 1, '1', '0', NULL, 116, '2024-01-17 14:10:56', '2024-01-22 15:54:02'),
(76, 'flatfoot', '{\"flatfoot\":\"flatfoot1705475591.image_cropper_1705475583232.jpg\"}', 1, '1', '1', NULL, 116, '2024-01-17 14:13:11', '2024-01-17 16:45:20'),
(77, 'rt', '{\"both_legs\":\"both_legs1705475855.1000023051.mp4\",\"left_leg\":\"left_leg1705475855.cb071509-9545-4fb0-b41d-95eb2c3317518274372470539440259.mp4\",\"right_leg\":\"right_leg1705475855.175f03a9-7e33-48bb-bb0f-73ba606805288891773976489727680.mp4\"}', 1, '1', '1', NULL, 116, '2024-01-17 14:17:35', '2024-01-17 16:44:58'),
(78, 'bppv', '{\"bppv_video\":\"bppv1705477564.7b4ad751-cd9f-4316-925b-377900cba1018881127849210631764.mp4\"}', 1, '1', '1', NULL, 116, '2024-01-17 14:20:24', '2024-01-17 15:16:27'),
(79, 'fukuda', '{\"fukuda_video\":\"fukuda1705479473.1000022905.mp4\"}', 1, '1', '1', NULL, 116, '2024-01-17 15:17:53', '2024-01-17 15:20:24'),
(80, 'bppv', '{\"bppv_video\":\"bppv1705484945.c8ede11a-c28b-4be3-bf97-080d795f0f638642154340649845892.mp4\"}', 1, '1', '1', NULL, 105, '2024-01-17 16:49:06', '2024-01-17 17:35:38'),
(81, 'fukuda', '{\"fukuda_video\":\"fukuda1705488582.e0e257e4-9a90-49b0-85a8-bbd1435918df5551280569349421990.mp4\"}', 1, '1', '1', NULL, 105, '2024-01-17 17:49:42', '2024-01-17 17:50:58'),
(82, 'bp', '{\"pre_lower_bp\":\"120\",\"pre_upper_bp\":\"123\",\"post_lower_bp\":\"1236\",\"post_upper_bp\":\"125\"}', 1, '1', '0', NULL, 117, '2024-01-24 19:16:17', '2024-01-25 12:38:24'),
(83, 'rt', '{\"both_legs\":\"both_legs1706098758.50690dfa-48c8-4e5f-bc79-ce5f26d5322b7616483619649077559.mp4\",\"left_leg\":\"left_leg1706098758.99bc07a9-c1e0-4468-9dfb-dce43cc3f0113110770923498010049.mp4\",\"right_leg\":\"right_leg1706098759.61edb1c9-f6ad-4210-822a-ac233d9d6673386211567183008907.mp4\"}', 1, '1', NULL, NULL, 117, '2024-01-24 19:19:19', '2024-01-24 19:19:19'),
(84, 'eyecheckup', '{\"q1\":true,\"q2\":true,\"q3\":true,\"q4\":true,\"q5\":true,\"q6\":true}', 1, '1', '0', NULL, 117, '2024-01-24 19:20:38', '2024-01-25 12:38:16'),
(85, 'eyecheckup', '{\"q1\":true,\"q2\":true,\"q3\":true,\"q4\":true,\"q5\":true,\"q6\":true}', 1, '1', NULL, NULL, 72, '2024-01-29 11:47:22', '2024-01-29 11:47:22'),
(88, 'hearingtest', '{\"left_ear_problem\":\"100, 80, 110, 70, 120, 60, 130, 50, 140, 40\",\"right_ear_problem\":\"110, 90, 120, 80, 130, 70, 140, 60, 150, 50\",\"left_ear_fixed\":\"90, 70, 100, 60, 110, 50, 120, 40, 130, 30\",\"right_ear_fixed\":\"100, 80, 110, 70, 120, 60, 130, 50, 140, 40\"}', 1, '1', '0', NULL, 106, '2024-02-01 00:06:54', '2024-02-01 00:06:54'),
(89, 'hearingtest', '{\"left_ear_problem\":\"40, 60, 30, 70, 20, 80, 10, 90, 50, 100\",\"right_ear_problem\":\"50, 70, 40, 80, 30, 90, 20, 100, 60, 110\",\"left_ear_fixed\":\"30, 50, 20, 60, 10, 70, 5, 80, 40, 90\",\"right_ear_fixed\":\"40, 60, 30, 70, 20, 80, 10, 90, 50, 100\"}', 1, '1', '0', NULL, 56, '2024-02-01 00:23:50', '2024-02-01 00:23:50'),
(90, 'hearingtest', '{\"left_ear_problem\":\"10, 90, 20, 80, 30, 70, 40, 60, 50, 100\",\"right_ear_problem\":\"20, 100, 30, 90, 40, 80, 50, 70, 60, 110\",\"left_ear_fixed\":\"5, 85, 15, 75, 25, 65, 35, 55, 45, 95\",\"right_ear_fixed\":\"15, 95, 25, 85, 35, 75, 45, 65, 55, 105\"}', 1, '1', '0', NULL, 74, '2024-02-01 00:31:41', '2024-02-01 00:31:41'),
(91, 'hearingtest', '{\"left_ear_problem\":\"10, 30, 20, 40, 30, 50, 40, 60, 50, 70\",\"right_ear_problem\":\"90, 70, 80, 60, 70, 50, 60, 40, 50, 30\",\"left_ear_fixed\":\"20, 40, 30, 50, 40, 60, 50, 70, 60, 80\",\"right_ear_fixed\":\"80, 60, 70, 50, 60, 40, 50, 30, 40, 20\"}', 1, '1', '0', NULL, 39, '2024-02-01 00:33:45', '2024-02-01 00:33:45'),
(92, 'hearingtest', '{\"left_ear_problem\":\"10,20,50,54,76\",\"right_ear_problem\":\"10,44,55,67,87\",\"left_ear_fixed\":\"10,23,45,87,65\",\"right_ear_fixed\":\"76,54,10,65,55\"}', 1, '1', NULL, NULL, 116, '2024-02-06 20:16:27', '2024-02-06 20:16:27'),
(99, 'hearingtest', '{\"left_ear_problem\":\"10,15,25\",\"right_ear_problem\":\"12,25,58\",\"left_ear_fixed\":\"20,25,45\",\"right_ear_fixed\":\"45,75,85\"}', 1, '1', NULL, NULL, 115, '2024-02-07 18:05:14', '2024-02-07 18:05:14'),
(101, 'hearingtest', '{\"left_ear_problem\":\"323,345,453\",\"right_ear_problem\":\"232,454,455\",\"left_ear_fixed\":\"232,435,455\",\"right_ear_fixed\":\"232,454,454\"}', 1, '1', NULL, NULL, 120, '2024-02-07 18:18:52', '2024-02-07 18:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `test_types`
--

CREATE TABLE `test_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_types`
--

INSERT INTO `test_types` (`id`, `test_name`) VALUES
(1, 'vertigo'),
(2, 'first aid training'),
(3, 'coorperate testing'),
(4, 'telecommunication testing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` bigint(20) DEFAULT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci,
  `status` int(123) NOT NULL DEFAULT '0',
  `profession` text COLLATE utf8mb4_unicode_ci,
  `role` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile_no`, `user_id`, `status`, `profession`, `role`, `permissions`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'demo@gmail.com', 0, '', 1, '', 'admin', '[\"all\"]', NULL, '$2a$04$z6/U2CL7FoaHwxW46icyreEtpbQcuwJP7sW1JPpHweCS6p61VK3GC', NULL, '2023-12-06 11:37:08', '2023-12-21 20:58:49'),
(15, 'Mohit Kumar', 'mohitkumargarg529@gmail.com', NULL, NULL, 1, NULL, 'Manager', '[\"alluser\",\"addcompany\",\"corporatebatch\",\"customerbatch\",\"notification\",\"vertigoreport\",\"adminmanages\"]', NULL, '$2y$10$Hig0IFisZcNHG8V8r8MEue2vlmxSkxvyI7vshTU9lveQ9mzks2V5e', NULL, '2024-02-07 13:23:26', '2024-02-07 13:25:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporatebatchs`
--
ALTER TABLE `corporatebatchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `corporatebatchs_company_id_foreign` (`company_id`);

--
-- Indexes for table `corporate_i_d_s`
--
ALTER TABLE `corporate_i_d_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerbatchs`
--
ALTER TABLE `customerbatchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerbatchs_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_email_unique` (`email`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_details`
--
ALTER TABLE `medical_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_details_consumer_batch_type_consumer_batch_id_index` (`cusmerbatchdetails_id`,`cusmerbatchdetails_type`),
  ADD KEY `medical_details_test_type_id_foreign` (`test_type_id`),
  ADD KEY `FK_doctorid` (`doctorid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `notification_for`
--
ALTER TABLE `notification_for`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_test_type_id_foreign` (`test_type_id`),
  ADD KEY `tests_medical_details_id_foreign` (`medical_details_id`);

--
-- Indexes for table `test_types`
--
ALTER TABLE `test_types`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `corporatebatchs`
--
ALTER TABLE `corporatebatchs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `corporate_i_d_s`
--
ALTER TABLE `corporate_i_d_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customerbatchs`
--
ALTER TABLE `customerbatchs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `medical_details`
--
ALTER TABLE `medical_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification_for`
--
ALTER TABLE `notification_for`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `test_types`
--
ALTER TABLE `test_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medical_details`
--
ALTER TABLE `medical_details`
  ADD CONSTRAINT `FK_doctorid` FOREIGN KEY (`doctorid`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_medical_details_id_foreign` FOREIGN KEY (`medical_details_id`) REFERENCES `medical_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

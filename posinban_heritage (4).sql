-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 10:51 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posinban_heritage`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `by`, `date`, `content`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SECURITY COUNCIL MEETING', 'jewel', '2021-04-13', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', 'uploads/1/2021-04/single_info_donate.jpg', 1, '2021-04-01 04:06:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_apikey`
--

INSERT INTO `cms_apikey` (`id`, `screetkey`, `hit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fff46d0bcceb26922267efea77e4906e', 0, 'active', '2021-11-06 04:10:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2021-03-28 02:43:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'http://localhost/heritage/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2021-03-28 03:11:51', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2021-03-31 00:28:12', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 03:08:42', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data phone_1 at Settings', '', 1, '2021-03-31 03:12:13', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 03:12:37', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/menu_management/add-save', 'Add New Data Contact Us at Menu Management', '', 1, '2021-03-31 03:13:52', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 03:14:38', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 03:16:00', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data phone2 at Settings', '', 1, '2021-03-31 03:16:28', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/edit-save/18', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>phone2</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td></td><td></td></tr><tr><td>label</td><td>Phone2</td><td>Phone 2</td></tr></tbody></table>', 1, '2021-03-31 03:16:35', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 03:19:08', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data email at Settings', '', 1, '2021-03-31 03:19:32', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 03:21:48', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data address at Settings', '', 1, '2021-03-31 03:22:03', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data website at Settings', '', 1, '2021-03-31 03:22:28', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 03:24:25', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 04:01:32', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 04:11:00', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/tour_packages/add-save', 'Add New Data EBOLA TREATMENT HELPED THE NORCOTICS at Tour Package', '', 1, '2021-03-31 04:25:32', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 04:32:51', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 04:36:13', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/menu_management/add-save', 'Add New Data Tour Package at Menu Management', '', 1, '2021-03-31 05:39:40', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 05:40:47', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 05:41:04', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-03-31 23:06:50', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/menu_management/add-save', 'Add New Data Hajj Package at Menu Management', '', 1, '2021-03-31 23:09:53', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/hajj_packages/add-save', 'Add New Data AUTHENTIC PRODUCT at Hajj Package', '', 1, '2021-03-31 23:12:22', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/menu_management/add-save', 'Add New Data About Us at Menu Management', '', 1, '2021-03-31 23:24:09', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/sliders/add-save', 'Add New Data AIR TICKET & HELP at Slider', '', 1, '2021-03-31 23:55:07', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/sliders/add-save', 'Add New Data CONTRIBUTE FOR at Slider', '', 1, '2021-03-31 23:55:50', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/sliders/add-save', 'Add New Data FUTURES at Slider', '', 1, '2021-03-31 23:56:29', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data title at Settings', '', 1, '2021-04-01 00:17:11', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data content at Settings', '', 1, '2021-04-01 00:17:24', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data image at Settings', '', 1, '2021-04-01 00:17:43', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/menu_management/add-save', 'Add New Data Home Page at Menu Management', '', 1, '2021-04-01 00:19:11', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/menu_management/edit-save/11', 'Update data Home Page at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>settings/show?group=Home+Page+Content&m=0</td><td>settings/show?group=Slider+Bottom+Section+Content&m=0</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2021-04-01 00:23:20', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data title at Settings', '', 1, '2021-04-01 00:48:54', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data content at Settings', '', 1, '2021-04-01 00:49:09', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data youtube_video_link at Settings', '', 1, '2021-04-01 00:49:55', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data video_thumbnail_image at Settings', '', 1, '2021-04-01 00:52:58', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data title at Settings', '', 1, '2021-04-01 02:25:06', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data content at Settings', '', 1, '2021-04-01 02:25:26', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data youtube_video_link at Settings', '', 1, '2021-04-01 02:25:45', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data video_thumbnail_image at Settings', '', 1, '2021-04-01 02:26:21', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/menu_management/add-save', 'Add New Data Company Profile at Menu Management', '', 1, '2021-04-01 02:35:30', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data message at Settings', '', 1, '2021-04-01 02:41:30', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data mission at Settings', '', 1, '2021-04-01 02:42:58', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data vision at Settings', '', 1, '2021-04-01 02:43:21', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data email at Settings', '', 1, '2021-04-01 02:43:50', NULL),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data phone at Settings', '', 1, '2021-04-01 02:44:20', NULL),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data address at Settings', '', 1, '2021-04-01 02:44:40', NULL),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/menu_management/add-save', 'Add New Data MD Message at Menu Management', '', 1, '2021-04-01 02:57:29', NULL),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/achievements/add-save', 'Add New Data SECURITY COUNCIL MEETING at Achievement', '', 1, '2021-04-01 04:06:10', NULL),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/visa_services/add-save', 'Add New Data Bangladesh at Visa Service', '', 1, '2021-04-01 05:06:11', NULL),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/visa_services/add-save', 'Add New Data Malaysia at Visa Service', '', 1, '2021-04-01 05:07:54', NULL),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/visa_services/add-save', 'Add New Data Brazil at Visa Service', '', 1, '2021-04-01 05:10:01', NULL),
(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/visa_services/edit-save/1', 'Update data BD at Visa Service', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>country_name</td><td>Bangladesh</td><td>BD</td></tr><tr><td>status</td><td>1</td><td></td></tr></tbody></table>', 1, '2021-04-01 05:24:04', NULL),
(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/menu_management/add-save', 'Add New Data Layout at Menu Management', '', 1, '2021-04-01 05:38:55', NULL),
(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data title1 at Settings', '', 1, '2021-04-01 05:40:52', NULL),
(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/socials/add-save', 'Add New Data Facebook at Social', '', 1, '2021-04-01 05:46:48', NULL),
(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/socials/add-save', 'Add New Data LinkedIn at Social', '', 1, '2021-04-01 05:47:38', NULL),
(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/socials/add-save', 'Add New Data Youtube at Social', '', 1, '2021-04-01 05:48:09', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/socials/edit-save/3', 'Update data Youtube at Social', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>url</td><td></td><td>https://www.facebook.com/na.jewel72</td></tr><tr><td>status</td><td>1</td><td></td></tr></tbody></table>', 1, '2021-04-01 05:53:13', NULL),
(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/socials/edit-save/3', 'Update data Youtube at Social', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>url</td><td>https://www.facebook.com/na.jewel72</td><td>https://www.youtube.com/channel/UCxHoBXkY88Tb8z1Ssj6CWsQ</td></tr><tr><td>status</td><td>1</td><td></td></tr></tbody></table>', 1, '2021-04-01 05:54:26', NULL),
(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/socials/edit-save/2', 'Update data LinkedIn at Social', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>url</td><td></td><td>#</td></tr><tr><td>status</td><td>1</td><td></td></tr></tbody></table>', 1, '2021-04-01 05:54:33', NULL),
(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://localhost/heritage/admin/socials/edit-save/1', 'Update data Facebook at Social', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>url</td><td></td><td>https://www.facebook.com/na.jewel72</td></tr><tr><td>status</td><td>1</td><td></td></tr></tbody></table>', 1, '2021-04-01 05:54:38', NULL),
(67, '14.1.100.236', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'https://sis-demo.com/heritage/admin/login', 'admin@heritage.com login with IP Address 14.1.100.236', '', 1, '2021-04-03 08:32:59', NULL),
(68, '14.1.100.236', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'https://sis-demo.com/heritage/admin/login', 'admin@heritage.com login with IP Address 14.1.100.236', '', 1, '2021-04-03 10:34:03', NULL),
(69, '103.139.132.248', 'Mozilla/5.0 (Linux; Android 8.0.0; PRA-LX2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.127 Mobile Safari/537.36', 'https://sis-demo.com/heritage/admin/login', 'admin@heritage.com login with IP Address 103.139.132.248', '', 1, '2021-04-04 10:20:59', NULL),
(70, '103.139.132.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4464.5 Safari/537.36', 'https://sis-demo.com/heritage/admin/login', 'admin@heritage.com login with IP Address 103.139.132.248', '', 1, '2021-04-04 10:23:12', NULL),
(71, '103.139.132.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4464.5 Safari/537.36', 'https://sis-demo.com/heritage/admin/logout', 'admin@heritage.com logout', '', 1, '2021-04-04 10:25:43', NULL),
(72, '144.48.161.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'https://posinbangladesh.com/heritage/admin/login', 'admin@heritage.com login with IP Address 144.48.161.144', '', 1, '2021-09-04 22:21:18', NULL),
(73, '144.48.161.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'https://posinbangladesh.com/heritage/admin/logout', 'admin@heritage.com logout', '', 1, '2021-09-04 22:21:34', NULL),
(74, '103.209.228.90', 'Mozilla/5.0 (Linux; Android 10; ONEPLUS A6010) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36', 'https://posinbangladesh.com/heritage/admin/login', 'admin@heritage.com login with IP Address 103.209.228.90', '', 1, '2021-09-05 00:04:08', NULL),
(75, '144.48.160.174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'https://posinbangladesh.com/heritage/admin/login', 'admin@heritage.com login with IP Address 144.48.160.174', '', 1, '2021-09-22 14:09:20', NULL),
(76, '144.48.160.174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'https://posinbangladesh.com/heritage/admin/logout', 'admin@heritage.com logout', '', 1, '2021-09-22 16:00:08', NULL),
(77, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-11-06 00:05:45', NULL),
(78, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/services/add-save', 'Add New Data OUR SERVICE at Services', '', 1, '2021-11-06 01:50:38', NULL),
(79, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/services/add-save', 'Add New Data OUR SERVICE at Services', '', 1, '2021-11-06 01:59:37', NULL),
(80, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/services/add-save', 'Add New Data OUR SERVICE at Services', '', 1, '2021-11-06 02:09:06', NULL),
(81, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/services/add-save', 'Add New Data OUR SERVICE2 at Services', '', 1, '2021-11-06 02:23:09', NULL),
(82, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2021-11/logo.png</td></tr><tr><td>password</td><td>$2y$10$t/KrAtbiEl9.I/0BlWDjT.k8fy77PfmxuySoTzJ7tGywnP2A/Zev2</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2021-11-06 05:40:43', NULL),
(83, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$t/KrAtbiEl9.I/0BlWDjT.k8fy77PfmxuySoTzJ7tGywnP2A/Zev2</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2021-11-06 05:40:46', NULL),
(84, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/statistic_builder/add-save', 'Add New Data contacts at Statistic Builder', '', 1, '2021-11-06 05:48:50', NULL),
(85, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/statistic_builder/delete/1', 'Delete data contacts at Statistic Builder', '', 1, '2021-11-06 05:49:22', NULL),
(86, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-11-06 22:37:38', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/tour_packages/add-save', 'Add New Data Singapore at Tour Package', '', 1, '2021-11-06 22:55:09', NULL),
(88, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/hajj_packages/add-save', 'Add New Data Kabah, Makkah at Hajj Package', '', 1, '2021-11-06 23:11:14', NULL),
(89, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data security at Settings', '', 1, '2021-11-06 23:29:39', NULL),
(90, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data privacy_content at Settings', '', 1, '2021-11-07 00:08:48', NULL),
(91, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data privacy_logo at Settings', '', 1, '2021-11-07 00:09:26', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data security_content at Settings', '', 1, '2021-11-07 01:52:47', NULL),
(93, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/tour_packages/delete-image', 'Delete the image of Singapore at Tour Package', '', 1, '2021-11-07 02:08:57', NULL),
(94, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/tour_packages/edit-save/2', 'Update data Singapore at Tour Package', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td></td></tr></tbody></table>', 1, '2021-11-07 02:09:08', NULL),
(95, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/tour_packages/delete-image', 'Delete the image of Singapore at Tour Package', '', 1, '2021-11-07 02:13:54', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/tour_packages/edit-save/2', 'Update data Singapore at Tour Package', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td></td></tr></tbody></table>', 1, '2021-11-07 02:14:21', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data privacy_content at Settings', '', 1, '2021-11-07 02:27:03', NULL),
(98, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-11-07 03:10:36', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/settings/add-save', 'Add New Data privacy_title at Settings', '', 1, '2021-11-07 03:17:21', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/statistic_builder/add-save', 'Add New Data Dashboard at Statistic Builder', '', 1, '2021-11-07 03:20:49', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/menu_management/add-save', 'Add New Data Dashboard at Menu Management', '', 1, '2021-11-07 03:25:33', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-11-15 23:54:47', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address ::1', '', 1, '2021-11-15 23:56:00', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address 127.0.0.1', '', 1, '2021-11-15 23:56:43', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 'http://localhost/heritage/admin/socials/edit-save/2', 'Update data LinkedIn at Social', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td></td></tr></tbody></table>', 1, '2021-11-16 00:20:58', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address 127.0.0.1', '', 1, '2021-11-16 23:15:07', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 'http://localhost/heritage/admin/login', 'admin@heritage.com login with IP Address 127.0.0.1', '', 1, '2021-11-29 22:52:53', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0', 'http://localhost/heritage/admin/statistic_builder/edit-save/2', 'Update data Dashboard at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>dashboard</td><td></td></tr></tbody></table>', 1, '2021-11-29 22:57:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Contact Messages', 'Route', 'AdminContactMessagesControllerGetIndex', NULL, 'fa fa-inbox', 0, 1, 0, 1, 5, '2021-03-31 00:54:08', NULL),
(2, 'Contact Us', 'URL', 'settings/show?group=Contact+US&m=0', 'normal', 'fa fa-phone', 0, 1, 0, 1, 4, '2021-03-31 03:13:51', NULL),
(3, 'Tour Package', 'Route', 'AdminTourPackagesControllerGetIndex', NULL, 'fa fa-road', 5, 1, 0, 1, 1, '2021-03-31 04:11:41', NULL),
(4, 'Booked', 'Route', 'AdminTourPackageBooksControllerGetIndex', NULL, 'fa fa-cog', 5, 1, 0, 1, 2, '2021-03-31 05:31:19', NULL),
(5, 'Tour Package', 'URL', '#', 'normal', 'fa fa-adjust', 0, 1, 0, 1, 6, '2021-03-31 05:39:40', NULL),
(6, 'Hajj Package', 'Route', 'AdminHajjPackagesControllerGetIndex', NULL, 'fa fa-list', 8, 1, 0, 1, 1, '2021-03-31 05:41:24', NULL),
(7, 'Booked', 'Route', 'AdminHajjPackageBooksControllerGetIndex', NULL, 'fa fa-indent', 8, 1, 0, 1, 2, '2021-03-31 23:07:29', NULL),
(8, 'Hajj Package', 'URL', '#', 'normal', 'fa fa-plane', 0, 1, 0, 1, 7, '2021-03-31 23:09:53', NULL),
(9, 'About Us', 'URL', '#', 'normal', 'fa fa-heart', 0, 1, 0, 1, 3, '2021-03-31 23:24:09', NULL),
(10, 'Slider', 'Route', 'AdminSlidersControllerGetIndex', NULL, 'fa fa-random', 0, 1, 0, 1, 8, '2021-03-31 23:53:12', NULL),
(11, 'Home Page', 'URL', 'settings/show?group=Slider+Bottom+Section+Content&m=0', 'normal', 'fa fa-home', 0, 1, 0, 1, 2, '2021-04-01 00:19:11', '2021-04-01 00:23:20'),
(12, 'Company Profile', 'URL', 'settings/show?group=Company+Profile&m=0', 'normal', 'fa fa-photo', 9, 1, 0, 1, 1, '2021-04-01 02:35:30', NULL),
(13, 'MD Message', 'URL', 'settings/show?group=MD+Message&m=0', 'normal', 'fa fa-envelope-o', 9, 1, 0, 1, 2, '2021-04-01 02:57:29', NULL),
(14, 'Achievement', 'Route', 'AdminAchievementsControllerGetIndex', NULL, 'fa fa-graduation-cap', 9, 1, 0, 1, 3, '2021-04-01 03:57:42', NULL),
(15, 'Visa Service', 'Route', 'AdminVisaServicesControllerGetIndex', NULL, 'fa fa-clipboard', 0, 1, 0, 1, 9, '2021-04-01 04:26:51', NULL),
(16, 'Layout', 'URL', '#', 'normal', 'fa fa-leaf', 0, 1, 0, 1, 1, '2021-04-01 05:38:55', NULL),
(17, 'Social', 'Route', 'AdminSocialsControllerGetIndex', NULL, 'fa fa-star-o', 16, 1, 0, 1, 2, '2021-04-01 05:44:57', NULL),
(18, 'left Side', 'Route', 'AdminLeftLayoutsControllerGetIndex', NULL, 'fa fa-star', 16, 1, 0, 1, 1, '2021-04-01 06:01:48', NULL),
(19, 'Services', 'Route', 'AdminServicesControllerGetIndex', NULL, 'fa fa-pause-circle', 0, 1, 0, 1, 10, '2021-11-06 01:45:48', NULL),
(20, 'Dashboard', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-book', 0, 1, 1, 1, NULL, '2021-11-07 03:25:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(12, 11, 1),
(13, 12, 1),
(14, 13, 1),
(15, 14, 1),
(16, 15, 1),
(17, 16, 1),
(18, 17, 1),
(19, 18, 1),
(20, 19, 1),
(21, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2021-03-28 02:43:26', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2021-03-28 02:43:26', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2021-03-28 02:43:26', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2021-03-28 02:43:26', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2021-03-28 02:43:26', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2021-03-28 02:43:26', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2021-03-28 02:43:26', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2021-03-28 02:43:26', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2021-03-28 02:43:26', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2021-03-28 02:43:26', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2021-03-28 02:43:26', NULL, NULL),
(12, 'Contact Messages', 'fa fa-inbox', 'contact_messages', 'contact_messages', 'AdminContactMessagesController', 0, 0, '2021-03-31 00:54:08', NULL, NULL),
(13, 'Tour Package', 'fa fa-road', 'tour_packages', 'tour_packages', 'AdminTourPackagesController', 0, 0, '2021-03-31 04:11:41', NULL, NULL),
(14, 'Booked', 'fa fa-cog', 'tour_package_books', 'tour_package_books', 'AdminTourPackageBooksController', 0, 0, '2021-03-31 05:31:19', NULL, NULL),
(15, 'Hajj Package', 'fa fa-list', 'hajj_packages', 'hajj_packages', 'AdminHajjPackagesController', 0, 0, '2021-03-31 05:41:24', NULL, NULL),
(16, 'Booked', 'fa fa-indent', 'hajj_package_books', 'hajj_package_books', 'AdminHajjPackageBooksController', 0, 0, '2021-03-31 23:07:29', NULL, NULL),
(17, 'Slider', 'fa fa-random', 'sliders', 'sliders', 'AdminSlidersController', 0, 0, '2021-03-31 23:53:12', NULL, NULL),
(18, 'Achievement', 'fa fa-graduation-cap', 'achievements', 'achievements', 'AdminAchievementsController', 0, 0, '2021-04-01 03:57:42', NULL, NULL),
(19, 'Visa Service', 'fa fa-clipboard', 'visa_services', 'visa_services', 'AdminVisaServicesController', 0, 0, '2021-04-01 04:26:51', NULL, NULL),
(20, 'Social', 'fa fa-star-o', 'socials', 'socials', 'AdminSocialsController', 0, 0, '2021-04-01 05:44:57', NULL, NULL),
(21, 'left Side', 'fa fa-star', 'left_layouts', 'left_layouts', 'AdminLeftLayoutsController', 0, 0, '2021-04-01 06:01:48', NULL, NULL),
(22, 'Services', 'fa fa-pause-circle', 'services', 'services', 'AdminServicesController', 0, 0, '2021-11-06 01:45:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2021-03-28 02:43:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2021-03-28 02:43:26', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2021-03-28 02:43:26', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2021-03-28 02:43:26', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2021-03-28 02:43:26', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2021-03-28 02:43:26', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2021-03-28 02:43:26', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2021-03-28 02:43:27', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2021-03-28 02:43:27', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2021-03-28 02:43:27', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2021-03-28 02:43:27', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2021-03-28 02:43:27', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2021-03-28 02:43:26', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2021-03-28 02:43:26', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2021-03-28 02:43:26', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2021-03-28 02:43:26', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2021-03-28 02:43:26', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2021-03-28 02:43:26', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2021-03-28 02:43:26', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2021-03-28 02:43:26', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2021-03-28 02:43:26', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Heritage', 'text', NULL, NULL, '2021-03-28 02:43:26', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2021-03-28 02:43:26', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2021-11/d1751df4186f77f59d3cb8fadd9631df.png', 'upload_image', NULL, NULL, '2021-03-28 02:43:26', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2021-11/f0eb7d138e3ad097d7147f672f4de59c.png', 'upload_image', NULL, NULL, '2021-03-28 02:43:26', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2021-03-28 02:43:26', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2021-03-28 02:43:26', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2021-03-28 02:43:26', NULL, 'Application Setting', 'Google FCM Key'),
(17, 'phone1', '01719131305', 'text', NULL, NULL, '2021-03-31 03:12:13', NULL, 'Contact US', 'Phone 1'),
(18, 'phone2', '+02 784 888', 'text', NULL, NULL, '2021-03-31 03:16:28', '2021-03-31 03:16:35', 'Contact US', 'Phone 2'),
(19, 'email', 'sissoftit@gmail.com', 'email', NULL, NULL, '2021-03-31 03:19:32', NULL, 'Contact US', 'Email'),
(20, 'address', '#8901 shyamoli Road City, Dhaka', 'textarea', NULL, NULL, '2021-03-31 03:22:03', NULL, 'Contact US', 'Address'),
(21, 'website', 'http://www.heritage.com', 'text', NULL, NULL, '2021-03-31 03:22:28', NULL, 'Contact US', 'Website'),
(22, 'slider_bottom_section_title', 'HERITAGE AIR EXPRESS', 'text', NULL, NULL, '2021-04-01 00:17:11', NULL, 'Slider Bottom Section Content', 'Title'),
(23, 'slider_bottom_section_content', '<p>Heritage Air Express Ltd is one of the leading IATA approved travel agent in Bangladesh. The company has been established in 1998 keeping in view provision of excellent services to the overseas as well as local passenger. We are the only organization who operates five different companies from the three key locations in Dhaka city to provide all sorts of travel solutions. Heritage provides you one-stop service where you can get air tickets, hotel package, visa assistance, airport assistance and many more.</p>', 'wysiwyg', NULL, NULL, '2021-04-01 00:17:24', NULL, 'Slider Bottom Section Content', 'Content'),
(24, 'slider_bottom_section_image', 'uploads/2021-04/8f83f444361a79c081aad9c91d808610.png', 'upload_image', NULL, NULL, '2021-04-01 00:17:43', NULL, 'Slider Bottom Section Content', 'Image'),
(25, 'air_ticket_page_title', 'Heritage Air', 'text', NULL, NULL, '2021-04-01 00:48:54', NULL, 'Air Ticket Page', 'Title'),
(26, 'air_ticket_page_content', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 133px; top: 142px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 'wysiwyg', NULL, NULL, '2021-04-01 00:49:09', NULL, 'Air Ticket Page', 'Content'),
(27, 'air_ticket_page_youtube_video_link', 'https://www.youtube.com/embed/tgbNymZ7vqY', 'text', NULL, NULL, '2021-04-01 00:49:55', NULL, 'Air Ticket Page', 'Youtube Video Link'),
(28, 'air_ticket_page_video_thumbnail_image', 'uploads/2021-04/ff338e7dcf6e05a8226391f891802369.jpg', 'upload_image', NULL, NULL, '2021-04-01 00:52:58', NULL, 'Air Ticket Page', 'Video Thumbnail Image'),
(29, 'company_profile_title', 'Who we are?', 'text', NULL, NULL, '2021-04-01 02:25:06', NULL, 'Company Profile', 'Title'),
(30, 'company_profile_content', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'wysiwyg', NULL, NULL, '2021-04-01 02:25:26', NULL, 'Company Profile', 'Content'),
(31, 'company_profile_youtube_video_link', 'https://www.youtube.com/embed/tgbNymZ7vqY', 'text', NULL, NULL, '2021-04-01 02:25:45', NULL, 'Company Profile', 'Youtube Video Link'),
(32, 'company_profile_video_thumbnail_image', 'uploads/2021-04/321a506039f17639a68fe7f3f69fa549.jpg', 'upload_image', NULL, NULL, '2021-04-01 02:26:21', NULL, 'Company Profile', 'Video Thumbnail Image'),
(33, 'md_message', '<p>Heritage Air Express Ltd is one of the leading IATA approved travel agent in Bangladesh. The company has been established in 1998 keeping in view provision of excellent services to the overseas as well as local passenger. We are the only organization who operates five different companies from the three key locations in Dhaka city to provide all sorts of travel solutions. Heritage provides you one-stop service where you can get air tickets, hotel package, visa assistance, airport assistance and many more.</p>', 'wysiwyg', NULL, NULL, '2021-04-01 02:41:30', NULL, 'MD Message', 'Message'),
(34, 'mission', '<p>Aonsectetur pisici do eiusmod tempor em Ipsum is simply dummy text printing.</p>', 'wysiwyg', NULL, NULL, '2021-04-01 02:42:58', NULL, 'MD Message', 'Mission'),
(35, 'vision', '<p>Aonsectetur pisici do eiusmod tempor em Ipsum is simply dummy text printing.</p>', 'wysiwyg', NULL, NULL, '2021-04-01 02:43:21', NULL, 'MD Message', 'Vision'),
(36, 'md_email', 'sissoftit@gmail.com', 'email', NULL, NULL, '2021-04-01 02:43:50', NULL, 'MD Message', 'Email'),
(37, 'md_phone', '01719131305', 'text', NULL, NULL, '2021-04-01 02:44:20', NULL, 'MD Message', 'Phone'),
(38, 'md_address', 'Dhaka', 'textarea', NULL, NULL, '2021-04-01 02:44:40', NULL, 'MD Message', 'Address'),
(39, 'security', '01234567', 'textarea', 'security', 'hi', '2021-11-06 23:29:39', NULL, 'General Setting', 'Security'),
(41, 'privacy_logo', 'uploads/2021-11/cbce5b3e32a09a8df411c19e1b9833a5.jpg', 'upload_image', 'Privacy', 'hi', '2021-11-07 00:09:26', NULL, 'Privacy logo', 'Privacy_logo'),
(42, 'security_content', 'Security Contents are here....', 'textarea', 'security', 'write Security Content', '2021-11-07 01:52:47', NULL, 'Security', 'security_content'),
(43, 'privacy_content', '<p>Privacy Main Content</p>', 'wysiwyg', NULL, NULL, '2021-11-07 02:27:03', NULL, 'Privacy', 'Privacy_content'),
(44, 'privacy_title', 'Title here', 'text', NULL, NULL, '2021-11-07 03:17:21', NULL, 'Privacy', 'privacy_title');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Dashboard', 'dashboard', '2021-11-07 03:20:49', '2021-11-29 22:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 2, '0fb71ae9e534c2a7ce8a25c2dd90c3ad', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Total Booked\",\"icon\":\"<ion-icon name=\\\"arrow-down-outline\\\"><\\/ion-icon>\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"SELECT COUNT(*) FROM tour_package_books\"}', '2021-11-07 03:20:58', NULL),
(5, 2, '57076743deb589ee0c8e14948cf10bb0', 'chartarea', NULL, 0, 'Untitled', NULL, '2021-11-07 03:25:58', NULL),
(6, 2, '92a2dba3b303d53a85346358de7af08a', 'chartarea', NULL, 0, 'Untitled', NULL, '2021-11-07 03:26:03', NULL),
(7, 2, 'cf85fbbea7e8fa1f7190877d126cc084', 'chartarea', NULL, 0, 'Untitled', NULL, '2021-11-07 03:26:06', NULL),
(8, 2, '3c607d9324612459df670afeb46a3af9', 'chartarea', NULL, 0, 'Untitled', NULL, '2021-11-07 03:26:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2021-11/logo.png', 'admin@heritage.com', '$2y$10$t/KrAtbiEl9.I/0BlWDjT.k8fy77PfmxuySoTzJ7tGywnP2A/Zev2', 1, '2021-03-28 02:43:26', '2021-11-06 05:40:46', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Test', '01719131305', 'sissoftit@gmail.com', 'hdf', '2021-03-31 02:58:05', '2021-03-31 02:58:05'),
(2, 'Test2', '01719131305', 'sissoftit@gmail.com', 'uuyjf', '2021-03-31 03:02:49', '2021-03-31 03:02:49'),
(3, 'abu bakkar', '11', 'abubokkar728@gmail.com', 'sesd', '2021-11-06 04:48:41', '2021-11-06 04:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hajj_packages`
--

CREATE TABLE `hajj_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hajj_packages`
--

INSERT INTO `hajj_packages` (`id`, `type`, `title`, `place`, `duration`, `date`, `description`, `amount`, `image1`, `image2`, `image3`, `image4`, `image5`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hajj', 'AUTHENTIC PRODUCT', 'Mosque, Makkah', '2Days 3 night', '2021-04-21', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '1000', 'uploads/1/2021-04/service1.jpg', 'uploads/1/2021-04/service3.jpg', 'uploads/1/2021-04/story5.jpg', 'uploads/1/2021-04/welfare_projects6.jpg', 'uploads/1/2021-04/slider2.jpg', 1, '2021-03-31 23:12:22', NULL),
(2, 'Umrah', 'Kabah, Makkah', 'Saudi Arabia', '7-10 Days', '2021-11-12', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\">The&nbsp;<b>Hajj</b>&nbsp;(<span class=\"rt-commentedText nowrap\" style=\"white-space: nowrap;\"><span class=\"IPA nopopups noexcerpt\"><a href=\"https://en.wikipedia.org/wiki/Help:IPA/English\" title=\"Help:IPA/English\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">/<span style=\"border-bottom: 1px dotted;\"><span title=\"\'h\' in \'hi\'\">h</span><span title=\"/æ/: \'a\' in \'bad\'\">æ</span><span title=\"/dʒ/: \'j\' in \'jam\'\">dʒ</span></span>/</a></span></span>;<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-1\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Arabic_language\" class=\"mw-redirect\" title=\"Arabic language\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Arabic</a>:&nbsp;<span lang=\"ar\" dir=\"rtl\">حَجّ</span>‎&nbsp;<i><i lang=\"ar-Latn\" title=\"DIN 31635 Arabic (Arabic language) transliteration\">Ḥajj</i></i>&nbsp;\"<a href=\"https://en.wiktionary.org/wiki/pilgrimage\" class=\"extiw\" title=\"wikt:pilgrimage\" style=\"color: rgb(51, 102, 187); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><i>pilgrimage</i></a>\"; sometimes also spelled&nbsp;<b>Hadj</b>,&nbsp;<b>Hadji</b>&nbsp;or&nbsp;<b>Haj</b>&nbsp;in English) is an annual&nbsp;<a href=\"https://en.wikipedia.org/wiki/Islam\" title=\"Islam\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Islamic</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pilgrimage\" title=\"Pilgrimage\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">pilgrimage</a>&nbsp;to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mecca\" title=\"Mecca\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Mecca</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Saudi_Arabia\" title=\"Saudi Arabia\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Saudi Arabia</a>,<sup id=\"cite_ref-Modarresi_2-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-Modarresi-2\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>&nbsp;the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Holiest_sites_in_Islam\" title=\"Holiest sites in Islam\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">holiest city</a>&nbsp;for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Muslims\" title=\"Muslims\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Muslims</a>. Hajj is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fard\" title=\"Fard\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">mandatory religious duty</a>&nbsp;for Muslims that must be carried out at least once in their lifetime by all adult Muslims who are physically and financially capable of undertaking the journey, and of supporting their family during their absence from home.<sup id=\"cite_ref-Marshall86_3-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-Marshall86-3\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[3]</a></sup><sup id=\"cite_ref-4\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-4\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[4]</a></sup><sup id=\"cite_ref-5\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-5\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[5]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\">In Islamic terminology, Hajj is a pilgrimage made to the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kaaba\" title=\"Kaaba\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kaaba</a>, the \"House of God\", in the sacred city of Mecca in Saudi Arabia. It is one of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Five_Pillars_of_Islam\" title=\"Five Pillars of Islam\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Five Pillars of Islam</a>, alongside&nbsp;<a href=\"https://en.wikipedia.org/wiki/Shahadah\" class=\"mw-redirect\" title=\"Shahadah\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Shahadah</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Salat\" class=\"mw-redirect\" title=\"Salat\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Salat</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Zakat\" title=\"Zakat\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Zakat</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sawm\" class=\"mw-redirect\" title=\"Sawm\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Sawm</a>&nbsp;or fasting of Ramadan. The Hajj is a demonstration of the solidarity of the Muslim people, and their submission to&nbsp;<a href=\"https://en.wikipedia.org/wiki/God_in_Islam\" title=\"God in Islam\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">God</a>&nbsp;(<a href=\"https://en.wikipedia.org/wiki/Allah\" title=\"Allah\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Allah</a>).<sup id=\"cite_ref-Nigosian111_6-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-Nigosian111-6\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[6]</a></sup><sup id=\"cite_ref-7\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-7\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[7]</a></sup>&nbsp;The word Hajj means \"to attend a journey\", which connotes both the outward act of a journey and the inward act of intentions.<sup id=\"cite_ref-Adelowo395_8-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-Adelowo395-8\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[8]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\">The rites of pilgrimage are performed over five to six days, extending from the 8th to the 12th or 13th<sup id=\"cite_ref-9\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-9\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[9]</a></sup>&nbsp;of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dhu_al-Hijjah\" title=\"Dhu al-Hijjah\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Dhu al-Hijjah</a>, the last month of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Islamic_calendar\" title=\"Islamic calendar\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Islamic calendar</a>.<sup id=\"cite_ref-10\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-10\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[10]</a></sup>&nbsp;Because the Islamic calendar is&nbsp;<a href=\"https://en.wikipedia.org/wiki/Lunar_calendar\" title=\"Lunar calendar\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">lunar</a>&nbsp;and the Islamic year is about eleven days shorter than the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gregorian_calendar\" title=\"Gregorian calendar\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Gregorian</a>&nbsp;year, the Gregorian date of Hajj changes from year to year. In 2021 AD (1442&nbsp;<a href=\"https://en.wikipedia.org/wiki/Anno_Hegirae\" class=\"mw-redirect\" title=\"Anno Hegirae\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">AH</a>), Dhu al-Hijjah extends from 11 July to 8 August.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\">The Hajj is associated with the life of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Prophets_of_Islam\" class=\"mw-redirect\" title=\"Prophets of Islam\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Islamic prophet</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Muhammad_in_Islam\" title=\"Muhammad in Islam\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Muhammad</a>&nbsp;from the 7th century AD, but the ritual of pilgrimage to Mecca is considered by Muslims to stretch back thousands of years to the time of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Abraham_in_Islam\" title=\"Abraham in Islam\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Abraham</a>. During Hajj, pilgrims join processions of millions of people, who simultaneously converge on Mecca for the week of the Hajj, and perform a series of rituals: each person walks counter-clockwise seven times around the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kaaba\" title=\"Kaaba\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kaaba</a>&nbsp;(a cube-shaped building and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Qibla\" title=\"Qibla\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">direction of prayer</a>&nbsp;for Muslims), trots (walks briskly) back and forth between the hills of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Safa_and_Marwah\" class=\"mw-redirect\" title=\"Safa and Marwah\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Safa and Marwah</a>&nbsp;seven times, then drinks from the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Zamzam_Well\" title=\"Zamzam Well\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Zamzam Well</a>, goes to the plains of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mount_Arafat\" title=\"Mount Arafat\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Mount Arafat</a>&nbsp;to stand in vigil, spends a night in the plain of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Muzdalifa\" class=\"mw-redirect\" title=\"Muzdalifa\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Muzdalifa</a>, and performs symbolic&nbsp;<a href=\"https://en.wikipedia.org/wiki/Stoning_of_the_devil\" class=\"mw-redirect\" title=\"Stoning of the devil\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">stoning of the devil</a>&nbsp;by throwing stones at three pillars. After the sacrifice of an animal (can be accomplished by using a voucher), the Pilgrims then are required to either shave or trim their heads (male) or trim the ends of their hair (female). A celebration of the three-day global festival of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Eid_al-Adha\" title=\"Eid al-Adha\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Eid al-Adha</a>&nbsp;proceeds thereafter.<sup id=\"cite_ref-armstrong_11-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-armstrong-11\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[11]</a></sup><sup id=\"cite_ref-ngeo_12-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-ngeo-12\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[12]</a></sup><sup id=\"cite_ref-bbc.co.uk_13-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-bbc.co.uk-13\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[13]</a></sup><sup id=\"cite_ref-14\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-14\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[14]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\">Muslims may also undertake an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Umrah\" title=\"Umrah\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Umrah</a>&nbsp;(<a href=\"https://en.wikipedia.org/wiki/Arabic_language\" class=\"mw-redirect\" title=\"Arabic language\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Arabic</a>:&nbsp;<span lang=\"ar\" dir=\"rtl\">عُمرَة</span>‎), or \"lesser pilgrimage\" to Mecca at other times of the year. However the Umrah is not a substitute for the Hajj and Muslims are still obligated to perform the Hajj at some other point in their lifetime if they have the means to do so.<sup id=\"cite_ref-15\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-15\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[15]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\">According to the official published statistics between 2000 and 2019,<sup id=\"cite_ref-stats1_16-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-stats1-16\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[16]</a></sup><sup id=\"cite_ref-RESA1997_17-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-RESA1997-17\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[17]</a></sup><sup id=\"cite_ref-:5_18-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-:5-18\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[18]</a></sup>&nbsp;the average number of attendees is 2,269,145 per year, in which 1,564,710 come from outside Saudi Arabia and 671,983 are local. The year 2012 marks the highest number of participants with 3,161,573.<sup id=\"cite_ref-:6_19-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-:6-19\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[19]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\">In June 2020, while not cancelling the Hajj outright, the Saudi Government announced that they would only welcome&nbsp;<a href=\"https://en.wikipedia.org/wiki/Impact_of_the_COVID-19_pandemic_on_Hajj\" title=\"Impact of the COVID-19 pandemic on Hajj\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\"very limited numbers\" of pilgrims</a>&nbsp;who are residents of Saudi Arabia due to the global&nbsp;<a href=\"https://en.wikipedia.org/wiki/COVID-19_pandemic\" title=\"COVID-19 pandemic\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">COVID-19 pandemic</a>.<sup id=\"cite_ref-New_York_Times_20-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Hajj#cite_note-New_York_Times-20\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[20]</a></sup>&nbsp;Similar restrictions applied in 2021, but women were permitted to attend without a male guardian (<i>mehrem</i>) provided they went in a trustworthy group</p>', '150000', 'uploads/1/2021-11/istockphoto_1264361225_170667a.jpg', NULL, NULL, NULL, NULL, 1, '2021-11-06 23:11:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hajj_package_books`
--

CREATE TABLE `hajj_package_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adults` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `children` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hajj_package_books`
--

INSERT INTO `hajj_package_books` (`id`, `package_id`, `name`, `phone`, `email`, `adults`, `children`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test', '01719131305', 'sissoftit@gmail.com', '4', '5', 'sfhfgj', '2021-03-31 23:16:01', '2021-03-31 23:16:01'),
(2, 2, 'abu bakkar', '01752220026', 'abubokkar728@gmail.com', '4', '4', 'ss', '2021-11-06 23:12:53', '2021-11-06 23:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `left_layouts`
--

CREATE TABLE `left_layouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `left_layouts`
--

INSERT INTO `left_layouts` (`id`, `title`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Fly Heritage', 'http://flyheritage.net/', NULL, NULL),
(2, 'Fly Heritage2', 'http://flyheritage.net/', NULL, NULL);

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
(2, '2016_08_07_145904_add_table_cms_apicustom', 1),
(3, '2016_08_07_150834_add_table_cms_dashboard', 1),
(4, '2016_08_07_151210_add_table_cms_logs', 1),
(5, '2016_08_07_151211_add_details_cms_logs', 1),
(6, '2016_08_07_152014_add_table_cms_privileges', 1),
(7, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(8, '2016_08_07_152320_add_table_cms_settings', 1),
(9, '2016_08_07_152421_add_table_cms_users', 1),
(10, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(11, '2016_08_07_154624_add_table_cms_moduls', 1),
(12, '2016_08_17_225409_add_status_cms_users', 1),
(13, '2016_08_20_125418_add_table_cms_notifications', 1),
(14, '2016_09_04_033706_add_table_cms_email_queues', 1),
(15, '2016_09_16_035347_add_group_setting', 1),
(16, '2016_09_16_045425_add_label_setting', 1),
(17, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(18, '2016_10_01_141740_add_method_type_apicustom', 1),
(19, '2016_10_01_141846_add_parameters_apicustom', 1),
(20, '2016_10_01_141934_add_responses_apicustom', 1),
(21, '2016_10_01_144826_add_table_apikey', 1),
(22, '2016_11_14_141657_create_cms_menus', 1),
(23, '2016_11_15_132350_create_cms_email_templates', 1),
(24, '2016_11_15_190410_create_cms_statistics', 1),
(25, '2016_11_17_102740_create_cms_statistic_components', 1),
(26, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2021_03_31_063115_create_contact_messages_table', 2),
(29, '2021_03_31_100038_create_tour_packages_table', 3),
(30, '2021_03_31_112404_create_tour_package_books_table', 4),
(31, '2021_03_31_113717_create_hajj_packages_table', 5),
(32, '2021_03_31_113834_create_hajj_package_books_table', 5),
(33, '2021_04_01_055023_create_sliders_table', 6),
(34, '2021_04_01_094124_create_achievements_table', 7),
(35, '2021_04_01_101725_create_visa_services_table', 8),
(36, '2021_04_01_114212_create_socials_table', 9),
(37, '2021_04_01_115956_create_left_layouts_table', 10),
(39, '2021_11_06_074214_create_services_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `img`, `service_title`, `service_content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/1/2021-11/service_box1.png', 'OUR SERVICE', 'Aonsectetur pisici do eiusmod tempor is simply dummy text printing.', 1, '2021-11-06 02:09:06', NULL),
(2, 'uploads/1/2021-11/service_box2.png', 'OUR SERVICE2', 'Aonsectetur pisici do eiusmod tempor is simply dummy text printing.2', 1, '2021-11-06 02:23:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title1`, `title2`, `title3`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AIR TICKET & HELP', 'African Children For', 'Education', 'uploads/1/2021-04/slider1.jpg', 1, '2021-03-31 23:55:07', NULL),
(2, 'CONTRIBUTE FOR', 'Homeless People', NULL, 'uploads/1/2021-04/slider2.jpg', 1, '2021-03-31 23:55:50', NULL),
(3, 'FUTURES', 'FOR CHILDREN', 'Our Supporters', 'uploads/1/2021-04/slider3.jpg', 1, '2021-03-31 23:56:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `url`, `icon`, `background_color`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'https://www.facebook.com/na.jewel72', '<i class=\"fa fa-facebook\"></i>', '#3B5998', 'white', 1, '2021-04-01 05:46:48', '2021-04-01 05:54:38'),
(2, 'LinkedIn', '#', '<i class=\"fa fa-linkedin\"></i>', '#007bb5', 'white', 1, '2021-04-01 05:47:37', '2021-11-16 00:20:58'),
(3, 'Youtube', 'https://www.youtube.com/channel/UCxHoBXkY88Tb8z1Ssj6CWsQ', '<i class=\"fa fa-youtube\"></i>', '#bb0000', 'white', 1, '2021-04-01 05:48:09', '2021-04-01 05:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `tour_packages`
--

CREATE TABLE `tour_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_packages`
--

INSERT INTO `tour_packages` (`id`, `type`, `title`, `place`, `duration`, `date`, `description`, `amount`, `image1`, `image2`, `image3`, `image4`, `image5`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Domestic', 'EBOLA TREATMENT HELPED THE NORCOTICS', 'Cox\'s Bazar', '2Days 3 night', '2021-03-31', '<p><span style=\"color: rgb(80, 80, 80); font-family: arimo; font-size: 13px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">Quis autem velum iure reprehe nderit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sapien neque, bibendum in sagittis. Duis varius tellus egetmassa pulvinar eu aliquet nibh dapibus. Aenean eros erat, tincidunt vitae fringila nec, fermentum et quam. Class aptent tacit socio squ ad litora torquent peribia nostra, per inceptos himenaeos. Aenean eros erat, tincidunt vitae fringilla nec, fermentum et quam. Quis autem velum iure reprehe nderit. Lorem ipsum adipiscing elit. Cras sapien neque, bibendum in sagittis. Duis varius tellus eget massa pulvinar eu aliquet nibh dapibus. Aenean eros erat, tincidunt vitae fringila nec, fermentum et quam. Quis autem velum iure reprehe nderit. Lorem ipsum dolor sit amet, consectetur adipscing elitneque, bibendum in sagittis. Duis varius tellus eget massa pulvinar. Praesent commodo curss magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eueo. Nulla vitae elit libero, a pharetra augue.</span><span style=\"background-color: rgb(249, 249, 249); color: rgb(80, 80, 80); font-family: arimo; font-size: 13px; letter-spacing: 0.32px;\">Auis autem velum iure reprehe nderit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sapien neque, bibendum in sagittis. Duis varius tellus egetmassa pulvinar eu aliquet nibh dapibus. Aenean eros erat, tincidunt vitae fringila nec, fermentum et quam. Class aptent tacit socio squ ad litora torquent peribia nostra, per inceptos himenaeos. Aenean eros erat, tincidunt vitae fringilla nec, fermentum et quam. Quis autem velum iure reprehe nderit. Lorem ipsum adipiscing elit. Cras sapien neque, bibendum in sagittis.</span><br></p><blockquote style=\"padding: 40px 80px; margin-top: 30px; margin-bottom: 30px; font-size: 16px; border: 0px none; background-image: none; background-position: 0px 0px; background-size: initial; background-repeat: repeat; background-attachment: scroll; background-origin: initial; background-clip: initial; color: rgb(102, 102, 102); float: left; font-family: arimo; font-style: italic; font-weight: 700; line-height: 30px; position: relative; text-align: center; width: 870px; letter-spacing: 0.32px;\">Dused pretium,&nbsp;<i style=\"color: rgb(228, 114, 87);\">ligula sollicitudin</i>&nbsp;laoreet viverra, tortor libero sodales nunc tortor ucnibh. Nullam mollis. Ut justo.</blockquote><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; font-size: 13px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">Auis autem velum iure reprehe nderit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sapien neque, bibendum in sagittis. Duis varius tellus egetmassa pulvinar eu aliquet nibh dapibus. Aenean eros erat, tincidunt vitae fringila nec, fermentum et quam. Class aptent tacit socio squ ad litora torquent peribia nostra, per inceptos himenaeos. Aenean eros erat, tincidunt vitae fringilla nec, fermentum et quam. Quis autem velum iure reprehe nderit. Lorem ipsum adipiscing elit. Cras sapien neque,</p>', '23150', 'uploads/1/2021-03/gallery11.jpg', 'uploads/1/2021-03/gallery_box3.jpg', 'uploads/1/2021-03/slider2.jpg', 'uploads/1/2021-03/volunteer.jpg', 'uploads/1/2021-03/welfare_projects6.jpg', 1, '2021-03-31 04:25:32', NULL),
(2, 'International', 'Singapore', 'Singapore', '6-7 Days', '2021-11-13', '<p><span style=\"color: rgb(80, 80, 80); font-family: arimo; font-size: 13px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">Quis autem velum iure reprehe nderit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sapien neque, bibendum in sagittis. Duis varius tellus egetmassa pulvinar eu aliquet nibh dapibus. Aenean eros erat, tincidunt vitae fringila nec, fermentum et quam. Class aptent tacit socio squ ad litora torquent peribia nostra, per inceptos himenaeos. Aenean eros erat, tincidunt vitae fringilla nec, fermentum et quam. Quis autem velum iure reprehe nderit. Lorem ipsum adipiscing elit. Cras sapien neque, bibendum in sagittis. Duis varius tellus eget massa pulvinar eu aliquet nibh dapibus. Aenean eros erat, tincidunt vitae fringila nec, fermentum et quam. Quis autem velum iure reprehe nderit. Lorem ipsum dolor sit amet, consectetur adipscing elitneque, bibendum in sagittis. Duis varius tellus eget massa pulvinar. Praesent commodo curss magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eueo. Nulla vitae elit libero, a pharetra augue.</span><br></p>', '60000', 'uploads/1/2021-11/blog1.jpg', NULL, NULL, NULL, NULL, 1, '2021-11-06 22:55:09', '2021-11-07 02:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `tour_package_books`
--

CREATE TABLE `tour_package_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adults` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `children` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_package_books`
--

INSERT INTO `tour_package_books` (`id`, `package_id`, `name`, `phone`, `email`, `adults`, `children`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test', '01719131305', 'sissoftit@gmail.com', '4', '5', 'fh', '2021-03-31 05:30:51', '2021-03-31 05:30:51');

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

-- --------------------------------------------------------

--
-- Table structure for table `visa_services`
--

CREATE TABLE `visa_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_requirement` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_enlisted_agent` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visa_services`
--

INSERT INTO `visa_services` (`id`, `country_name`, `country_image`, `document_requirement`, `fee`, `remarks`, `is_enlisted_agent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BD', 'uploads/1/2021-04/flag1.jpg', '<h3 style=\"font-family: montserrat; color: rgb(48, 48, 48); letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">PERSONAL DOCUMENTS &amp; INFORMATION</h3><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Current (valid for 6 months) and Old passports</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Two recent color photograph with white background (35 x 45mm)</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Birth certificate/National ID Card of applicant</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Marriage Certificate, Nikah Nama</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o How long are doing this occupation?</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Family information</p>', '<h3 style=\"font-family: montserrat; color: rgb(48, 48, 48); letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">BDT: 5000</h3>', '<h3 style=\"font-family: montserrat; color: rgb(48, 48, 48); letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">Remarks</h3><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>', 'Yes', 1, '2021-04-01 05:06:11', '2021-04-01 05:24:04'),
(2, 'Malaysia', 'uploads/1/2021-04/flag2.jpg', '<h3 style=\"font-family: montserrat; color: rgb(48, 48, 48); letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">PERSONAL DOCUMENTS &amp; INFORMATION</h3><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Current (valid for 6 months) and Old passports</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Two recent color photograph with white background (35 x 45mm)</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Birth certificate/National ID Card of applicant</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Marriage Certificate, Nikah Nama</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o How long are doing this occupation?</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Family information</p>', '<p>50000</p>', '<h3 style=\"font-family: montserrat; color: rgb(48, 48, 48); letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">Remarks</h3><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>', 'No', 1, '2021-04-01 05:07:54', NULL),
(3, 'Brazil', 'uploads/1/2021-04/flag3.jpg', '<h3 style=\"font-family: montserrat; color: rgb(48, 48, 48); letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">PERSONAL DOCUMENTS &amp; INFORMATION</h3><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Current (valid for 6 months) and Old passports</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Two recent color photograph with white background (35 x 45mm)</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Birth certificate/National ID Card of applicant</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Marriage Certificate, Nikah Nama</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o How long are doing this occupation?</p><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">o Family information</p>', '<p>5000+100 charge</p>', '<h3 style=\"font-family: montserrat; color: rgb(48, 48, 48); letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">Remarks</h3><p style=\"font-family: arimo; color: rgb(80, 80, 80); line-height: 28px; letter-spacing: 0.32px; background-color: rgb(249, 249, 249);\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>', 'No', 1, '2021-04-01 05:10:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hajj_packages`
--
ALTER TABLE `hajj_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hajj_package_books`
--
ALTER TABLE `hajj_package_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hajj_package_books_package_id_index` (`package_id`);

--
-- Indexes for table `left_layouts`
--
ALTER TABLE `left_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_packages`
--
ALTER TABLE `tour_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_package_books`
--
ALTER TABLE `tour_package_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_package_books_package_id_index` (`package_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visa_services`
--
ALTER TABLE `visa_services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hajj_packages`
--
ALTER TABLE `hajj_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hajj_package_books`
--
ALTER TABLE `hajj_package_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `left_layouts`
--
ALTER TABLE `left_layouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tour_packages`
--
ALTER TABLE `tour_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tour_package_books`
--
ALTER TABLE `tour_package_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visa_services`
--
ALTER TABLE `visa_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

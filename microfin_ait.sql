-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2023 at 11:15 AM
-- Server version: 10.5.15-MariaDB
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `microfin_ait`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `small_title` varchar(100) NOT NULL,
  `big_title` varchar(200) NOT NULL,
  `short_content` text NOT NULL,
  `long_content` text NOT NULL,
  `image` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `small_title`, `big_title`, `short_content`, `long_content`, `image`, `createdAt`) VALUES
(26, 'ABOUT OUR COMPANY', 'We are the next generation of the business world, creative solutions', 'Over 5 years, We complete every project with extra care as customer needs.', 'Ambala IT is a customer oriented electronic security and customized IT solution provider with a far reaching vision of adding values to the society and industry we operate in. Most of our solutions are backed up by years of market experience and extensive R&D (Research & Development). This results in better understanding of our customer’s requirements and satisfy them by providing with unique solutions specifically tailored to individual customer’s need and also enables us to provide unparalleled after sale service. Ambala IT is one of the fastest growing customized IT Solutions Company in Bangladesh. Since its inception in April 01, 2016, Ambala IT gradually approached towards its focus of emerging as a pioneer customized IT solution provider. We have gathered certified software professionals to build an expert team and developed them through proper training to make capable of taking challenges, responsibilities and delivering work of superior quality.', 'VmxjMU1HRllVbk5hVjFGMFRXazFjV05IWXowdWFtWnBaZz09LmpmaWY=', '2022-12-15 09:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `app_policy`
--

CREATE TABLE `app_policy` (
  `id` int(11) NOT NULL,
  `app_name` varchar(100) NOT NULL,
  `privacy_policy` text DEFAULT NULL,
  `tearms_and_condition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_policy`
--

INSERT INTO `app_policy` (`id`, `app_name`, `privacy_policy`, `tearms_and_condition`) VALUES
(46, 'IOS', '<p>yui</p>', '<p>ghu</p>'),
(47, 'Android', '<p>asfgyRgy</p>', '<p>sdgety</p>'),
(49, 'asdf', '<p>dfg</p>', '<p>werg</p>');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `backGroundImagePath` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `backGroundImagePath`, `createdAt`) VALUES
(5, 'bWlzc2lvbi5qcGc=', '2019-07-25 07:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `contactInfos`
--

CREATE TABLE `contactInfos` (
  `id` int(11) NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `address` text NOT NULL,
  `ph` text NOT NULL,
  `timing` text NOT NULL,
  `mail` text NOT NULL,
  `mailTag` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactInfos`
--

INSERT INTO `contactInfos` (`id`, `country`, `city`, `address`, `ph`, `timing`, `mail`, `mailTag`, `createdAt`) VALUES
(7, 'Bangladesh', 'Dhaka', 'House-62, Block-KA,\r\nPiciculture Housing Society,\r\nShyamoli, Dhaka-1207.', '+88-02-9120040, 9125028', 'Mon to Fri 9am to 6 pm', 'info@ambalafoundation.org', 'Send us your query anytime!', '2020-06-23 06:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `features_desc`
--

CREATE TABLE `features_desc` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `features_desc` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `features_desc`
--

INSERT INTO `features_desc` (`id`, `name`, `product_id`, `features_desc`, `created_at`, `updated_at`) VALUES
(3, 'Overall', 39, 'wqerft4g5yhuj', '2021-09-20 06:53:35', '2021-09-20 06:53:35'),
(4, 'Loan', 39, 'sxdfgbhjmk,', '2021-09-20 11:09:06', '2021-09-20 11:09:06'),
(5, 'Savings', 39, 'ertghjk,.l/', '2021-09-20 11:15:51', '2021-09-20 11:15:51'),
(6, 'Accounting', 39, '3wretyjukertyuio', '2021-09-20 11:16:30', '2021-09-20 11:16:30'),
(8, 'dfgbh', 77, 'dfghj', '2021-09-23 06:01:04', '2021-09-23 06:01:04'),
(9, 'dfgbh', 78, 'dfghj', '2021-09-23 06:01:46', '2021-09-23 06:01:46'),
(10, 'dfgbh', 79, 'dfghj', '2021-09-23 06:02:35', '2021-09-23 06:02:35'),
(11, 'dfgbh', 80, 'dfghj', '2021-09-23 06:03:42', '2021-09-23 06:03:42'),
(12, 'sdfghj', 82, 'sdfghyjuki', '2021-09-23 07:04:52', '2021-09-23 07:04:52'),
(13, 'sdfghjk', 82, 'sdfghjk', '2021-09-23 07:04:52', '2021-09-23 07:04:52'),
(16, 'Overall', 101, 'ertyukilov;', '2021-09-26 06:23:39', '2021-09-26 06:23:39'),
(81, '43t5y6', 8, '32qrt5hyu', '2021-10-06 06:37:00', '2021-10-06 06:37:00'),
(88, 'wedrtg', 100, 'swetr5y6', '2021-10-06 08:51:08', '2021-10-06 08:51:08'),
(89, '2eq3rftg', 100, 'rftghby', '2021-10-06 08:51:08', '2021-10-06 08:51:08'),
(90, '2eq3rftg', 100, 'rftghby', '2021-10-06 08:51:08', '2021-10-06 08:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `img_type_id_fk` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `img_type_id_fk`, `status`, `updated_at`, `created_at`) VALUES
(10, 'MjEuanBn', 1, 1, '2021-08-26 05:27:43', '2021-08-26 05:27:43'),
(11, 'MjAuanBn', 2, 1, '2021-08-26 05:27:43', '2021-08-26 05:27:43'),
(12, 'MTkuanBn', 3, 1, '2021-08-26 05:27:43', '2021-08-26 05:27:43'),
(13, 'MTguanBn', 3, 1, '2021-08-26 05:27:43', '2021-08-26 05:27:43'),
(14, 'MTcuanBn', 3, 1, '2021-08-26 05:27:43', '2021-08-26 05:27:43'),
(15, 'MTYuanBn', 4, 1, '2021-08-26 05:27:43', '2021-08-26 05:27:43'),
(16, 'Zm91bi5qcGc=', 6, 1, '2022-07-07 03:59:58', '2022-07-07 03:59:58'),
(17, 'YTEuanBn', 1, 0, '2022-07-26 04:22:42', '2022-07-26 04:22:42'),
(18, 'YTIuanBn', 1, 0, '2022-07-26 04:22:58', '2022-07-26 04:22:58'),
(19, 'YTMuamZpZg==', 1, 0, '2022-07-26 04:23:06', '2022-07-26 04:23:06'),
(21, 'dDEuanBn', 2, 0, '2022-07-26 09:56:52', '2022-07-26 09:56:52'),
(22, 'YmFja2dyb3VuZC5qcGc=', 2, 0, '2022-07-26 09:57:18', '2022-07-26 09:57:18'),
(23, 'aW1hZ2VzICgxNykuamZpZg==', 2, 0, '2022-07-26 10:07:13', '2022-07-26 09:57:39'),
(24, 'aW1hZ2VzICgxNikuamZpZg==', 2, 0, '2022-07-26 10:07:27', '2022-07-26 10:07:27'),
(25, 'aW1hZ2VzICgxNSkuamZpZg==', 2, 0, '2022-07-26 10:07:37', '2022-07-26 10:07:37'),
(26, 'aW1hZ2VzICgxNCkuamZpZg==', 4, 0, '2022-07-26 10:08:01', '2022-07-26 10:08:01'),
(27, 'aW1hZ2VzICgxMykuamZpZg==', 3, 0, '2022-07-26 10:08:17', '2022-07-26 10:08:17'),
(28, 'aW1hZ2VzICgxMikuamZpZg==', 3, 0, '2022-07-26 10:08:40', '2022-07-26 10:08:40'),
(29, 'aW1hZ2VzICgxMikuamZpZg==', 4, 0, '2022-07-26 10:09:31', '2022-07-26 10:09:31'),
(30, 'aW1hZ2VzICgxMSkuamZpZg==', 4, 0, '2022-07-26 10:09:40', '2022-07-26 10:09:40'),
(31, 'aW1hZ2VzICgxMCkuamZpZg==', 4, 0, '2022-07-26 10:09:49', '2022-07-26 10:09:49'),
(32, 'aW1hZ2VzICgxMCkuamZpZg==', 6, 0, '2022-07-26 10:10:14', '2022-07-26 10:10:14'),
(33, 'aW1hZ2VzICg5KS5qZmlm', 6, 0, '2022-07-26 10:10:22', '2022-07-26 10:10:22'),
(34, 'aW1hZ2VzICg4KS5qZmlm', 6, 0, '2022-07-26 10:10:31', '2022-07-26 10:10:31'),
(35, 'aW1hZ2VzICg3KS5qZmlm', 6, 0, '2022-07-26 10:10:40', '2022-07-26 10:10:40'),
(36, 'aW1hZ2VzICg3KS5qZmlm', 1, 0, '2022-07-26 10:11:18', '2022-07-26 10:11:18'),
(37, 'aW1hZ2VzICg2KS5qZmlm', 2, 0, '2022-07-26 10:11:30', '2022-07-26 10:11:30'),
(38, 'aW1hZ2VzICg1KS5qZmlm', 3, 0, '2022-07-26 10:11:39', '2022-07-26 10:11:39'),
(39, 'aW1hZ2VzICg1KS5qZmlm', 4, 0, '2022-07-26 10:11:49', '2022-07-26 10:11:49'),
(40, 'aW1hZ2VzICg0KS5qZmlm', 4, 0, '2022-07-26 10:11:59', '2022-07-26 10:11:59'),
(41, 'aW1hZ2VzICgzKS5qZmlm', 6, 0, '2022-07-26 10:12:09', '2022-07-26 10:12:09'),
(42, 'aW1hZ2VzICgyKS5qZmlm', 6, 0, '2022-07-26 10:12:21', '2022-07-26 10:12:21'),
(43, 'aW1hZ2VzICgyKS5qZmlm', 6, 0, '2022-07-26 10:12:29', '2022-07-26 10:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_img_type`
--

CREATE TABLE `gallery_img_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_img_type`
--

INSERT INTO `gallery_img_type` (`id`, `name`, `status`, `updated_at`, `created_at`) VALUES
(1, ' Basis', 0, '2021-08-26 09:31:35', '2021-08-26 09:31:35'),
(2, 'Test1', 0, '2022-07-07 04:01:26', '2021-08-26 09:31:35'),
(3, 'Test2', 0, '2022-07-07 04:01:34', '2021-08-26 09:32:05'),
(4, 'Test3', 0, '2022-07-07 04:01:41', '2021-08-26 09:32:05'),
(6, 'test', 0, '2022-07-07 03:59:15', '2022-07-07 03:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

CREATE TABLE `homepage` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `paragraph` text DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homepage`
--

INSERT INTO `homepage` (`id`, `title`, `paragraph`, `CreatedAt`) VALUES
(3, 'Openning At 1st February 2020', 'Welcome Every One.', '2018-09-16 10:40:04'),
(9, 'Openning At 1st February 2018', 'Welcome Every One.', '2018-09-16 10:44:14'),
(10, 'Openning At 1st February 2019.', 'Welcome Every One.', '2018-09-16 10:44:25'),
(11, 'Openning At 1st February 2018.', 'Welcome Every One.', '2018-09-16 11:40:28'),
(12, 'Openning At 1st February 2019.', 'Fortis Security is always ready to help people in terms of security purposes.\nWe just love to do it.', '2018-09-17 07:23:56'),
(13, 'Openning At 1st February 2019.', 'Fortis Security is always ready to help people in terms of security purposes.\r\nWe just love to do it. We jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj   jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj   jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', '2018-09-17 07:28:57'),
(14, 'Openning At 1st February 2019.', 'Fortis Security is always ready to help people in terms of security purposes.\r\nWe just love to do it.', '2018-09-17 07:29:08'),
(15, 'Openning At 1st February 2019.', 'Fortis Security is always ready to help people in terms of security purposes.\r\nWe just love to do it.', '2018-09-17 07:29:44'),
(16, 'Openning At 1st February 2020.', 'Fortis Security is always ready to help people in terms of security purposes.\r\nWe just love to do it.', '2018-09-17 07:32:28'),
(17, NULL, NULL, '2018-09-25 11:48:53'),
(18, 'Fortis Security Will Love To Make Your Life More Secure', NULL, '2018-09-25 11:50:38'),
(19, 'FORTIS SECURITY Will Love To Make Your Life More Secure', 'Your Security Is Our Concern', '2018-09-25 11:51:31'),
(20, 'Ezy Fintech Your Finance support', 'Your Finance Is Our Concern', '2019-01-02 06:02:34'),
(21, 'Ezy Fintech To Make Your Finance Even Better', 'Your Finance Is Our Concern', '2019-01-02 06:03:30'),
(22, 'Ezy Fintech To Make Your Finance Even', 'Your Finance Is Our Concern', '2019-01-02 11:41:01'),
(23, 'Ezy Fintech To Make Your Finance Even Better', 'Your Finance Is Our Concern', '2019-01-06 03:49:13'),
(24, 'Ezy Fintech To Make Your Finance', 'Your Finance Is Our Concern', '2019-04-01 09:55:36'),
(25, 'Ezy Fintech To Make Your Finance Even Better', 'Your Finance Is Our Something', '2019-04-01 09:55:59'),
(26, 'Ezy Fintech To Make Your Finance Even Better', 'Your Finance Is Our Concern', '2019-04-01 09:56:20'),
(27, 'Radio Bikrampur', 'Radio Bikrampur, as a community media, works to make community people aware of their rights and responsibilities to ensure active participation of people in development activities by providing with information and entertainment. The target beneficiaries of this radio are adolescent, women and children, street children, people with disability as well as other general people. Not only that there are three types of marginal group in the broadcasting area of Radio Bikrampur such as Bede Community, Fisher Community, Dalit Community etc. Radio Bikrampur is broadcasting various programs for these disadvantaged communities so that they can be aware of their rights and on the other hand, the duty bearers can be active to ensure their rights.\r\n\r\nThe program of radio focuses on adolescent reproductive health, HIV/AIDs, STI, human rights, technology, child rights, women rights, education, health and nutrition, tobacco control, early marriage, agriculture, business and so on.', '2020-06-14 18:00:00'),
(28, 'Radio Bikrampur', 'A community media works to make community people aware of their rights and responsibilities to ensure the active participation of people in development activities by providing information and entertainment.', '2020-06-15 06:05:10'),
(29, NULL, NULL, '2020-06-23 10:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `menuName` varchar(20) NOT NULL,
  `route` text NOT NULL,
  `Description` text DEFAULT NULL,
  `parentId` int(11) DEFAULT 0,
  `numberOfChilds` int(11) NOT NULL DEFAULT 0,
  `numberOfSection` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `iconName` varchar(35) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menuName`, `route`, `Description`, `parentId`, `numberOfChilds`, `numberOfSection`, `status`, `iconName`, `CreatedAt`) VALUES
(1, 'home', 'home', NULL, 0, 0, 0, 1, 'fa fa-home', '2019-07-14 11:26:10'),
(2, 'Who We Are', '#whoweare', NULL, 0, 0, 1, 1, 'fa fa-pencil', '2020-06-23 05:08:48'),
(3, 'Schedule', 'schedule', NULL, 0, 0, 1, 1, 'fa fa-calendar', '2020-06-21 11:40:41'),
(4, 'Programs', 'programs', NULL, 0, 0, 0, 1, 'fa fa-th-list', '2020-06-23 04:40:28'),
(5, 'Team', 'team', NULL, 0, 0, 0, 1, 'fa fa-users', '2020-06-23 04:41:09'),
(6, 'Videos', 'videos', NULL, 0, 0, 0, 1, 'fa fa-video-camera', '2020-06-21 11:41:39'),
(7, 'Gallery', 'media', '', 0, 0, 1, 1, 'fa fa-medium', '2020-06-23 04:41:02'),
(8, 'News', '#News', NULL, 0, 0, 1, 1, 'fa fa-newspaper-o', '2020-06-23 18:00:00'),
(10, 'Contact Us', 'contact', NULL, 0, 0, 2, 1, 'fa fa-phone', '2020-06-23 04:42:05'),
(11, 'Be Part Of It', '#bepartofit', NULL, 0, 0, 0, 1, 'fa fa-hand-o-right', '2020-06-24 04:19:50'),
(12, 'about', 'about', NULL, 0, 1, 1, 0, 'fa fa-users dollar2', '2020-06-23 04:41:35'),
(13, 'Service', 'insightResources', '', 0, 2, 2, 0, '', '2020-06-21 11:40:30'),
(33, 'On going services', 'onGoingServices', NULL, 3, 0, 2, 0, 'fa fa-hand-o-right', '2020-06-21 11:32:00'),
(35, 'Up coming services', 'upcomingservices', NULL, 3, 0, 1, 0, 'fa fa-laptop user1', '2020-06-21 11:31:50'),
(62, 'Board Of Directors', 'boardOfDirectors', NULL, 12, 0, 2, 0, 'fa fa-address-book', '2020-06-23 06:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'News', '<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(85, 85, 85)\">I suggested my husband to build bamboo basket. Because my father was engage into this profession. It was much more profitable than the present job of my husband. We started our basket making business in 2009 by buying 50 bamboos for 2000 taka. At first we started business by borrowing money from people. We repaid the amount after selling our products. For preparing 40 baskets we required raw materials of 500 taka. We generally sold those products for 1500 taka. In each day we can prepare maximum 40 baskets. The local Mahajon (customer) came into our house once in a week and purchase all of our baskets. In each week we sold around baskets around 10000 taka. We also prepared different quality baskets based on the demand of our customers.Sooner Kakoli Begum came out from her house and welcomed us. She said that we passed a miserable life to come into this situation. On 2001, when I got married with my husband, I was read in class five. My husband was not so much educated and he was bound to take the responsibility of his family. He had to struggle a lot because he couldn&rsquo;t get any properties from his father&nbsp;I</span></span></span></p>\r\n\r\n<p><img alt=\"\" src=\"data:image/png;base64,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\" /></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(85, 85, 85)\">suggested my husband to build bamboo basket. Because my father was engage into this profession. It was much more profitable than the present job of my husband. We started our basket making business in 2009 by buying 50 bamboos for 2000 taka. At first we started business by borrowing money from people. We repaid the amount after selling our products. For preparing 40 baskets we required raw materials of 500 taka. We generally sold those products for 1500 taka. In each day we can prepare maximum 40 baskets. The local Mahajon (customer) came into our house once in a week and purchase all of our baskets. In each week we sold around baskets around 10000 taka. We also prepared different quality baskets based on the demand of our customers.Sooner Kakoli Begum came out from her house and welcomed us. She said that we passed a miserable life to come into this situation. On 2001, when I got married with my husband, I was read in class five. My husband was not so much educated and he was bound to take the responsibility of his family. He had to struggle a lot because he couldn&rsquo;t get any properties from his father&nbsp;I suggested my husband to build bamboo basket. Because my father was engage into this profession. It was much more profitable than the present job of my husband. We started our basket making business in 2009 by buying 50 bamboos for 2000 taka. At first we started business by borrowing money from people. We repaid the amount after selling our products. For preparing 40 baskets we required raw materials of 500 taka. We generally sold those products for 1500 taka. In each day we can prepare maximum 40 baskets. The local Mahajon (customer) came into our house once in a week and purchase all of our baskets. In each week we sold around baskets around 10000 taka. We also prepared different quality baskets based on the demand of our customers.Sooner Kakoli Begum came out from her house and welcomed us. She said that we passed a miserable life to come into this situation. On 2001, when I got married with my husband, I was read in class five. My husband was not so much educated and he was bound to take the responsibility of his family. He had to struggle a lot because he couldn&rsquo;t get any properties from his father</span></span></span></p>', 'bjEuanBn', 1, '2021-09-02 07:16:12', '2022-09-28 10:35:07'),
(2, 'Consulting', '<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">We are proud to inform you that Ambala IT has signed with Integrated Development Foundation (IDF) to integrate Smart Enterprise ERP Solutions for their organization. The organization is thrilled with our World class ERP and has picked the Human Resource Information System (HRIS), Payroll Management and Fixed Asset Management modules. Mr. Zahirul Alam, Executive Director, Integrated<span style=\"color:rgb(85, 85, 85)\">&nbsp;I suggested my husband to build bamboo basket. Because my father was engage into this profession. It was much more profitable than the present job of my husband. We started our basket making business in 2009 by buying 50 bamboos for 2000 taka. At first we started business by borrowing money from people. We repaid the amount after selling our products. For preparing 40 baskets we required raw materials of 500 taka. We generally sold those products for 1500 taka. In each day we can prepare maximum 40 baskets. The local Mahajon (customer) came into our house once in a week and purchase all of our baskets. In each week we sold around baskets around 10000 taka. We also prepared different quality baskets based on the demand of our customers.Sooner Kakoli Begum came out from her house and welcomed us. She said that we passed a miserable life to come into this situation. On 2001, when I got married with my husband, I was read in class five. My husband was not so much educated and he was bound to take the responsibility of his family. He had to struggle a lot because he couldn&rsquo;t get any properties from his father&nbsp;I suggested my husband to build bamboo basket. Because my father was engage into this profession. It was much more profitable than the present job of my husband. We started our basket making business in 2009 by buying 50 bamboos for 2000 taka. At first we started business by borrowing money from people. We repaid the amount after selling our products. For preparing 40 baskets we required raw materials of 500 taka. We generally sold those products for 1500 taka. In each day we can prepare maximum 40 baskets. The local Mahajon (customer) came into our house once in a week and purchase all of our baskets. In each week we sold around baskets around 10000 taka. We also prepared different quality baskets based on the demand of our customers.Sooner Kakoli Begum came out from her house and welcomed us. She said that we passed a miserable life to come into this situation. On 2001, when I got married with my husband, I was read in class five. My husband was not so much educated and he was bound to take the responsibility of his family. He had to struggle a lot because he couldn&rsquo;t get any properties from his father</span></span></span></p>', 'bjIuanBn', 1, '2021-09-02 09:16:01', '2021-09-06 05:52:25'),
(4, 'News1', '<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(85, 85, 85)\">It was much more profitable than the present job of my husband. We started our basket making business in 2009 by buying 50 bamboos for 2000 taka. At first we started business by borrowing money from people. We repaid the amount after selling our products. For preparing 40 baskets we required raw materials of 500 taka. We generally sold those products for 1500 taka. In each day we can prepare maximum 40 baskets. The local Mahajon (customer) came into our house once in a week and purchase all of our baskets. In each week we sold around baskets around 10000 taka. We also prepared different quality baskets based on the demand of our customers.Sooner Kakoli Begum came out from her house and welcomed us. She said that we passed a miserable life to come into this situation. On 2001, when I got married with my husband, I was read in class five. My husband was not so much educated and he was bound to take the responsibility of his family. He had to struggle a lot because he couldn&rsquo;t get any properties from his father&nbsp;I suggested my husband to build bamboo basket. Because my father was engage into this profession. It was much more profitable than the present job of my husband. We started our basket making business in 2009 by buying 50 bamboos for 2000 taka. At first we started business by borrowing money from people. We repaid the amount after selling our products. For preparing 40 baskets we required raw materials of 500 taka. We generally sold those products for 1500 taka. In each day we can prepare maximum 40 baskets. The local Mahajon (customer) came into our house once in a week and purchase all of our baskets. In each week we sold around baskets around 10000 taka. We also prepared different quality baskets based on the demand of our customers.Sooner Kakoli Begum came out from her house and welcomed us. She said that we passed a miserable life to come into this situation. On 2001, when I got married with my husband, I was read in class five. My husband was not so much educated and he was bound to take the responsibility of his family. He had to struggle a lot because he couldn&rsquo;t get any properties from his father</span></span></span></p>', 'bjQuanBn', 1, '2021-09-02 09:49:43', '2021-09-06 05:52:33');
INSERT INTO `news` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 'The Light of Expectation', '<p><span style=\"font-size:12px\"><span style=\"color:rgb(85, 85, 85); font-family:roboto,arial,solaimanlipi,sans-serif\">&nbsp;We also prepared different quality baskets based on the demand of our customers.Sooner Kakoli Begum came out from her house and welcomed us. She said that we passed a miserable life to come into this situation. On 2001, when I got married with my husband, I was read in class five. My husband was not so much educated and he was bound to take the responsibility of his family. He had to struggle a lot because he couldn&rsquo;t get any properties from his father&nbsp;I suggested my husband to build bamboo basket. Because my father was engage into this profession. It was much more profitable than the present job of my husband. We started our basket making business in 2009 by buying 50 bamboos for 2000 taka. At first we started business by borrowing money from people. We repaid the amount after selling our products. For preparing 40 baskets we required raw materials of 500 taka. We generally sold those products for 1500 taka. In each day we can prepare maximum 40 baskets. The local Mahajon (customer) came into our house once in a week and purchase all of our baskets. In each week we sold around baskets around 10000 taka. We also prepared different quality baskets based on the demand of our customers.Sooner Kakoli Begum came out from her house and welcomed us. She said that we passed a miserable life to come into this situation. On 2001, when I got married with my husband, I was read in class five. My husband was not so much educated and he was bound to take the responsibility of his family. He had to struggle a lot because he couldn&rsquo;t get any properties from his father&nbsp;I suggested my husband to build bamboo basket. Because my father was engage into this profession. It was much more profitable than the present job of my husband. We started our basket making business in 2009 by buying 50 bamboos for 2000 taka. At first we started business by borrowing money from people. We repaid the amount after selling our products. For preparing 40 baskets we required raw materials of 500 taka. We generally sold those products for 1500 taka. In each day we can prepare maximum 40 baskets. The local Mahajon (customer) came into our house once in a week and purchase all of our baskets. In each week we sold around baskets around 10000 taka. We also prepared different quality baskets based on the demand of our customers.Sooner Kakoli Begum came out from her house and welcomed us. She said that we passed a miserable life to come into this situation. On 2001, when I got married with my husband, I was read in class five. My husband was not so much educated and he was bound to take the responsibility of his family. He had to struggle a lot because he couldn&rsquo;t get any properties from his father</span></span></p>', 'bjUuanBn', 1, '2021-09-02 09:52:24', '2021-09-06 05:52:43'),
(6, 'When Dreams Comes into Reality', '<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Microfinplus&nbsp;is a financial inclusion work flow driven that integrated Microfinance program solution, HR &amp; Payroll, Inventory, Fixed Asset Management, Procurement and Accounting Modules o use any microfinance institution.</span></span></p>', 'bjYuanBn', 1, '2021-09-02 09:53:24', '2021-09-06 08:31:05'),
(7, 'Excellent Timing', '<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">We Are proud to inform you that ambala IT has signed with integrated Development Foundation IDF to integrate smart Enterprise ERP Solution for their organization.This</span></span></p>', 'bjcuanBn', 1, '2021-09-06 05:43:43', '2021-09-06 05:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `our_clients`
--

CREATE TABLE `our_clients` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `short_desc` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `our_clients`
--

INSERT INTO `our_clients` (`id`, `title`, `name`, `designation`, `short_desc`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Ambala Foundation', 'Dewan Taufika Hossain (Shati)', 'Deputy Executive Director', 'We have worked with Ambala IT on various projects, and find that they provide quality service and expertise for our programming needs. It is rare to find a service provider with such professional consistency - they are a valued service provider to our business.', 'c2F0aV9tZWRhbS5qcGc=', 1, '2021-06-23 03:23:59', '2022-12-13 01:20:09'),
(7, 'Dhaka Ahsania Mission', 'Md. Iqbal Masud', 'Director (Health & Wash Sector)', 'We thank Ambala IT for the wonderful job in helping us develop our program. Everyone was professional, excellent and hard working. Thanks to them, we were able to achieve our goal on time, and we look forward to continue working with them in the future.', 'SXFiYWxfTWFzdWRfREFNLmpwZw==', 1, '2021-06-23 03:26:58', '2022-12-13 03:46:29'),
(8, 'Tech Bizz', 'Md. Rokibul Hasan Talukder', 'Proprietor', '“Ambala IT completed the Karbariplus software that we were looking for and they full filled our requirement. It was a nice feeling to work with them and surely we will work again very soon. Hey Ambala IT! Just keep roaring in this area!”', 'UmFraWIuSlBH', 1, '2021-06-23 03:27:21', '2022-12-13 03:33:45'),
(9, 'Dwip Unnayan Songstha (DUS)', 'Md. Rafiqul Alam', 'Executive Director', 'We thank Ambala IT for the wonderful job in helping us develop our program. Everyone was professional, excellent and hard working. Thanks to them, we were able to achieve our goal on time, and we look forward to continue working with them in the future.', 'cmFmaXEtZHVzLTEucG5n', 1, '2021-06-23 03:27:46', '2022-12-13 03:45:46'),
(10, 'Somoyer Kanthosor', 'M. Azizur Rahman', 'Founder & Chairman', 'We are so happy about their service quality. I recommend Ambala IT to others too.', 'TS5Beml6dXJSYWhtYW4uanBn', 1, '2021-06-23 03:28:12', '2022-12-13 03:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rithwanul@yahoo.com', '$2y$10$KAbVbQgJnEoKVNQZg7MgHOmRcV2vtY.vmleEtBqkZxvAN9rUm41cO', '2019-07-25 00:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_service_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `feature_type` tinyint(4) NOT NULL,
  `chooseUs_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `image_logo` text NOT NULL,
  `logo_position` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_desc`, `product_service_id`, `feature_id`, `feature_type`, `chooseUs_id`, `image`, `image_logo`, `logo_position`, `status`, `updated_at`, `created_at`) VALUES
(4, 'Microfin Plus', '<p><strong>Microfinplus</strong>&nbsp;is a financial inclusion work flow driven that integrated Microfinance program solution, HR &amp; Payroll, Inventory, Fixed Asset Management, Procurement and Accounting Modules o use any microfinance institution.</p>\r\n\r\n<ul>\r\n	<li><strong>Microfinplus&nbsp;</strong>run in cloud environment and it has accessibility to Computer, Laptop, Mobile and Tab. Management can monitor every status,&nbsp;<strong>&ldquo;Real-Time Dashboard&rdquo;,&nbsp;</strong>up to date &amp; role specific business information.</li>\r\n	<li><strong>Microfinplus&nbsp;</strong>software Provide all type of reports supported by PKSF, MRA &amp; Organization management. Also make any kind of customized reports.</li>\r\n	<li><strong>Ambala IT</strong>&nbsp;assures all type of Software securities database securities, Data backup &amp; restores services.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>\r\n	<ul>\r\n		<li>Microfinance Management.</li>\r\n		<li>HR &amp; Payroll Management</li>\r\n		<li>Accounts Management\r\n		<ul>\r\n			<li>General Accounting</li>\r\n			<li>FDR Management</li>\r\n			<li>OTS Management</li>\r\n			<li>Loan Management</li>\r\n			<li>Advance Management</li>\r\n		</ul>\r\n		</li>\r\n		<li>Fixed Asset Management</li>\r\n		<li>Inventory Management</li>\r\n		<li>Procurement Management</li>\r\n	</ul>\r\n	</li>\r\n</ol>', 2, 2, 1, 2, 'bTEuanBlZw==', '', 0, 1, '2022-10-01 23:40:11', '2021-06-23 01:04:39'),
(5, 'Korial Plus', '<p><strong><em>Features...........</em></strong></p>\r\n\r\n<ul>\r\n	<li>Multi Layer</li>\r\n	<li>Dynamic Chart of Accounts</li>\r\n	<li>Debit Voucher</li>\r\n	<li>Credit Voucher</li>\r\n	<li>Journal Voucher</li>\r\n	<li>Contra Voucher</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Day Book Maintain</li>\r\n	<li>General&nbsp; Ledger Maintain</li>\r\n	<li>Cash Book Statement</li>\r\n	<li>Bank Book Statement</li>\r\n	<li>Income Statement</li>\r\n	<li>Trail Balance</li>\r\n	<li>Balance Sheet</li>\r\n	<li>Receive &amp; Payment</li>\r\n	<li>Cash Flow Statement</li>\r\n	<li>Create Budget</li>\r\n	<li>Multi User</li>\r\n	<li>Multi Branch</li>\r\n	<li>New Technology</li>\r\n	<li>Easy To Operate</li>\r\n	<li>User Authentication</li>\r\n	<li>Heavy Security</li>\r\n	<li>More Than 15 Reports (Customize)</li>\r\n</ul>\r\n\r\n<p><strong><em>Reports...........</em></strong></p>\r\n\r\n<ul>\r\n	<li>Chart of Accounts Report</li>\r\n	<li>Debit Voucher Report</li>\r\n	<li>Credit Voucher Report</li>\r\n	<li>Journal Voucher Report</li>\r\n	<li>Contra Voucher Report</li>\r\n	<li>Day Book Maintain Report</li>\r\n	<li>General&nbsp; Ledger Report</li>\r\n	<li>Cash Book Statement Report</li>\r\n	<li>Bank Book Statement Report</li>\r\n	<li>Income Statement Report</li>\r\n	<li>Trail Balance Report</li>\r\n	<li>Balance Sheet Report</li>\r\n	<li>Receive &amp; Payment Report</li>\r\n	<li>Cash Flow Statement Report</li>\r\n	<li>Owners Equity &amp; Liabilities</li>\r\n	<li>Budget Report</li>\r\n	<li>OTS Register Report</li>\r\n	<li>FDR Register Report</li>\r\n	<li>Loan Register Report</li>\r\n	<li>Advance Register Report</li>\r\n	<li>And more......</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 2, 2, 1, 2, 'QWNjb3VudHMtTWFuYWdlbWVudC5wbmcuY3Jkb3dubG9hZA==', '', 0, 1, '2022-07-24 00:25:43', '2021-06-23 22:16:17'),
(7, 'Fixed Assets Management', '', 0, 0, 1, 0, 'Zml4ZWQtYXNzZXQtY29uY2VwdC1pbGx1c3RyYXRpb24tbGFwdG9wLTI2MG53LTU4ODMyMjkyOC5qcGc=', '', 0, 1, '2021-06-29 22:17:46', '2021-06-23 22:17:46'),
(8, 'Inventory Management', '<p>Inventory ManagementInventory  Management</p>', 1, 1, 1, 2, 'NS4xLUludmVudG9yeS1NYW5hZ2VtZW50LnBuZw==', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 3, 1, '2021-10-06 00:37:00', '2021-06-23 22:18:22'),
(23, 'Micro', '<p>nhyt4bgrvfcds</p>', 1, 0, 1, 0, '', '', 0, 0, '2021-09-13 21:56:49', '2021-09-13 21:56:49'),
(82, 'Porichoyplus', '<p>Bangladesh’s leading real-time identity verification gateway\r\nVerify and Authenticate your customers, merchants, employees or anyone you need to via our real-time verification API’s.\r\n\r\n</p>', 1, 1, 1, 1, 'YWNjb3VudGluZy5qcGVn', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 1, 1, '2021-09-23 01:04:52', '2021-09-23 01:04:52'),
(100, 'Micro', '<p>Human resources (HR) is the division of a business that is charged with finding, screening, recruiting, and training job applicants, as well as administering employee-benefit programs. HR plays a key role in helping companies deal with a fast-changing business environment and a greater demand for quality employees in the 21st century.</p>', 1, 1, 1, 1, 'aHVtYW4tcmVzb3VyY2VzLWhyLW1hbmFnZW1lbnQtcmVjcnVpdG1lbnQtMjYwbnctMTA3NTYwNzkxOC5qcGc=', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 2, 1, '2021-09-25 23:34:51', '2021-09-25 23:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_chooseUs`
--

CREATE TABLE `product_chooseUs` (
  `id` int(11) NOT NULL,
  `reasons` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_chooseUs`
--

INSERT INTO `product_chooseUs` (`id`, `reasons`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'xcvb', 80, '2021-09-23 06:03:42', '2021-09-23'),
(2, 'vb n', 80, '2021-09-23 06:03:42', '2021-09-23'),
(3, 'swdefrgthj', 82, '2021-09-23 07:04:52', '2021-09-23'),
(4, 'sdfghjk,', 82, '2021-09-23 07:04:52', '2021-09-23'),
(46, 'wertgy', 100, '2021-10-06 08:51:08', '2021-10-06'),
(47, 'ed3rtgyhuj', 100, '2021-10-06 08:51:08', '2021-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `product_logo_position`
--

CREATE TABLE `product_logo_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_logo_position`
--

INSERT INTO `product_logo_position` (`id`, `name`) VALUES
(1, 'Left'),
(2, 'Right'),
(3, 'Center');

-- --------------------------------------------------------

--
-- Table structure for table `product_main_feature`
--

CREATE TABLE `product_main_feature` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_main_feature`
--

INSERT INTO `product_main_feature` (`id`, `name`, `status`) VALUES
(1, 'Overall', 0),
(2, 'Loan', 0),
(3, 'Savings', 0),
(4, 'Accounts', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_service_details`
--

CREATE TABLE `product_service_details` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `service_desc` text DEFAULT NULL,
  `image` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_service_details`
--

INSERT INTO `product_service_details` (`id`, `service_name`, `service_desc`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(25, 'Mobile', 'defrgtyuiol', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 39, '2021-09-20 00:00:00', '2021-09-20 00:00:00'),
(26, 'Banking', 't45y6u7iklo.', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 39, '2021-09-20 00:00:00', '2021-09-20 00:00:00'),
(27, 'msg', 'tryujklkjhgfdewrtyhj', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 39, '2021-09-20 00:00:00', '2021-09-20 00:00:00'),
(28, 'clouding', 'ewrftghyjuk,', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 39, '2021-09-20 00:00:00', '2021-09-20 00:00:00'),
(29, 'ergth', 'xcdvfgbhjk,', '0', 70, '2021-09-23 00:00:00', '2021-09-23 00:00:00'),
(30, 'ergth', 'xcdvfgbhjk,', '0', 71, '2021-09-23 00:00:00', '2021-09-23 00:00:00'),
(31, 'ergth', 'xcdvfgbhjk,', '0', 72, '2021-09-23 00:00:00', '2021-09-23 00:00:00'),
(32, 'ergth', 'xcdvfgbhjk,', '0', 73, '2021-09-23 00:00:00', '2021-09-23 00:00:00'),
(33, 'defregt', 'asdfgvbnm', '0', 74, '2021-09-23 05:53:01', '2021-09-23 05:53:01'),
(34, 'defregt', 'asdfgvbnm', '0', 75, '2021-09-23 05:59:03', '2021-09-23 05:59:03'),
(35, 'defregt', 'asdfgvbnm', '0', 76, '2021-09-23 05:59:47', '2021-09-23 05:59:47'),
(36, 'defregt', 'asdfgvbnm', '0', 77, '2021-09-23 06:01:04', '2021-09-23 06:01:04'),
(37, 'defregt', 'asdfgvbnm', '0', 78, '2021-09-23 06:01:46', '2021-09-23 06:01:46'),
(38, 'defregt', 'asdfgvbnm', '0', 79, '2021-09-23 06:02:35', '2021-09-23 06:02:35'),
(39, 'defregt', 'asdfgvbnm', '0', 80, '2021-09-23 06:03:42', '2021-09-23 06:03:42'),
(40, 'SMS', 'wedrfgthyn', '0', 81, '2021-09-23 06:56:13', '2021-09-23 06:56:13'),
(41, 'NID Verify', 'The National Identity Card issued to a citizen shall be valid for fifteen years from the date of its issuance.', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 82, '2021-09-23 07:04:52', '2021-09-23 07:04:52'),
(42, 'Mobile', 'asdfrgt', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 97, '2021-09-23 11:05:56', '2021-09-23 11:05:56'),
(43, 'SMS', 'SAFER IN THE CLOUD\r\nEnsures end user can access MicroFin360 via only web browser where software and associated data are hosted remotely.', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 97, '2021-09-23 11:05:56', '2021-09-23 11:05:56'),
(44, 'Mobile', 'SAFER IN THE CLOUD\r\nEnsures end user can access MicroFin360 via only web browser where software and associated data are hosted remotely.', '', 99, '2021-09-23 11:36:14', '2021-09-23 11:36:14'),
(46, 'SMS', 'SAFER IN THE CLOUD\r\nEnsures end user can access MicroFin360 via only web browser where software and associated data are hosted remotely.', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 101, '2021-09-26 06:23:39', '2021-09-26 06:23:39'),
(47, 'Mobile', 'SAFER IN THE CLOUD\r\nEnsures end user can access MicroFin360 via only web browser where software and associated data are hosted remotely.', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 101, '2021-09-26 06:23:39', '2021-09-26 06:23:39'),
(48, 'Banking', 'SAFER IN THE CLOUD\r\nEnsures end user can access MicroFin360 via only web browser where software and associated data are hosted remotely.', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 101, '2021-09-26 06:23:39', '2021-09-26 06:23:39'),
(49, 'Loan', 'SAFER IN THE CLOUD\r\nEnsures end user can access MicroFin360 via only web browser where software and associated data are hosted remotely.', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 101, '2021-09-26 06:23:39', '2021-09-26 06:23:39'),
(51, 'mse', 'sdffghj', 'aHVtYW4tcmVzb3VyY2VzLWhyLW1hbmFnZW1lbnQtcmVjcnVpdG1lbnQtMjYwbnctMTA3NTYwNzkxOC5qcGc=', 103, '2021-10-05 06:08:02', '2021-10-05 06:08:02'),
(52, 'mse', 'sdffghj', 'aHVtYW4tcmVzb3VyY2VzLWhyLW1hbmFnZW1lbnQtcmVjcnVpdG1lbnQtMjYwbnctMTA3NTYwNzkxOC5qcGc=', 104, '2021-10-05 06:12:02', '2021-10-05 06:12:02'),
(53, 'mse', 'sdffghj', 'aHVtYW4tcmVzb3VyY2VzLWhyLW1hbmFnZW1lbnQtcmVjcnVpdG1lbnQtMjYwbnctMTA3NTYwNzkxOC5qcGc=', 105, '2021-10-05 06:13:32', '2021-10-05 06:13:32'),
(54, 'mse', 'sdffghj', 'aHVtYW4tcmVzb3VyY2VzLWhyLW1hbmFnZW1lbnQtcmVjcnVpdG1lbnQtMjYwbnctMTA3NTYwNzkxOC5qcGc=', 107, '2021-10-05 06:21:53', '2021-10-05 06:21:53'),
(55, 'mse', 'sdffghj', 'aHVtYW4tcmVzb3VyY2VzLWhyLW1hbmFnZW1lbnQtcmVjcnVpdG1lbnQtMjYwbnctMTA3NTYwNzkxOC5qcGc=', 108, '2021-10-05 06:22:33', '2021-10-05 06:22:33'),
(56, 'mse', 'sdffghj', 'aHVtYW4tcmVzb3VyY2VzLWhyLW1hbmFnZW1lbnQtcmVjcnVpdG1lbnQtMjYwbnctMTA3NTYwNzkxOC5qcGc=', 109, '2021-10-05 06:23:14', '2021-10-05 06:23:14'),
(72, 'szdxfguhi', 'sdcfvgb nm', 'aHVtYW4tcmVzb3VyY2VzLWhyLW1hbmFnZW1lbnQtcmVjcnVpdG1lbnQtMjYwbnctMTA3NTYwNzkxOC5qcGc=', 111, '2021-10-06 03:23:00', '2021-10-06 03:23:00'),
(98, '2xedrtgeyh', 'xdecrgthyuj', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 8, '2021-10-06 06:37:00', '2021-10-06 06:37:00'),
(109, 'ASADFG', 'XCVB', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 100, '2021-10-06 08:51:08', '2021-10-06 08:51:08'),
(110, 'ASADFG', 'XCVB', 'bHV4dXJ5LWJlYXV0eS1sb2dvLW1vY2t1cF80NTEzLTU1MS5qcGc=', 100, '2021-10-06 08:51:08', '2021-10-06 08:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `service` varchar(100) NOT NULL,
  `font` varchar(200) NOT NULL,
  `shortDescription` text NOT NULL,
  `longDescription` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `service`, `font`, `shortDescription`, `longDescription`, `image`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Web Development', '', 'fa fa-bar-chart', 'Customize website design based on client’s preference and requirement', '<h3>We thank&nbsp;<strong>Ambala IT</strong>&nbsp;for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our program</h3>', 'd2ViLmpwZw==', 1, '2021-08-25 02:35:53', '2021-08-25 02:35:53'),
(2, 'Software Development', '', 'fa fa-laptop icon-fea', 'MFI software, Accounting software, HR & Payroll software, education software, POS software, etc.', '<p>Microsoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on theMicrosoft Visual Studio 2012 provides many new capabilities to support development on the</p>', 'c29mdC5qcGc=', 1, '2021-08-25 02:38:43', '2021-08-25 02:38:43'),
(3, 'App Development', '', 'fa fa-android', 'E commerce based app and portal (News portal & Job Portal) development', '<p>We thank&nbsp;<strong>Ambala IT</strong>&nbsp;for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our program</p>', 'YXBwLmpwZw==', 1, '2021-08-25 02:39:46', '2021-08-25 02:39:46'),
(4, 'Graphic Design', '', 'fa fa-envelope-o', 'Visual hierarchy and unique page layout techniques, designers use typography and pictures to meet users\' specific needs and focus on the logic of displaying elements', '<p>We thank&nbsp;<strong>Ambala IT</strong>&nbsp;for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our program</p>', 'Z3JhcGhpY3M=', 1, '2021-08-25 02:40:41', '2021-08-25 02:40:41'),
(5, 'E commerce', '', 'fa fa-signal icon-fea', 'E commerce based website development for B2B; B2C; C2C; C2B', '<p>We thank&nbsp;<strong>Ambala IT</strong>&nbsp;for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our program</p>', 'RWNvbS5qcGc=', 1, '2021-08-25 02:41:45', '2021-08-25 02:41:45'),
(6, 'IT Consultancy', '', 'fa fa-paint-brush icon-fea', 'Dedicated, Passionate and Efficient IT Team. 24 x 7 support center is designed to provide you for IT Consultancy', '<p>We thank&nbsp;<strong>Ambala IT</strong>&nbsp;for the&nbsp;<a href=\"http://ambalait.com\">wonderful&nbsp;</a>job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our programWe thank Ambala IT for the wonderful job in helping us develop our program</p>', 'aXQuanBn', 1, '2021-08-25 02:42:42', '2021-08-25 02:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `subMenuName` varchar(50) NOT NULL,
  `Description` text DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `route` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `menuId`, `subMenuName`, `Description`, `createdAt`, `route`) VALUES
(9, 3, 'Ongoing Services', NULL, '2019-07-10 09:09:23', '/Test'),
(10, 3, 'Up Coming Services', NULL, '2019-07-10 09:09:29', '/ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$58QxTVKeIGTQajBXt51ameFFG54e6rt46xclomrFakmmVlOuVVY0y', NULL, '2021-06-23 23:28:06', '2021-06-23 23:28:06'),
(2, 'nisha', 'nisha.afroza1998@gmail.com', '$2y$10$TISlsj2cJUPO5Q.mito6luY7V.z0waa1lApyu36A0uVw2f.6j/KCy', NULL, '2021-06-24 00:53:52', '2021-06-24 00:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_us`
--

CREATE TABLE `why_choose_us` (
  `id` int(11) NOT NULL,
  `choose_title` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `choose_color` varchar(200) NOT NULL,
  `choose_details` text CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `softDel` tinyint(4) NOT NULL DEFAULT 0,
  `updatedOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `why_choose_us`
--

INSERT INTO `why_choose_us` (`id`, `choose_title`, `choose_color`, `choose_details`, `softDel`, `updatedOn`) VALUES
(1, 'Quality Services', 'blue-grid', 'The board of directors of the organization always attaches importance to the quality of the product and constantly monitors it.', 0, '2021-06-22 09:14:13'),
(2, 'Quality Planning', 'orange-grid', 'QMS planning is controlled through the documentation of the processes.The process development and its resulting documentation constitute QMS planning.', 0, '2021-06-22 09:52:22'),
(3, 'Budget Friendly', 'green-grid', 'Finding affordable and quality software firm for your growing company is a challenge. But you don\'t have to worry about it anymore.', 0, '2021-06-22 09:52:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_policy`
--
ALTER TABLE `app_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactInfos`
--
ALTER TABLE `contactInfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features_desc`
--
ALTER TABLE `features_desc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_img_type`
--
ALTER TABLE `gallery_img_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage`
--
ALTER TABLE `homepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_clients`
--
ALTER TABLE `our_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_chooseUs`
--
ALTER TABLE `product_chooseUs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_logo_position`
--
ALTER TABLE `product_logo_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_main_feature`
--
ALTER TABLE `product_main_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_service_details`
--
ALTER TABLE `product_service_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `app_policy`
--
ALTER TABLE `app_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contactInfos`
--
ALTER TABLE `contactInfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `features_desc`
--
ALTER TABLE `features_desc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `gallery_img_type`
--
ALTER TABLE `gallery_img_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `homepage`
--
ALTER TABLE `homepage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `our_clients`
--
ALTER TABLE `our_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `product_chooseUs`
--
ALTER TABLE `product_chooseUs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_logo_position`
--
ALTER TABLE `product_logo_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_main_feature`
--
ALTER TABLE `product_main_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_service_details`
--
ALTER TABLE `product_service_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

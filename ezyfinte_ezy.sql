-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2023 at 11:58 AM
-- Server version: 5.7.42
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezyfinte_ezy`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `backGroundImagePath` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `backgroundImage`
--

CREATE TABLE `backgroundImage` (
  `id` int(11) NOT NULL,
  `menuId` int(25) NOT NULL,
  `image` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backgroundImage`
--

INSERT INTO `backgroundImage` (`id`, `menuId`, `image`, `createdAt`) VALUES
(10, 8, '636010538ZmludGVjaC5qcGc=', '2019-07-18 04:30:41'),
(11, 33, '2036871144RmluVGVjaCBIZWFkZXIuanBn', '2019-07-18 08:56:22'),
(15, 5, '1408180499ZG93bmxvYWQgKDEpLmpwZw==', '2019-07-25 07:01:15'),
(16, 63, '1037830869Ym9hcmRPZkRpcmVjdG9ycy5wbmc=', '2019-07-27 09:29:10'),
(17, 35, '1992315166dXBjb21taW5nLnBuZw==', '2019-07-27 09:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `menuId` int(11) NOT NULL,
  `description` text NOT NULL,
  `sectionId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `title`, `menuId`, `description`, `sectionId`, `createdAt`) VALUES
(50, 'Our Offered Services', 2, 'We love to make your assets secured', 1, '2018-09-26 10:13:50'),
(51, 'Some Features that Made us Unique', 2, 'Who are in extremely love with eco friendly system.', 2, '2018-09-26 10:13:50'),
(53, 'Our Honorable Clients', 4, 'What Our Clients Talk About US', 1, '2018-09-27 04:34:50'),
(55, 'Our Achievement  Gallery', 1, 'Different Programs', 10, '2019-07-25 11:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `backGroundImagePath` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `backGroundImagePath`, `createdAt`) VALUES
(4, 'Y25ONlgyRmtkV3gwTFdGblpXNTBMV0Z3Y0hKdmRtRnNMVFk0TkRNNE5TNXFjR2M9', '2019-01-02 10:28:22');

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
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactInfos`
--

INSERT INTO `contactInfos` (`id`, `country`, `city`, `address`, `ph`, `timing`, `mail`, `mailTag`, `createdAt`) VALUES
(7, 'Bangladesh', 'Dhaka', 'House: 62. Block- KA, Pici culture housing Society, Shyamoli, Dhaka-1207', '+8801701267004', 'Sat to Thu 9am to 6 pm', 'info@ezyfintech.com', 'Send us your query anytime!', '2019-11-09 08:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `factsArea`
--

CREATE TABLE `factsArea` (
  `id` int(11) NOT NULL,
  `firstColName` varchar(100) NOT NULL,
  `firstColContent` int(11) NOT NULL,
  `secondColName` varchar(100) NOT NULL,
  `secondColContent` int(11) NOT NULL,
  `thirdColName` varchar(100) NOT NULL,
  `thirdColContent` int(11) NOT NULL,
  `fourthColName` varchar(100) NOT NULL,
  `fourthColContent` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `imgPath` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `imgPath`, `createdAt`) VALUES
(25, 'SU1HXzAwMDUuSlBH', '2019-07-25 10:44:08'),
(27, 'SU1HXzAwMDcuSlBH', '2019-07-25 10:49:31'),
(28, 'SU1HXzAwMTkuSlBH', '2019-07-25 10:50:46'),
(29, 'SU1HXzAwNTAuSlBH', '2019-07-25 10:52:39'),
(30, 'SU1HXzAwMjMuSlBH', '2019-07-25 11:03:17'),
(32, 'NjE3NDE4MzdfMzE5MzUyMDAyMjg4NTgzXzcwMDQ5Mzg1NTcwNzY3OTk0ODhfbi5qcGc=', '2019-07-25 11:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

CREATE TABLE `homepage` (
  `id` int(11) NOT NULL,
  `title` text,
  `paragraph` text,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
(27, 'Ezy Fintech To Make Your Finance Even Better.', 'Your Finance Is our Concern', '2019-07-25 10:37:46'),
(28, 'Ezy Fintech To Make Your Finance Even Better.', 'Your Finance Is our concern', '2019-07-25 10:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `menuName` varchar(20) NOT NULL,
  `route` text NOT NULL,
  `Description` text,
  `parentId` int(11) DEFAULT '0',
  `numberOfChilds` int(11) NOT NULL DEFAULT '0',
  `numberOfSection` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `iconName` varchar(35) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menuName`, `route`, `Description`, `parentId`, `numberOfChilds`, `numberOfSection`, `status`, `iconName`, `CreatedAt`) VALUES
(1, 'home', 'home', NULL, 0, 0, 0, 1, 'fa fa-home', '2019-07-14 11:26:10'),
(3, 'Service', 'insightResources', '', 0, 2, 2, 1, '', '2019-07-14 11:19:33'),
(5, 'media', 'media', '', 0, 0, 1, 1, 'fa fa-medium', '2019-07-18 03:22:50'),
(8, 'about', 'about', NULL, 0, 1, 1, 1, 'fa fa-users dollar2', '2019-07-25 11:45:46'),
(32, 'contact us', 'contact', NULL, 0, 0, 2, 1, 'fa fa-phone', '2019-07-14 11:30:30'),
(33, 'On going services', 'onGoingServices', NULL, 3, 0, 2, 1, 'fa fa-hand-o-right', '2019-07-25 05:19:09'),
(35, 'Up coming services', 'upcomingservices', NULL, 3, 0, 1, 1, 'fa fa-laptop user1', '2019-07-25 06:05:47'),
(63, 'Board Of Directors', 'boardOfDirectors', NULL, 8, 0, 2, 1, 'fa fa-address-card', '2019-07-25 11:45:46');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `backGroundImagePath` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `backGroundImagePath`, `createdAt`) VALUES
(10, 'MzhiOGM3MjctODYzZC00ZTk0LWI2MTEtMjFiZmU1OWViYTEwLmpwZWc=', '2019-01-02 07:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `postName` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `createdBy` varchar(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `menuId`, `sectionId`, `postName`, `title`, `description`, `createdBy`, `createdAt`) VALUES
(10, 2, 2, 'Professional Service', 'Professional Service', 'Ezy Fintech Ltd. give very much professional service to their customer.', NULL, '2019-07-25 11:13:01'),
(11, 2, 2, 'Great Support', 'Great Support', 'Ezy Fintech believe in great support to the customer with a rapid response time to service requests, responding to all customer feedback (positive or negative), self-service help documents, and a frictionless process for getting in touch with support.', NULL, '2019-07-25 11:31:44'),
(12, 2, 2, 'Technical Skills', 'Technical Skills', 'Ezy Fintech have the abilities and knowledge needed to perform specific tasks. They are practical, and often relate to mechanical, information technology, mathematical, or scientific tasks.', NULL, '2019-07-25 11:34:30'),
(13, 2, 2, 'Highly Recommended', 'Highly Recommended', 'Ezy Fintech Ltd. is highly recommended for the Fintech Industry. So we have maintain a high reputation in the Market.', NULL, '2019-07-27 03:55:44'),
(14, 2, 2, 'Positive Reviews', 'Positive Reviews', 'We have a lot of positive reviews in the market of Fintech.', NULL, '2019-07-25 11:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `postWithImage`
--

CREATE TABLE `postWithImage` (
  `id` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `postName` text NOT NULL,
  `imgPath` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `createdBy` varchar(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postWithImage`
--

INSERT INTO `postWithImage` (`id`, `menuId`, `sectionId`, `postName`, `imgPath`, `title`, `description`, `createdBy`, `createdAt`) VALUES
(13, 3, 1, 'Mission Statement', 'YXQuanBn', 'Mission Statement', 'Our mission is to enhance customer ease and comfort into their day to day financial activity and secure financial institution from different risk situation by providing versatile technological platform.', NULL, '2019-04-06 08:14:35'),
(17, 3, 1, 'Vision Statement', 'YWR1bHQtYmFua2luZy1ibHVyLTkzNTk3OS5qcGc=', 'Vision Statement', 'Our vision is to be a competitive fintech service provider, locally and Internationally.', NULL, '2019-04-06 08:13:33'),
(27, 2, 1, 'Surokkha', 'NjMxOTgxNDAuanBn', 'Surokkha', 'Surokkha is an App Based Insurance service provider who ensure the customer mandatory car or vehicle Insurance in application or online based. Surokkha is quiet easy to use and also anyone can get proper insurance service from their home. Customer can give Insurance payment from his/her home from online, cards, Visa, Master card, Bkash, Nogod and Cash on Delivery Service. Anyone Can get this app from Play store or our direct link from below description.', NULL, '2019-07-25 10:25:25'),
(28, 2, 1, 'AML/CFT Awarness  Training Application', 'QU1MX1RSQUlOSU5HLnBuZw==', 'AML/CFT Awarness  Training Application', 'AML/CFT awareness app is basically made for the defend the AML/CFT for Banks, NGO and non banking financial Institution.  This mobile/desktop based app has been developed after in-depth consultation with industry practitioners, regulators and AML experts, and will be reviewed and updated regularly.\r\n\r\nYou can download from play store or download from our below description link:\r\nhttps://play.google.com/store/apps/details?id=com.mobilesutra.Fintelekt&hl=en', NULL, '2019-07-25 10:26:02'),
(33, 4, 1, 'Mr. AKM Mostafizur Rahman', 'TXIuIEEgSyBNIE1vc3RhZml6dXIgUmFobWFuLmpwZw==', 'Mr. AKM Mostafizur Rahman', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type .', NULL, '2019-04-06 08:33:15'),
(34, 4, 1, 'MICHAEL HOLZ, Seo Analyst', 'YWR1bHQtYmVhcmQtYmx1ci04NDI1NjcuanBn', 'MICHAEL HOLZ, Seo Analyst', 'Phasellus vitae suscipit justo. Mauris pharetra feugiat ante id lacinia. Etiam faucibus mauris id tempor egestas. Duis luctus turpis at accumsan tincidunt. Phasellus risus risus, volutpat vel tellus ac, tincidunt fringilla massa. Etiam hendrerit dolor eget rutrum.', NULL, '2019-01-02 07:09:37'),
(35, 4, 1, 'PAULA WILSON, Media Analyst', 'YnVzaW5lc3NtYW4tY2hhaXJzLWZhY2lhbC1leHByZXNzaW9uLTcxNjQxMS5qcGc=', 'PAULA WILSON, Media Analyst', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.', NULL, '2019-01-02 07:10:04'),
(37, 3, 1, 'Our Goal', 'MjUuanBn', 'Our Goal', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor.', NULL, '2019-04-06 08:18:42'),
(38, 2, 1, 'Ezy Financial Service Marketplace .Credit Card . Lending . SME products', 'ZGVmYXVsdC1iYW5rcy0wLmpwZw==', 'Ezy Financial Service Marketplace .Credit Card . Lending . SME products', 'Ezy Financial Service Marketplace is an upcoming service of Ezy Fintech Ltd.', NULL, '2019-07-28 10:17:37'),
(42, 63, 1, 'A.K.M Mostafizur Rahman Chairman', 'TXIuIEEgSyBNIE1vc3RhZml6dXIgUmFobWFuMC5qcGc=', 'A.K.M Mostafizur Rahman Chairman', 'A.K.M Mostafizur Rahman was born in Barisal, Bangladesh and resident of United Arab Emirates. He has obtained B.S.S(Hon’s) and M.S.S Degree in Economics from the University of Dhaka. He is a successful Businessman and has strong socio economic & socio culture development background. He is the Chairman of Ezy Fintech Ltd, Richway Ltd, URO TEX Ltd, Pandemic Group, Imperial Maisara International FZC, NAVA IT Consultancy - UAE & Dr. Tamanna Mostafizur Foundation. He received several training on financial rules & regulations and management from home and abroad. Investment to creative, innovative enterprises, especially young & women empowerment. Mr. Rahman achieved national awards Jainul Abedin Gold Award, Sadinata Sangsad Award, Index Kagoj-Kalam Business Award & Sritir SIDR for outstanding contribution on Health & Nutrition sector, Education Program, Poverty Reduction & Socio Economic Development. Mr. Rahman has married to Dr. Tamanna and blessed with two daughters – Tarisha & Ornisha.', NULL, '2019-07-27 06:41:23'),
(43, 63, 1, 'Mr. Arif Sikder                                  Managing Director', 'QUNMRC0xMjcxMTUuanBn', 'Mr. Arif Sikder                                  Managing Director', 'Arif Sikder is a Social Entrepreneur and Managing Director of Ezy Fintech Limited, Founder, & Executive Director of a well recognized micro-finance institution - Ambala Foundation, CEO of Ambala IT, Chairman of Radio Bikrampur and Initiator of Shwapnojatra. He has obtained MA from Dhaka University, MBA from Darul Ihsan University and completed Global Leadership Program from Johns Hopkins University, USA. He has wide acceptance and expertise in Information Technology (IT), Electronics and Media Communication Business. He has practical knowledge and experience in designing, integrating and managing complex financial technologies and emerging fintech platforms. \r\n\r\nArif Sikder career incorporates massive accomplishment of finance and socio-economic development sector. He received numerous training, participate conference and workshop both home and abroad on different arena of microfinance and global economy. His outstanding capabilities are providing Technology based digital marketing solutions, organization development, program management, communication skills for maintaining good liaison with Business Entrepreneurs. He is also a sponsor shareholder of NRB Commercial Bank Limited.', NULL, '2019-07-31 04:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `postWithImageSubmenu`
--

CREATE TABLE `postWithImageSubmenu` (
  `id` int(11) NOT NULL,
  `subMenuId` int(11) NOT NULL,
  `postName` text NOT NULL,
  `imgPath` text,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `createdBy` varchar(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `backGroundImagePath` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `createdAt`, `backGroundImagePath`) VALUES
(25, '2019-07-27 04:06:38', 'ZG93bmxvYWQgKDEpLmpwZw==');

-- --------------------------------------------------------

--
-- Table structure for table `singlePages`
--

CREATE TABLE `singlePages` (
  `id` int(11) NOT NULL,
  `subMenuId` int(20) NOT NULL,
  `backGroundImagePath` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `singlePages`
--

INSERT INTO `singlePages` (`id`, `subMenuId`, `backGroundImagePath`, `createdAt`) VALUES
(5, 9, 'Y3NlLWltYWdlLmpwZw==', '2019-07-11 06:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `sliderName` varchar(20) DEFAULT NULL,
  `imgPath` text NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `sliderName`, `imgPath`, `CreatedAt`) VALUES
(34, 'fintech-final', 'ZmludGVjaC1maW5hc3RyYS1maW5hbmNlLWluZHVzdHJ5LTEwMjR4NDQwLmpwZWc=', '2019-07-14 06:17:08'),
(35, 'fintech-mobile', 'RmludGVjaC1tb2JpbGUuanBn', '2019-07-14 06:17:27'),
(45, NULL, 'RW1lcmdpbmdUZWNobm9sb2dpZXMmRmluVGVjaHNXaWxsUmV2aXZldGhlV29ya2luZ0NhcGl0YWxDaGFsbGVuZ2VzZm9yTVNNRXNfMTU1MDY2MDk4MTA0MF80Mi5qcGc=', '2019-07-25 10:34:58'),
(46, NULL, 'RmVhdHVyZWQtSW1hZ2UtVGFsa2luZy1GaW5UZWNoLTkwMHguanBn', '2019-07-25 10:35:20'),
(47, NULL, 'SHVhd2VpLVBheS1mZWF0dXJlZC1pbWFnZS1maW50ZWNoLWNvbHVtbi04MjB4NTAwLmpwZw==', '2019-07-25 10:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `subMenuName` varchar(30) NOT NULL,
  `Description` text,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `route` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `menuId`, `subMenuName`, `Description`, `createdAt`, `route`) VALUES
(9, 2, 'Ongoing Services', NULL, '2019-07-11 06:42:31', '/Test'),
(10, 2, 'Up Coming Services', NULL, '2019-07-11 06:42:38', '/ongoing');

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
(1, 'himu8', 'himu8@gmail.com', '$2y$10$tWrhR2n2oAdqjiSy3yVZoOtXHyIgX8MGu6X8Yg0ANnTwmk949HIbu', '1blKtusHE6YVRCznKaWUM9o94PBIPO53RWpvKcReuiVhXYrsUUCErm32CBvY', '2018-09-08 02:25:20', '2018-09-08 02:25:20'),
(2, 'himu7', 'himu7@gmail.com', '$2y$10$TvEBwNNVYRBgxMvSX0ywPu7XSC3AHO43z6WaTDksdlNkZYD/.dlhW', NULL, '2018-09-08 04:23:44', '2018-09-08 04:23:44'),
(3, 'tauhid', 'info@ezyfintech.com', '$2y$12$ob8rIHqBcC/MBO7pd19rAeymr.de0enmJ71YjGlal6U6dnFqHup/C', 'ToTkqWnuYPV7tWc0h2biQHXJIzYBDfW31HML2bv6IZhd0zuHA9uBUo5XraVS', '2018-09-11 21:55:49', '2019-04-06 02:08:44'),
(4, 'admin', 'cesor54@gmail.com', '$2y$10$qUd/EouM5vo8ajdpYl/aTe11hQoLG10es1Ws9eNbIW6JqCgXFACEi', 'TxMIiPLZPxx6AmovE7T91A62EtMPmOdYHsmRH7Fkr2H7iyAbefsMboG6xieF', '2018-09-26 22:57:03', '2018-09-26 22:57:03'),
(5, 'admin', 'info@fortissecuritybd.com', '$2y$10$MVkiqNd2/6iIRsHf.OjEd.VQybemJapOYSGBz7rq1sTIq/97jldCW', 'AqroRooyXwgy5DJjpHPqmC1iRM02NCykveLsSHi1ErVoLUmsvWj3MZ0DnIM0', '2018-10-15 05:31:33', '2018-10-15 05:31:33'),
(6, 'SuperAdmin', 'info@ambalait.com', '$2y$12$5PMc8c8OIFs1jq0b0ZYq.uew.HvblguVRfOLrv5tiHTpX3MfrkkpS', 'rG1AGW4CuzTLH2eUDhp6ZlEG7ka84uXOaMNWbgtkOjBGmlUGHPAlEKiMQPpM', '2018-10-15 05:32:25', '2018-10-15 05:32:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backgroundImage`
--
ALTER TABLE `backgroundImage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
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
-- Indexes for table `factsArea`
--
ALTER TABLE `factsArea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postWithImage`
--
ALTER TABLE `postWithImage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postWithImageSubmenu`
--
ALTER TABLE `postWithImageSubmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `singlePages`
--
ALTER TABLE `singlePages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backgroundImage`
--
ALTER TABLE `backgroundImage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactInfos`
--
ALTER TABLE `contactInfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `factsArea`
--
ALTER TABLE `factsArea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `homepage`
--
ALTER TABLE `homepage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `postWithImage`
--
ALTER TABLE `postWithImage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `postWithImageSubmenu`
--
ALTER TABLE `postWithImageSubmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `singlePages`
--
ALTER TABLE `singlePages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

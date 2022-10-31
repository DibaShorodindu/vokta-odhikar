-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2022 at 11:30 PM
-- Server version: 10.3.36-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wsfiyuve_voktaodikarapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subDepartment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `case_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = compleated',
  `apply_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hearing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `user_id`, `name`, `phone`, `nid`, `email`, `organization_name`, `product_name`, `product_photo`, `invoice_photo`, `department`, `subDepartment`, `subject`, `description`, `case_no`, `result_date`, `case_status`, `apply_date`, `hearing_date`, `district`, `division`, `result`, `created_at`, `updated_at`) VALUES
(1, 2, 'osman', '01672880108', '1234567891023', NULL, 'global comp', 'Redmi note 8 pro', '1655614862.jpg', '1655614862.png', 'elecktroinc', 'export import', 'test title one', 'test description one', 'vokta_complain9680', NULL, 0, 'June 19, 2022 11:01:am', NULL, '3', '1', NULL, '2022-06-19 05:01:02', '2022-06-19 05:01:02'),
(2, 3, 'diba', '01305971524', '1234567891024', NULL, 'Star tech', 'Hp Laptop', '1655615473.jfif', '1655615473.jpg', 'foof', 'food odidoptor', 'test title two', 'test description two', 'vokta_complain9530', NULL, 0, 'June 19, 2022 11:11:am', NULL, '1', '5', NULL, '2022-06-19 05:11:13', '2022-06-19 05:11:13'),
(3, 5, 'osman', '01672880108', '1234567891023', NULL, 'global comp', 'hp laptop', '1655619045.png', '1655619045.png', 'food', 'food odidopto', 'test', 'test', 'vokta_complain5048', NULL, 0, 'June 19, 2022 12:10:pm', NULL, '3', '1', NULL, '2022-06-19 16:10:45', '2022-06-19 16:10:45'),
(4, 5, 'osman', '01672880108', '1234567891023', NULL, 'global comp', 'hp laptop', '1655619146.png', '1655619146.png', 'food', 'food odidopto', 'test', 'test', 'vokta_complain9187', NULL, 0, 'June 19, 2022 12:12:pm', NULL, 'Rangpur', 'Rangpur', NULL, '2022-06-19 16:12:26', '2022-06-19 16:12:26'),
(5, 5, 'osman', '01672880108', '1234567891023', NULL, 'global comp', 'hp laptop', '1655705434.png', '1655705434.png', 'food', 'food odidopto', 'test', 'test', 'vokta_complain5490', NULL, 0, 'June 20, 2022 12:10:pm', NULL, NULL, NULL, NULL, '2022-06-20 16:10:34', '2022-06-20 16:10:34'),
(6, 5, 'osman', '01672880108', '1234567891023', NULL, 'global comp', 'hp laptop', '1655705927.png', '1655705927.png', 'food', 'food odidopto', 'test', 'test', 'vokta_complain6290', NULL, 0, 'June 20, 2022 12:18:pm', NULL, NULL, NULL, NULL, '2022-06-20 16:18:47', '2022-06-20 16:18:47'),
(7, 5, 'Test User', '1720515259', '30982394648', 'testuser132@gmail.com', 'Test org', 'test p', '1655712461.jpg', '1655712461.jpg', 'অন্যান্য', 'অর্থনৈতিক সম্পর্ক বিভাগ', 'অভিযোগ', 'টেস্ট অভিযোগ', 'vokta_complain5395', NULL, 1, 'June 20, 2022 2:07:pm', NULL, NULL, NULL, 'আপনার পক্ষে', '2022-06-20 18:07:41', '2022-06-20 18:07:41'),
(8, 5, 'Test User', '1720515259', '30982394648', 'testuser132@gmail.com', '2nd test org', '2nd test p', '1655712712.jpg', '1655712712.jpg', 'মন্ত্রণালয়/বিভাগ', 'অভ্যন্তরীণ সম্পদ বিভাগ', 'টেস্ট বিষয়', 'টেস্ট ২য় অভিযোগ', 'vokta_complain7401', NULL, 1, 'June 20, 2022 2:11:pm', NULL, NULL, NULL, 'আপনার পক্ষে', '2022-06-20 18:11:52', '2022-06-20 18:11:52'),
(9, 5, 'osman', '01672880108', '1234567891023', NULL, 'global comp', 'hp laptop', '1655784073.png', '1655784073.png', 'food', 'food odidopto', 'test', 'test', 'vokta_complain6579', NULL, 1, 'June 21, 2022 10:01:am', NULL, NULL, NULL, 'আপনার পক্ষে', '2022-06-21 14:01:13', '2022-06-21 14:01:13'),
(10, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Android', 'hp laptop', '1655784173.png', '1655784173.png', 'device', 'Technology', 'subjec is', 'description is', 'vokta_complain2019', NULL, 1, 'June 21, 2022 10:02:am', NULL, NULL, NULL, 'আপনার বিপক্ষে', '2022-06-21 14:02:53', '2022-06-21 14:02:53'),
(11, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androids', 'hp laptop', '1655784184.png', '1655784184.png', 'device', 'Technology', 'subjec is', 'description is', 'vokta_complain6384', NULL, 1, 'June 21, 2022 10:03:am', NULL, NULL, NULL, 'আপনার পক্ষে', '2022-06-21 14:03:04', '2022-06-21 14:03:04'),
(12, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsf', 'hp laptop', '1655784193.png', '1655784193.png', 'device', 'Technology', 'subjec is', 'description is', 'vokta_complain7449', NULL, 0, 'June 21, 2022 10:03:am', NULL, NULL, NULL, NULL, '2022-06-21 14:03:13', '2022-06-21 14:03:13'),
(13, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsfdfasdf', 'hp laptop', '1655784199.png', '1655784199.png', 'device', 'Technology', 'subjec is', 'description is', 'vokta_complain5621', NULL, 0, 'June 21, 2022 10:03:am', NULL, NULL, NULL, NULL, '2022-06-21 14:03:19', '2022-06-21 14:03:19'),
(14, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsfdfasdf', 'hp laptop', '1655784204.png', '1655784204.png', 'device sdf', 'Technology', 'subjec is', 'description is', 'vokta_complain3350', NULL, 0, 'June 21, 2022 10:03:am', NULL, NULL, NULL, NULL, '2022-06-21 14:03:24', '2022-06-21 14:03:24'),
(15, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsfdfasdf', 'hp laptop', '1655784209.png', '1655784209.png', 'device sdfasd fdf', 'Technology', 'subjec is', 'description is', 'vokta_complain3745', NULL, 0, 'June 21, 2022 10:03:am', NULL, NULL, NULL, NULL, '2022-06-21 14:03:29', '2022-06-21 14:03:29'),
(16, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsfdfasdf', 'hp laptop', '1655784215.png', '1655784215.png', 'device sdfasd fdf', 'Technology', 'subjec is  fdasdfasdf', 'description is', 'vokta_complain7044', NULL, 0, 'June 21, 2022 10:03:am', NULL, NULL, NULL, NULL, '2022-06-21 14:03:35', '2022-06-21 14:03:35'),
(17, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsfdfasdf', 'hp laptop', '1655784224.png', '1655784224.png', 'device sdfasd fdf', 'Technology adsfasdfdf', 'subjec is  fdasdfasdf', 'description is', 'vokta_complain7645', NULL, 0, 'June 21, 2022 10:03:am', NULL, NULL, NULL, NULL, '2022-06-21 14:03:44', '2022-06-21 14:03:44'),
(18, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsfdfasdf', 'hp laptop', '1655784232.png', '1655784232.png', 'device sdfasd fdf', 'Technology adsfasdfdf', 'subjec is  fdasdfasdfasdfa dfasdf', 'description is', 'vokta_complain7666', NULL, 0, 'June 21, 2022 10:03:am', NULL, NULL, NULL, NULL, '2022-06-21 14:03:52', '2022-06-21 14:03:52'),
(19, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsfdfasdf', 'hp laptop', '1655784238.png', '1655784238.png', 'device sdfasd fdfasdf dsfsdf', 'Technology adsfasdfdf', 'subjec is  fdasdfasdfasdfa dfasdf', 'description is', 'vokta_complain9027', NULL, 0, 'June 21, 2022 10:03:am', NULL, NULL, NULL, NULL, '2022-06-21 14:03:58', '2022-06-21 14:03:58'),
(20, 16, 'md masudr ana', '1720515250', '2568412654123', 'masudrana@gmail.com', 'Hp', 'Monitor', '1655801241.jpg', '1655801241.jpg', 'মন্ত্রণালয়/বিভাগ', 'অর্থ বিভাগ', 'test subject', 'এটি একটি পরীক্ষামূলক অভিযোগ।এটি একটি পরীক্ষামূলক অভিযোগ।এটি একটি পরীক্ষামূলক অভিযোগ।এটি একটি পরীক্ষামূলক অভিযোগ।এটি একটি পরীক্ষামূলক অভিযোগ।', 'vokta_complain5994', NULL, 0, 'June 21, 2022 2:47:pm', NULL, NULL, NULL, NULL, '2022-06-21 18:47:21', '2022-06-21 18:47:21'),
(21, 30, 'Shamonti', '1715209629', '1111111111', 'buvctc', 'ygtv', 'help yvv', '1655804576.jpg', '1655804576.jpg', 'অন্যান্য দপ্তর/সংস্থা', 'অর্থ বিভাগ', 'hhhh', 'cggj', 'vokta_complain2305', '12-10-2022', 1, 'June 21, 2022 3:42:pm', NULL, NULL, NULL, 'result', '2022-06-21 19:42:56', '2022-06-21 19:42:56'),
(22, 30, 'Shamonti', '1715209629', '1111111111', 'buvctc', 'vbb', 'vcsh', '1655804635.jpg', '1655804635.jpg', 'অধিদপ্তর/পরিদপ্তর', 'আইন ও বিচার বিভাগ', 'fycyd', 'jf ff', 'vokta_complain9613', NULL, 0, 'June 21, 2022 3:43:pm', NULL, NULL, NULL, NULL, '2022-06-21 19:43:55', '2022-06-21 19:43:55'),
(23, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsfdfasdf', 'hp laptop', '1656138887.png', '1656138887.png', 'device sdfasd fdfasdf dsfsdf', 'Technology adsfasdfdf', 'subjec is  fdasdfasdfasdfa dfasdf', 'description is', 'vokta_complain2389', NULL, 0, 'June 25, 2022 12:34:pm', NULL, NULL, NULL, NULL, '2022-06-25 16:34:47', '2022-06-25 16:34:47'),
(24, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsfdfasdf', 'hp laptop', '1656139245.png', '1656139245.png', 'device sdfasd fdfasdf dsfsdf', 'Technology adsfasdfdf', 'subjec is  fdasdfasdfasdfa dfasdf', 'description is', 'vokta_complain6062', NULL, 0, 'June 25, 2022 12:40:pm', NULL, NULL, NULL, NULL, '2022-06-25 16:40:45', '2022-06-25 16:40:45'),
(25, 5, 'Test User', '1720515259', '30982394648', 'testuser132@gmail.com', 'িকনন', 'তিকর', '1656140886.jpg', '1656140886.jpg', 'মন্ত্রণালয়/বিভাগ', 'অর্থ বিভাগ', 'োকনিতি', 'সিতনে', 'vokta_complain9441', NULL, 0, 'June 25, 2022 1:08:pm', NULL, NULL, NULL, NULL, '2022-06-25 17:08:06', '2022-06-25 17:08:06'),
(26, 5, 'Test User', '1720515259', '30982394648', 'testuser132@gmail.com', 'িকননিগন', 'কোনবনকব', '1656151823.jpg', '1656151823.jpg', 'মন্ত্রণালয়/বিভাগ', 'কারিগরি ও মাদ্রাসা শিক্ষা বিভাগ', 'পেপরটরিব', 'ি পরপরট পর', 'vokta_complain6409', NULL, 0, 'June 25, 2022 4:10:pm', NULL, NULL, NULL, NULL, '2022-06-25 20:10:23', '2022-06-25 20:10:23'),
(27, 5, 'Test User', '1720515259', '30982394648', 'testuser132@gmail.com', 'চরজনজর', 'জরহর', '1656152868.jpg', '1656152868.jpg', 'মন্ত্রণালয়/বিভাগ', 'কারিগরি ও মাদ্রাসা শিক্ষা বিভাগ', 'ব চরচ', 'চরাচর ্ে', 'vokta_complain6306', NULL, 0, 'June 25, 2022 4:27:pm', NULL, NULL, NULL, NULL, '2022-06-25 20:27:48', '2022-06-25 20:27:48'),
(28, 5, 'Test User', '1720515259', '30982394648', 'testuser132@gmail.com', 'নাম', 'নাম ২', '1656154431.jpg', '1656154431.jpg', 'অন্যান্য', 'অর্থ বিভাগ', 'বিভিন্ন', 'অনেক', 'vokta_complain6423', NULL, 0, 'June 25, 2022 4:53:pm', NULL, NULL, NULL, NULL, '2022-06-25 20:53:51', '2022-06-25 20:53:51'),
(29, 5, 'Test User', '1720515259', '30982394648', 'testuser132@gmail.com', 'fggd', 'fasdfasdfasdf', '1656155386.jpg', '1656155386.jpg', 'মন্ত্রণালয়/বিভাগ', 'অর্থনৈতিক সম্পর্ক বিভাগ', 'adfasdfasdf', 'adfdfsdf', 'vokta_complain1303', NULL, 0, 'June 25, 2022 5:09:pm', NULL, NULL, NULL, NULL, '2022-06-25 21:09:46', '2022-06-25 21:09:46'),
(30, 30, 'Shamonti', '1715209629', '1111111111', 'buvctc', 'nnxcnc', 'jkdkfkhhb', '1656214767.jpg', '1656214767.jpg', 'মন্ত্রণালয়/বিভাগ', 'অভ্যন্তরীণ সম্পদ বিভাগ', 'jxjcnnvhh', 'ndndmfkg', 'vokta_complain3872', NULL, 0, 'June 26, 2022 9:39:am', NULL, NULL, NULL, NULL, '2022-06-26 13:39:27', '2022-06-26 13:39:27'),
(31, 30, 'Shamonti', '1715209629', '1111111111', 'buvctc', 'jsnsnd', 'jdjdj', '1656745958.jpg', '1656745958.jpg', 'বিভাগীয় পর্যায়ের কার্যালয়', 'আইন ও বিচার বিভাগ', 'bdndj', 'dcbk', 'vokta_complain2095', NULL, 0, 'July 2, 2022 1:12:pm', NULL, NULL, NULL, NULL, '2022-07-02 17:12:38', '2022-07-02 17:12:38'),
(32, 30, 'Shamonti', '1715209629', '1111111111', 'buvctc', 'nsndn', 'ndjdj', '1656763424.jpg', '1656763424.jpg', 'মন্ত্রণালয়/বিভাগ', 'অভ্যন্তরীণ সম্পদ বিভাগ', 'ndndmf', 'jdjjd', 'vokta_complain3330', NULL, 0, 'July 2, 2022 6:03:pm', NULL, NULL, NULL, NULL, '2022-07-02 22:03:44', '2022-07-02 22:03:44'),
(33, 30, 'Shamonti', '1715209629', '1111111111', 'buvctc', 'bc', 'gff', '1656764352.jpg', '1656764352.jpg', 'অধিদপ্তর/পরিদপ্তর', 'অর্থনৈতিক সম্পর্ক বিভাগ', 'vfdx', 'gfd', 'vokta_complain3273', NULL, 0, 'July 2, 2022 6:19:pm', NULL, NULL, NULL, NULL, '2022-07-02 22:19:12', '2022-07-02 22:19:12'),
(34, 30, 'Shamonti', '1715209629', '1111111111', 'buvctc', 'hxjxj', 'jxnxn', '1656823274.jpg', '1656823274.jpg', 'মন্ত্রণালয়/বিভাগ', 'অভ্যন্তরীণ সম্পদ বিভাগ', 'ffdx', 'vfd', 'vokta_complain5946', NULL, 0, 'July 3, 2022 10:41:am', NULL, NULL, NULL, NULL, '2022-07-03 14:41:14', '2022-07-03 14:41:14'),
(35, 5, 'Md masud Rana', '01720515259', '1234567891023', NULL, 'Androidhsfdfasdf', 'hp laptop', '1656825042.jfif', '1656825042.webp', 'device sdfasd fdfasdf dsfsdf', 'Technology adsfasdfdf', 'subjec is  fdasdfasdfasdfa dfasdf', 'description is', 'vokta_complain1794', NULL, 0, 'July 3, 2022 11:10:am', NULL, NULL, NULL, NULL, '2022-07-03 15:10:42', '2022-07-03 15:10:42'),
(36, 30, 'Shamonti', '1715209629', '1111111111', 'buvctc', 'apple', 'mac', '1656827001.jpg', '1656827001.jpg', 'মন্ত্রণালয়/বিভাগ', 'অভ্যন্তরীণ সম্পদ বিভাগ', 'a', 'a', 'vokta_complain1617', NULL, 0, 'July 3, 2022 11:43:am', NULL, NULL, NULL, NULL, '2022-07-03 15:43:21', '2022-07-03 15:43:21'),
(37, 47, 'Diba', '1763354934', '0173625965412', 'shorodindudibacse@gmail.com', 'adidas', 'shoe', '1656827652.jpg', '1656827652.jpg', 'মন্ত্রণালয়/বিভাগ', 'অর্থনৈতিক সম্পর্ক বিভাগ', 'nothing', 'dbhxhxnnsbgs vxhxhnsnbbd', 'vokta_complain6734', NULL, 0, 'July 3, 2022 11:54:am', NULL, NULL, NULL, NULL, '2022-07-03 15:54:12', '2022-07-03 15:54:12'),
(38, 49, 'Md Masud Rana', '01720515151', '46498453768', 'maaaa@gmail.com', 'fibb', 'cibbfb', '1656831860.jpg', '1656831861.jpg', 'মন্ত্রণালয়/বিভাগ', 'অর্থ বিভাগ', 'djhd0fbf', 'jdjbf', 'vokta_complain4163', NULL, 0, 'July 3, 2022 1:04:pm', NULL, NULL, NULL, NULL, '2022-07-03 17:04:21', '2022-07-03 17:04:21'),
(39, 49, 'Md Masud Rana', '01720515151', '46498453768', NULL, 'djbvv', 'djbvvv', '1656832104.jpg', '1656832105.jpg', 'অন্যান্য দপ্তর/সংস্থা', 'অর্থনৈতিক সম্পর্ক বিভাগ', 'hskbdobf', 'hckdjvdodbfnf', 'vokta_complain8135', NULL, 0, 'July 3, 2022 1:08:pm', NULL, NULL, NULL, NULL, '2022-07-03 17:08:26', '2022-07-03 17:08:26'),
(40, 50, 'Mizanur Rahman', '01234567891', '0123456789', NULL, 'SEO', 'TEst', '1666692380.jpg', '1666692380.jpg', 'সেল', 'অর্থ বিভাগ', 'testtest', 'test details', 'vokta_complain8129', NULL, 0, 'October 25, 2022 4:06:pm', NULL, NULL, NULL, NULL, '2022-10-25 20:06:20', '2022-10-25 20:06:20'),
(41, 50, 'Mizanur Rahman', '01234567891', '0123456789', NULL, 'test', 'test', '1666692453.jpg', '1666692453.jpg', 'মন্ত্রণালয়/বিভাগ', 'অভ্যন্তরীণ সম্পদ বিভাগ', 'reason', 'reason', 'vokta_complain7477', NULL, 0, 'October 25, 2022 4:07:pm', NULL, NULL, NULL, NULL, '2022-10-25 20:07:33', '2022-10-25 20:07:33'),
(42, 50, 'Mizanur Rahman', '01234567891', '0123456789', NULL, 'test', 'test', '1666692456.jpg', '1666692456.jpg', 'মন্ত্রণালয়/বিভাগ', 'অভ্যন্তরীণ সম্পদ বিভাগ', 'reason', 'reason', 'vokta_complain2116', NULL, 0, 'October 25, 2022 4:07:pm', NULL, NULL, NULL, NULL, '2022-10-25 20:07:36', '2022-10-25 20:07:36');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_19_043115_create_complains_table', 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(34, 'App\\Models\\User', 3, '01305971524_Token', '0e87bb4db086c4ca38abbaedc8c087796be85d74225e94f38dcc7b6269a7cbfc', '[\"*\"]', NULL, '2022-06-18 23:03:51', '2022-06-18 23:03:51'),
(35, 'App\\Models\\User', 3, '1305971524_userToken', '91aa040d6e67aa70f80890abf6a71992605d843191f0b20825dfe2d2b5431fb4', '[\"server:user\"]', '2022-06-18 23:11:13', '2022-06-18 23:08:29', '2022-06-18 23:11:13'),
(36, 'App\\Models\\User', 2, '1672880108_userToken', '39d12303b7b053fa6d5a0924b4dd3244cd9751892ea6e66f857856e266c8eebc', '[\"server:user\"]', NULL, '2022-06-19 10:01:01', '2022-06-19 10:01:01'),
(37, 'App\\Models\\User', 2, '1672880108_userToken', '0344b5c982739222eddf8749d61e8bfdede8b4d69d3a36644777a2466ba7c976', '[\"server:user\"]', NULL, '2022-06-19 10:01:10', '2022-06-19 10:01:10'),
(38, 'App\\Models\\User', 5, '01720515259_Token', 'e722edfddc0090162ff2efb0aaf749719c6055d732b70660f80ed2cb609cfeee', '[\"*\"]', '2022-06-19 10:16:01', '2022-06-19 10:03:17', '2022-06-19 10:16:01'),
(39, 'App\\Models\\User', 6, '01720515258_Token', 'e6200a58486838f12470dbc414048c7e0bd0ae074b356106eee3e6601ceedc53', '[\"*\"]', '2022-06-20 08:44:47', '2022-06-19 10:15:53', '2022-06-20 08:44:47'),
(40, 'App\\Models\\User', 5, '1720515259_userToken', '6e76c3ce1b3fb0e92426e0cf0f4e798d8b77fa3f11f373c1cf068a307066cc5a', '[\"server:user\"]', NULL, '2022-06-19 11:21:48', '2022-06-19 11:21:48'),
(41, 'App\\Models\\User', 9, '01720515253_Token', '462997c051ab0b062b5b6e21b24b8bc1ffe67782643677b5a7c4c12661c81fcd', '[\"*\"]', NULL, '2022-06-19 11:29:55', '2022-06-19 11:29:55'),
(42, 'App\\Models\\User', 12, '01720515255_Token', 'b7dd9592be27b3396d1e1d0dc64509bb7e67f01cadbe098537ffe8ca176b5768', '[\"*\"]', NULL, '2022-06-19 11:30:42', '2022-06-19 11:30:42'),
(43, 'App\\Models\\User', 13, '01720515252_Token', '8922a8e8bbbb845ba3458fc594b69d3a0cb518d4fdae1cb65d6765019835ccb2', '[\"*\"]', NULL, '2022-06-19 12:41:08', '2022-06-19 12:41:08'),
(44, 'App\\Models\\User', 15, '01720515251_Token', 'b6fddb7468ee9ae0ff246f87b4470eb8b65a1276f745c36318ad61a0b6cf2ebd', '[\"*\"]', NULL, '2022-06-19 12:41:45', '2022-06-19 12:41:45'),
(45, 'App\\Models\\User', 16, '01720515250_Token', 'd616f032f4e2f0565f48d7e94e740b66794ffd545a9f0eb42e62353c64f2d4af', '[\"*\"]', NULL, '2022-06-19 12:47:59', '2022-06-19 12:47:59'),
(46, 'App\\Models\\User', 19, '01720515245_Token', '68ab2aeaa8834d0ac08bca7697a54576f8a1e33fb0b9fa5348d78c5d025a5831', '[\"*\"]', NULL, '2022-06-19 12:49:30', '2022-06-19 12:49:30'),
(47, 'App\\Models\\User', 21, '01720515223_Token', 'cdeeb33fddef2a89133623219fc95c415ad85d2cf84e02c82efa61a860e5f6b8', '[\"*\"]', NULL, '2022-06-19 12:50:52', '2022-06-19 12:50:52'),
(48, 'App\\Models\\User', 23, '01720515227_Token', 'f3eac853eceedb77a0cd60f3aab56d72fb16659c80cdcef0b99f587d4222e390', '[\"*\"]', NULL, '2022-06-19 12:53:38', '2022-06-19 12:53:38'),
(49, 'App\\Models\\User', 25, '01720515221_Token', 'f6a3c0b7ccaa4518b0fe2164ed71b1e576dbcda1eaac3a34c3ee2a9b12fb6d13', '[\"*\"]', NULL, '2022-06-19 13:12:23', '2022-06-19 13:12:23'),
(50, 'App\\Models\\User', 26, '01720515228_Token', '1d7ade3c23b36323dbd632babaa3a95697659052140585312a8b89d94c1bbb9c', '[\"*\"]', NULL, '2022-06-19 13:14:11', '2022-06-19 13:14:11'),
(51, 'App\\Models\\User', 27, '01720515266_Token', '19313bb4603248c7e41882a250839762829a662c840da1e7e8ef73ea05f5bbeb', '[\"*\"]', NULL, '2022-06-19 13:18:53', '2022-06-19 13:18:53'),
(52, 'App\\Models\\User', 28, '01720515299_Token', '497162647e001dbdeb8e65bee6e0d3d8846b1d7f0bf40ec679e6afeec5ce8936', '[\"*\"]', NULL, '2022-06-19 13:23:26', '2022-06-19 13:23:26'),
(53, 'App\\Models\\User', 29, '01720515288_Token', '21d72d2492642ce7628c37ccdbd488b013c62f31fb807e5b473cf621569e38a3', '[\"*\"]', NULL, '2022-06-19 14:28:08', '2022-06-19 14:28:08'),
(54, 'App\\Models\\User', 5, '1720515259_userToken', '123321d81a23bbdfb02b495d3a0741c87e7a700443013a986725c001e52bd98f', '[\"server:user\"]', NULL, '2022-06-19 14:52:39', '2022-06-19 14:52:39'),
(55, 'App\\Models\\User', 5, '1720515259_userToken', 'a3f7a171790d962a60a2716d28574de16428a2ed98946aaada695cd9d1f70222', '[\"server:user\"]', NULL, '2022-06-19 14:53:13', '2022-06-19 14:53:13'),
(56, 'App\\Models\\User', 5, '1720515259_userToken', 'bdf97461a010b06a4c82d8c7261312b3f969c6a2d4d9baf2c3a049f59b4deb02', '[\"server:user\"]', '2022-06-21 11:25:02', '2022-06-19 14:55:20', '2022-06-21 11:25:02'),
(57, 'App\\Models\\User', 5, '1720515259_userToken', '984c44bbe26c992e0bfb117cb5d5a139bab630a68e674724c98e53e06bbac371', '[\"server:user\"]', NULL, '2022-06-19 14:56:15', '2022-06-19 14:56:15'),
(58, 'App\\Models\\User', 23, '1720515227_userToken', 'aeab0044c8e2cc35797c387d05d8de6fa9a574b4b14b752397f30f8ab3f12c15', '[\"server:user\"]', '2022-06-19 14:59:38', '2022-06-19 14:56:57', '2022-06-19 14:59:38'),
(59, 'App\\Models\\User', 5, '1720515259_userToken', '7bf64fb2bb837f38ad8623049c522a563e7343329b56d786d3cd0a78254c7a8c', '[\"server:user\"]', NULL, '2022-06-19 15:18:25', '2022-06-19 15:18:25'),
(60, 'App\\Models\\User', 5, '1720515259_userToken', '4ad305b60e26df7e7e349b3ec422d224a142d3982ffa0f2c1c85a8176d5134ea', '[\"server:user\"]', '2022-06-22 10:15:07', '2022-06-19 15:19:24', '2022-06-22 10:15:07'),
(61, 'App\\Models\\User', 30, '01715209629_Token', '6c71987b35f5e2581d439ff20287fa76bcfc0f00a0bd72951f4df547e936acd3', '[\"*\"]', NULL, '2022-06-20 07:19:42', '2022-06-20 07:19:42'),
(62, 'App\\Models\\User', 30, '1715209629_userToken', 'cc4d846b5251c42cb7c60529bec13a8442db675b71b4332d5e4cdb66fa942dfd', '[\"server:user\"]', '2022-06-20 07:20:25', '2022-06-20 07:20:05', '2022-06-20 07:20:25'),
(63, 'App\\Models\\User', 31, '01521245600_Token', '5ba5488745c29d83329022efe57c52dfa6b5b8e4f8b02ecef8ed394aa8abd20b', '[\"*\"]', NULL, '2022-06-20 07:21:18', '2022-06-20 07:21:18'),
(64, 'App\\Models\\User', 31, '1521245600_userToken', '17a3aaab97aa7bc6b27347a609f0ef0c8bf52c40f1878af32ca395f76bcb61e3', '[\"server:user\"]', '2022-06-20 07:24:23', '2022-06-20 07:22:36', '2022-06-20 07:24:23'),
(65, 'App\\Models\\User', 30, '1715209629_userToken', 'a43dda9c0bf947950b44e4a4807dc9497509a52f8852d797883cb5f4f9626164', '[\"server:user\"]', '2022-06-20 07:24:59', '2022-06-20 07:24:32', '2022-06-20 07:24:59'),
(66, 'App\\Models\\User', 5, '1720515259_userToken', '2fd647ea16a890f671e8337840b32cb78d19792c9fc2e4433542506c7c0c0611', '[\"server:user\"]', '2022-06-20 15:48:30', '2022-06-20 08:45:21', '2022-06-20 15:48:30'),
(67, 'App\\Models\\User', 5, '1720515259_userToken', 'af037093c65d127e579a97cc571a8ca8a18183ecb09eec38ea792eb29be45a1a', '[\"server:user\"]', '2022-06-25 10:14:28', '2022-06-21 08:00:34', '2022-06-25 10:14:28'),
(68, 'App\\Models\\User', 32, '01720515254_Token', 'a506d6b56e8a0707849342b17d00d2d4aac81da8917d35dfc93fb506e0c6bbc5', '[\"*\"]', NULL, '2022-06-21 12:35:19', '2022-06-21 12:35:19'),
(69, 'App\\Models\\User', 16, '1720515250_userToken', 'd0d0dc4288d2894c0242dffeb452550b8146ea132bd6fe117cead80d38313914', '[\"server:user\"]', '2022-06-21 12:35:47', '2022-06-21 12:35:38', '2022-06-21 12:35:47'),
(70, 'App\\Models\\User', 16, '1720515250_userToken', '3cc909c29b3848aca22754e4a7eb49986a16f3b7f6583183913d6032f4dbfb13', '[\"server:user\"]', '2022-06-22 10:14:30', '2022-06-21 12:36:34', '2022-06-22 10:14:30'),
(71, 'App\\Models\\User', 30, '1715209629_userToken', 'a3a78625fd05c37a1c8cec078c400b089ae04d591a0b279365f95ec9f67bbc5f', '[\"server:user\"]', '2022-06-21 13:45:13', '2022-06-21 13:39:39', '2022-06-21 13:45:13'),
(72, 'App\\Models\\User', 30, '1715209629_userToken', '04651a7f26edd4cee5d5ba2d80fc6a6e74afacb83aece6e309a1e183d49187ca', '[\"server:user\"]', '2022-06-22 10:59:03', '2022-06-22 10:27:51', '2022-06-22 10:59:03'),
(73, 'App\\Models\\User', 5, '1720515259_userToken', 'b9b465040ecd722f03de31d2184d8a9a0d4e3deae9ec5bde033ced421cb38782', '[\"server:user\"]', '2022-06-22 11:30:55', '2022-06-22 11:00:49', '2022-06-22 11:30:55'),
(74, 'App\\Models\\User', 5, '1720515259_userToken', 'e42a0c4be3bbd52f23d504ca3481cbdc59e3b2b6172e975a534a62d27eccba99', '[\"server:user\"]', '2022-06-22 13:32:33', '2022-06-22 11:58:27', '2022-06-22 13:32:33'),
(75, 'App\\Models\\User', 5, '1720515259_userToken', '903d739fef958046b661d876e5bdfee6833aef4029e48dffec0af6380d4b9da0', '[\"server:user\"]', '2022-06-25 08:17:16', '2022-06-22 14:09:36', '2022-06-25 08:17:16'),
(76, 'App\\Models\\User', 33, '01758300772_Token', '838a4067f88e7326b5c4113234f7120085bc2e599749a0f627a9ba6b1b8809a7', '[\"*\"]', NULL, '2022-06-22 16:11:05', '2022-06-22 16:11:05'),
(77, 'App\\Models\\User', 33, '1758300772_userToken', '9476bb4976ef13a67688810e71c4543f9c36c0dfb67b7fa24f10c47e1c5af5f5', '[\"server:user\"]', '2022-06-22 22:21:43', '2022-06-22 16:11:23', '2022-06-22 22:21:43'),
(78, 'App\\Models\\User', 5, '1720515259_userToken', '50ba06232bed6fa7421f4429412a503605f60b3217a8668ef4729a0fa99840fb', '[\"server:user\"]', '2022-06-25 10:29:42', '2022-06-23 07:37:29', '2022-06-25 10:29:42'),
(79, 'App\\Models\\User', 5, 'testuser132@gmail.com_AdminToken', 'f568aed0bf8304ea4f1454ddea2830393c4128c70c241923d3f33c168093205c', '[\"server:admin\"]', NULL, '2022-06-23 15:39:24', '2022-06-23 15:39:24'),
(80, 'App\\Models\\User', 30, '1715209629_userToken', '2c516f2a4d061cc658199766563861cb2b0110f507a57cc2a183cd8203339b6d', '[\"server:user\"]', '2022-06-25 16:11:40', '2022-06-25 09:45:58', '2022-06-25 16:11:40'),
(81, 'App\\Models\\User', 5, '1720515259_Token', 'f3d2b7bc7f32e746aa46419aeec5cb4e30f5cab9a42f6689309c44bd7d86c9f7', '[\"\"]', '2022-06-25 10:02:42', '2022-06-25 10:00:15', '2022-06-25 10:02:42'),
(82, 'App\\Models\\User', 5, '1720515259_Token', '34caa5fb9d16380900dddddeb2e83d1badb20ef0c0be067c8f923ea92b0167d7', '[\"\"]', '2022-06-25 14:31:00', '2022-06-25 10:03:33', '2022-06-25 14:31:00'),
(83, 'App\\Models\\User', 5, '1720515259_Token', '45efb9109f98df5437c9cc4c0f28706dcdd9dc4e64137b20b44516c3938c5640', '[\"\"]', '2022-06-25 10:31:40', '2022-06-25 10:30:06', '2022-06-25 10:31:40'),
(84, 'App\\Models\\User', 5, '1720515259_Token', 'fe1cc6fe46880d446d167d6ab985bcb2db2e23123fcd814197fcd805eedfd1b7', '[\"\"]', '2022-06-25 10:31:19', '2022-06-25 10:30:33', '2022-06-25 10:31:19'),
(85, 'App\\Models\\User', 5, '1720515259_userToken', 'a54322e52a70b09ffce46cd1185bda4f28b82f8b6a69a89fda08c7a11ff1e158', '[\"server:user\"]', '2022-07-03 09:10:42', '2022-06-25 10:31:23', '2022-07-03 09:10:42'),
(86, 'App\\Models\\User', 5, '1720515259_userToken', '90cfda3b3166081a56c82cfe3a4a3603c8edd61614d3130f0f8a955422a34bd6', '[\"server:user\"]', '2022-06-25 14:27:49', '2022-06-25 10:31:53', '2022-06-25 14:27:49'),
(87, 'App\\Models\\User', 5, '1720515259_userToken', 'ec6d48b747ca18aa076b8a78cda8ad0ededb396e9d4ee23576e523c84833a2b4', '[\"server:user\"]', '2022-06-25 14:58:52', '2022-06-25 14:31:18', '2022-06-25 14:58:52'),
(88, 'App\\Models\\User', 5, '1720515259_userToken', 'e59d3a0d7f76fd34593ce11154983b119297d6d4fac4d537d860b21fb3df95d0', '[\"server:user\"]', '2022-07-03 09:18:05', '2022-06-25 14:33:55', '2022-07-03 09:18:05'),
(89, 'App\\Models\\User', 5, '1720515259_userToken', 'f007e9425bad11fa1a089eb40d0ed8179113eae01417ad312c05f9d6210f4ec6', '[\"server:user\"]', '2022-06-26 07:59:42', '2022-06-25 15:02:33', '2022-06-26 07:59:42'),
(90, 'App\\Models\\User', 30, '1715209629_userToken', '03e623b0b258952eba0a4b76758920cba93acb3c1c1d8490b8a98275574db92b', '[\"server:user\"]', '2022-06-26 07:37:08', '2022-06-26 07:37:03', '2022-06-26 07:37:08'),
(91, 'App\\Models\\User', 30, '1715209629_userToken', 'fdd443c8792f16dcbebde1b46db535f9b2b3ad6d4cf2d16d733b14eb13b6c300', '[\"server:user\"]', '2022-06-26 07:39:37', '2022-06-26 07:37:17', '2022-06-26 07:39:37'),
(92, 'App\\Models\\User', 34, '01967956145_Token', 'b62801c39a1513993fb9a0ed792fa86b7c4588f17de54d35660ff879e8c08231', '[\"*\"]', NULL, '2022-06-26 07:44:57', '2022-06-26 07:44:57'),
(93, 'App\\Models\\User', 30, '1715209629_userToken', '6743edf80dcb55b8369d1a9f4cbac68cb5e47a3406545e217f714eae326e217c', '[\"server:user\"]', '2022-06-26 07:53:43', '2022-06-26 07:53:41', '2022-06-26 07:53:43'),
(94, 'App\\Models\\User', 30, '1715209629_userToken', '7b7e250536d0ce1bd3488e9bb48988fc267fd204d2de9fc1257f7a2709cc4e9c', '[\"server:user\"]', '2022-06-26 07:59:52', '2022-06-26 07:54:22', '2022-06-26 07:59:52'),
(95, 'App\\Models\\User', 35, '01720552259_Token', '7b0846173912307e59eec509b8aacbfaa5ee42a13e7ab299ba3990347a79b69f', '[\"*\"]', NULL, '2022-06-26 08:00:50', '2022-06-26 08:00:50'),
(96, 'App\\Models\\User', 5, '1720515259_userToken', '06362415c7b5a16fe4caa12c94d7e19adb9ddda201273658a3c5e2cc8aaf50fb', '[\"server:user\"]', '2022-07-14 08:25:16', '2022-06-26 08:42:00', '2022-07-14 08:25:16'),
(97, 'App\\Models\\User', 30, '1715209629_userToken', 'e997072fd769c8f7faed1d735777662a70166d5bb7dc8fc6a4350917c608d108', '[\"server:user\"]', '2022-06-26 09:39:25', '2022-06-26 09:39:11', '2022-06-26 09:39:25'),
(98, 'App\\Models\\User', 31, '1521245600_userToken', '4f38c5280386e488a65bbe321da24a603bb59ae3b282eeb8270656c793cdd8e6', '[\"server:user\"]', '2022-07-02 10:30:26', '2022-06-26 09:39:38', '2022-07-02 10:30:26'),
(99, 'App\\Models\\User', 36, '01234567890_Token', '9be1bdad0160707e0f13f6acaa10665ffef0a52fbe50362832a38e03d726c422', '[\"*\"]', NULL, '2022-07-02 10:24:24', '2022-07-02 10:24:24'),
(100, 'App\\Models\\User', 36, '1234567890_userToken', '077a7c931801066dbd67ff7c2c00f0ec9b63b8ba4384b7cec976ee91cbec52db', '[\"server:user\"]', '2022-07-02 14:36:08', '2022-07-02 10:24:53', '2022-07-02 14:36:08'),
(101, 'App\\Models\\User', 30, '1715209629_userToken', '86398d708179d5afbc49e1c850b2b8138249543a5802429fb877ccd8cfa76b94', '[\"server:user\"]', '2022-07-03 08:47:58', '2022-07-02 11:10:26', '2022-07-03 08:47:58'),
(102, 'App\\Models\\User', 37, '01234567891_Token', '48911c0ed34334c5ee7f13496375fbffeaa93059d79eb04f8aae1c32303daf9f', '[\"*\"]', NULL, '2022-07-02 14:39:09', '2022-07-02 14:39:09'),
(103, 'App\\Models\\User', 37, '1234567891_userToken', 'ff3d29d10979042c53f2bf5450b6eb30e24c26a933bda8bb1fd6483949fbedd7', '[\"server:user\"]', '2022-07-02 14:39:37', '2022-07-02 14:39:34', '2022-07-02 14:39:37'),
(104, 'App\\Models\\User', 38, '01234567892_Token', '1ac1ad11af9b4de581224516f47a6cc01cd7a792fb9d4a15a1896d61708abce5', '[\"*\"]', NULL, '2022-07-02 14:42:35', '2022-07-02 14:42:35'),
(105, 'App\\Models\\User', 39, '01234567893_Token', '3ede2948670809007da1508122dfdd2fe1c9e101ec37fdcf4b2e6b0886c30cd7', '[\"*\"]', NULL, '2022-07-02 14:43:37', '2022-07-02 14:43:37'),
(106, 'App\\Models\\User', 37, '1234567891_userToken', 'faad46d90c7c15648d14140baf16b8c3dc0ba3946bfbd07831898e72d6bae672', '[\"server:user\"]', '2022-07-02 15:29:32', '2022-07-02 15:15:10', '2022-07-02 15:29:32'),
(107, 'App\\Models\\User', 40, '01234567894_Token', 'b5c21ee7fe1112d60ac123d6c58237ad687101a19338621bbea08a986470cf42', '[\"*\"]', NULL, '2022-07-02 15:31:46', '2022-07-02 15:31:46'),
(108, 'App\\Models\\User', 36, '1234567890_userToken', 'd85ab029ebf0aa75c14658da848773916cd3e980451fa038ed4fd92e0a113884', '[\"server:user\"]', '2022-07-02 15:48:37', '2022-07-02 15:48:31', '2022-07-02 15:48:37'),
(109, 'App\\Models\\User', 36, '1234567890_userToken', 'dc7cc572005873856b3a7dd63a5c6d464aa87be949b42d4437a96666f27a8b10', '[\"server:user\"]', '2022-07-02 16:12:30', '2022-07-02 15:59:59', '2022-07-02 16:12:30'),
(110, 'App\\Models\\User', 37, '1234567891_userToken', 'f88c3e70a38739de7c1e405d72ed6eac72348d4391f43582d9ad69f6992b4049', '[\"server:user\"]', '2022-07-02 16:24:49', '2022-07-02 16:12:47', '2022-07-02 16:24:49'),
(111, 'App\\Models\\User', 36, '1234567890_userToken', '4832eb7382f32ad5f803c4de1b7d7a9c58ba5ab098367ebc3426139c5ab59ee1', '[\"server:user\"]', '2022-07-03 08:40:06', '2022-07-03 08:36:08', '2022-07-03 08:40:06'),
(112, 'App\\Models\\User', 36, '1234567890_userToken', 'b03b11fa0c58d8c639d3d5f551e9a7a75a7462c47319e173de8011bf55ff44f7', '[\"server:user\"]', NULL, '2022-07-03 09:07:08', '2022-07-03 09:07:08'),
(113, 'App\\Models\\User', 41, '01232456789_Token', 'fb37ccd0ca7fd0e2e172578a6ed5525a712b49b9541f171ee7bcde18c06c70bf', '[\"*\"]', NULL, '2022-07-03 09:09:19', '2022-07-03 09:09:19'),
(114, 'App\\Models\\User', 30, '1715209629_userToken', '97c1de778fe37c6863ed68c5b3d788b3febf0682a6853e5f438f23f2aa0d0aa7', '[\"server:user\"]', '2022-07-03 09:12:56', '2022-07-03 09:12:50', '2022-07-03 09:12:56'),
(115, 'App\\Models\\User', 42, '01720515858_Token', 'ed2e38fe70e76627dddc9f95826a22b7b9b8a2128c30aa5fd978e09425c73401', '[\"*\"]', NULL, '2022-07-03 09:18:34', '2022-07-03 09:18:34'),
(116, 'App\\Models\\User', 43, '01111111112_Token', 'ab08eed3d0b572c8aef15673622bd959c4378c5c1359c1db8cf5d2e96c05ef05', '[\"*\"]', NULL, '2022-07-03 09:21:49', '2022-07-03 09:21:49'),
(117, 'App\\Models\\User', 30, '1715209629_userToken', 'f58cc394596b0603c24bb794c182f3e4a6b82252aeb324b60334c4ead451fadf', '[\"server:user\"]', '2022-07-03 09:22:19', '2022-07-03 09:22:16', '2022-07-03 09:22:19'),
(118, 'App\\Models\\User', 44, '01111111111_Token', 'a2091eca4ad3f395abb71b4731a7fbd5250455c881c09ff5c8d2173f6d2eff58', '[\"*\"]', NULL, '2022-07-03 09:23:20', '2022-07-03 09:23:20'),
(119, 'App\\Models\\User', 45, '01245698715_Token', '8eba966c883d3df00d034797ca015d0b62db2c066536f5e81884a34fc7d1fb68', '[\"*\"]', NULL, '2022-07-03 09:24:11', '2022-07-03 09:24:11'),
(120, 'App\\Models\\User', 36, '1234567890_userToken', '16994e283b580e11ccd6c0f6040c29f963c54ef39127505738b38bc338bb1032', '[\"server:user\"]', '2022-07-03 09:41:36', '2022-07-03 09:26:12', '2022-07-03 09:41:36'),
(121, 'App\\Models\\User', 30, '1715209629_userToken', '75f6a7e6cb01f29fed526ce48edb903b3284eee315c0bfe29e9870c5417b9ef1', '[\"server:user\"]', '2022-07-03 10:39:51', '2022-07-03 09:41:29', '2022-07-03 10:39:51'),
(122, 'App\\Models\\User', 36, '1234567890_userToken', '68744b6ca3aee5c278206d196454bec8f5953962d18fd36bb2c0d0f2a79a3728', '[\"server:user\"]', '2022-07-03 09:46:29', '2022-07-03 09:42:10', '2022-07-03 09:46:29'),
(123, 'App\\Models\\User', 46, '01701045486_Token', '609cb267db5d64b818dc41a39b1ec306980b3385ed0fedf2544d58ec1de11d3b', '[\"*\"]', NULL, '2022-07-03 09:47:29', '2022-07-03 09:47:29'),
(124, 'App\\Models\\User', 46, '1701045486_userToken', '8ed71b39e78e0864d514b9e7ac55bc2f4367181b3112b64af1e315ea1c70fb5a', '[\"server:user\"]', '2022-07-03 10:17:37', '2022-07-03 09:47:42', '2022-07-03 10:17:37'),
(125, 'App\\Models\\User', 47, '01763354934_Token', 'a74e1f9dc570694bd0f40eda6bf8f74efa396a380c4e998e4f31ed42aa0cac16', '[\"*\"]', NULL, '2022-07-03 09:52:16', '2022-07-03 09:52:16'),
(126, 'App\\Models\\User', 47, '1763354934_userToken', 'faced7e614ede5a446f081666d210ee8d15027ffeb4168bef0f2350247424103', '[\"server:user\"]', '2022-07-03 09:54:13', '2022-07-03 09:52:37', '2022-07-03 09:54:13'),
(127, 'App\\Models\\User', 48, '01701045486_Token', '9dcde4c7aa060d2bb07f449cfb1c4eb846b60a9dba9ab91c43fd8b57a8ac7a3d', '[\"*\"]', NULL, '2022-07-03 10:33:17', '2022-07-03 10:33:17'),
(128, 'App\\Models\\User', 48, '01701045486_userToken', '74062cb721792a63750be5f556f08d606b35ea64a7b0201981bbed6700bb0ccd', '[\"server:user\"]', '2022-07-03 10:35:46', '2022-07-03 10:33:30', '2022-07-03 10:35:46'),
(129, 'App\\Models\\User', 48, '01701045486_userToken', '432d264b3e42630e8adc03462247394401eebc27cae1de30cf79679643ea8906', '[\"server:user\"]', '2022-07-03 10:40:41', '2022-07-03 10:36:59', '2022-07-03 10:40:41'),
(130, 'App\\Models\\User', 30, '01715209629_userToken', '0c28ae62fd2885eef8ba0a99ce6a637f0e1a87f640882f5ec35e6008568f1440', '[\"server:user\"]', '2022-07-04 08:55:50', '2022-07-03 10:40:19', '2022-07-04 08:55:50'),
(131, 'App\\Models\\User', 48, '01701045486_userToken', '0bc692011c313993c7d09335c0500b825c6db06db7b73df7add0dfa0167a9c69', '[\"server:user\"]', '2022-07-03 10:44:58', '2022-07-03 10:42:19', '2022-07-03 10:44:58'),
(132, 'App\\Models\\User', 49, '01720515151_Token', 'e1dfac861ec17467df3d8e37faae2f8ef26cadbac3008010f9be2c0747fd8f0c', '[\"*\"]', NULL, '2022-07-03 10:49:18', '2022-07-03 10:49:18'),
(133, 'App\\Models\\User', 49, '01720515151_userToken', 'facfab98ad78a8e2f58477c8f8b17462b0fb22b2bcf57ffa9b92bafd008a0165', '[\"server:user\"]', '2022-07-19 21:17:30', '2022-07-03 10:49:29', '2022-07-19 21:17:30'),
(134, 'App\\Models\\User', 48, '01701045486_userToken', '6b85f6f9777c4b1df8946c2a788a714f01869e4fd0ae449a487c4719169451b4', '[\"server:user\"]', '2022-07-11 23:10:55', '2022-07-03 11:46:36', '2022-07-11 23:10:55'),
(135, 'App\\Models\\User', 1, 'admin@gmail.com_AdminToken', '1e5b82e10777c559e23859654d6ff5427809b52605717d78ba8aca67733856ca', '[\"server:admin\"]', NULL, '2022-10-25 12:24:45', '2022-10-25 12:24:45'),
(136, 'App\\Models\\User', 1, 'admin@gmail.com_AdminToken', '3f4bddeff7826b96406774131719e8ced16ede58aa0e52b3cfa7ed00dd056f51', '[\"server:admin\"]', NULL, '2022-10-25 12:33:14', '2022-10-25 12:33:14'),
(137, 'App\\Models\\User', 1, 'admin@gmail.com_AdminToken', '82e29464e82b804260c24c1e5bee26d310b7e00f6fac26c77089ac6a47a5b4f5', '[\"server:admin\"]', NULL, '2022-10-25 12:43:52', '2022-10-25 12:43:52'),
(138, 'App\\Models\\User', 1, '01234567890_Token', 'cad6bfb4963e72a3fa8299e38a6893f20c514a8a3408b07a51c416e46264e7f1', '[\"\"]', NULL, '2022-10-25 12:55:42', '2022-10-25 12:55:42'),
(139, 'App\\Models\\User', 1, '01234567890_Token', '2b4329bc12640a566422c8ab0d40d2101171d74d9f957a194a77737536d5f67a', '[\"\"]', '2022-10-25 13:00:37', '2022-10-25 12:58:40', '2022-10-25 13:00:37'),
(140, 'App\\Models\\User', 50, '01234567891_Token', '3918b44b7f8756849565b6196afb84cd77d04636e7a8e24911333527844aa0a9', '[\"*\"]', NULL, '2022-10-25 13:00:15', '2022-10-25 13:00:15'),
(141, 'App\\Models\\User', 50, '01234567891_userToken', 'c2aa79ed25bc59c3a86b4e71f0b85fe84b3c21a5504e3fbf9eae97667b655386', '[\"server:user\"]', '2022-10-25 14:06:23', '2022-10-25 13:00:37', '2022-10-25 14:06:23'),
(142, 'App\\Models\\User', 50, '01234567891_userToken', 'd8cd042906bbf222e5303cd1283d37daae100e26f0a3f45d8d25beb31512ea76', '[\"server:user\"]', '2022-10-25 14:10:09', '2022-10-25 13:02:04', '2022-10-25 14:10:09'),
(143, 'App\\Models\\User', 50, '01234567891_userToken', 'd3e0f16462b9220a8e2b3c5999f3e4a35e4c0d0297834e5a7eb71584e77e5489', '[\"server:user\"]', '2022-10-25 14:10:34', '2022-10-25 14:10:32', '2022-10-25 14:10:34'),
(144, 'App\\Models\\User', 50, '01234567891_userToken', 'bfb70b17e17f689ac2661ae5bca1511f9a9afcc64f82a507112c3bec85820b58', '[\"server:user\"]', '2022-10-25 16:19:45', '2022-10-25 14:57:26', '2022-10-25 16:19:45'),
(145, 'App\\Models\\User', 50, '01234567891_userToken', '53ead8b85ddda16b82f54011573153e387f0f9b65f2ce360d47d7e021987759e', '[\"server:user\"]', NULL, '2022-10-25 15:54:25', '2022-10-25 15:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL COMMENT '0 = male, 1 = female, 2= others',
  `birth_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `nid`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `gender`, `birth_date`, `father_name`, `mother_name`, `present_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(1, 'shamonti', '01234567890', '1234567891077', 'admin@gmail.com', NULL, '$2y$10$iZdVzrtx21wKB/yNmi22Nu8JzuQ7.a1nE0Ioq9Dr5LyY.OAUcWFfW', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-18 05:06:33', '2022-06-18 05:06:33'),
(2, 'osman', '1672880108', '1234567891023', 'osman@gmail.com', NULL, '$2y$10$kgH6fG4ZU9L8Hk2O62r5UO69LdT/4VN6di9JJHd80YAPmd1uBz6YG', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-18 22:55:47', '2022-06-18 22:55:47'),
(3, 'diba', '1305971524', '1234567891024', 'diba@gmail.com', NULL, '$2y$10$RXhsDcO7Eewj0UQWV2G7n.ELGKY3E0rXARIZf42DoDgfs977CC6Aq', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-18 23:03:51', '2022-06-18 23:03:51'),
(5, 'Md Masud Rana', '1720515259', '30982394648', 'masudrana35362@gmail.com', NULL, '$2y$10$xQIoWaS/s16f/zfIDr5MzOD.t/Um/vVPkBjkNdu0Gy56rMzyfgLWW', '1', NULL, 0, '7/6/2000', 'Md Golam Mostofa', 'Mst Minara Begum', 'Dhaka', 'Rangpur', '2022-06-19 10:03:17', '2022-06-26 08:43:18'),
(9, 'test user1', '1720515253', '5641556206455', NULL, NULL, '$2y$10$MhtNzI.6zkXYeN3fAtIcsOMv9CNhe4V6K9HbBoaloMLF4FCPEa01.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 11:29:55', '2022-06-19 11:29:55'),
(12, 'test user1', '1720515255', '5641556206451', NULL, NULL, '$2y$10$lz5m9dv.tJom0VM7TBip4uem08E.a2uDlYNWLGjkewlS9.slT6vY.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 11:30:42', '2022-06-19 11:30:42'),
(13, 'name j;aklsdf', '1720515252', '01254682545', NULL, NULL, '$2y$10$Cmd7pNbR2BxBd8y8iwh8Seml73KX0XABrD13FAuIrMGgHUofvfnsO', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 12:41:08', '2022-06-19 12:41:08'),
(15, 'name j;aklsdf', '1720515251', '36528945623', NULL, NULL, '$2y$10$zVSXVBhW8cWfj8Zfwc4fgOgc0iPgA4y7Ua74E3cR/NkjCM585Avg.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 12:41:45', '2022-06-19 12:41:45'),
(16, 'md masud rana', '1720515250', '2568412654123', 'masudrana@gmail.com', NULL, '$2y$10$xQEoQCFDPN.jklqj4Te5i.gH1B00GcWI885bUxtjjANb4c0pIeWAK', '1', NULL, 0, '21/6/2022', 'নাম', 'নাম', 'ঠিকানা', 'টিকানা', '2022-06-19 12:47:59', '2022-06-21 15:03:19'),
(19, 'asd;kfja;sdkjfasdf', '1720515245', '2568412654125', NULL, NULL, '$2y$10$odKHVJ0BwZQgzgZd3GMJH.uxc3rRG6IBEi2gv67Jd8caf9v1l8DyW', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 12:49:30', '2022-06-19 12:49:30'),
(21, 'asd;kfja;sdkjfasdf', '1720515223', '2568412654658', NULL, NULL, '$2y$10$D1cMnDeipIUyXrVajp7Y7OcZqkYPMMPPaVPehYwhqOv/5UIH5LBSW', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 12:50:52', '2022-06-19 12:50:52'),
(23, 'asdadgadg', '1720515227', '256841265431', NULL, NULL, '$2y$10$dXwLY2e.GRX8.1etPk5zceejqVUOJVGmxJ3YevgWKd/PEmeogSqK.', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 12:53:38', '2022-06-19 12:53:38'),
(25, 'asdadgadg', '1720515221', '256841265433', NULL, NULL, '$2y$10$LlQqkMSvpO6tnrGCscxarOTNgV.efLpTXCjQerXlxMtv7yASZNlQy', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 13:12:23', '2022-06-19 13:12:23'),
(26, 'asdadgadg', '1720515228', '256841265439', NULL, NULL, '$2y$10$sESYBKRBcJRz/iqNybENlOnhLwnxINY/t3ViHx6/t3mn2/wy9ZCTG', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 13:14:11', '2022-06-19 13:14:11'),
(27, 'fasdfasdfadsf', '1720515266', '5845859758365', NULL, NULL, '$2y$10$g2cZGDji6p6KS2ToXMIAd.6X3R.sPPF7Jbi9iAyqnHCkbcQ/33.UW', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 13:18:53', '2022-06-19 13:18:53'),
(28, 'asdfadgsdfgsfg', '1720515299', '369369369369', NULL, NULL, '$2y$10$NDmsADixo9iuw21TGvRID.wqXcKtkknxW5APQZWn88YK7TajpbcYq', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 13:23:26', '2022-06-19 13:23:26'),
(29, 'adgsfgsfg', '1720515288', '369369369368', NULL, NULL, '$2y$10$m4rUpjkQNvI8qllR3YRHt.pRuxAryBeU/QSrVTIGYM2lx.MwAVWGW', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 14:28:08', '2022-06-19 14:28:08'),
(30, 'Shamonti', '01715209629', '1111111112', 'buvctc', NULL, '$2y$10$Ca.ViB0uikRBZ5h8QQzUJOjoKfA8g/cNLcuRrGEbUHzFgQP39dd6a', '1', NULL, 1, '18/6/2022', 'jxn', 'jxjx', 'yvjvf', 'huhubh', '2022-06-20 07:19:42', '2022-07-03 10:38:55'),
(31, 'Shamonti Haque', '1521245600', '2222222222', NULL, NULL, '$2y$10$4O5ApOsC/Ck.AfVcZVVEZOt97QvSs85hncR1XCeISAhtSvUeOZHC2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 07:21:18', '2022-06-20 07:21:18'),
(32, 'Md Masud Rana', '1720515254', '17205152590', 'masudrana35362@gmail.com', NULL, '$2y$10$PaJ2c5b5f9gr5OfTH4rVVumIJ6LVHcPpnhFtcWSCWs6Nd4IdbV1p6', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 12:35:19', '2022-06-21 12:35:19'),
(33, 'mizanur Rahman', '1758300772', '22555525251', 'seoexparte.com@gmail.com', NULL, '$2y$10$4EQAF8G4y5BkjVGzfEvC2eVi9toGZrbNwYH.TjVMJNrY1jCAtqfJm', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-22 16:11:05', '2022-06-22 16:11:05'),
(34, 'absjfkgk', '1967956145', '3333333333', NULL, NULL, '$2y$10$Pui7V/hAamVcLzoNGcwCYeOO7Si7Ln8wOmH/8IuYimMrvA/Lckqou', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-26 07:44:57', '2022-06-26 07:44:57'),
(35, 'Md Masud rana', '1720552259', '12354687456', NULL, NULL, '$2y$10$8oPeH3m3x8akMEJ6kwkwne4/LkdAwoxnt8pwr00b3FnYLi99U75XO', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-26 08:00:50', '2022-06-26 08:00:50'),
(41, 'test user1', '1232456789', '56458216458', NULL, NULL, '$2y$10$mvcAeLUXC0V0TGmH/5qQx.nIg.oE8Z/X0HJVh5deTolxtGO7Mrgbq', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 09:09:19', '2022-07-03 09:09:19'),
(42, 'Md Masud Rana', '1720515858', '764985673489', NULL, NULL, '$2y$10$ZZYeHtWrPUNxdailve63f.h91V8g4ahrUrJMMeQg5qtMh1Hh/1ecy', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 09:18:34', '2022-07-03 09:18:34'),
(43, 'vvfg', '1111111112', '2222222223', NULL, NULL, '$2y$10$Jhhnfc35BxxgoZEhz4BL8.PNf6DX5xd2EaxvbLnKFns5paTNeoGpS', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 09:21:49', '2022-07-03 09:21:49'),
(44, 'vchh', '1111111111', '5555555555', NULL, NULL, '$2y$10$D63zZmR7zEBr2JQv90Z24.Hs9YhL6.a/N4uUyDBiFPqhQvtZ.xJri', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 09:23:20', '2022-07-03 09:23:20'),
(47, 'Diba', '1763354934', '0173625965412', 'shorodindudibacse@gmail.com', NULL, '$2y$10$uyIMq3UUXECyD/OkNDYzGuLYClR3rMb1RX1CMKjzopDVWPn25b2Ry', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 09:52:16', '2022-07-03 09:52:16'),
(48, 'M H Riad', '01701045486', '123456789214', NULL, NULL, '$2y$10$f65pFGKToZ4BRz0yuoqjQ..Oxrc99tVtKZ/b1YAAX5qkM/Pzd2mvW', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 10:33:17', '2022-07-03 10:33:17'),
(49, 'Md Masud Rana', '01720515151', '46498453768', NULL, NULL, '$2y$10$SyOv051e9STXm7D/RcJ6qetrVSshOAfYOGzbmCJkW7L7mHMNKCe2W', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 10:49:18', '2022-07-03 10:49:18'),
(50, 'Mizanur Rahman', '01234567891', '0123456789', NULL, NULL, '$2y$10$WmB1mmy0esn9nsG7ELDUCuA5VjZgvfgyd68vbSk6JTIDlnjrwUu/O', '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-10-25 13:00:15', '2022-10-25 13:37:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_nid_unique` (`nid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

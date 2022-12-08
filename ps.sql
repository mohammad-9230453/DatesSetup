-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2022 at 07:35 PM
-- Server version: 8.0.27
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ps`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesses`
--

DROP TABLE IF EXISTS `accesses`;
CREATE TABLE IF NOT EXISTS `accesses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'بخش_0 ',
  `deep` int NOT NULL DEFAULT '0' COMMENT '\r\nبخش_0 \r\nقسمت_1 \r\nدسترسی_2',
  `situation` int NOT NULL DEFAULT '1' COMMENT 'true_1 false_0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accesses`
--

INSERT INTO `accesses` (`id`, `name`, `parent_id`, `deep`, `situation`) VALUES
(158, 'برنامه', 0, 0, 1),
(159, 'برنامه ریزی', 158, 1, 1),
(160, 'تقویم', 159, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `text` varchar(500) NOT NULL,
  `cat_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `text`, `cat_id`) VALUES
(34, 'stronger things', 's3e8', 48),
(35, 'the menu', '1401/11', 47),
(36, 'Das Morgan Projekt', '?', 47),
(37, 'Smile 2022', '-', 47),
(38, '1 ملیون به میلاد', 'پرداخت نشده', 121),
(39, '1و200 بابت هارد به علی', 'پرداخت نشده', 121),
(40, '900+600 بابت کفشا به علی ', 'پرداخت نشده', 121),
(41, '1ملیون بابت تفریح عید تهرن به علی', 'پرداخت نشده', 121),
(42, '2ملیون خورد خوردا به علی', 'پرداخت نشده', 121),
(43, '5ملیون به جعفر بابت کلاس آموزشی', 'پرداخت نشده', 121),
(45, 'معدل کارشناسی', '15.2', 9),
(46, 'دانشگاه', 'دانشگاه صنعتی شاهرود(1088)', 9),
(47, 'شروع', 'نیم سال اول 1392', 9),
(48, 'اتمام', '1396/11/30', 9),
(49, 'رشته', 'مهندسی مکاترونیک(2522)', 9),
(50, 'پایان خدمت', 'دارا بودن کارت پایان خدمت(1)', 9),
(51, 'تولد', 'خرم آباد(3413)', 9),
(52, 'علوم کامپیوتر شناور', '1209', 9),
(53, 'مهندسی کامپیوتر اصلی', '1277', 9);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL DEFAULT 'new category',
  `last_id` int NOT NULL,
  `deep` int NOT NULL,
  `person_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `last_id`, `deep`, `person_id`) VALUES
(9, 'کنکور', 0, 1, 21),
(4, 'رضا', 0, 0, 21),
(11, 'کنکور', 4, 2, 21),
(14, 'تولد فامیلا', 0, 0, 21),
(15, 'تولد رفقا', 0, 0, 21),
(16, 'برنامه درسی', 9, 1, 21),
(18, 'برنامه درسی', 4, 2, 21),
(123, 'مهمونی ها', 104, 0, 21),
(124, '****ثبت لحظات زیبای زندگی****', 0, 0, 21),
(21, 'مناسبت های خارجی', 0, 0, 21),
(46, 'سینما', 0, 0, 21),
(47, 'فیلمها', 46, 0, 21),
(48, 'سریالها', 46, 0, 21),
(49, 'متفرقه', 0, 0, 21),
(120, 'جشن ها', 104, 0, 21),
(122, 'متفرقه', 104, 0, 21),
(112, 'پروژه ها', 104, 0, 21),
(113, 'مسافرتهای تفریحی', 104, 0, 21),
(119, '****ثبت موفقیت ها****', 0, 0, 21),
(117, 'مسافرت های خارجه', 104, 0, 21),
(118, 'خریدها', 104, 0, 21),
(103, 'گزارش زعفران', 0, 0, 21),
(104, 'خاطرات', 0, 0, 21),
(105, 'تفریحات', 104, 0, 21),
(121, 'مراوده های مالی', 0, 0, 21),
(146, 'نوک گیری مو', 0, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `msg` varchar(500) DEFAULT NULL,
  `Y` int NOT NULL,
  `M` int NOT NULL,
  `D` int NOT NULL,
  `W` int NOT NULL,
  `date` date NOT NULL,
  `has_end` int NOT NULL DEFAULT '0',
  `end_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cat_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msg`, `Y`, `M`, `D`, `W`, `date`, `has_end`, `end_date`, `cat_id`) VALUES
(118, 'امروز موفق شدم فصل اول طراحی الگریتم رو \r\nبا 1/4 از فصل اول آمار و احتمال مهندسی رو تا ص15\r\n بخونم :)\r\n', 1401, 8, 23, -1, '2022-11-14', 0, '2022-11-13 20:30:00', 119),
(117, 'ما و دایی مهدی اینا به صرف پیتزا مر؛ و گوشت با نوشابه و سالاد\r\n و سیبزمینی سرخ شده \r\nو میوه \r\nو دمنوش زنجبیل و دارچین دعوت شدیم \r\n', 1401, 8, 22, -1, '2022-11-13', 0, '2022-11-13 20:30:00', 123),
(116, '11kg\r\n', 1401, 8, 23, -1, '2022-11-14', 0, '2022-11-13 20:30:00', 103),
(115, '8 کیلو رب کم یا 7 کیلو و 750گرم\r\n', 1401, 8, 22, -1, '2022-11-13', 0, '2022-11-12 20:30:00', 103),
(34, 'ثبت نام کنکور ارشد 1401', 1401, -1, -1, -1, '2022-12-07', 1, '2022-12-12 20:30:00', 9),
(35, 'برگزاری کنکور ارشد 1401', 1401, -1, -1, -1, '2023-03-02', 1, '2023-03-02 20:30:00', 9),
(36, 'تولد حمید عباسی', -1, 1, 11, -1, '2022-03-31', 0, '2022-11-06 20:30:00', 15),
(37, 'تولد علی قاسمی', -1, 1, 13, -1, '2022-04-02', 0, '2022-11-06 20:30:00', 15),
(38, 'تولد میلاد کارگری', -1, 5, 14, -1, '2022-08-05', 0, '2022-11-06 20:30:00', 15),
(39, 'تولد علی نگهبان', -1, 10, 11, -1, '2023-01-01', 0, '2022-11-06 20:30:00', 15),
(40, '50 تولد مامان', -1, 3, 1, -1, '2022-05-22', 0, '2022-11-10 20:30:00', 14),
(41, 'تولد من و علی', -1, 3, 16, -1, '2022-06-06', 0, '2022-11-06 20:30:00', 14),
(42, '45 خاله گل', -1, 5, 3, -1, '2022-07-25', 0, '2022-11-10 20:30:00', 14),
(43, '84 رضا', -1, 7, 18, -1, '2022-10-10', 0, '2022-11-10 20:30:00', 14),
(44, '7:30 تا 9 ورزش و صبحانه', 1401, -1, -1, -1, '2022-11-12', 1, '2022-12-01 20:30:00', 16),
(45, '9 تا 12 طراحی الگریتم', 1401, -1, -1, -1, '2022-11-12', 1, '2022-12-01 20:30:00', 16),
(46, '12 تا 14 ورزش و ناهار', 1401, -1, -1, -1, '2022-11-12', 1, '2022-12-01 20:30:00', 16),
(47, '14 تا 17 نظریه زبان ها و ماشینها', 1401, -1, -1, -1, '2022-11-12', 1, '2022-12-01 20:30:00', 16),
(48, '17 تا 18 ورزش', 1401, -1, -1, -1, '2022-11-12', 1, '2022-12-01 20:30:00', 16),
(49, '18 تا 21 ساختمان داده ها', 1401, -1, -1, -1, '2022-11-12', 1, '2022-12-01 20:30:00', 16),
(50, '21 تا 1 بامداد استراحت و شام و فیلم و ...', 1401, -1, -1, -1, '2022-11-12', 1, '2022-12-01 20:30:00', 16),
(51, '1 بامداد تا 7:30 خواب شیرین', 1401, -1, -1, -1, '2022-11-12', 1, '2022-12-01 20:30:00', 16),
(114, 'خونه خاله به مناسبت جشن تولد خاله\r\nبه صرف چایی و میوه\r\nبا یه شاخه گل رفتم\r\n', 1401, 8, 21, -1, '2022-11-12', 0, '2022-11-12 20:30:00', 123),
(113, '8 kg\r\n', 1401, 8, 21, -1, '2022-11-12', 0, '2022-11-11 20:30:00', 103),
(56, 'ولنتاین', -1, 11, 25, -1, '2023-02-14', 0, '2022-11-06 20:30:00', 21),
(57, 'کریسمس', -1, 10, 4, -1, '2022-12-25', 0, '2022-11-06 20:30:00', 21),
(58, 'کریسمس', -1, 10, 5, -1, '2022-12-26', 0, '2022-11-06 20:30:00', 21),
(59, 'کریسمس', -1, 10, 6, -1, '2022-12-27', 0, '2022-11-06 20:30:00', 21),
(60, 'کریسمس', -1, 10, 7, -1, '2022-12-28', 0, '2022-11-06 20:30:00', 21),
(61, 'کریسمس', -1, 10, 8, -1, '2022-12-29', 0, '2022-11-06 20:30:00', 21),
(62, 'کریسمس', -1, 10, 9, -1, '2022-12-30', 0, '2022-11-06 20:30:00', 21),
(63, 'کریسمس\r\n', -1, 10, 10, -1, '2022-12-31', 0, '2022-11-06 20:30:00', 21),
(64, 'کریسمس\r\n', -1, 10, 11, -1, '2023-01-01', 0, '2022-11-06 20:30:00', 21),
(65, 'کریسمس\r\n', -1, 10, 12, -1, '2023-01-02', 0, '2022-11-06 20:30:00', 21),
(66, 'کریسمس\r\n', -1, 10, 13, -1, '2023-01-03', 0, '2022-11-06 20:30:00', 21),
(67, 'کریسمس\r\n', -1, 10, 14, -1, '2023-01-04', 0, '2022-11-06 20:30:00', 21),
(68, 'کریسمس\r\n', -1, 10, 15, -1, '2023-01-05', 0, '2022-11-06 20:30:00', 21),
(69, 'کریسمس\r\n', -1, 10, 16, -1, '2023-01-06', 0, '2022-11-06 20:30:00', 21),
(70, 'جشن هالووین\r\n', -1, 8, 9, -1, '2023-10-31', 0, '2022-11-06 20:30:00', 21),
(71, 'اولین جمعه آذر و آخرین جمعه نوامبر به نام جمعه سیاه یا بلک فرایدی نام دارد\r\n', -1, 9, 1, -1, '2023-11-22', 0, '2022-11-06 20:30:00', 21),
(112, '48 دایی مروت\r\n', -1, 2, 20, -1, '2022-05-10', 0, '2022-11-11 20:30:00', 14),
(110, '95 طاها\r\n', -1, 10, 4, -1, '2022-12-25', 0, '2022-11-10 20:30:00', 14),
(109, '58 دایی صادق\r\n', -1, 2, 18, -1, '2022-05-08', 0, '2022-11-10 20:30:00', 14),
(108, '89 اسرا\r\n', -1, 4, 6, -1, '2022-06-27', 0, '2022-11-10 20:30:00', 14),
(119, 'امشب منو مامانو رضا رفتیم با هم کاپوچینو خوردیم :)(:\r\n', 1401, 8, 23, -1, '2022-11-14', 0, '2022-11-13 20:30:00', 105),
(105, '92 مهدیه\r\n', -1, 8, 23, -1, '2022-11-14', 0, '2022-11-10 20:30:00', 14),
(111, '95 شهریار\r\n', -1, 5, 10, -1, '2022-08-01', 0, '2022-11-10 20:30:00', 14),
(107, '83 فاطمه\r\n', -1, 10, 29, -1, '2023-01-19', 0, '2022-11-10 20:30:00', 14),
(104, '58  خاله\r\n', -1, 8, 20, -1, '2022-11-11', 0, '2022-11-10 20:30:00', 14),
(84, 'چیدن زعفران', 1401, -1, 17, 3, '2022-11-08', 1, '2022-12-20 20:30:00', 49),
(85, 'چیدن زعفران\r\n', 1401, -1, 25, 4, '2022-11-09', 1, '2022-12-20 20:30:00', 49),
(86, 'شب یلدا\r\n', 1401, 9, 30, -1, '2022-12-21', 0, '2022-11-06 20:30:00', 49),
(87, 'تبریک تولد علی نگهبان\r\n', 1401, 10, 11, -1, '2023-01-01', 0, '2022-11-06 20:30:00', 49),
(88, '61 دایی مهدی', -1, 6, 20, -1, '0624-09-11', 0, '2022-11-10 20:30:00', 14),
(89, 'این ماه قراره فیلم the menu بیادش', 1401, 11, 1, -1, '2023-01-21', 0, '2022-11-07 20:30:00', 47),
(94, 'اولین روزی که زعفران 2 کیلو گل من و مامان چیدیم\r\n', 1401, 8, 17, -1, '2022-11-08', 0, '2022-11-08 20:30:00', 103),
(97, 'منو مامان امروز 2 کیلو زعفرون چیدیم\r\nدایی مهدی امشب علی رو آمپول زد 3 تا :)\r\nامشب فیلم وقتی خوابش میبرد رو با هم دیدیم\r\n', 1401, 8, 17, -1, '2022-11-08', 0, '2022-11-08 20:30:00', 104),
(95, 'علی و مامان 1کیلو و 800 گرم برای دو روز بود چیدن\r\n', 1401, 8, 16, -1, '2022-11-07', 0, '2022-11-08 20:30:00', 103),
(96, 'علی و فریبرز 4 کیلو چیدن\r\n', 1401, 8, 18, -1, '2022-11-09', 0, '2022-11-08 20:30:00', 103),
(120, '8/600\r\n', 1401, 8, 24, -1, '2022-11-15', 0, '2022-11-15 20:30:00', 103),
(121, '8/300', 1401, 8, 25, -1, '2022-11-16', 0, '2022-11-15 20:30:00', 103),
(99, '3و نیم کیلو \r\n', 1401, 8, 19, -1, '2022-11-10', 0, '2022-11-10 20:30:00', 103),
(100, '5ونیم کیلو\r\n', 1401, 8, 20, -1, '2022-11-11', 0, '2022-11-10 20:30:00', 103),
(101, 'تفریح با مجید و شاهین و رفیق تهرانی مجید(جواد) کیه مان الشتر \r\nلاستیک خراب شد درستش کردیم\r\nمرغ خوردیم با نوشابه و شیرینی و تخمه و پفک و چیپس و ... ;)\r\nشبش رفتیم دور دریاچه کیو چرخیدیم\r\n', 1401, 8, 19, -1, '2022-11-10', 0, '2022-11-10 20:30:00', 105),
(102, 'امروز ساعت 1 ظهر جواد برگشت تهران منم برگشتم خونه\r\n', 1401, 8, 20, -1, '2022-11-11', 0, '2022-11-10 20:30:00', 105),
(103, 'امروز صبح خبر کشته شدن ی جوون توسط بسیجیای بیناموس اومد\r\nدر حال دیوار نویسی ی شلیک بهش میکنن و بعدشم که فرار میکنه با تیزی شارگشو میزنن و میکشنش\r\nهنوز جنازشو ندادن تحویل\r\n', 1401, 8, 19, -1, '2022-11-10', 0, '2022-11-10 20:30:00', 122),
(122, 'امروز تو برگردوندن کارگرای علی از سر زمین\r\nبارون میومدشو طبیعت خیلی خشگلو خوش حس و زیبا شده بود\r\nخیلی خوب بودن تپه های سرسبزس که بارون سبزو زیباشون کرده بود\r\n', 1401, 8, 25, -1, '2022-11-16', 0, '2022-11-15 20:30:00', 124),
(123, 'امروز موفق شدم مباحث جدیدی از فصل اول احتمالو بخونم\r\n', 1401, 8, 25, -1, '2022-11-16', 0, '2022-11-15 20:30:00', 119),
(124, '17\r\n', 1401, 8, 27, -1, '2022-11-18', 0, '2022-11-17 20:30:00', 103),
(125, 'امروز موفق شدم\r\nدرسای کنکوری رو بخونم و مقداری مطلب حاضر کنم واس آموزش\r\n', 1401, 8, 28, -1, '2022-11-19', 0, '2022-11-19 20:30:00', 119),
(126, '8.300\r\n', 1401, 8, 28, -1, '2022-11-19', 0, '2022-11-20 20:30:00', 103),
(127, '3.750\r\n', 1401, 8, 30, -1, '2022-11-21', 0, '2022-11-20 20:30:00', 103),
(128, 'پر مشتی', 1401, 8, 29, -1, '2022-11-20', 0, '2022-11-20 20:30:00', 103),
(129, 'امروز خاله گل موهامو گرفت\r\n', 1401, 8, 29, -1, '2022-11-20', 0, '2022-11-20 20:30:00', 146),
(130, 'امروز موفق شدم درسامو خوب بخونم و کاملا مفاهیمی که مشکل داشتمو بفهمم\r\n', 1401, 8, 29, -1, '2022-11-20', 0, '2022-11-20 20:30:00', 119),
(131, 'امروز مو دماغمو گرفتم\r\n', 1401, 9, 7, -1, '2022-11-28', 0, '2022-11-27 20:30:00', 146),
(132, 'دهه دوم خرداد ماه مرحله اعلام نتایج اولیه و انتخاب رشته\r\n', 1402, 3, 10, -1, '2023-05-31', 0, '2022-12-06 20:30:00', 9),
(133, 'تهیه کارت ورود به جلسه آزمون کارشناسی ارشد 1402\r\n', 1401, -1, -1, -1, '2023-02-27', 1, '2023-02-28 20:30:00', 9),
(134, 'اطلاعیه دریافت کارت ورود', 1401, 12, 1, -1, '2023-02-20', 0, '2022-12-06 20:30:00', 9),
(135, 'اطلاعیه دریافت کارت ورود به آزمون', 1401, 12, 8, -1, '2023-02-27', 0, '2022-12-06 20:30:00', 9),
(136, 'دهه اول شهریور ماه اعلام نتایج نهایی', 1402, 6, 1, -1, '2023-08-23', 0, '2022-12-06 20:30:00', 9);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
CREATE TABLE IF NOT EXISTS `persons` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `situation` int NOT NULL DEFAULT '1',
  `role` int NOT NULL DEFAULT '0',
  `access_id` int NOT NULL,
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `welcome_name` varchar(255) DEFAULT NULL COMMENT 'اسم خوش امد گویی',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`name`, `password`, `situation`, `role`, `access_id`, `id`, `welcome_name`) VALUES
('0000', '00000000', 1, 0, 158, 21, 'محمد ملکشاهی');

-- --------------------------------------------------------

--
-- Table structure for table `person_accesses`
--

DROP TABLE IF EXISTS `person_accesses`;
CREATE TABLE IF NOT EXISTS `person_accesses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `access_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `person_accesses`
--

INSERT INTO `person_accesses` (`id`, `person_id`, `access_id`) VALUES
(137, 21, 160),
(136, 21, 159);

-- --------------------------------------------------------

--
-- Table structure for table `programm`
--

DROP TABLE IF EXISTS `programm`;
CREATE TABLE IF NOT EXISTS `programm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hash_code` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `programm`
--

INSERT INTO `programm` (`id`, `hash_code`) VALUES
(2, 'qRy5*@$rT=V)y9%SuQZ$&XvWtDdtaHUAEabwRtqrVSe%p=$!dxGHgYQXSZyrqu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `programm`
--
ALTER TABLE `programm` ADD FULLTEXT KEY `hash_code` (`hash_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

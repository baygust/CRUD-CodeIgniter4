-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 08:46 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'watashi masimuto', 'sonen jump', 'Sampul1.png', '2021-03-24 15:35:39', '2021-03-25 21:41:45'),
(2, 'One Piece', 'one-piece', 'echoro oda', 'gramedia', 'Sampul2.png', '2021-03-24 15:35:39', '2021-03-24 15:35:39'),
(5, 'Naga', 'naga', '', 'coba', 'Sampul2.png', '2021-03-25 08:55:47', '2021-03-25 21:20:52'),
(8, 'adsc', 'adsc', 'adva', 'adv', 'images.jpg', '2021-04-03 09:47:23', '2021-04-03 09:47:23'),
(13, 'coba ganti sampul', 'coba-ganti-sampul', 'jns', 'ljsn', '1617543305_947e8838a94907d631c8.jpg', '2021-04-04 08:33:25', '2021-04-04 08:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-04-05-015605', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1617588291, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Baktianto Prakasa', 'Jr. Sukajadi No. 458, Kotamobagu 68214, Kalsel', '1980-05-24 11:43:57', '2021-04-05 08:30:40'),
(2, 'Sakura Purwanti M.Farm', 'Gg. Reksoninten No. 151, Batu 70217, Pabar', '1982-10-05 17:54:40', '2021-04-05 08:30:40'),
(3, 'Aris Hendra Hardiansyah S.Kom', 'Dk. Adisucipto No. 81, Cimahi 26309, Jateng', '1978-12-22 03:58:36', '2021-04-05 08:30:40'),
(4, 'Kusuma Darman Putra', 'Jr. Baya Kali Bungur No. 72, Salatiga 67874, Jateng', '1974-07-16 00:08:40', '2021-04-05 08:30:40'),
(5, 'Ika Ajeng Sudiati S.Sos', 'Jln. Bambon No. 488, Pariaman 22894, Sultra', '2002-10-21 11:47:47', '2021-04-05 08:30:40'),
(6, 'Enteng Permadi', 'Ds. Katamso No. 422, Bandar Lampung 49446, Bali', '2016-10-18 18:47:15', '2021-04-05 08:30:40'),
(7, 'Lidya Mulyani M.TI.', 'Kpg. Ikan No. 368, Bekasi 67374, Malut', '2021-01-04 10:59:19', '2021-04-05 08:30:40'),
(8, 'Kurnia Thamrin', 'Psr. Barasak No. 170, Subulussalam 94742, Gorontalo', '1976-04-10 11:47:03', '2021-04-05 08:30:40'),
(9, 'Victoria Purwanti S.Farm', 'Ki. Jend. Sudirman No. 912, Depok 48493, Banten', '2008-02-17 07:22:31', '2021-04-05 08:30:40'),
(10, 'Jarwi Sihotang', 'Gg. Sampangan No. 630, Lubuklinggau 99536, Kalsel', '1994-11-06 20:09:22', '2021-04-05 08:30:40'),
(11, 'Wakiman Latupono', 'Jln. Bacang No. 198, Bitung 35093, Sulut', '1971-09-02 18:39:09', '2021-04-05 08:30:40'),
(12, 'Victoria Hasanah S.H.', 'Dk. Otista No. 388, Pekalongan 96859, Sulbar', '1990-11-24 01:47:45', '2021-04-05 08:30:40'),
(13, 'Purwadi Leo Simbolon S.Farm', 'Dk. Haji No. 675, Depok 31587, Bali', '1999-03-09 21:16:36', '2021-04-05 08:30:40'),
(14, 'Uchita Rahimah', 'Jln. Bambon No. 239, Solok 49971, Malut', '1985-05-15 15:55:01', '2021-04-05 08:30:40'),
(15, 'Putri Widya Yolanda', 'Jr. Yogyakarta No. 443, Yogyakarta 95096, Jabar', '1977-11-01 19:48:38', '2021-04-05 08:30:40'),
(16, 'Gawati Fathonah Hastuti', 'Gg. Baladewa No. 421, Medan 63098, Babel', '2005-02-21 23:13:12', '2021-04-05 08:30:40'),
(17, 'Prabu Situmorang', 'Dk. Bah Jaya No. 867, Bekasi 61461, Sulsel', '2019-01-30 03:19:36', '2021-04-05 08:30:40'),
(18, 'Kunthara Najmudin', 'Ki. Bank Dagang Negara No. 693, Tomohon 59732, NTB', '1998-06-15 06:44:00', '2021-04-05 08:30:40'),
(19, 'Rika Wijayanti', 'Dk. Kusmanto No. 588, Sungai Penuh 62113, Papua', '1991-01-19 21:46:39', '2021-04-05 08:30:40'),
(20, 'Qori Yulianti', 'Ki. Badak No. 499, Banda Aceh 94596, Kaltim', '1995-01-20 18:14:09', '2021-04-05 08:30:40'),
(21, 'Carla Utami', 'Jln. Moch. Yamin No. 486, Sorong 54598, Kalsel', '1994-03-02 07:26:20', '2021-04-05 08:30:40'),
(22, 'Bakiono Permadi', 'Dk. Camar No. 150, Bengkulu 72968, Kalsel', '1986-10-30 17:56:06', '2021-04-05 08:30:40'),
(23, 'Garan Saadat Tampubolon', 'Psr. Gedebage Selatan No. 200, Administrasi Jakarta Selatan 11072, Jabar', '1999-05-01 05:09:00', '2021-04-05 08:30:40'),
(24, 'Ellis Haryanti', 'Kpg. Ki Hajar Dewantara No. 142, Prabumulih 48911, NTB', '1978-07-25 09:05:24', '2021-04-05 08:30:40'),
(25, 'Cakrabirawa Suryono', 'Jr. Nakula No. 686, Langsa 72804, Lampung', '2013-07-10 09:27:15', '2021-04-05 08:30:40'),
(26, 'Rafi Pradana S.T.', 'Ds. Eka No. 227, Cimahi 33169, Sulut', '1997-08-20 10:57:39', '2021-04-05 08:30:40'),
(27, 'Aisyah Lala Mandasari', 'Jr. Bass No. 202, Solok 57132, Aceh', '1986-02-06 00:26:48', '2021-04-05 08:30:40'),
(28, 'Melinda Safitri', 'Gg. Bayam No. 547, Pontianak 43211, Sulbar', '1982-04-27 09:50:37', '2021-04-05 08:30:40'),
(29, 'Anastasia Aryani', 'Gg. Suryo No. 515, Palopo 39971, Malut', '1985-02-12 05:19:19', '2021-04-05 08:30:40'),
(30, 'Intan Agnes Wulandari', 'Gg. Achmad No. 263, Pangkal Pinang 90496, Kepri', '2012-08-22 10:00:14', '2021-04-05 08:30:40'),
(31, 'Daliono Saefullah', 'Dk. Orang No. 704, Tanjungbalai 38394, DKI', '1980-01-21 11:48:53', '2021-04-05 08:30:40'),
(32, 'Vivi Kuswandari', 'Jr. Dr. Junjunan No. 667, Jambi 51814, Jateng', '1993-06-18 16:33:30', '2021-04-05 08:30:40'),
(33, 'Ilsa Oktaviani', 'Jln. Babadan No. 122, Gunungsitoli 81832, Bengkulu', '2012-08-20 03:16:40', '2021-04-05 08:30:40'),
(34, 'Raden Taufan Maryadi S.I.Kom', 'Jr. Warga No. 210, Binjai 30595, Sultra', '2012-01-09 22:17:36', '2021-04-05 08:30:40'),
(35, 'Caket Haryanto', 'Ki. Tentara Pelajar No. 419, Cirebon 22746, Kaltara', '1989-11-03 10:50:48', '2021-04-05 08:30:40'),
(36, 'Fathonah Nasyidah', 'Ki. Setia Budi No. 800, Palembang 69184, Jateng', '1971-09-18 11:06:49', '2021-04-05 08:30:40'),
(37, 'Laila Vicky Hasanah S.Gz', 'Ds. Sam Ratulangi No. 204, Gorontalo 41499, Jabar', '1995-10-02 14:06:06', '2021-04-05 08:30:40'),
(38, 'Gatot Hakim', 'Kpg. Yohanes No. 46, Blitar 36431, Papua', '1972-08-05 05:19:46', '2021-04-05 08:30:40'),
(39, 'Lidya Cindy Rahayu M.TI.', 'Ds. Baha No. 303, Jambi 52975, Jateng', '2008-05-20 00:32:49', '2021-04-05 08:30:40'),
(40, 'Kardi Megantara', 'Ds. Surapati No. 495, Pekanbaru 42713, Banten', '2009-10-02 07:13:49', '2021-04-05 08:30:40'),
(41, 'Kayun Elon Wasita', 'Kpg. Madiun No. 581, Pariaman 77562, Sumbar', '1973-07-16 05:34:16', '2021-04-05 08:30:40'),
(42, 'Patricia Utami M.Ak', 'Dk. Ters. Pasir Koja No. 516, Administrasi Jakarta Selatan 69436, Malut', '2004-04-06 06:00:00', '2021-04-05 08:30:40'),
(43, 'Nova Sabrina Farida', 'Ki. Camar No. 841, Denpasar 33967, Kaltim', '1986-09-15 19:17:14', '2021-04-05 08:30:40'),
(44, 'Irma Uyainah', 'Psr. Juanda No. 862, Administrasi Jakarta Utara 98718, Maluku', '2005-08-03 13:13:57', '2021-04-05 08:30:40'),
(45, 'Bagus Prasetyo S.E.', 'Gg. Laswi No. 704, Parepare 15147, Sulsel', '2013-01-01 19:12:19', '2021-04-05 08:30:40'),
(46, 'Karimah Astuti', 'Psr. Bazuka Raya No. 180, Pematangsiantar 95342, Kaltara', '2020-03-25 05:26:52', '2021-04-05 08:30:40'),
(47, 'Lulut Maulana', 'Dk. Jend. A. Yani No. 28, Bandung 17027, Sulbar', '1993-11-25 07:15:06', '2021-04-05 08:30:40'),
(48, 'Cakrawala Kayun Wasita', 'Ki. Bakin No. 912, Manado 90261, Sumbar', '1978-02-01 09:10:47', '2021-04-05 08:30:40'),
(49, 'Clara Tari Wulandari', 'Ds. Salak No. 223, Surabaya 17858, Babel', '1977-11-16 03:31:47', '2021-04-05 08:30:40'),
(50, 'Maya Winarsih', 'Dk. Surapati No. 318, Cilegon 85494, Sulut', '2001-10-02 15:44:25', '2021-04-05 08:30:40'),
(51, 'Icha Fujiati', 'Kpg. Abang No. 679, Jambi 72796, Sulteng', '2008-03-20 01:56:47', '2021-04-05 08:30:40'),
(52, 'Kalim Mujur Widodo', 'Jr. Ters. Jakarta No. 486, Padang 95314, Jabar', '1985-05-29 11:29:47', '2021-04-05 08:30:40'),
(53, 'Tami Purwanti M.TI.', 'Gg. Ronggowarsito No. 866, Ternate 46675, Jambi', '1996-12-18 08:37:44', '2021-04-05 08:30:40'),
(54, 'Gasti Zulaika M.TI.', 'Dk. Basuki Rahmat  No. 284, Dumai 54420, Jabar', '2013-08-23 02:30:07', '2021-04-05 08:30:40'),
(55, 'Tania Zulaika', 'Dk. Kyai Mojo No. 17, Cimahi 26203, Lampung', '1989-02-16 09:31:02', '2021-04-05 08:30:40'),
(56, 'Daniswara Winarno', 'Psr. Daan No. 573, Sorong 84382, Jambi', '2014-12-01 16:39:53', '2021-04-05 08:30:40'),
(57, 'Hani Karimah Mulyani S.I.Kom', 'Dk. Cemara No. 505, Makassar 24392, DIY', '2015-01-08 21:18:45', '2021-04-05 08:30:40'),
(58, 'Kunthara Pradana', 'Psr. Ters. Buah Batu No. 59, Sukabumi 31420, NTB', '2017-09-14 20:01:52', '2021-04-05 08:30:40'),
(59, 'Yani Shania Rahimah M.Pd', 'Kpg. Diponegoro No. 921, Banjar 28729, Kepri', '2008-04-08 11:21:18', '2021-04-05 08:30:40'),
(60, 'Zizi Wulandari', 'Jr. Rajiman No. 607, Banjarbaru 24158, Sumut', '1999-09-13 03:12:04', '2021-04-05 08:30:40'),
(61, 'Kusuma Hardiansyah', 'Psr. Jaksa No. 818, Ternate 35396, Kaltim', '2015-02-03 18:45:37', '2021-04-05 08:30:40'),
(62, 'Ajiman Marbun', 'Ki. Baabur Royan No. 418, Sabang 21251, Lampung', '1994-12-31 08:30:10', '2021-04-05 08:30:40'),
(63, 'Bagiya Maheswara', 'Psr. Raden No. 314, Tarakan 52674, Bali', '1995-01-26 22:44:02', '2021-04-05 08:30:40'),
(64, 'Raditya Tarihoran', 'Ki. Veteran No. 901, Tebing Tinggi 92553, Kaltim', '1989-06-04 06:35:58', '2021-04-05 08:30:40'),
(65, 'Salwa Aryani S.Gz', 'Psr. Halim No. 327, Balikpapan 31093, Bali', '1978-11-03 21:24:01', '2021-04-05 08:30:40'),
(66, 'Kasiran Saputra', 'Kpg. R.M. Said No. 542, Padangsidempuan 12324, Bengkulu', '1991-04-19 20:07:06', '2021-04-05 08:30:40'),
(67, 'Puput Suartini', 'Gg. Sugiyopranoto No. 477, Magelang 68897, Kepri', '2007-10-23 19:32:14', '2021-04-05 08:30:40'),
(68, 'Umaya Siregar', 'Ds. Bagonwoto  No. 406, Malang 18427, Sultra', '1984-08-17 00:00:47', '2021-04-05 08:30:40'),
(69, 'Lamar Hairyanto Mustofa M.Ak', 'Ds. Jend. A. Yani No. 712, Pagar Alam 96081, Kaltim', '1990-06-09 19:07:01', '2021-04-05 08:30:40'),
(70, 'Michelle Wastuti', 'Ki. Aceh No. 189, Solok 17196, DKI', '1990-03-27 22:44:31', '2021-04-05 08:30:40'),
(71, 'Candrakanta Hardiansyah S.Farm', 'Dk. Kalimalang No. 280, Kotamobagu 43440, Sulut', '2018-12-03 00:04:51', '2021-04-05 08:30:40'),
(72, 'Prasetyo Jefri Tampubolon', 'Jln. Otista No. 794, Surabaya 35698, Pabar', '2003-07-11 06:33:05', '2021-04-05 08:30:40'),
(73, 'Ismail Kuswoyo', 'Jr. Cokroaminoto No. 399, Malang 67489, Kalteng', '1998-12-22 23:33:16', '2021-04-05 08:30:40'),
(74, 'Raharja Waskita', 'Gg. Setia Budi No. 95, Kendari 14496, Sulteng', '1981-02-24 22:16:38', '2021-04-05 08:30:40'),
(75, 'Samsul Zulkarnain S.E.I', 'Gg. Kebonjati No. 276, Surabaya 75154, DKI', '2004-10-09 23:35:58', '2021-04-05 08:30:40'),
(76, 'Daruna Bagiya Marpaung M.Pd', 'Psr. Baiduri No. 219, Kotamobagu 90355, Babel', '2004-06-05 01:58:52', '2021-04-05 08:30:40'),
(77, 'Cahyono Hutagalung', 'Ds. Sampangan No. 587, Sungai Penuh 94804, Riau', '1972-03-05 02:01:54', '2021-04-05 08:30:40'),
(78, 'Karman Kenari Sirait M.Kom.', 'Ki. Umalas No. 573, Gunungsitoli 80419, Bali', '2005-02-16 16:44:59', '2021-04-05 08:30:40'),
(79, 'Limar Mandala S.H.', 'Jr. Surapati No. 698, Prabumulih 17279, Kaltara', '1990-02-04 05:37:12', '2021-04-05 08:30:40'),
(80, 'Hamima Nasyiah', 'Jln. R.E. Martadinata No. 596, Bitung 85809, NTB', '1996-06-21 05:49:41', '2021-04-05 08:30:40'),
(81, 'Lutfan Prasasta S.I.Kom', 'Gg. Abdullah No. 512, Sibolga 82305, Sulut', '1981-03-20 06:52:27', '2021-04-05 08:30:40'),
(82, 'Puji Pudjiastuti S.Ked', 'Ki. Achmad Yani No. 798, Tangerang 61716, Aceh', '1991-04-02 23:43:15', '2021-04-05 08:30:40'),
(83, 'Kanda Prasetya', 'Kpg. Yoga No. 516, Sorong 69084, DIY', '1989-11-24 02:43:32', '2021-04-05 08:30:40'),
(84, 'Galiono Suryono', 'Dk. Ters. Jakarta No. 893, Sorong 95251, DIY', '1995-09-20 10:23:30', '2021-04-05 08:30:40'),
(85, 'Hesti Wahyuni', 'Gg. Pasteur No. 780, Sibolga 67518, Kalbar', '1988-03-16 21:28:46', '2021-04-05 08:30:40'),
(86, 'Elisa Nadine Laksita M.Kom.', 'Ds. Nakula No. 764, Mojokerto 65601, Babel', '2013-12-05 14:34:31', '2021-04-05 08:30:40'),
(87, 'Mulya Rafid Halim', 'Dk. Moch. Yamin No. 199, Pagar Alam 71150, Jambi', '2019-03-22 06:37:03', '2021-04-05 08:30:40'),
(88, 'Drajat Wijaya', 'Ds. Bakau No. 737, Administrasi Jakarta Timur 28786, Sulut', '1974-11-02 17:57:50', '2021-04-05 08:30:40'),
(89, 'Shania Nuraini', 'Ki. Sutarjo No. 849, Palangka Raya 29253, Kalbar', '1996-07-13 00:19:16', '2021-04-05 08:30:40'),
(90, 'Ghaliyati Nilam Wahyuni S.Gz', 'Jr. Jamika No. 497, Banjarbaru 47753, Kalteng', '2018-10-05 21:18:14', '2021-04-05 08:30:40'),
(91, 'Galih Ade Samosir', 'Psr. Basudewo No. 375, Surakarta 91566, Sultra', '2019-03-04 04:32:30', '2021-04-05 08:30:40'),
(92, 'Vanesa Ratna Maryati S.T.', 'Gg. Basmol Raya No. 294, Depok 20825, Kaltim', '1983-04-04 14:19:10', '2021-04-05 08:30:40'),
(93, 'Tiara Diana Yolanda S.Pt', 'Psr. Zamrud No. 559, Binjai 10015, Jatim', '1975-05-01 09:18:52', '2021-04-05 08:30:40'),
(94, 'Rafid Kemal Saragih', 'Ds. Gatot Subroto No. 917, Pematangsiantar 89415, Sumut', '2001-11-20 21:47:36', '2021-04-05 08:30:40'),
(95, 'Oni Keisha Safitri', 'Jln. Hang No. 572, Banda Aceh 99711, Jateng', '1983-05-16 16:23:49', '2021-04-05 08:30:40'),
(96, 'Karimah Agustina', 'Gg. Veteran No. 377, Madiun 96092, NTT', '1974-06-30 02:17:42', '2021-04-05 08:30:40'),
(97, 'Kawaca Prakasa S.Pt', 'Dk. Wora Wari No. 581, Administrasi Jakarta Selatan 84890, Sulteng', '1978-01-21 18:58:23', '2021-04-05 08:30:40'),
(98, 'Unggul Firgantoro S.Pd', 'Jln. Baan No. 837, Bontang 33535, Sulsel', '1992-01-15 16:09:09', '2021-04-05 08:30:40'),
(99, 'Usyi Anastasia Nasyiah', 'Ds. Antapani Lama No. 310, Langsa 64130, Papua', '2019-06-13 19:15:15', '2021-04-05 08:30:40'),
(100, 'Elvina Zulfa Purnawati S.Pt', 'Dk. Pasirkoja No. 987, Magelang 37968, Kalteng', '1988-11-12 07:01:17', '2021-04-05 08:30:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

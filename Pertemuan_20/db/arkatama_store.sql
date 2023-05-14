-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 10:32 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arkatama_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `banner` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`ID`, `name`, `url`, `banner`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'bemskuy 10', 'bemskuy.com', 'cokelat', 1, '2023-01-02 01:23:43', '2023-01-02 02:12:14'),
(2, 'bemskuy 9', 'bemskuy9.com', 'hijau army', 2, '2023-01-03 03:13:23', '2023-01-03 04:42:56'),
(3, 'bemskuy 8', 'bemskuy8.com', 'biru muda', 3, '2023-01-04 04:00:00', '2023-01-04 04:30:00'),
(4, 'bemskuy 7', 'bemskuy7.com', 'merah', 4, '2023-02-01 04:20:10', '2023-02-01 04:40:20'),
(5, 'bemskuy 6', 'bemskuy6.com', 'putih', 5, '2023-02-02 06:34:14', '2023-02-02 06:50:34'),
(6, 'bemskuy 5', 'bemskuy5.com', 'hitam', 6, '2023-02-03 07:45:15', '2023-02-03 08:00:31'),
(7, 'bemskuy 4', 'bemskuy4.com', 'abu abu', 7, '2023-03-01 10:00:01', '2023-03-01 10:00:26'),
(8, 'bemskuy 3', 'bemskuy3.com', 'ungu', 8, '2023-03-02 10:45:45', '2023-03-02 10:50:30'),
(9, 'bemskuy 2', 'bemskuy2.com', 'kuning', 9, '2023-03-03 11:21:56', '2023-03-03 12:48:00'),
(10, 'bemskuy 1', 'bemskuy1.com', 'pink', 10, '2023-04-01 01:29:21', '2023-04-01 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ramadhani Dwi Putra', '2023-02-01 09:00:00', '2023-02-01 09:30:00'),
(2, 'Muhammad Rifky', '2023-02-02 10:00:00', '2023-02-02 10:30:00'),
(3, 'Helmi Hetra', '2023-02-03 11:00:00', '2023-02-03 11:30:00'),
(4, 'Naufal Alif Hebsi', '2023-03-04 12:00:00', '2023-03-04 12:30:00'),
(5, 'Septiani Djohan', '2023-03-05 07:00:00', '2023-03-05 07:30:00'),
(6, 'Teguh Yulli Yanto', '2023-03-06 01:00:00', '2023-03-06 01:10:00'),
(7, 'Aldo Friskano Putra', '2023-04-07 02:00:00', '2023-04-07 02:20:00'),
(8, 'Muhammad Ridwan', '2023-04-08 03:00:00', '2023-04-08 03:20:00'),
(9, 'Gilang Aradha', '2023-04-09 04:00:00', '2023-04-09 04:40:00'),
(10, 'Achmad Satria', '2023-05-07 05:00:00', '2023-05-07 06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` enum('accepted','rejected','waiting') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `verified_at` datetime DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `category_id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`, `created_by`, `verified_at`, `verified_by`) VALUES
(21, 201, 'wedges', 'mahal', '150000.00', 'waiting', '2023-06-01 01:00:00', '2023-06-02 01:30:00', 110, '2023-06-02 01:45:00', 1110),
(22, 202, 'peep toe heels', 'murah', '200000.00', 'rejected', '2023-06-03 02:00:00', '2023-06-03 02:35:00', 109, '2023-06-04 03:00:00', 1111),
(23, 203, 'flat shoes', 'mahal', '250000.00', 'accepted', '2023-06-04 02:30:00', '2023-06-04 03:00:00', 108, '2023-06-05 04:00:00', 1123),
(24, 204, 'loafers', 'murah', '300000.00', 'waiting', '2023-07-08 05:00:00', '2023-07-10 05:40:00', 107, '2023-08-08 06:00:00', 1165),
(25, 205, 'boots', 'rata rata', '350000.00', 'rejected', '2023-08-09 07:12:43', '2023-08-09 10:30:32', 106, '2023-09-11 11:00:56', 1245),
(26, 206, 'stiletto', 'mahal', '400000.00', 'accepted', '2023-10-02 07:49:59', '2023-10-03 10:26:51', 105, '2023-11-05 12:42:12', 1543),
(27, 207, 'marry janes', 'murah', '450000.00', 'waiting', '2023-11-08 03:25:49', '2023-11-09 03:26:43', 104, '2023-12-01 11:54:31', 4543),
(28, 208, 'derby shoes', 'mahal', '500000.00', 'rejected', '2023-12-12 01:00:00', '2023-12-12 03:00:00', 104, '2023-12-12 05:00:00', 3432),
(289, 209, 'oxford shoes', 'murah', '550000.00', 'accepted', '2023-01-01 12:00:00', '2023-12-12 13:00:00', 102, '2023-12-12 15:00:00', 7876),
(30, 230, 'boat shoes', 'rata rata', '600000.00', 'waiting', '2023-02-02 06:00:00', '2023-02-02 07:00:00', 101, '2023-02-02 09:00:00', 5633);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` enum('admin','staff') NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `phone` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `email`, `name`, `role`, `avatar`, `phone`, `address`, `password`, `created_at`, `updated_at`) VALUES
(1, 'rama@gmail.com', 'Ramadhani Dwi Putra', 'admin', 'naruto', '085946069154', 'depok', 'rama90', '2021-01-01 01:00:00', '2022-02-02 02:00:00'),
(2, 'nopal@gmail.com', 'naufal alif', 'staff', 'sasuke', '081216140020', 'bogor', 'nopal80', '2021-02-02 03:00:00', '2022-03-03 04:00:00'),
(3, 'helmi@gmail.com', 'helmi hetra', 'staff', 'kakasih', '081229114197', 'sukabumi', 'helmi70', '2021-03-03 05:00:00', '2022-04-04 06:00:00'),
(4, 'rifky@gmail.com', 'muhammad rifky', 'staff', 'deidara', '081585718506', 'tajur', 'rifky60', '2021-06-06 07:00:00', '2022-07-07 08:00:00'),
(5, 'rizal@gmail.com', 'rizal keren', 'staff', 'gaara', '085934571280', 'jakarta', 'rizal50', '2021-08-08 09:00:00', '2022-09-09 10:00:00'),
(6, 'bagas@gmail.com', 'bagas ridho', 'admin', 'shikamaru', '081245617980', 'tangerang', 'bagas40', '2021-10-10 11:00:00', '2022-11-11 12:00:00'),
(7, 'dhani@gmail.com', 'dhani ganteng', 'staff', 'neji', '081467228754', 'karawang', 'dhani30', '2021-12-12 13:00:00', '2022-03-03 14:00:00'),
(8, 'azmi@gmail.com', 'azmi zamzami', 'staff', 'soutsusuki', '083512345173', 'pare pare', 'azmi20', '2022-04-05 11:22:33', '2022-05-08 12:42:42'),
(9, 'gilang@gmail.com', 'gilang aradha', 'admin', 'chouji', '087016357945', 'papua', 'gilang00', '2022-11-06 03:22:33', '2022-05-10 07:08:09'),
(10, 'akmal@gmail.com', 'akmal saber', 'staff', 'orochimaru', '089612583959', 'ambon', 'akmal10', '2022-08-07 08:04:36', '2022-05-10 09:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

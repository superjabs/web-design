-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 10:00 AM
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
-- Database: `portofolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id` int(11) DEFAULT NULL,
  `nama` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL,
  `jenjang` varchar(100) NOT NULL,
  `tahun` text NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `jenjang`, `tahun`, `jurusan`) VALUES
(1, 'MTS Sunan Pandanaran Yogyakarta', '2014 - 2016', 'Tahfidz'),
(2, 'SMA Negeri 2 Wonosobo', '2017 - 2020', 'Ilmu Pengetahuan Sosial'),
(3, 'Universitas Sains Al Qur\'an', '2021 - 2025', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `nama` varchar(100) NOT NULL,
  `tentang` text NOT NULL,
  `skill` varchar(100) NOT NULL,
  `bahasa` varchar(100) NOT NULL,
  `hobi` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`nama`, `tentang`, `skill`, `bahasa`, `hobi`, `id`) VALUES
('Gus Jabung Al Fiansyah', '<p>\r\nHalo👋, saya <strong>Gus Jabung Al Fiansyah</strong> tapi kebanyakan orang memanggil saya alfian, saya pria yang suka coding, musik, dan kopi. Selamat datang di situs web pribadi saya,\r\n</p>\r\n\r\n<p>\r\nSaya seorang mahasiswa S1 di Universitas Sains Al Quran, Wonosobo mengambil jurusan Teknik Informatika dan lulus Mei 2024.\r\n</p>\r\n\r\n<p>\r\nSaya sangat menyukai Pengembangan Frontend dan senang bekerja di Web. Saya suka menggabungkan pengetahuan teknis dan kreativitas saya untuk membangun situs web dan aplikasi yang menarik dan mudah digunakan. Sebagai pribadi, saya terus berusaha untuk memperbaiki diri dan menjadi orang yang lebih baik.\r\n</p>', 'HTML, CSS, JS, PHP, MYSQL', 'Indonesia, Jawa, Inggris', 'Membaca, Menonton Film, Bersepeda, Olahraga', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

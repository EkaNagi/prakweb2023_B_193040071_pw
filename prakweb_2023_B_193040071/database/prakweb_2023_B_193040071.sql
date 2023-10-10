-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 04:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prakweb_2023_B_193040071`
--

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id_laptop` int(3) NOT NULL,
  `nama_laptop` varchar(50) NOT NULL,
  `foto_laptop` varchar(20) DEFAULT NULL,
  `harga_laptop` int(10) NOT NULL,
  `stock_laptop` int(5) NOT NULL,
  `monitor` varchar(250) NOT NULL,
  `processor` varchar(250) NOT NULL,
  `graphic_card` varchar(250) NOT NULL,
  `ram` varchar(250) NOT NULL,
  `storage` varchar(250) NOT NULL,
  `konektivitas` varchar(250) NOT NULL,
  `port` varchar(250) NOT NULL,
  `baterai` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id_laptop`, `nama_laptop`, `foto_laptop`, `harga_laptop`, `stock_laptop`, `monitor`, `processor`, `graphic_card`, `ram`, `storage`, `konektivitas`, `port`, `baterai`) VALUES
(1, 'SERI CERITA BALITA: AKU BISA SEDEKAH UNTUK HEWAN', 'laptop1.webp', 69000, 100, 'Duplex', '20', 'Fiksi', 'Anak-anak', 'Kecil', 'Intari Dyah Pramudita', 'DAR! Mizan', '2021'),
(2, 'Fate/Strange Fake 2', 'laptop2.webp', 98000, 50, 'Art Karton', '288', 'Fiksi', 'Komik', 'Besar', 'Ryohgo Narita', 'm&c!', '2021'),
(3, 'Harry Potter #5: Harry Potter dan Orde Phoenix', 'laptop3.webp', 369000, 60, 'HVS', '1280', 'Fiksi', 'Novel', 'Besar', 'J. K. Rowling', 'Gramedia Pustaka Utama', '2017'),
(4, 'Mega Bank UTBK SBMPTN SAINTEK 2020 Edisi Superlengkap', 'laptop4.webp', 25000, 25, 'Koran A4', '400', 'Edukasi', 'Pelajaran', 'Besar', 'The King Eduka', 'C-Media', '2019'),
(5, 'Frieren : After The End', 'laptop5.webp', 45000, 19, 'Art Karton', '208', 'Fiksi', 'Komik', 'Sedang', 'Kanehito Yamada', 'm&c!', '2023'),
(6, 'The Girl who Fell Beneath the Sea', 'laptop6.webp', 92000, 42, 'HVS', '296', 'Romance', 'Novel', 'Besar', 'Axie Oh', 'Elex Media Komputindo', '2023'),
(7, 'Our Violent End', 'laptop7.webp', 175000, 24, 'HVS', '566', 'Romance', 'Novel', 'Besar', 'Chloe Gong', 'Kepustakaan Populer Gramedia', '2023'),
(8, 'Atomic Habits: Perubahan Kecil yang Memberikan Hasil Luar Biasa', 'laptop8.webp', 128000, 18, 'HVS', '352', 'Edukasi', 'Pelajaran', 'Besar', 'James Clear', 'Gramedia Pustaka Utama', '2023'),
(9, 'Mao Zedong: Sebuah Biografi', 'laptop9.webp', 29500, 9, 'HVS', '132', 'Non-fiksi', 'Biografi', 'Sedang', 'Nurjannah Y.A.', 'Sociality', '2020'),
(10, '10-Button Sound Books, Discovery: Shark', 'laptop10.webp', 155000, 14, 'Kertas Kardus', '10', 'Edukasi', 'Anak-anak', 'Kecil', 'Discovery', 'Sinar Star Book', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'eka', '$2y$10$XrGl.VpoBdAGxcAjRs43Se4Rd/LVTNgt4q1oWcwwCAFa55JU89nlS'),
(3, 'eka2', '$2y$10$SLEdtyAoZ.YjjYLpUhLImukkhzC4GixUS1gs62M5NZjULZgoYkMJG'),
(4, 'hahaha', '$2y$10$iOevgezzIotIxgSNLyPvAOwwHM.7aPW1Yu3gR9woF7xWU5BTP4RXa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id_laptop`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id_laptop` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

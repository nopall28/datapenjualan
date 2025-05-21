-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 07:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(21, 'BR001', 26, 'Primastar', 'Primastar', '40000', '50000', 'PCS', '10', '8 March 2025, 10:31', NULL),
(22, 'BR002', 26, 'Roundup Plus', 'Roundup Plus', '50000', '55000', 'PCS', '10', '8 March 2025, 10:32', '8 March 2025, 10:36'),
(24, 'BR004', 26, 'Sikat', 'Sikat', '65000', '70000', 'PCS', '10', '8 March 2025, 10:36', NULL),
(25, 'BR005', 26, 'Roundup', 'Roundup', '100000', '90000', 'PCS', '10', '8 March 2025, 10:37', NULL),
(26, 'BR006', 26, 'Kleenup', 'Kleenup', '85000', '90000', 'PCS', '10', '8 March 2025, 10:38', NULL),
(27, 'BR007', 26, 'Supremo', 'Supremo', '90000', '100000', 'PCS', '10', '8 March 2025, 10:39', NULL),
(28, 'BR008', 26, 'Rambo', 'Rambo', '95000', '100000', 'PCS', '10', '8 March 2025, 10:40', NULL),
(29, 'BR009', 26, 'Andal', 'Andal', '100000', '110000', 'PCS', '10', '8 March 2025, 10:40', NULL),
(30, 'BR010', 26, 'Bimastar', 'Bimastar', '75000', '80000', 'PCS', '10', '8 March 2025, 10:41', NULL),
(31, 'BR011', 26, 'Tuntas', 'Tuntas', '95000', '100000', 'PCS', '10', '8 March 2025, 10:42', NULL),
(32, 'BR012', 26, 'Geliat', 'Geliat', '80000', '90000', 'PCS', '10', '8 March 2025, 10:43', NULL),
(33, 'BR013', 26, 'Liuxone', 'Liuxone', '55000', '60000', 'PCS', '10', '8 March 2025, 10:43', NULL),
(34, 'BR014', 26, 'Sidatop', 'Sidatop', '45000', '50000', 'PCS', '10', '8 March 2025, 10:45', NULL),
(35, 'BR015', 26, 'Centaris', 'Centaris', '45000', '50000', 'PCS', '10', '8 March 2025, 10:45', NULL),
(36, 'BR016', 26, 'Duet', 'Duet', '45000', '50000', 'PCS', '10', '8 March 2025, 10:46', NULL),
(37, 'BR017', 26, 'Gramaxon', 'Gramaxon', '100000', '110000', 'PCS', '10', '8 March 2025, 11:25', NULL),
(38, 'BR018', 26, 'Noxon', 'Noxon', '95000', '100000', 'PCS', '10', '8 March 2025, 11:26', NULL),
(39, 'BR019', 26, 'Maitop', 'Maitop', '45000', '50000', 'PCS', '10', '8 March 2025, 11:27', NULL),
(40, 'BR020', 26, 'Centaquat', 'Centaquat', '45000', '50000', 'PCS', '10', '8 March 2025, 11:28', NULL),
(41, 'BR021', 26, 'Pataniquat', 'Pataniquat', '35000', '40000', 'PCS', '10', '8 March 2025, 11:30', NULL),
(42, 'BR022', 22, 'Urea Subsidi', 'Urea', '108750', '112500', 'Karung', '198', '9 March 2025, 10:26', '9 March 2025, 11:17'),
(43, 'BR023', 22, 'Phonska Subsidi', 'Phonska ', '111250', '115000', 'Karung', '200', '9 March 2025, 10:38', '9 March 2025, 11:17'),
(44, 'BR024', 22, 'Mutiara Meroeke', 'Mutiara Meroeke', '785000', '800000', 'Karung', '5', '9 March 2025, 11:03', NULL),
(45, 'BR025', 22, 'KCL Sasco', 'KCL Sasco', '350000', '360000', 'Karung', '20', '9 March 2025, 11:13', NULL),
(46, 'BR026', 22, 'TSP', 'TSP', '90000', '100000', 'Karung', '5', '9 March 2025, 11:14', NULL),
(47, 'BR027', 22, 'Phonska Plus Non Subsidi', 'Phonska Plus', '240000', '250000', 'Karung', '5', '9 March 2025, 11:15', NULL),
(48, 'BR028', 22, 'SP 36', 'SP 36', '240000', '250000', 'Karung', '5', '9 March 2025, 11:17', NULL),
(49, 'BR029', 22, 'Fertipos', 'Fertipos', '190000', '200000', 'Karung', '5', '9 March 2025, 11:18', NULL),
(50, 'BR030', 22, 'ZA Daun Sawit', 'ZA Daun Sawit', '250000', '260000', 'Karung', '5', '9 March 2025, 11:19', NULL),
(51, 'BR031', 22, 'Mutiara Gold', 'Mutiara Gold', '285000', '300000', 'Karung', '5', '9 March 2025, 11:19', NULL),
(52, 'BR032', 22, 'Bintang Mutiara', 'Bintang Mutiara', '340000', '350000', 'Karung', '5', '9 March 2025, 11:20', NULL),
(53, 'BR033', 24, 'Cabai Keriting', 'Rajawali', '40000', '45000', 'PCS', '5', '9 March 2025, 11:22', NULL),
(54, 'BR034', 24, 'Cabai Rawit', 'Rajawali', '35000', '40000', 'PCS', '5', '9 March 2025, 11:38', NULL),
(55, 'BR035', 24, 'Bayam', 'Rajawali', '25000', '30000', 'PCS', '5', '9 March 2025, 11:38', NULL),
(56, 'BR036', 25, 'Regent Kecil', 'Regent', '30000', '35000', 'PCS', '10', '9 March 2025, 11:52', NULL),
(57, 'BR037', 25, 'Regent Besar', 'Regent', '60000', '65000', 'PCS', '10', '9 March 2025, 11:53', NULL),
(58, 'BR038', 25, 'Stadium', 'Stadium', '35000', '40000', 'PCS', '10', '9 March 2025, 11:53', NULL),
(59, 'BR039', 25, 'Fastac Kecil', 'Fastac', '20000', '25000', 'PCS', '10', '9 March 2025, 11:55', NULL),
(60, 'BR040', 25, 'Fastac Besar', 'Fastac', '50000', '55000', 'PCS', '10', '9 March 2025, 11:56', NULL),
(63, 'BR041', 28, 'Penyemprot Tanaman', 'Andal', '100000', '120000', 'PCS', '14', '15 May 2025, 9:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_pengeluaran`
--

CREATE TABLE `data_pengeluaran` (
  `id` int(11) NOT NULL,
  `pengeluaran` text NOT NULL,
  `jumlah_pengeluaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_pengeluaran`
--

INSERT INTO `data_pengeluaran` (`id`, `pengeluaran`, `jumlah_pengeluaran`) VALUES
(12, 'Listrik', '250000'),
(13, 'Makan', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(22, 'Pupuk', '5 March 2025, 11:26'),
(24, 'Bibit', '8 March 2025, 10:30'),
(25, 'Insektisida', '8 March 2025, 10:30'),
(26, 'Herbisida', '8 March 2025, 10:30'),
(27, 'Bola', '18 March 2025, 16:21'),
(28, 'Alat Penyemprot', '15 May 2025, 9:54');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`) VALUES
(1, 'UB Herulita', 'Lampung', '089516265933', 'herulita1212@gmail.com', 'Toko.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(30, 'BR022', 1, '2', '225000', '15 May 2025, 10:01', '05-2025'),
(31, 'BR041', 1, '1', '120000', '15 May 2025, 10:04', '05-2025');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'UB Herulita', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pengeluaran`
--
ALTER TABLE `data_pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `data_pengeluaran`
--
ALTER TABLE `data_pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

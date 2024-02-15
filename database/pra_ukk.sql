-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2024 pada 03.39
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pra_ukk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detail`, `id_penjualan`, `id_produk`, `jumlah_produk`, `subtotal`) VALUES
(0, 4, 345, 2, '25000.00'),
(5, 5, 345, 2, '25000.00'),
(9, 9, 1, 1, '4000.00'),
(10, 10, 1, 5, '4000.00'),
(12, 11, 1, 1, '4000.00'),
(12, 12, 6, 3, '20000.00'),
(12, 13, 345, 2, '25000.00'),
(18, 14, 1, 7, '4000.00'),
(20, 17, 5, 10, '10000.00'),
(20, 18, 6, 10, '20000.00'),
(21, 20, 345, 10, '25000.00'),
(22, 21, 1234, 11, '3000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `Nama_pelanggan` varchar(255) NOT NULL,
  `No_Meja` int(11) NOT NULL,
  `No_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `Nama_pelanggan`, `No_Meja`, `No_telepon`) VALUES
(3, 'tes', 1, ''),
(4, 'tes', 1, ''),
(5, 'tes', 1, ''),
(6, 'pebiola', 2, ''),
(7, 'sasa', 3, ''),
(8, 'saskia', 5, ''),
(9, 'saskia', 1, ''),
(10, 'yy', 8, ''),
(11, 'nan', 70, ''),
(12, 'nan', 0, ''),
(13, 'hm', 67, ''),
(15, 'azis', 70, ''),
(16, 'azis', 70, ''),
(17, 'tessss', 11, ''),
(18, 'tessss', 11, ''),
(19, 'tessss', 0, ''),
(20, 'abay', 0, ''),
(21, 'lisya', 0, ''),
(22, 'syaa', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tanggal_penjualan`, `total_harga`, `id_pelanggan`) VALUES
(1, '2024-02-05', '0.00', 0),
(2, '2024-02-05', '0.00', 0),
(3, '2024-02-05', '0.00', 0),
(4, '2024-02-05', '0.00', 0),
(5, '2024-02-05', '0.00', 0),
(6, '2024-02-05', '0.00', 0),
(7, '2024-02-06', '0.00', 0),
(8, '2024-02-12', '0.00', 0),
(9, '2024-02-12', '0.00', 0),
(10, '2024-02-13', '0.00', 0),
(11, '2024-02-13', '0.00', 0),
(12, '2024-02-13', '0.00', 0),
(13, '2024-02-13', '0.00', 0),
(14, '2024-02-13', '0.00', 0),
(15, '2024-02-13', '0.00', 0),
(16, '2024-02-13', '0.00', 0),
(17, '2024-02-13', '0.00', 0),
(18, '2024-02-13', '0.00', 0),
(19, '2024-02-13', '0.00', 0),
(20, '2024-02-13', '0.00', 0),
(21, '2024-02-13', '0.00', 0),
(22, '2024-02-13', '0.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `Terjual` int(11) NOT NULL,
  `Foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`, `Terjual`, `Foto`) VALUES
(1, 'teh solo', '4000.00', 70, 16, 'teh solo.jpg'),
(5, 'mie gacoan', '10000.00', 118, 5, '11022024143746.jpeg'),
(6, 'Seblak Mie', '20000.00', -2, 7, '01022024081512.jpg'),
(345, 'sate', '25000.00', 100, 4, '05022024082937.jpg'),
(1234, 'gulaa', '3000.00', 15, 0, '13022024084055.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `NamaUser` varchar(15) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Level` enum('Admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`UserID`, `NamaUser`, `Password`, `Level`) VALUES
(1, 'alisya', '202cb962ac59075b964b07152d234b70', 'petugas'),
(2, 'sya', '202cb962ac59075b964b07152d234b70', 'Admin'),
(3, 'nanda', '202cb962ac59075b964b07152d234b70', 'Admin'),
(32, 'nemtas', '202cb962ac59075b964b07152d234b70', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_penjualan` (`id_penjualan`,`id_produk`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `detailID` (`id_detail`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

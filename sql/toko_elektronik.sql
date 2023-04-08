-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Mar 2022 pada 14.16
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_elektronik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` varchar(100) NOT NULL,
  `foto_produk` text DEFAULT NULL,
  `deskripsi_produk` varchar(255) NOT NULL,
  `stok_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`) VALUES
(5, 'Printer YCV10', '4599000', 'printer-canon-ts707-bisa-cetak-bolak-balik-otomatis-7GHsJeAzjl-removebg-preview.png', 'Printer pinter anti geter', '97'),
(7, 'Printer YH26', '2430000', 'printer-canon-pixma-4.jpeg', 'Printer Aman', '634'),
(9, 'Printer HP 9.0', '5499000', '4c13e06ffb82d691972dc88b3f1ae99f.jfif', 'Anti Lemot!', '889'),
(11, 'Printer 9PTY', '4000000', 'WhatsApp Image 2022-03-10 at 13.14.03.jpeg', 'Printer Mantep', '899');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `status` enum('proses','dikirim','ditolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `name`, `alamat`, `no_hp`, `nama_produk`, `harga_produk`, `subtotal`, `foto_produk`, `status`) VALUES
(11, 'Kim Da-Mi', 'Jalan Sayur Ijo No. 3', '081560778910', 'Printer YCV10', '4599000', '9198000', 'printer-canon-ts707-bisa-cetak-bolak-balik-otomatis-7GHsJeAzjl-removebg-preview.png', 'ditolak'),
(12, 'Kim Da-Mi', 'Jalan Sayur Ijo No. 3', '081560778910', 'Printer 9PTY', '4000000', '4000000', 'WhatsApp Image 2022-03-10 at 13.14.03.jpeg', 'dikirim'),
(13, 'Umar', 'Jalan Kebon Jeruk 5', '081245779010', 'Printer YH26', '2430000', '12150000', 'printer-canon-pixma-4.jpeg', 'proses'),
(14, 'Umar', 'Jalan Imam Bonjol 10', '085679801022', 'Printer YCV10', '4599000', '4599000', 'printer-canon-ts707-bisa-cetak-bolak-balik-otomatis-7GHsJeAzjl-removebg-preview.png', 'dikirim'),
(15, 'Umar', 'Jalan Kebon Jeruk 5', '081245779010', 'Printer 9PTY', '4000000', '8000000', 'WhatsApp Image 2022-03-10 at 13.14.03.jpeg', 'ditolak'),
(16, 'Bae Joo-Hyun', 'Jalan Batu Jajar No.3', '092819883831', 'Printer YH26', '2430000', '2430000', 'printer-canon-pixma-4.jpeg', 'dikirim'),
(17, 'Jeon Jung-Kook', 'Jalan Sudirman No. IV', '089230198271', 'Printer YH26', '2430000', '4860000', 'printer-canon-pixma-4.jpeg', 'dikirim'),
(18, 'Fahmi Muhammad', 'Jalan Batu Hiu IX', '089514132029', 'Printer YH26', '2430000', '7290000', 'printer-canon-pixma-4.jpeg', 'proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `roles` enum('Admin','Customer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `name`, `password`, `roles`) VALUES
(1, 'mdzkfm', 'Muhammad Zaki Fahmi', '271004', 'Admin'),
(2, 'aisyi', 'Aisyah Aisyi', '909090', 'Customer'),
(3, 'ldh_sky', 'Lee Do-Hyun', 'ldh123', 'Admin'),
(4, 'renebaebae', 'Bae Joo-Hyun', 'rene123', 'Customer'),
(5, 'sooyaa', 'Kim Ji-Soo', 'jisoo123', 'Admin'),
(6, 'da_mi', 'Kim Da-Mi', '890890', 'Customer'),
(7, 'umara', 'Umar', '191919', 'Customer'),
(10, 'jk', 'Jeon Jung-Kook', '202020', 'Customer'),
(11, 'fahmi', 'Fahmi Muhammad', '202020', 'Customer');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

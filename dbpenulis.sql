-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Des 2019 pada 16.15
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpenulis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `idpenulis` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`idpenulis`, `nama`, `alamat`, `hp`) VALUES
(1, 'AFIQ', 'SINANGGUL', '0895603059560'),
(2, 'IRVANDI', 'JEPARA', '085225117742'),
(3, 'AZIZ', 'BANGSRI', '08123463535'),
(4, 'KAMAL', 'BATEALIT', '082455514151'),
(5, 'FAQIH', 'SEMAT', '085225117742'),
(6, 'NAJIB', 'GUYANGAN', '089569367638'),
(7, 'SIHAB', 'BULUNGAN', '081225112254'),
(8, 'EDY', 'WELAHAN', '087454542525'),
(9, 'AMY', 'JEPARA', '08564181333'),
(10, 'ABABIL', 'BULU', '08564181252');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`idpenulis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `idpenulis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

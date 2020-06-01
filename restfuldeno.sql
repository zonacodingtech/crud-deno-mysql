-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jun 2020 pada 06.52
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restfuldeno`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `price`, `description`, `created_at`) VALUES
(1, 'Habis Gelap Terbitlah terang', 50000, 'karya ibu kita kartini', '2020-05-22 19:17:26'),
(2, 'mantabu', 58000, 'racun', '2020-05-22 19:47:36'),
(3, 'mantabus', 58000, 'racun', '2020-05-22 19:48:46'),
(7, 'segmen', 58000, 'mereka', '2020-05-22 20:24:52'),
(8, 'segmen', 58000, 'dicobadah', '2020-05-22 20:24:58'),
(9, 'segmen', 58000, 'ramadhan ya karim', '2020-05-22 20:25:06'),
(10, 'segmesn', 58000, 'ramadhan ya karim', '2020-05-23 05:51:36'),
(11, 'PLKJ', 58000, 'ramadhan ya karim', '2020-05-23 05:53:17'),
(12, 'Sebuah Sikap Bodo Amat', 58000, 'Punten Slur', '2020-05-23 13:02:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

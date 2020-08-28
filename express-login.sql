-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 28 Agu 2020 pada 11.06
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express-login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('a-BSjXlVWrAPFNRS3034PfZm1Yx4Jk2O', 1598609326, '{\"cookie\":{\"originalMaxAge\":18000000,\"expires\":\"2020-08-28T10:08:45.654Z\",\"httpOnly\":true,\"path\":\"/\"},\"login\":true,\"data\":[{\"id\":8,\"nama\":\"123\",\"username\":\"123\",\"email\":\"123@gmail.com\",\"password\":\"$2b$10$P.tHUIAEvzVmMYZ7oy7LgeTbqGq8QnGnJtVSfe0N.G6TjccZuforu\"}]}'),
('g_wr2SZ0EDmuk3H-v0DbnIQoGEO1B1vA', 1598613375, '{\"cookie\":{\"originalMaxAge\":18000000,\"expires\":\"2020-08-28T11:16:14.558Z\",\"httpOnly\":true,\"path\":\"/\"},\"login\":true,\"data\":[{\"id\":8,\"nama\":\"123\",\"username\":\"123\",\"email\":\"123@gmail.com\",\"password\":\"$2b$10$P.tHUIAEvzVmMYZ7oy7LgeTbqGq8QnGnJtVSfe0N.G6TjccZuforu\"}]}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `password`) VALUES
(1, 'xarybisuse', 'jolyfel@gmail.com', 'suwyh', '$2b$10$Am4g2M4ULlgwzOudT/aIXe1R2j.MJAL.5g2ISX7OOd.gyyBJGrTKO'),
(2, 'vubijubi', 'jyqyteqan', 'ciqicuti@gmail.com', '$2b$10$kZKVPCXwtTgItnR7kgmOq.ZimJkKXU.MAOO0NYLe9UHEmc3WGaFV.'),
(3, 'Harum reprehenderit', 'guvacevupo', 'cybyregyja@mailinator.com', '$2b$10$Vdy9XH25hwMFhE09.EvXPu1GbID24FjXBrIXlFmr7mETjCWlwdnK6'),
(4, 'Minus illum officii', 'dyzehuv', 'ripuqyki@mailinator.com', '$2b$10$O8IkM5nznJRoaIZic77DkO/zlY2oPfS2x34Oq3KIYx4T.f3JiExvC'),
(5, 'muhammad al farizzi', 'AlFarizzi', 'malfarizzi13@gmail.com', '$2b$10$xbd4Z5.rLueohwEBWdqKxOcMGpkhpE.k9gO4hkfKTrkNr1wfsjNBK'),
(6, 'asdasdasd', 'asdadsas', 'asdasdasdasd@gmail.com', '$2b$10$ICAvcEyuKI7O3TTwNzCKIOfhYFDIoH1O5HrAGsuKy.sLPgztQ4aJ.'),
(7, 'asdasdasd', 'asdadsas', 'asdasdasdasd@gmail.com', '$2b$10$/D5VO7iyKalzB8Oi2mfuC.6539HFtp3yF0aUGRgFd9MliYzjJAePq'),
(8, '123', '123', '123@gmail.com', '$2b$10$P.tHUIAEvzVmMYZ7oy7LgeTbqGq8QnGnJtVSfe0N.G6TjccZuforu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Sep 2020 pada 15.18
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_labapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bisa_lihat`
--

CREATE TABLE `bisa_lihat` (
  `KODEKATEGORIUSER` int(11) NOT NULL,
  `KODEKATEGORI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bmn`
--

CREATE TABLE `bmn` (
  `KODEBMN` varchar(191) NOT NULL,
  `KODEKATEGORI` int(11) DEFAULT NULL,
  `KODESUBKATEGORI` varchar(191) DEFAULT NULL,
  `KODESATUAN` int(11) DEFAULT NULL,
  `NAMABMN` varchar(191) DEFAULT NULL,
  `MERKBMN` varchar(191) DEFAULT NULL,
  `JUMLAH` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `copybmn`
--

CREATE TABLE `copybmn` (
  `KODEBMN` varchar(191) NOT NULL,
  `KODECOPYBMN` int(11) NOT NULL,
  `KODEDBR` int(11) DEFAULT NULL,
  `KODERUANG` int(11) DEFAULT NULL,
  `KODEUNIT` int(11) DEFAULT NULL,
  `KODEKONDISI` int(11) DEFAULT NULL,
  `KODEDBL` int(11) DEFAULT NULL,
  `TGLPEROLEHANBMN` decimal(8,0) DEFAULT NULL,
  `KETBMN` text DEFAULT NULL,
  `TAHUNPENGADAAN` date DEFAULT NULL,
  `NAMAPENGADAAN` varchar(191) DEFAULT NULL,
  `TGLPEMBUKUAN` int(11) DEFAULT NULL,
  `HARGA` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dbl`
--

CREATE TABLE `dbl` (
  `KODEDBL` int(11) NOT NULL,
  `NAMADBL` varchar(191) DEFAULT NULL,
  `KETDBL` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dbr`
--

CREATE TABLE `dbr` (
  `KODEDBR` int(11) NOT NULL,
  `NAMADBR` varchar(191) DEFAULT NULL,
  `KETDBR` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `KODEBMN` varchar(191) NOT NULL,
  `KODEGAMBARBMN` int(11) NOT NULL,
  `JUDULGAMBARBMN` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='BMN';

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `KODEKATEGORI` int(11) NOT NULL,
  `NAMAKATEGORI` varchar(191) DEFAULT NULL,
  `KETKATEGORI` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoriuser`
--

CREATE TABLE `kategoriuser` (
  `KODEKATEGORIUSER` int(11) NOT NULL,
  `NAMAKATEGORIUSER` varchar(30) DEFAULT NULL,
  `KETKATEGORIUSER` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `KODEKONDISI` int(11) NOT NULL,
  `NAMAKONDISI` varchar(191) DEFAULT NULL,
  `KETKONDISI` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'mahasiswa1@mail.com', 'mahasiswa1'),
(2, 'mahasiswa2@mail.com', 'mahasiswa2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `KODEUSER` int(11) NOT NULL,
  `KODEKATEGORIUSER` int(11) NOT NULL,
  `NOIDENTITAS` varchar(30) DEFAULT NULL,
  `NAMAUSER` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `KODERUANG` int(11) NOT NULL,
  `NAMARUANG` varchar(255) DEFAULT NULL,
  `KETRUANG` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `KODESATUAN` int(11) NOT NULL,
  `NAMASATUAN` varchar(191) DEFAULT NULL,
  `KETSATUAN` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `specbmn`
--

CREATE TABLE `specbmn` (
  `KODEBMN` varchar(191) NOT NULL,
  `KODESPEC` int(11) NOT NULL,
  `NAMASPEC` varchar(191) DEFAULT NULL,
  `KETSPEC` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kategori`
--

CREATE TABLE `sub_kategori` (
  `KODEKATEGORI` int(11) NOT NULL,
  `KODESUBKATEGORI` char(191) NOT NULL,
  `NAMASUBKATEGORI` varchar(191) DEFAULT NULL,
  `KETSUBKATEGORI` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unitpoliwangi`
--

CREATE TABLE `unitpoliwangi` (
  `KODEUNIT` int(11) NOT NULL,
  `NAMAUNIT` varchar(191) DEFAULT NULL,
  `KETUNIT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `KODEUSER` int(11) NOT NULL,
  `KODEKATEGORIUSER` int(11) NOT NULL,
  `NOIDENTITAS` varchar(30) DEFAULT NULL,
  `NAMAUSER` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bisa_lihat`
--
ALTER TABLE `bisa_lihat`
  ADD PRIMARY KEY (`KODEKATEGORIUSER`,`KODEKATEGORI`),
  ADD KEY `FK_BISA_LIHAT2` (`KODEKATEGORI`);

--
-- Indeks untuk tabel `bmn`
--
ALTER TABLE `bmn`
  ADD PRIMARY KEY (`KODEBMN`),
  ADD KEY `FK_SATUAN` (`KODESATUAN`),
  ADD KEY `FK_SUBKATEGORI` (`KODEKATEGORI`,`KODESUBKATEGORI`);

--
-- Indeks untuk tabel `copybmn`
--
ALTER TABLE `copybmn`
  ADD PRIMARY KEY (`KODEBMN`,`KODECOPYBMN`),
  ADD KEY `FK_DIPEGANG_OLEH` (`KODEDBL`),
  ADD KEY `FK_KONDISI` (`KODEKONDISI`),
  ADD KEY `FK_MENEMPATI` (`KODERUANG`),
  ADD KEY `FK_PRODI` (`KODEDBR`),
  ADD KEY `FK_UNIT_PENAGGUNG_JAWAB` (`KODEUNIT`);

--
-- Indeks untuk tabel `dbl`
--
ALTER TABLE `dbl`
  ADD PRIMARY KEY (`KODEDBL`);

--
-- Indeks untuk tabel `dbr`
--
ALTER TABLE `dbr`
  ADD PRIMARY KEY (`KODEDBR`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`KODEBMN`,`KODEGAMBARBMN`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`KODEKATEGORI`);

--
-- Indeks untuk tabel `kategoriuser`
--
ALTER TABLE `kategoriuser`
  ADD PRIMARY KEY (`KODEKATEGORIUSER`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`KODEKONDISI`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`KODEUSER`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`KODERUANG`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`KODESATUAN`);

--
-- Indeks untuk tabel `specbmn`
--
ALTER TABLE `specbmn`
  ADD PRIMARY KEY (`KODEBMN`,`KODESPEC`);

--
-- Indeks untuk tabel `sub_kategori`
--
ALTER TABLE `sub_kategori`
  ADD PRIMARY KEY (`KODEKATEGORI`,`KODESUBKATEGORI`);

--
-- Indeks untuk tabel `unitpoliwangi`
--
ALTER TABLE `unitpoliwangi`
  ADD PRIMARY KEY (`KODEUNIT`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`KODEUSER`),
  ADD KEY `FK_GROUPUSER` (`KODEKATEGORIUSER`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bisa_lihat`
--
ALTER TABLE `bisa_lihat`
  ADD CONSTRAINT `FK_BISA_LIHAT` FOREIGN KEY (`KODEKATEGORIUSER`) REFERENCES `kategoriuser` (`KODEKATEGORIUSER`),
  ADD CONSTRAINT `FK_BISA_LIHAT2` FOREIGN KEY (`KODEKATEGORI`) REFERENCES `kategori` (`KODEKATEGORI`);

--
-- Ketidakleluasaan untuk tabel `bmn`
--
ALTER TABLE `bmn`
  ADD CONSTRAINT `FK_SATUAN` FOREIGN KEY (`KODESATUAN`) REFERENCES `satuan` (`KODESATUAN`),
  ADD CONSTRAINT `FK_SUBKATEGORI` FOREIGN KEY (`KODEKATEGORI`,`KODESUBKATEGORI`) REFERENCES `sub_kategori` (`KODEKATEGORI`, `KODESUBKATEGORI`);

--
-- Ketidakleluasaan untuk tabel `copybmn`
--
ALTER TABLE `copybmn`
  ADD CONSTRAINT `FK_COPY` FOREIGN KEY (`KODEBMN`) REFERENCES `bmn` (`KODEBMN`),
  ADD CONSTRAINT `FK_DIPEGANG_OLEH` FOREIGN KEY (`KODEDBL`) REFERENCES `dbl` (`KODEDBL`),
  ADD CONSTRAINT `FK_KONDISI` FOREIGN KEY (`KODEKONDISI`) REFERENCES `kondisi` (`KODEKONDISI`),
  ADD CONSTRAINT `FK_MENEMPATI` FOREIGN KEY (`KODERUANG`) REFERENCES `ruang` (`KODERUANG`),
  ADD CONSTRAINT `FK_PRODI` FOREIGN KEY (`KODEDBR`) REFERENCES `dbr` (`KODEDBR`),
  ADD CONSTRAINT `FK_UNIT_PENAGGUNG_JAWAB` FOREIGN KEY (`KODEUNIT`) REFERENCES `unitpoliwangi` (`KODEUNIT`);

--
-- Ketidakleluasaan untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD CONSTRAINT `FK_GAMBAR` FOREIGN KEY (`KODEBMN`) REFERENCES `bmn` (`KODEBMN`);

--
-- Ketidakleluasaan untuk tabel `specbmn`
--
ALTER TABLE `specbmn`
  ADD CONSTRAINT `FK_SPEC` FOREIGN KEY (`KODEBMN`) REFERENCES `bmn` (`KODEBMN`);

--
-- Ketidakleluasaan untuk tabel `sub_kategori`
--
ALTER TABLE `sub_kategori`
  ADD CONSTRAINT `FK_SUB` FOREIGN KEY (`KODEKATEGORI`) REFERENCES `kategori` (`KODEKATEGORI`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_GROUPUSER` FOREIGN KEY (`KODEKATEGORIUSER`) REFERENCES `kategoriuser` (`KODEKATEGORIUSER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

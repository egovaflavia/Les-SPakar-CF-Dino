-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Jan 2020 pada 06.03
-- Versi Server: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pakar_cf`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(50) NOT NULL,
  `admin_pass` varchar(50) NOT NULL,
  `admin_nama` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_user`, `admin_pass`, `admin_nama`) VALUES
(1, 'admin', 'admin', 'Egova Riva Gustino');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_Gejala`
--

CREATE TABLE IF NOT EXISTS `tb_Gejala` (
  `gejala_id` varchar(100) NOT NULL,
  `gejala_nama` text NOT NULL,
  `gejala_cf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_Gejala`
--

INSERT INTO `tb_Gejala` (`gejala_id`, `gejala_nama`, `gejala_cf`) VALUES
('G01', 'Bau Mulut', 0.9),
('G02', 'Gusi bengkak merah dan berdarah', 0.75),
('G03', 'Gelisah', 0.9),
('G04', 'Kelelahan', 0.93),
('G05', 'Gingival berkaratin, gaung luka diantara gigi dan gusi', 0.8),
('G06', 'Pembesaran Limfonodi di kepala, leher atau rahang', 0.93),
('G07', 'Demam', 0.75),
('G08', 'Gusi mudah berdarah', 0.8),
('G09', 'Kelenjar getah bening di bawah rahang sering kali membengkak', 0.1),
('G10', 'Mengunyah dan menelan makanan menyebabkan rasa nyeri', 0.1),
('G11', 'Kehilangan selera makan', 0.1),
('G12', 'Pembekakan pada gusi', 0.1),
('G13', 'Sakit saat membuka mulut', 0.8),
('G14', 'Pecah-pecah dan kemerahan pada sudut mulut', 0.5),
('G15', 'Peradangan pada lidah', 0.4),
('G16', 'Pembekalan kelenjer getah bening di leher', 0.9),
('G17', 'Permukaan ludah yang halus', 0.6),
('G18', 'Mengunyah akan menimbulkan rasa sakit', 0.3),
('G19', 'Lidah berwarna merah dan putih', 0.3),
('G20', 'Alergi pada pasta gigi dan obat kumur', 0.35),
('G21', 'Gigi terasa sakit', 0.7),
('G22', 'Kesulitan mengunyah, menelan dan berbicara', 0.8),
('G23', 'Ujung-ujung gusi yang terletak di antara  mengalami pengikisan', 0.45),
('G24', 'Muncul bintik kuning, putih atau krem di mulut', 0.2),
('G25', 'Kulit terkelupas', 0.2),
('G26', 'Sedikit pendarahan apabila lesi tergores', 0.2),
('G27', 'Timbulnya kerak yang berlebihan', 0.2),
('G28', 'Tubuh merasa meriang, pening dan pegal-pegal', 0.2),
('G29', 'Merintis kecil', 0.2),
('G30', 'Bibir terasa kering', 0.2),
('G31', 'Luka kecil sekitar (1-5 milimeter diameter)', 0.2),
('G32', 'Gusi berwarna merah terang', 0.2),
('G33', 'Perih sekitar di luka', 0.2),
('G34', 'Sakit dan bercak gatal di kulit trigeminal, vesikel unilateral, dan ulser mulut', 0.2),
('G35', 'Fisur eritemotosis simetris pada kulit commisura', 0.2),
('G36', 'Kesemutan pada wilayah bibir', 0.2),
('G37', 'Lesi menyerupai keju', 0.2),
('G38', 'Di dalam mulut seperti terdapat kapas', 0.2),
('G39', 'Rasa gatal dan iritasi pada daerah bibir dan mulut', 0.2),
('G40', 'Rasa sakit dan nyeri pada bibir dan mulut', 0.2),
('G41', 'Munculnya nanah', 0.2),
('G42', 'Susah mengunyah makanan', 0.2),
('G44', 'Nyeri gusi', 0.2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_Konsultasi`
--

CREATE TABLE IF NOT EXISTS `tb_Konsultasi` (
  `konsultasi_id` int(11) NOT NULL,
  `penyakit_id` varchar(11) NOT NULL,
  `konsultasi_tgl` date NOT NULL,
  `konsultasi_hasil` float NOT NULL,
  `pasien_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_Konsultasi`
--

INSERT INTO `tb_Konsultasi` (`konsultasi_id`, `penyakit_id`, `konsultasi_tgl`, `konsultasi_hasil`, `pasien_id`) VALUES
(3, 'P01', '2020-01-03', 71.4, 5),
(4, 'P01', '2020-01-03', 71.4, 5),
(5, 'P01', '2020-01-03', 46.2, 5),
(6, 'P01', '2020-01-03', 46.2, 5),
(7, 'P01', '2020-01-03', 46.2, 5),
(8, 'P01', '2020-01-06', 97.44, 5),
(9, 'P01', '2020-01-07', 0, 5),
(10, 'P06', '2020-01-07', 9.1, 5),
(11, 'P01', '2020-01-07', 46.2, 5),
(12, 'P01', '2020-01-07', 46.2, 5),
(13, 'P01', '2020-01-07', 46.2, 5),
(14, 'P01', '2020-01-07', 0, 5),
(15, 'P02', '2020-01-07', 121.2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_Pasien`
--

CREATE TABLE IF NOT EXISTS `tb_Pasien` (
  `pasien_id` int(11) NOT NULL,
  `pasien_user` varchar(50) NOT NULL,
  `pasien_pass` varchar(50) NOT NULL,
  `pasien_nama` varchar(50) NOT NULL,
  `pasien_jk` varchar(50) NOT NULL,
  `pasien_tgl_lahir` date NOT NULL,
  `pasien_alamat` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_Pasien`
--

INSERT INTO `tb_Pasien` (`pasien_id`, `pasien_user`, `pasien_pass`, `pasien_nama`, `pasien_jk`, `pasien_tgl_lahir`, `pasien_alamat`) VALUES
(5, 'Egova', 'asdasd12', 'Egova', 'Laki-Laki', '2019-12-31', 'Egova1'),
(6, 'Pariatur Quos quis ', 'Voluptatem fugiat ', 'Voluptatem Voluptat', 'Perempuan', '1997-01-23', 'Nisi officia delenit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_Penyakit`
--

CREATE TABLE IF NOT EXISTS `tb_Penyakit` (
  `penyakit_id` varchar(5) NOT NULL,
  `penyakit_nama` varchar(50) NOT NULL,
  `penyakit_ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_Penyakit`
--

INSERT INTO `tb_Penyakit` (`penyakit_id`, `penyakit_nama`, `penyakit_ket`) VALUES
('P01', 'Ginggivitis Ulseratif Nekrosis Akut', 'infeksi umum pada gusi yang tidak menular dengan onset mendadak. Gambaran utamanya adalah nyeri, gusi berdarah, dan ulserasi papila antar gigi (bagian gusi di antara gigi yang berdekatan).'),
('P02', 'Trench Mouth', 'Trench mouth adalah jenis dari gingivitis parah yang menyebabkan rasa sakit, infeksi, dan perdarahan pada gusi'),
('P03', 'Candidiasis Oral', 'Infeksi Jamur di Mulut.'),
('P04', 'Abses Periodental', 'Abses periodontal adalah suatu inflamasi purulen yang terlokalisir pada jaringan periodonsium.'),
('P05', 'Glossitis', 'Glossitis atrofi (lidah atrofi) adalah atrofi pada papilla lidah yang mengakibatkan lidah menjadi licin/halus.'),
('P06', 'Abses Periapikal', 'Abses adalah terbentuknya kantung atau benjolan berisi nanah pada gigi.'),
('P07', 'Herpes Labialis', 'Herpes adalah penyakit radang kulit yang ditandai dengan pembentukan gelembung-gelembung berisi air secara berkelompok.'),
('P08', 'Herpes Zoster', 'Herpes zoster adalah ruam di kulit yang terasa sakit, yang disebabkan oleh virus varicella zoster.'),
('P09', 'Stomatitis Angolaris', 'Stomatitis adalah inflamasi lapisan mukosa dari struktur apa pun pada mulut.'),
('P10', 'Gingivostomatitis', 'Gingivostomatitis adalah permasalahan pada mulut yang umum terjadi.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_Solusi`
--

CREATE TABLE IF NOT EXISTS `tb_Solusi` (
  `solusi_id` int(11) NOT NULL,
  `penyakit_id` varchar(50) NOT NULL,
  `solusi_ket` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_Solusi`
--

INSERT INTO `tb_Solusi` (`solusi_id`, `penyakit_id`, `solusi_ket`) VALUES
(1, 'P01', 'Melakukan scalling '),
(2, 'P01', 'Root planning'),
(3, 'P01', 'Curettage atau bedah flap yang disesuaikan dengan tingkat keparahannya '),
(4, 'P02', 'Pemberian antibiotik dan upaya untuk menjaga kebersihan mulut pribadi '),
(5, 'P02', 'Pada kasus yang berat, tindakan pembedahan dibutuhkan karena kerusakannya cukup luas'),
(6, 'P03', 'Pembersihan jamur pada daerah yang terserang penyakit'),
(7, 'P03', 'Pemberian obat anti jamur dan peningkatan DHE'),
(8, 'P04', 'Drainase baik melalui retraksi poket atau insisi '),
(9, 'P04', 'Scalling dan root planning '),
(10, 'P04', 'Periodontal surgery'),
(11, 'P04', 'Pemberian antibiotik, dan pencabutan gigi '),
(12, 'P05', 'Pemberian antibiotic '),
(13, 'P05', 'Pemberian anti jamur'),
(14, 'P06', 'Menghilangkan infeksi'),
(15, 'P06', 'Membuang nanah melalui bedah mulut atau pengobatan saluran akar'),
(16, 'P07', 'Diobati dengan salep acyclovir'),
(17, 'P07', 'Jika penderita memiliki kelainan sistem kekebalan, bisa diberikan tablet acyclovir'),
(18, 'P08', 'Perawatan setempat, sebaiknya membersihkan lukanya dengan air garam danmenjaganya tetap kering. '),
(19, 'P08', 'Gentian violet dapat dioleskan pada luka'),
(20, 'P09', 'Pemberian antijamur dan antibiotic'),
(21, 'P10', 'Berikan Minyak Angin di Dada'),
(22, 'P10', 'Minum Air Putih yang Banyak'),
(23, 'P10', 'Istirahat yang Cukup'),
(24, 'P10', 'Usahakan ke Dokter'),
(25, 'P11', 'Antibiotik diberikan kalau memang dibutuhkan Ramuan'),
(26, 'P11', 'Jika diperlukan dokter gigi akan membersihkan jaringan yang terinfeksi'),
(27, 'P11', 'Juga obat larutan kumur dapat digunakan untuk mengurangi rasa sakit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_Gejala`
--
ALTER TABLE `tb_Gejala`
  ADD PRIMARY KEY (`gejala_id`);

--
-- Indexes for table `tb_Konsultasi`
--
ALTER TABLE `tb_Konsultasi`
  ADD PRIMARY KEY (`konsultasi_id`);

--
-- Indexes for table `tb_Pasien`
--
ALTER TABLE `tb_Pasien`
  ADD PRIMARY KEY (`pasien_id`);

--
-- Indexes for table `tb_Penyakit`
--
ALTER TABLE `tb_Penyakit`
  ADD PRIMARY KEY (`penyakit_id`);

--
-- Indexes for table `tb_Solusi`
--
ALTER TABLE `tb_Solusi`
  ADD PRIMARY KEY (`solusi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_Konsultasi`
--
ALTER TABLE `tb_Konsultasi`
  MODIFY `konsultasi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_Pasien`
--
ALTER TABLE `tb_Pasien`
  MODIFY `pasien_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_Solusi`
--
ALTER TABLE `tb_Solusi`
  MODIFY `solusi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

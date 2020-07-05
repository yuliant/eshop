-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2020 at 01:34 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alamat`
--

CREATE TABLE `tb_alamat` (
  `id_alamat` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `alamat` varchar(265) NOT NULL,
  `kecamatan` varchar(128) NOT NULL,
  `kode_pos` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alamat`
--

INSERT INTO `tb_alamat` (`id_alamat`, `id_pengguna`, `id_kota`, `alamat`, `kecamatan`, `kode_pos`) VALUES
(1, 1, 1, '', '', ''),
(2, 2, 1, '', '', ''),
(4, 4, 106, 'Jl. Riyanto\r\nSumampir', 'Purwokerto Utara', '53125'),
(6, 6, 41, 'Jl. Riyanto\r\nSumampir', 'Purwokerto Utara', '53125'),
(7, 7, 409, '', '', ''),
(8, 8, 409, 'Kendal Pecabean Rt 03 Rw 01', 'Candi', '61271'),
(9, 9, 409, '', '', ''),
(10, 10, 409, '', '', ''),
(11, 11, 17, '', '', ''),
(12, 12, 409, '', '', ''),
(13, 13, 409, 'Kendal', 'Candi', '61271'),
(14, 14, 409, 'Kendal', 'Candi', '61271');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(128) NOT NULL,
  `isi_berita` text NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `judul_berita`, `isi_berita`, `tgl`) VALUES
(1, 'cek', '<p>cek</p>', '2020-02-14 13:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_artikel`
--

CREATE TABLE `tb_blog_artikel` (
  `id_artikel` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `isi_artikel` longtext CHARACTER SET latin1 NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `waktu_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_blog_artikel`
--

INSERT INTO `tb_blog_artikel` (`id_artikel`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_artikel`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`, `waktu_input`) VALUES
(306, 61, 'admin1', 'Lorem Ipsum Dolor Sit Amet', '', '', 'lorem-ipsum-dolor-sit-amet', 'N', 'Y', 'N', '<p style=\"text-align: justify; -webkit-tap-highlight-color: transparent; margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Nunc sed id semper risus. Quis vel eros donec ac odio tempor orci dapibus. Amet risus nullam eget felis. Mauris rhoncus aenean vel elit scelerisque mauris. Eget nunc lobortis mattis aliquam faucibus purus. Integer vitae justo eget magna fermentum iaculis. In dictum non consectetur a erat nam at. Morbi tristique senectus et netus et malesuada fames ac. Elementum facilisis leo vel fringilla est. Elit ut aliquam purus sit amet luctus venenatis. Malesuada bibendum arcu vitae elementum curabitur vitae nunc. Et pharetra pharetra massa massa ultricies mi quis. Amet facilisis magna etiam tempor orci eu lobortis elementum. Id aliquet risus feugiat in ante. Convallis posuere morbi leo urna molestie at elementum eu. Bibendum arcu vitae elementum curabitur vitae nunc sed.</p><p style=\"text-align: justify; -webkit-tap-highlight-color: transparent; margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;\">Tortor id aliquet lectus proin nibh. Neque volutpat ac tincidunt vitae semper. Eu feugiat pretium nibh ipsum. Pharetra pharetra massa massa ultricies mi quis. Tellus orci ac auctor augue. Interdum varius sit amet mattis. Consequat mauris nunc congue nisi vitae suscipit tellus mauris. Purus non enim praesent elementum facilisis leo vel fringilla. Ultrices in iaculis nunc sed. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Dignissim enim sit amet venenatis urna cursus eget nunc scelerisque. Ipsum suspendisse ultrices gravida dictum fusce.</p><p style=\"text-align: justify; -webkit-tap-highlight-color: transparent; margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;\">Eu tincidunt tortor aliquam nulla facilisi. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Elementum eu facilisis sed odio morbi quis commodo odio aenean. Tempor id eu nisl nunc mi. Aliquet risus feugiat in ante. Enim lobortis scelerisque fermentum dui faucibus. Dolor sed viverra ipsum nunc. Augue lacus viverra vitae congue eu consequat ac felis donec. Elementum nibh tellus molestie nunc. Sed adipiscing diam donec adipiscing tristique risus. Purus non enim praesent elementum facilisis leo vel. Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Risus ultricies tristique nulla aliquet enim tortor. Varius vel pharetra vel turpis nunc eget lorem.</p>', '', 'Sabtu', '2020-06-13', '12:40:21', 'bc4e37d58c33990d5caa154271bf5836.jpg', 6, 'zamanet', 'Y', '2020-06-24 19:38:51'),
(307, 60, 'admin1', 'Lorem Ipsum Dolor Sit Amet', '', '', 'lorem-ipsum-dolor-sit-amet', 'N', 'Y', 'N', '<div style=\"text-align: justify;\"><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dictum fusce ut placerat orci. A lacus vestibulum sed arcu. Est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Dignissim enim sit amet venenatis. Et sollicitudin ac orci phasellus egestas. Condimentum mattis pellentesque id nibh tortor id aliquet. Suscipit adipiscing bibendum est ultricies integer quis auctor. Libero enim sed faucibus turpis in. Faucibus ornare suspendisse sed nisi lacus sed viverra. Ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt. Sit amet nulla facilisi morbi tempus. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt.</p><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;\">Nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Tincidunt praesent semper feugiat nibh sed pulvinar proin. Tincidunt eget nullam non nisi est sit amet facilisis magna. Ante in nibh mauris cursus mattis molestie a iaculis at. Viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. Tortor id aliquet lectus proin nibh nisl condimentum id venenatis. Elit ullamcorper dignissim cras tincidunt lobortis feugiat. Nunc id cursus metus aliquam eleifend mi in nulla. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet. Donec ac odio tempor orci dapibus.</p><p style=\"-webkit-tap-highlight-color: transparent; margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;\">Maecenas accumsan lacus vel facilisis volutpat est velit. Ultrices sagittis orci a scelerisque purus semper eget. Velit dignissim sodales ut eu sem integer vitae. Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Eget nunc lobortis mattis aliquam. Aliquam faucibus purus in massa tempor. Vel orci porta non pulvinar neque laoreet. Etiam tempor orci eu lobortis elementum. Lacus luctus accumsan tortor posuere. Amet nisl suscipit adipiscing bibendum est ultricies integer quis.</p></div>', '', 'Sabtu', '2020-06-13', '12:39:57', '0cde05eed955c6423a0b47447628a161.jpg', 6, 'bussiness', 'Y', '2020-06-24 19:38:51'),
(305, 60, 'admin1', 'Lorem Ipsum Dolor Sit Amet', '', '', 'lorem-ipsum-dolor-sit-amet', 'N', 'Y', 'N', '<p style=\"margin-top: 1.5em; margin-bottom: 1.5em; text-align: justify; -webkit-tap-highlight-color: transparent; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dictum fusce ut placerat orci. A lacus vestibulum sed arcu. Est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Dignissim enim sit amet venenatis. Et sollicitudin ac orci phasellus egestas. Condimentum mattis pellentesque id nibh tortor id aliquet. Suscipit adipiscing bibendum est ultricies integer quis auctor. Libero enim sed faucibus turpis in. Faucibus ornare suspendisse sed nisi lacus sed viverra. Ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt. Sit amet nulla facilisi morbi tempus. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt.</p><p style=\"margin-top: 1.5em; margin-bottom: 1.5em; text-align: justify; -webkit-tap-highlight-color: transparent; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;\">Nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Tincidunt praesent semper feugiat nibh sed pulvinar proin. Tincidunt eget nullam non nisi est sit amet facilisis magna. Ante in nibh mauris cursus mattis molestie a iaculis at. Viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. Tortor id aliquet lectus proin nibh nisl condimentum id venenatis. Elit ullamcorper dignissim cras tincidunt lobortis feugiat. Nunc id cursus metus aliquam eleifend mi in nulla. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet. Donec ac odio tempor orci dapibus.</p><p style=\"margin-top: 1.5em; margin-bottom: 1.5em; text-align: justify; -webkit-tap-highlight-color: transparent; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;\">Maecenas accumsan lacus vel facilisis volutpat est velit. Ultrices sagittis orci a scelerisque purus semper eget. Velit dignissim sodales ut eu sem integer vitae. Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Eget nunc lobortis mattis aliquam. Aliquam faucibus purus in massa tempor. Vel orci porta non pulvinar neque laoreet. Etiam tempor orci eu lobortis elementum. Lacus luctus accumsan tortor posuere. Amet nisl suscipit adipiscing bibendum est ultricies integer quis.</p>', '', 'Sabtu', '2020-06-13', '12:40:31', 'e2f59e848ee4827a91db11c99dbdc91b.jpg', 6, '', 'Y', '2020-06-24 19:38:51'),
(308, 62, 'hayasaka', 'Cuma kamu', 'Sayangku didunia ini', '', 'cuma-kamu', 'N', 'Y', 'N', '<p><span style=\"color: rgb(61, 70, 77); font-family: Roboto, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Nunc sed id semper risus. Quis vel eros donec ac odio tempor orci dapibus. Amet risus nullam eget felis. Mauris rhoncus aenean vel elit scelerisque mauris. Eget nunc lobortis mattis aliquam faucibus purus. Integer vitae justo eget magna fermentum iaculis. In dictum non consectetur a erat nam at. Morbi tristique senectus et netus et malesuada fames ac. Elementum facilisis leo vel fringilla est. Elit ut aliquam purus sit amet luctus venenatis. Malesuada bibendum arcu vitae elementum curabitur vitae nunc. Et pharetra pharetra massa massa ultricies mi quis. Amet facilisis magna etiam tempor orci eu lobortis elementum. Id aliquet risus feugiat in ante. Convallis posuere morbi leo urna molestie at elementum eu. Bibendum arcu vitae elementum curabitur vitae nunc sed.</span><br></p>', 'cuma', 'Rabu', '2020-06-24', '19:45:42', 'fd283ef1542bb61f2d04ffadc119c06b.png', 2, 'arduino', 'Y', '2020-06-26 08:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_kategori`
--

CREATE TABLE `tb_blog_kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_blog_kategori`
--

INSERT INTO `tb_blog_kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(61, 'Tips and Trick', 'admin1', 'tips-and-trick', 'Y', 2),
(60, 'Tutorial', 'admin1', 'tutorial', 'Y', 1),
(62, 'komputer', 'minion', 'komputer', 'Y', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_tag`
--

CREATE TABLE `tb_blog_tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_blog_tag`
--

INSERT INTO `tb_blog_tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(59, 'bussiness', 'admin1', 'bussiness', 0),
(60, 'internet', 'admin1', 'internet', 0),
(61, 'arduino', 'hayasaka', 'arduino', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kota`
--

CREATE TABLE `tb_kota` (
  `kota_id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kota`
--

INSERT INTO `tb_kota` (`kota_id`, `provinsi_id`, `nama_kota`) VALUES
(17, 1, 'Badung'),
(32, 1, 'Bangli'),
(94, 1, 'Buleleng'),
(114, 1, 'Denpasar'),
(128, 1, 'Gianyar'),
(161, 1, 'Jembrana'),
(170, 1, 'Karangasem'),
(197, 1, 'Klungkung'),
(447, 1, 'Tabanan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(334, 2, 'Pangkal Pinang'),
(106, 3, 'Cilegon'),
(232, 3, 'Lebak'),
(331, 3, 'Pandeglang'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(175, 4, 'Kaur'),
(183, 4, 'Kepahiang'),
(233, 4, 'Lebong'),
(294, 4, 'Muko Muko'),
(379, 4, 'Rejang Lebong'),
(397, 4, 'Seluma'),
(39, 5, 'Bantul'),
(135, 5, 'Gunung Kidul'),
(210, 5, 'Kulon Progo'),
(419, 5, 'Sleman'),
(501, 5, 'Yogyakarta'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(189, 6, 'Kepulauan Seribu'),
(77, 7, 'Boalemo'),
(88, 7, 'Bone Bolango'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(361, 7, 'Pohuwato'),
(50, 8, 'Batang Hari'),
(97, 8, 'Bungo'),
(156, 8, 'Jambi'),
(194, 8, 'Kerinci'),
(280, 8, 'Merangin'),
(293, 8, 'Muaro Jambi'),
(393, 8, 'Sarolangun'),
(442, 8, 'Sungaipenuh'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(471, 8, 'Tebo'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(34, 9, 'Banjar'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(115, 9, 'Depok'),
(126, 9, 'Garut'),
(149, 9, 'Indramayu'),
(171, 9, 'Karawang'),
(211, 9, 'Kuningan'),
(252, 9, 'Majalengka'),
(332, 9, 'Pangandaran'),
(376, 9, 'Purwakarta'),
(428, 9, 'Subang'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(440, 9, 'Sumedang'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(37, 10, 'Banjarnegara'),
(41, 10, 'Banyumas'),
(49, 10, 'Batang'),
(76, 10, 'Blora'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(105, 10, 'Cilacap'),
(113, 10, 'Demak'),
(134, 10, 'Grobogan'),
(163, 10, 'Jepara'),
(169, 10, 'Karanganyar'),
(177, 10, 'Kebumen'),
(181, 10, 'Kendal'),
(196, 10, 'Klaten'),
(209, 10, 'Kudus'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(344, 10, 'Pati'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(352, 10, 'Pemalang'),
(375, 10, 'Purbalingga'),
(377, 10, 'Purworejo'),
(380, 10, 'Rembang'),
(386, 10, 'Salatiga'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(427, 10, 'Sragen'),
(433, 10, 'Sukoharjo'),
(445, 10, 'Surakarta (Solo)'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(476, 10, 'Temanggung'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(31, 11, 'Bangkalan'),
(42, 11, 'Banyuwangi'),
(51, 11, 'Batu'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(80, 11, 'Bojonegoro'),
(86, 11, 'Bondowoso'),
(133, 11, 'Gresik'),
(160, 11, 'Jember'),
(164, 11, 'Jombang'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(222, 11, 'Lamongan'),
(243, 11, 'Lumajang'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(251, 11, 'Magetan'),
(256, 11, 'Malang'),
(255, 11, 'Malang'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(317, 11, 'Pacitan'),
(330, 11, 'Pamekasan'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(363, 11, 'Ponorogo'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(390, 11, 'Sampang'),
(409, 11, 'Sidoarjo'),
(418, 11, 'Situbondo'),
(441, 11, 'Sumenep'),
(444, 11, 'Surabaya'),
(487, 11, 'Trenggalek'),
(489, 11, 'Tuban'),
(492, 11, 'Tulungagung'),
(61, 12, 'Bengkayang'),
(168, 12, 'Kapuas Hulu'),
(176, 12, 'Kayong Utara'),
(195, 12, 'Ketapang'),
(208, 12, 'Kubu Raya'),
(228, 12, 'Landak'),
(279, 12, 'Melawi'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(388, 12, 'Sambas'),
(391, 12, 'Sanggau'),
(395, 12, 'Sekadau'),
(415, 12, 'Singkawang'),
(417, 12, 'Sintang'),
(18, 13, 'Balangan'),
(33, 13, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(43, 13, 'Barito Kuala'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(203, 13, 'Kotabaru'),
(446, 13, 'Tabalong'),
(452, 13, 'Tanah Bumbu'),
(454, 13, 'Tanah Laut'),
(466, 13, 'Tapin'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(136, 14, 'Gunung Mas'),
(167, 14, 'Kapuas'),
(174, 14, 'Katingan'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(221, 14, 'Lamandau'),
(296, 14, 'Murung Raya'),
(326, 14, 'Palangka Raya'),
(371, 14, 'Pulang Pisau'),
(405, 14, 'Seruyan'),
(432, 14, 'Sukamara'),
(19, 15, 'Balikpapan'),
(66, 15, 'Berau'),
(89, 15, 'Bontang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(341, 15, 'Paser'),
(354, 15, 'Penajam Paser Utara'),
(387, 15, 'Samarinda'),
(96, 16, 'Bulungan (Bulongan)'),
(257, 16, 'Malinau'),
(311, 16, 'Nunukan'),
(450, 16, 'Tana Tidung'),
(467, 16, 'Tarakan'),
(48, 17, 'Batam'),
(71, 17, 'Bintan'),
(172, 17, 'Karimun'),
(184, 17, 'Kepulauan Anambas'),
(237, 17, 'Lingga'),
(302, 17, 'Natuna'),
(462, 17, 'Tanjung Pinang'),
(21, 18, 'Bandar Lampung'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(368, 18, 'Pringsewu'),
(458, 18, 'Tanggamus'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(496, 18, 'Way Kanan'),
(14, 19, 'Ambon'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(185, 19, 'Kepulauan Aru'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(488, 19, 'Tual'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(191, 20, 'Kepulauan Sula'),
(372, 20, 'Pulau Morotai'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(20, 21, 'Banda Aceh'),
(59, 21, 'Bener Meriah'),
(72, 21, 'Bireuen'),
(127, 21, 'Gayo Lues'),
(230, 21, 'Langsa'),
(235, 21, 'Lhokseumawe'),
(300, 21, 'Nagan Raya'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(384, 21, 'Sabang'),
(414, 21, 'Simeulue'),
(429, 21, 'Subulussalam'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(118, 22, 'Dompu'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(276, 22, 'Mataram'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(13, 23, 'Alor'),
(58, 23, 'Belu'),
(122, 23, 'Ende'),
(125, 23, 'Flores Timur'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(234, 23, 'Lembata'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(301, 23, 'Nagekeo'),
(304, 23, 'Ngada'),
(383, 23, 'Rote Ndao'),
(385, 23, 'Sabu Raijua'),
(412, 23, 'Sikka'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(16, 24, 'Asmat'),
(67, 24, 'Biak Numfor'),
(90, 24, 'Boven Digoel'),
(111, 24, 'Deiyai (Deliyai)'),
(117, 24, 'Dogiyai'),
(150, 24, 'Intan Jaya'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(180, 24, 'Keerom'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(231, 24, 'Lanny Jaya'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(274, 24, 'Mappi'),
(281, 24, 'Merauke'),
(284, 24, 'Mimika'),
(299, 24, 'Nabire'),
(303, 24, 'Nduga'),
(335, 24, 'Paniai'),
(347, 24, 'Pegunungan Bintang'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(392, 24, 'Sarmi'),
(443, 24, 'Supiori'),
(484, 24, 'Tolikara'),
(495, 24, 'Waropen'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(124, 25, 'Fakfak'),
(165, 25, 'Kaimana'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(277, 25, 'Maybrat'),
(346, 25, 'Pegunungan Arfak'),
(378, 25, 'Raja Ampat'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(449, 25, 'Tambrauw'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(60, 26, 'Bengkalis'),
(120, 26, 'Dumai'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(166, 26, 'Kampar'),
(187, 26, 'Kepulauan Meranti'),
(207, 26, 'Kuantan Singingi'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(406, 26, 'Siak'),
(253, 27, 'Majene'),
(262, 27, 'Mamasa'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(362, 27, 'Polewali Mandar'),
(38, 28, 'Bantaeng'),
(47, 28, 'Barru'),
(87, 28, 'Bone'),
(95, 28, 'Bulukumba'),
(123, 28, 'Enrekang'),
(132, 28, 'Gowa'),
(162, 28, 'Jeneponto'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(254, 28, 'Makassar'),
(275, 28, 'Maros'),
(328, 28, 'Palopo'),
(333, 28, 'Pangkajene Kepulauan'),
(336, 28, 'Parepare'),
(360, 28, 'Pinrang'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(416, 28, 'Sinjai'),
(423, 28, 'Soppeng'),
(448, 28, 'Takalar'),
(451, 28, 'Tana Toraja'),
(486, 28, 'Toraja Utara'),
(493, 28, 'Wajo'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(98, 29, 'Buol'),
(119, 29, 'Donggala'),
(291, 29, 'Morowali'),
(329, 29, 'Palu'),
(338, 29, 'Parigi Moutong'),
(366, 29, 'Poso'),
(410, 29, 'Sigi'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(53, 30, 'Bau-Bau'),
(85, 30, 'Bombana'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(182, 30, 'Kendari'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(295, 30, 'Muna'),
(494, 30, 'Wakatobi'),
(73, 31, 'Bitung'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(188, 31, 'Kepulauan Sangihe'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(192, 31, 'Kepulauan Talaud'),
(204, 31, 'Kotamobagu'),
(267, 31, 'Manado'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(485, 31, 'Tomohon'),
(12, 32, 'Agam'),
(93, 32, 'Bukittinggi'),
(116, 32, 'Dharmasraya'),
(186, 32, 'Kepulauan Mentawai'),
(236, 32, 'Lima Puluh Koto/Kota'),
(318, 32, 'Padang'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(337, 32, 'Pariaman'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(345, 32, 'Payakumbuh'),
(357, 32, 'Pesisir Selatan'),
(394, 32, 'Sawah Lunto'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(453, 32, 'Tanah Datar'),
(40, 33, 'Banyuasin'),
(121, 33, 'Empat Lawang'),
(220, 33, 'Lahat'),
(242, 33, 'Lubuk Linggau'),
(292, 33, 'Muara Enim'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(324, 33, 'Pagar Alam'),
(327, 33, 'Palembang'),
(367, 33, 'Prabumulih'),
(15, 34, 'Asahan'),
(52, 34, 'Batu Bara'),
(70, 34, 'Binjai'),
(110, 34, 'Dairi'),
(112, 34, 'Deli Serdang'),
(137, 34, 'Gunungsitoli'),
(146, 34, 'Humbang Hasundutan'),
(173, 34, 'Karo'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(229, 34, 'Langkat'),
(268, 34, 'Mandailing Natal'),
(278, 34, 'Medan'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(323, 34, 'Padang Sidempuan'),
(325, 34, 'Pakpak Bharat'),
(353, 34, 'Pematang Siantar'),
(389, 34, 'Samosir'),
(404, 34, 'Serdang Bedagai'),
(407, 34, 'Sibolga'),
(413, 34, 'Simalungun'),
(459, 34, 'Tanjung Balai'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(470, 34, 'Tebing Tinggi'),
(481, 34, 'Toba Samosir');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `tgl_lahir` date NOT NULL,
  `tgl_daftar` date NOT NULL,
  `kode_aktivasi` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `kode_resetpassword` varchar(128) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `email`, `username`, `password`, `no_telp`, `nama_lengkap`, `jenis_kelamin`, `foto`, `aktif`, `level`, `blokir`, `tgl_lahir`, `tgl_daftar`, `kode_aktivasi`, `kode_resetpassword`) VALUES
(12, 'minion@admin.com', 'minion', '$2y$10$bVlGVTiWEZ8sRpM8silrhesEwONXPfiqTrKrhErBD3TTv1Lx1DKkC', '088812312312', 'banana', '', '705b5211d63c1d6d1c3262913ce3c502.jpg', 1, 2, '', '0000-00-00', '2020-06-26', 'pcubhj', '3CFjDX'),
(8, 'yulia@gmail.com', 'yuliant1', '$2y$10$31j7HBcp6CPnJqW/3VhRFOh.aM10iO/15bSDkc3HHDjdRNOvoftNO', '089675615231', 'MASRIZAL EKA YULIANT', 'Laki-laki', 'neko_cibi.jpg', 1, 3, 'N', '1997-07-07', '2020-06-24', 'iXEx8N', 'fBOKcj'),
(9, 'hayasaka@admin.com', 'hayasaka', '$2y$10$JoJiccufPgsfeUk.aqR5wuO0Hy4zi663VN3YWx50ekGNwy5OUrRGW', '089677123121', 'hayasaka sama', '', '60c79500faf4d72734ebee040a1f3b7c.jpg', 1, 1, '', '0000-00-00', '2020-06-24', 'FGsgZH', 'gHRc3C');

-- --------------------------------------------------------

--
-- Table structure for table `tb_provinsi`
--

CREATE TABLE `tb_provinsi` (
  `provinsi_id` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_provinsi`
--

INSERT INTO `tb_provinsi` (`provinsi_id`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `tb_statistik`
--

CREATE TABLE `tb_statistik` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_statistik`
--

INSERT INTO `tb_statistik` (`id`, `ip`, `tanggal`, `hits`, `online`) VALUES
(7169, '::1', '2020-07-05', 18, '1593956008');

-- --------------------------------------------------------

--
-- Table structure for table `tb_subs`
--

CREATE TABLE `tb_subs` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `aktif` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_kategoriproduk`
--

CREATE TABLE `tb_toko_kategoriproduk` (
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `kategori_seo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_toko_kategoriproduk`
--

INSERT INTO `tb_toko_kategoriproduk` (`id_kategori_produk`, `nama_kategori`, `kategori_seo`) VALUES
(1, 'Sepatu', 'sepatu'),
(2, 'Kemeja', 'kemeja'),
(3, 'Jaket', 'jaket'),
(4, 'Celana', 'celana'),
(5, 'Laptop', 'laptop');

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_konfirmasi`
--

CREATE TABLE `tb_toko_konfirmasi` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_pembelian`
--

CREATE TABLE `tb_toko_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `kode_pembelian` varchar(50) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `waktu_beli` datetime NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_pembeliandetail`
--

CREATE TABLE `tb_toko_pembeliandetail` (
  `id_pembelian_detail` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_pesan` int(11) NOT NULL,
  `jumlah_pesan` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_penjualan`
--

CREATE TABLE `tb_toko_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `kurir` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `ongkir` int(1) NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `proses` int(1) NOT NULL,
  `resi` varchar(128) NOT NULL,
  `p_nama` varchar(100) NOT NULL,
  `p_telp` varchar(20) NOT NULL,
  `p_kota` int(3) NOT NULL,
  `p_kec` varchar(50) NOT NULL,
  `p_alamat` text NOT NULL,
  `p_pos` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_penjualandetail`
--

CREATE TABLE `tb_toko_penjualandetail` (
  `id_penjualan_detail` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_penjualantemp`
--

CREATE TABLE `tb_toko_penjualantemp` (
  `id_penjualan_detail` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `waktu_order` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_produk`
--

CREATE TABLE `tb_toko_produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `produk_seo` varchar(255) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_konsumen` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `diskon` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `waktu_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_supplier` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_toko_produk`
--

INSERT INTO `tb_toko_produk` (`id_produk`, `id_kategori_produk`, `nama_produk`, `produk_seo`, `satuan`, `harga_beli`, `harga_konsumen`, `stok`, `berat`, `diskon`, `gambar`, `keterangan`, `waktu_input`, `id_supplier`) VALUES
(6, 3, 'Tumbler', 'tumbler', 'pcs', 8000, 11000, 20, '500', 0, '9629b9f61774bf22dfd86c1732526384.jpg', '<div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras pulvinar mattis nunc sed. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Purus viverra accumsan in nisl nisi. Non odio euismod lacinia at quis. Hendrerit gravida rutrum quisque non tellus. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Enim sit amet venenatis urna cursus eget. Pellentesque habitant morbi tristique senectus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Tincidunt eget nullam non nisi. Sem et tortor consequat id porta. Lectus vestibulum mattis ullamcorper velit sed ullamcorper.</span></div>', '2020-06-28 18:57:40', 2),
(3, 1, 'Kaos anime', 'kaos-anime', 'pcs', 25000, 30000, 27, '75', 0, '6eb5ff4074aa7261b509570b30e71a01.jpg', '<div style=\"text-align: justify; \"><span style=\"text-align: start;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras pulvinar mattis nunc sed. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Purus viverra accumsan in nisl nisi. Non odio euismod lacinia at quis. Hendrerit gravida rutrum quisque non tellus. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Enim sit amet venenatis urna cursus eget. Pellentesque habitant morbi tristique senectus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Tincidunt eget nullam non nisi. Sem et tortor consequat id porta. Lectus vestibulum mattis ullamcorper velit sed ullamcorper.</span><br></div>', '2020-06-28 18:58:38', 2),
(4, 3, 'Jam plavon', 'jam-plavon', 'pcs', 5000, 7504, 20, '90', 0, 'e745d656c73aa520242344d2839677c3.jpg', '<p style=\"text-align: justify; \"><span style=\"text-align: start;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras pulvinar mattis nunc sed. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Purus viverra accumsan in nisl nisi. Non odio euismod lacinia at quis. Hendrerit gravida rutrum quisque non tellus. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Enim sit amet venenatis urna cursus eget. Pellentesque habitant morbi tristique senectus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Tincidunt eget nullam non nisi. Sem et tortor consequat id porta. Lectus vestibulum mattis ullamcorper velit sed ullamcorper.</span><br></p><p style=\"text-align: justify;\"><br></p>', '2020-06-28 18:58:21', 2),
(5, 3, 'cepcepan 2', 'cepcepan-2', 'pcs', 10000, 13000, 13, '200', 1000, '0e3b6866d6c43100bf6467e61f1504d1.jpg', '<p style=\"text-align: justify; \"><span style=\"text-align: start;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras pulvinar mattis nunc sed. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Purus viverra accumsan in nisl nisi. Non odio euismod lacinia at quis. Hendrerit gravida rutrum quisque non tellus. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Enim sit amet venenatis urna cursus eget. Pellentesque habitant morbi tristique senectus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Tincidunt eget nullam non nisi. Sem et tortor consequat id porta. Lectus vestibulum mattis ullamcorper velit sed ullamcorper.</span><br></p>', '2020-06-28 18:58:00', 2),
(7, 3, 'encep2an', 'encep2an', 'sachet', 2000, 2500, 26, '8', 0, '15517bf1236e815d5860b0ea23a9b1bc.jpg', '<div style=\"text-align: justify;\"><span style=\"text-align: start;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras pulvinar mattis nunc sed. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Purus viverra accumsan in nisl nisi. Non odio euismod lacinia at quis. Hendrerit gravida rutrum quisque non tellus. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Enim sit amet venenatis urna cursus eget. Pellentesque habitant morbi tristique senectus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Tincidunt eget nullam non nisi. Sem et tortor consequat id porta. Lectus vestibulum mattis ullamcorper velit sed ullamcorper.</span><br></div>', '2020-06-28 18:57:20', 5),
(8, 3, 'Jam kaki', 'jam-kaki', 'pcs', 12000, 20000, 22, '220', 5000, '1042df298c23153800f8da4a21161919.jpg', '<div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras pulvinar mattis nunc sed. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Purus viverra accumsan in nisl nisi. Non odio euismod lacinia at quis. Hendrerit gravida rutrum quisque non tellus. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Enim sit amet venenatis urna cursus eget. Pellentesque habitant morbi tristique senectus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Tincidunt eget nullam non nisi. Sem et tortor consequat id porta. Lectus vestibulum mattis ullamcorper velit sed ullamcorper.</span></div>', '2020-06-28 18:56:46', 5),
(9, 4, 'Tas imut kayak aku', 'tas-imut-kayak-aku', 'pcs', 5000, 8000, 43, '250', 0, 'e04616817bee749e0c10913533f4fcb2.jpg', '<p style=\"text-align: justify; \"><span style=\"text-align: start;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras pulvinar mattis nunc sed. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Purus viverra accumsan in nisl nisi. Non odio euismod lacinia at quis. Hendrerit gravida rutrum quisque non tellus. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Enim sit amet venenatis urna cursus eget. Pellentesque habitant morbi tristique senectus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Tincidunt eget nullam non nisi. Sem et tortor consequat id porta. Lectus vestibulum mattis ullamcorper velit sed ullamcorper.</span><br></p>', '2020-06-28 18:56:21', 5),
(10, 2, 'Kaos cantik', 'kaos-cantik', 'pcs', 40000, 70000, 38, '300', 10000, '6e2b2b73419326c3dd1e586fef6ee3a4.jpg', '<p style=\"text-align: justify; \">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras pulvinar mattis nunc sed. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Purus viverra accumsan in nisl nisi. Non odio euismod lacinia at quis. Hendrerit gravida rutrum quisque non tellus. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Enim sit amet venenatis urna cursus eget. Pellentesque habitant morbi tristique senectus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Tincidunt eget nullam non nisi. Sem et tortor consequat id porta. Lectus vestibulum mattis ullamcorper velit sed ullamcorper.<br></p>', '2020-06-28 18:56:03', 2),
(11, 5, 'Pvilion gaming', 'pvilion-gaming', 'pcs', 10000000, 12000000, 0, '12000', 100000, '24ebffbfacbfcbfc579925f7a24f84d8.jpg', '<p><span style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras pulvinar mattis nunc sed. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Purus viverra accumsan in nisl nisi. Non odio euismod lacinia at quis. Hendrerit gravida rutrum quisque non tellus. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Enim sit amet venenatis urna cursus eget. Pellentesque habitant morbi tristique senectus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Tincidunt eget nullam non nisi. Sem et tortor consequat id porta. Lectus vestibulum mattis ullamcorper velit sed ullamcorper.</span><br></p>', '2020-07-05 20:10:43', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_rekening`
--

CREATE TABLE `tb_toko_rekening` (
  `id_rekening` int(5) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_toko_rekening`
--

INSERT INTO `tb_toko_rekening` (`id_rekening`, `nama_bank`, `no_rekening`, `pemilik_rekening`) VALUES
(1, 'BRI', '1234567890111213', 'Hayasaka');

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_supplier`
--

CREATE TABLE `tb_toko_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `kontak_person` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `katerangan` text NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_toko_supplier`
--

INSERT INTO `tb_toko_supplier` (`id_supplier`, `nama_supplier`, `kontak_person`, `alamat_lengkap`, `no_hp`, `alamat_email`, `kode_pos`, `no_telpon`, `fax`, `katerangan`, `id_pengguna`) VALUES
(2, 'CV Indah Selamanya', 'Maya Astuti', 'Bandung', '082222222222', '', 0, '', '', '', 0),
(5, 'CV Adi Jaya', 'Budi Waluyo', 'Jakarta', '081111111111', '', 0, '', '', '', 7),
(6, 'cv maju jaga', 'Udin', 'Kendal', '088912312311', 'masrizal04@gmail.com', 61271, '088912312311', '123', 'coba aja duu', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko_testimoni`
--

CREATE TABLE `tb_toko_testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `isi_testimoni` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `waktu_testimoni` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ulasan`
--

CREATE TABLE `tb_ulasan` (
  `id` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `bintang` int(5) NOT NULL,
  `ulasan` text NOT NULL,
  `tanggal_ulasan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ulasan`
--

INSERT INTO `tb_ulasan` (`id`, `id_produk`, `id_pembeli`, `bintang`, `ulasan`, `tanggal_ulasan`) VALUES
(4, 10, 8, 5, 'pengiriman sukses\r\n', '2020-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_web_halaman`
--

CREATE TABLE `tb_web_halaman` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_web_halaman`
--

INSERT INTO `tb_web_halaman` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(69, 'Tentang Kami', 'tentang-kami', '<p style=\"text-align: justify;\">Lorem ipsum dolor sit amet, sanctus tractatos neglegentur nec ea. Inani contentiones at usu, et eum graeci appetere facilisi. Nec cu eius officiis laboramus, ut vis rebum dolor verterem, pri id nemore corpora adipiscing. Ei vocent legendos sententiae eam, veritus molestiae et est. Utamur graecis scriptorem ne his, labore sapientem contentiones per ad.</p><p style=\"text-align: justify;\">An eum vitae semper saperet, ut dicta corpora eos. Id eam munere regione maiorum, at eos legere molestiae scribentur. Cu eros graeco interpretaris nam. Usu velit voluptaria adipiscing ex, nam civibus offendit accommodare et.</p><p style=\"text-align: justify;\">Soleat essent discere an mel, id debet mediocrem nec. Usu cetero fabulas et, at pericula dissentiet sed, minim virtute ut vel. Nam an modus iisque, ex pro timeam senserit. No eum ocurreret vulputate. Est ad feugiat recusabo, decore legere evertitur id vim, eu per ridens verterem. Qui labores platonem eu.</p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Mei ea labitur labores vulputate, nam ei labitur nominavi convenire, eu tritani corpora omittantur usu. Adhuc sanctus tibique quo ex, diam eloquentiam consectetuer in eos, ne vim utamur constituto. Solum omittantur in mel, his habeo pertinax repudiare et. Sea facete aliquando et, est te porro legendos hendrerit. Id urbanitas mnesarchum temporibus vim.</span><br></p><p style=\"text-align: justify;\">Te iisque facilisis consequuntur quo, usu nullam doctus erroribus ut. Nonumy quodsi ius ei, tollit labitur usu et, at pri diceret posidonium. Alii elaboraret quo ei, utinam vidisse argumentum at cum. Quo vocent repudiare te, ut essent inciderint vix.</p>', '2020-06-13', '', 'admin1', 4, '10:28:13', ''),
(70, 'Aturan Penggunaan', 'aturan-penggunaan', '<p style=\"text-align: justify;\">Lorem ipsum dolor sit amet, sanctus tractatos neglegentur nec ea. Inani contentiones at usu, et eum graeci appetere facilisi. Nec cu eius officiis laboramus, ut vis rebum dolor verterem, pri id nemore corpora adipiscing. Ei vocent legendos sententiae eam, veritus molestiae et est. Utamur graecis scriptorem ne his, labore sapientem contentiones per ad.</p><p style=\"text-align: justify;\">An eum vitae semper saperet, ut dicta corpora eos. Id eam munere regione maiorum, at eos legere molestiae scribentur. Cu eros graeco interpretaris nam. Usu velit voluptaria adipiscing ex, nam civibus offendit accommodare et.</p><p style=\"text-align: justify;\">Soleat essent discere an mel, id debet mediocrem nec. Usu cetero fabulas et, at pericula dissentiet sed, minim virtute ut vel. Nam an modus iisque, ex pro timeam senserit. No eum ocurreret vulputate. Est ad feugiat recusabo, decore legere evertitur id vim, eu per ridens verterem. Qui labores platonem eu.</p><p style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Mei ea labitur labores vulputate, nam ei labitur nominavi convenire, eu tritani corpora omittantur usu. Adhuc sanctus tibique quo ex, diam eloquentiam consectetuer in eos, ne vim utamur constituto. Solum omittantur in mel, his habeo pertinax repudiare et. Sea facete aliquando et, est te porro legendos hendrerit. Id urbanitas mnesarchum temporibus vim.</span><br></p><p style=\"text-align: justify;\">Te iisque facilisis consequuntur quo, usu nullam doctus erroribus ut. Nonumy quodsi ius ei, tollit labitur usu et, at pri diceret posidonium. Alii elaboraret quo ei, utinam vidisse argumentum at cum. Quo vocent repudiare te, ut essent inciderint vix.</p>', '2019-12-23', '', 'zamanet', 9, '13:24:34', ''),
(71, 'Kebijakan Privasi', 'kebijakan-privasi', '<p style=\"text-align: justify; \">Lorem ipsum dolor sit amet, sanctus tractatos neglegentur nec ea. Inani contentiones at usu, et eum graeci appetere facilisi. Nec cu eius officiis laboramus, ut vis rebum dolor verterem, pri id nemore corpora adipiscing. Ei vocent legendos sententiae eam, veritus molestiae et est. Utamur graecis scriptorem ne his, labore sapientem contentiones per ad.</p><p style=\"text-align: justify; \">An eum vitae semper saperet, ut dicta corpora eos. Id eam munere regione maiorum, at eos legere molestiae scribentur. Cu eros graeco interpretaris nam. Usu velit voluptaria adipiscing ex, nam civibus offendit accommodare et.</p><p style=\"text-align: justify; \">Soleat essent discere an mel, id debet mediocrem nec. Usu cetero fabulas et, at pericula dissentiet sed, minim virtute ut vel. Nam an modus iisque, ex pro timeam senserit. No eum ocurreret vulputate. Est ad feugiat recusabo, decore legere evertitur id vim, eu per ridens verterem. Qui labores platonem eu.</p><p style=\"text-align: justify; \">Mei ea labitur labores vulputate, nam ei labitur nominavi convenire, eu tritani corpora omittantur usu. Adhuc sanctus tibique quo ex, diam eloquentiam consectetuer in eos, ne vim utamur constituto. Solum omittantur in mel, his habeo pertinax repudiare et. Sea facete aliquando et, est te porro legendos hendrerit. Id urbanitas mnesarchum temporibus vim.</p><p style=\"text-align: justify; \">Te iisque facilisis consequuntur quo, usu nullam doctus erroribus ut. Nonumy quodsi ius ei, tollit labitur usu et, at pri diceret posidonium. Alii elaboraret quo ei, utinam vidisse argumentum at cum. Quo vocent repudiare te, ut essent inciderint vix.</p>', '2019-12-23', '', 'zamanet', 11, '13:24:24', ''),
(72, 'FAQ (Tanya Jawab)', 'faq-tanya-jawab', '<p style=\"text-align: justify; \">Lorem ipsum dolor sit amet, sanctus tractatos neglegentur nec ea. Inani contentiones at usu, et eum graeci appetere facilisi. Nec cu eius officiis laboramus, ut vis rebum dolor verterem, pri id nemore corpora adipiscing. Ei vocent legendos sententiae eam, veritus molestiae et est. Utamur graecis scriptorem ne his, labore sapientem contentiones per ad.</p><p style=\"text-align: justify; \">An eum vitae semper saperet, ut dicta corpora eos. Id eam munere regione maiorum, at eos legere molestiae scribentur. Cu eros graeco interpretaris nam. Usu velit voluptaria adipiscing ex, nam civibus offendit accommodare et.</p><p style=\"text-align: justify; \">Soleat essent discere an mel, id debet mediocrem nec. Usu cetero fabulas et, at pericula dissentiet sed, minim virtute ut vel. Nam an modus iisque, ex pro timeam senserit. No eum ocurreret vulputate. Est ad feugiat recusabo, decore legere evertitur id vim, eu per ridens verterem. Qui labores platonem eu.</p><p style=\"text-align: justify; \">Mei ea labitur labores vulputate, nam ei labitur nominavi convenire, eu tritani corpora omittantur usu. Adhuc sanctus tibique quo ex, diam eloquentiam consectetuer in eos, ne vim utamur constituto. Solum omittantur in mel, his habeo pertinax repudiare et. Sea facete aliquando et, est te porro legendos hendrerit. Id urbanitas mnesarchum temporibus vim.</p><p style=\"text-align: justify; \">Te iisque facilisis consequuntur quo, usu nullam doctus erroribus ut. Nonumy quodsi ius ei, tollit labitur usu et, at pri diceret posidonium. Alii elaboraret quo ei, utinam vidisse argumentum at cum. Quo vocent repudiare te, ut essent inciderint vix.</p>', '2019-12-23', '', 'zamanet', 22, '13:24:01', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_web_identitas`
--

CREATE TABLE `tb_web_identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kota_id` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL,
  `facebook` varchar(128) NOT NULL,
  `twitter` varchar(128) NOT NULL,
  `instagram` varchar(128) NOT NULL,
  `youtube` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_web_identitas`
--

INSERT INTO `tb_web_identitas` (`id_identitas`, `nama_website`, `email`, `url`, `rekening`, `no_telp`, `kota_id`, `alamat`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`, `facebook`, `twitter`, `instagram`, `youtube`) VALUES
(1, 'eshop', 'admin@eshop.com', 'https://eshop.covidev.com', '', '6281111111111', 409, 'Desa Gelam Jaya', 'eshop covidev', 'eshop covidev', '92d978345f16416901bc57343641d630.png', '', 'https://facebook.com/', 'https://twitter.com/', 'https://instagram.com/winda_kur', 'https://youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tb_web_logo`
--

CREATE TABLE `tb_web_logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_web_logo`
--

INSERT INTO `tb_web_logo` (`id_logo`, `gambar`) VALUES
(15, 'c4be756b2099b53e2699c4c07a1739ab.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_web_menu`
--

CREATE TABLE `tb_web_menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('ya','tidak') NOT NULL DEFAULT 'ya',
  `position` varchar(20) DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_web_menu`
--

INSERT INTO `tb_web_menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(150, 0, 'Produk', 'produk', 'ya', 'menu utama', 2),
(152, 0, 'Home', '', 'ya', 'menu utama', 1),
(153, 0, 'Konfirmasi Pembayaran', 'konfirmasi', 'ya', 'menu utama', 4),
(155, 0, 'Blog', 'artikel', 'ya', 'menu utama', 3),
(156, 0, 'Lacak Pesanan', '#', 'ya', 'menu utama', 5),
(162, 156, 'Cek Status Pesanan', 'cek-status', 'ya', 'menu utama', 1),
(158, 0, 'Tentang Kami', 'page/detail/tentang-kami', 'ya', 'menu bawah', 1),
(159, 0, 'Aturan penggunaan', 'page/detail/aturan-penggunaan', 'ya', 'menu bawah', 2),
(160, 0, 'Kebijakan Privasi', 'page/detail/kebijakan-privasi', 'ya', 'menu bawah', 3),
(161, 0, 'FAQ (Tanya Jawab)', 'page/detail/faq-tanya-jawab', 'ya', 'menu bawah', 4),
(163, 156, 'Cek Resi', 'cek-resi', 'ya', 'menu utama', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_web_slide`
--

CREATE TABLE `tb_web_slide` (
  `id_slide` int(5) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  `ket` text NOT NULL,
  `gambar_besar` varchar(128) NOT NULL,
  `gambar_kecil` varchar(128) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_web_slide`
--

INSERT INTO `tb_web_slide` (`id_slide`, `judul`, `link`, `ket`, `gambar_besar`, `gambar_kecil`, `waktu`) VALUES
(24, 'Manfaatkan waktu anda', '#', 'Manfaatkan waktu anda untuk berburu diskon di pusat aneka produk sidoarjo. Diskon hingga 90% menanti anda.', 'd732b1a901d1f952e1a2729b40e70cfe.jpg', '510e32d68992438804d033de25b1e61a.jpg', '2019-12-05 06:58:59'),
(25, 'Pusat aneka produk sidoarjo', '#', 'Kami adalah pusat aneka produk di Sidoarjo. Ayo belanja segera, cashback hingga 40 ribu loh ... ', '07b11216d583fb50596c0e5f8d549663.jpg', '71df2d48a9e673c313fb5a50f734a32a.jpg', '2019-12-05 07:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `tb_web_template`
--

CREATE TABLE `tb_web_template` (
  `id_template` int(1) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `header` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_web_template`
--

INSERT INTO `tb_web_template` (`id_template`, `warna`, `header`) VALUES
(1, 'biru', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alamat`
--
ALTER TABLE `tb_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tb_blog_artikel`
--
ALTER TABLE `tb_blog_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `tb_blog_kategori`
--
ALTER TABLE `tb_blog_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_blog_tag`
--
ALTER TABLE `tb_blog_tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tb_kota`
--
ALTER TABLE `tb_kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  ADD PRIMARY KEY (`provinsi_id`);

--
-- Indexes for table `tb_statistik`
--
ALTER TABLE `tb_statistik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_subs`
--
ALTER TABLE `tb_subs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_toko_kategoriproduk`
--
ALTER TABLE `tb_toko_kategoriproduk`
  ADD PRIMARY KEY (`id_kategori_produk`);

--
-- Indexes for table `tb_toko_konfirmasi`
--
ALTER TABLE `tb_toko_konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi_pembayaran`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indexes for table `tb_toko_pembelian`
--
ALTER TABLE `tb_toko_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `tb_toko_pembeliandetail`
--
ALTER TABLE `tb_toko_pembeliandetail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `tb_toko_penjualan`
--
ALTER TABLE `tb_toko_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `tb_toko_penjualandetail`
--
ALTER TABLE `tb_toko_penjualandetail`
  ADD PRIMARY KEY (`id_penjualan_detail`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indexes for table `tb_toko_penjualantemp`
--
ALTER TABLE `tb_toko_penjualantemp`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `tb_toko_produk`
--
ALTER TABLE `tb_toko_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_toko_rekening`
--
ALTER TABLE `tb_toko_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `tb_toko_supplier`
--
ALTER TABLE `tb_toko_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tb_toko_testimoni`
--
ALTER TABLE `tb_toko_testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `tb_ulasan`
--
ALTER TABLE `tb_ulasan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_web_halaman`
--
ALTER TABLE `tb_web_halaman`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `tb_web_identitas`
--
ALTER TABLE `tb_web_identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `tb_web_logo`
--
ALTER TABLE `tb_web_logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `tb_web_menu`
--
ALTER TABLE `tb_web_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tb_web_slide`
--
ALTER TABLE `tb_web_slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_alamat`
--
ALTER TABLE `tb_alamat`
  MODIFY `id_alamat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_blog_artikel`
--
ALTER TABLE `tb_blog_artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `tb_blog_kategori`
--
ALTER TABLE `tb_blog_kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tb_blog_tag`
--
ALTER TABLE `tb_blog_tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tb_kota`
--
ALTER TABLE `tb_kota`
  MODIFY `kota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  MODIFY `provinsi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_statistik`
--
ALTER TABLE `tb_statistik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7170;

--
-- AUTO_INCREMENT for table `tb_subs`
--
ALTER TABLE `tb_subs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_toko_kategoriproduk`
--
ALTER TABLE `tb_toko_kategoriproduk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_toko_konfirmasi`
--
ALTER TABLE `tb_toko_konfirmasi`
  MODIFY `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_toko_pembelian`
--
ALTER TABLE `tb_toko_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_toko_pembeliandetail`
--
ALTER TABLE `tb_toko_pembeliandetail`
  MODIFY `id_pembelian_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_toko_penjualan`
--
ALTER TABLE `tb_toko_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_toko_penjualandetail`
--
ALTER TABLE `tb_toko_penjualandetail`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_toko_penjualantemp`
--
ALTER TABLE `tb_toko_penjualantemp`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_toko_produk`
--
ALTER TABLE `tb_toko_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_toko_rekening`
--
ALTER TABLE `tb_toko_rekening`
  MODIFY `id_rekening` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_toko_supplier`
--
ALTER TABLE `tb_toko_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_toko_testimoni`
--
ALTER TABLE `tb_toko_testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_ulasan`
--
ALTER TABLE `tb_ulasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_web_halaman`
--
ALTER TABLE `tb_web_halaman`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tb_web_identitas`
--
ALTER TABLE `tb_web_identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_web_logo`
--
ALTER TABLE `tb_web_logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_web_menu`
--
ALTER TABLE `tb_web_menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tb_web_slide`
--
ALTER TABLE `tb_web_slide`
  MODIFY `id_slide` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_toko_konfirmasi`
--
ALTER TABLE `tb_toko_konfirmasi`
  ADD CONSTRAINT `tb_toko_konfirmasi_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `tb_toko_penjualan` (`id_penjualan`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tb_toko_penjualandetail`
--
ALTER TABLE `tb_toko_penjualandetail`
  ADD CONSTRAINT `tb_toko_penjualandetail_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `tb_toko_penjualan` (`id_penjualan`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

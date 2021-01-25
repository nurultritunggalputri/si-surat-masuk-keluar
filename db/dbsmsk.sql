-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 07:06 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbsmsk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_keluar`
--

CREATE TABLE IF NOT EXISTS `tb_surat_keluar` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `no_surat` int(15) NOT NULL,
  `tujuan_surat` varchar(25) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_keluar` date NOT NULL,
  `penerima` varchar(25) NOT NULL,
  `perihal` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `tb_surat_keluar`
--

INSERT INTO `tb_surat_keluar` (`id`, `no_surat`, `tujuan_surat`, `tgl_surat`, `tgl_keluar`, `penerima`, `perihal`) VALUES
(24, 61, 'kantor bpbd', '2021-01-01', '2021-01-01', 'razib', 'Undangan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_masuk`
--

CREATE TABLE IF NOT EXISTS `tb_surat_masuk` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(25) NOT NULL,
  `asal_surat` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_masuk` date NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `perihal` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tb_surat_masuk`
--

INSERT INTO `tb_surat_masuk` (`id`, `no_surat`, `asal_surat`, `tgl_surat`, `tgl_masuk`, `penerima`, `perihal`) VALUES
(16, '1234/bjk/34', 'kantor bupati', '2021-01-08', '2021-01-08', 'Isnaini', 'Undangan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '827ccb0eea8a706c4c34a16891f84e7b', 'devk@gmail.com', 'Developer Kampoeng', 1, 'Staff Umum Kepegawaian');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

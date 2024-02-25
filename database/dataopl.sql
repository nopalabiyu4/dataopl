-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Nov 2023 pada 05.15
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataopl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataopl`
--

CREATE TABLE `dataopl` (
  `idx` int(25) NOT NULL,
  `nama_mesin` varchar(250) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `lokasi_id` varchar(50) NOT NULL,
  `title` varchar(250) NOT NULL,
  `size` int(25) NOT NULL,
  `ekstensi` varchar(25) NOT NULL,
  `berkas` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dataopl`
--

INSERT INTO `dataopl` (`idx`, `nama_mesin`, `department_id`, `lokasi_id`, `title`, `size`, `ekstensi`, `berkas`) VALUES
(17, 'Radial Armsaw 01', '33', '1', '001 - Radial Armsaw 1.pdf', 139692, 'pdf', '../file/001 - Radial Armsaw 1.pdf'),
(18, 'Radial Armsaw 02', '33', '1', '002 - Radial Armsaw 2.pdf', 139685, 'pdf', '../file/002 - Radial Armsaw 2.pdf'),
(19, 'Forklift ', '59', '10', '022 OPL - Mesin FORKLIFT.pdf', 199428, 'pdf', '../file/022 OPL - Mesin FORKLIFT.pdf'),
(20, 'Radial Armsaw 03', '33', '1', '003 - Radial Armsaw 3.pdf', 139688, 'pdf', '../file/003 - Radial Armsaw 3.pdf'),
(21, 'Rip Saw 1', '33', '1', '027 - Ripsaw 1.pdf', 122265, 'pdf', '../file/027 - Ripsaw 1.pdf'),
(22, 'Rip Saw 2', '33', '1', '027 - Ripsaw 2.pdf', 122265, 'pdf', '../file/027 - Ripsaw 2.pdf'),
(23, 'Spindle Jamb', '33', '1', '006 - Spindle Jamb.pdf', 135251, 'pdf', '../file/006 - Spindle Jamb.pdf'),
(24, 'Powermet 1', '33', '1', '015 - Powermet 1.pdf', 148403, 'pdf', '../file/015 - Powermet 1.pdf'),
(25, 'Cross Cut A-Frame 2', '33', '1', '017 - Cross Cut  A- Frame 2.pdf', 162985, 'pdf', '../file/017 - Cross Cut  A- Frame 2.pdf'),
(26, 'Cross Cut Jamb 1', '33', '1', '017 - Cross Cut  Jamb 1.pdf', 162973, 'pdf', '../file/017 - Cross Cut  Jamb 1.pdf'),
(27, 'Cross Cut Jamb 2', '33', '1', '017 - Cross Cut  Jamb 2.pdf', 162963, 'pdf', '../file/017 - Cross Cut  Jamb 2.pdf'),
(28, 'Gaujing', '33', '1', '018 - Goujing.pdf', 104887, 'pdf', '../file/018 - Goujing.pdf'),
(29, 'Bandsaw Horisontal', '33', '1', '019 - Bandsaw Horisontal.pdf', 172276, 'pdf', '../file/019 - Bandsaw Horisontal.pdf'),
(30, 'Cassati', '33', '1', '022 - OPL Mesin Casati.pdf', 178504, 'pdf', '../file/022 - OPL Mesin Casati.pdf'),
(31, 'Splacing', '33', '1', '023 - OPL Mesin Splacing.pdf', 178575, 'pdf', '../file/023 - OPL Mesin Splacing.pdf'),
(32, 'Radial Armsaw HF Encaps', '34', '1', '003 - Radial Armsaw HF Encaps.pdf', 139712, 'pdf', '../file/003 - Radial Armsaw HF Encaps.pdf'),
(33, 'Scissor Lift Hot Press', '34', '1', '012 - Scissor Lift Hotpress FA.pdf', 101408, 'pdf', '../file/012 - Scissor Lift Hotpress FA.pdf'),
(34, 'Scissor Lift Powermate 2', '34', '1', '012 - Scissor Lift Powermate 2.pdf', 101302, 'pdf', '../file/012 - Scissor Lift Powermate 2.pdf'),
(35, 'Scissor Lift Sander DMC', '34', '1', '012 - Scissor Lift Sander DMC.pdf', 101209, 'pdf', '../file/012 - Scissor Lift Sander DMC.pdf'),
(36, 'Air Frame 1', '34', '1', '020 OPL - Mesin A- Frame 1.pdf', 153571, 'pdf', '../file/020 OPL - Mesin A- Frame 1.pdf'),
(37, 'Air Frame 2', '34', '1', '020 OPL - Mesin A- Frame 2.pdf', 153619, 'pdf', '../file/020 OPL - Mesin A- Frame 2.pdf'),
(38, 'Hot Press', '34', '1', '021 OPL - Mesin Hotpress  FA.pdf', 179251, 'pdf', '../file/021 OPL - Mesin Hotpress  FA.pdf'),
(39, 'HF Laminator', '34', '1', '035-HF Laminator.pdf', 164217, 'pdf', '../file/035-HF Laminator.pdf'),
(40, 'Sander DMC', '34', '1', '036 Sander DMC.pdf', 111119, 'pdf', '../file/036 Sander DMC.pdf'),
(41, 'Flat Hole', '35', '1', '004 - Flat Hole.pdf', 132094, 'pdf', '../file/004 - Flat Hole.pdf'),
(42, 'Lock Hole Flat Hole', '35', '1', '004 - Lock Hole Flat Hole.pdf', 132211, 'pdf', '../file/004 - Lock Hole Flat Hole.pdf'),
(43, 'Double End Tenoner (DET) 1', '35', '1', '006 - Double End Tenoner (DET) 1.pdf', 160099, 'pdf', '../file/006 - Double End Tenoner (DET) 1.pdf'),
(44, 'Double End Tenoner (DET) 2', '35', '1', '006 - Double End Tenoner (DET) 2.pdf', 160066, 'pdf', '../file/006 - Double End Tenoner (DET) 2.pdf'),
(45, 'Spindle 1 ', '35', '1', '006 - Spindle 1.pdf', 135214, 'pdf', '../file/006 - Spindle 1.pdf'),
(46, 'Spindle 2', '35', '1', '006 - Spindle 2.pdf', 135214, 'pdf', '../file/006 - Spindle 2.pdf'),
(47, 'Spindle 3', '35', '1', '006 - Spindle 3.pdf', 135214, 'pdf', '../file/006 - Spindle 3.pdf'),
(48, 'Spindle 4', '35', '1', '006 - Spindle 4.pdf', 135214, 'pdf', '../file/006 - Spindle 4.pdf'),
(49, '5 In 1', '35', '1', '007 - 5 In 1.pdf', 171259, 'pdf', '../file/007 - 5 In 1.pdf'),
(50, 'Scissor Lift 5 In 1', '35', '1', '012 - Scissor Lift 5 in 1.pdf', 101644, 'pdf', '../file/012 - Scissor Lift 5 in 1.pdf'),
(51, 'Scissor Lift DET 1', '35', '1', '012 - Scissor Lift DET 1.pdf', 101521, 'pdf', '../file/012 - Scissor Lift DET 1.pdf'),
(52, 'Scissor Lift DET 2', '35', '1', '012 - Scissor Lift DET 2.pdf', 101535, 'pdf', '../file/012 - Scissor Lift DET 2.pdf'),
(53, 'Scissor Lift Koch Bor', '35', '1', '012 - Scissor Lift Koch Bor.pdf', 101506, 'pdf', '../file/012 - Scissor Lift Koch Bor.pdf'),
(54, 'Scissor Lift Leadermac', '35', '1', '012 - Scissor Lift Leadermac.pdf', 101649, 'pdf', '../file/012 - Scissor Lift Leadermac.pdf'),
(55, 'Scissor Lift Sander Time Saver', '35', '1', '012 - Scissor Lift Sander Time Saver.pdf', 101713, 'pdf', '../file/012 - Scissor Lift Sander Time Saver.pdf'),
(56, 'Scissor Lift Schelling 2', '35', '1', '012 - Scissor Lift Schelling 2.pdf', 101517, 'pdf', '../file/012 - Scissor Lift Schelling 2.pdf'),
(57, 'Scissor Lift X-Cut Optimizer', '35', '1', '012 - Scissor Lift X-Cut Optimizer.pdf', 101622, 'pdf', '../file/012 - Scissor Lift X-Cut Optimizer.pdf'),
(58, 'Powermet 2', '35', '1', '015 - Powermet 2.pdf', 148961, 'pdf', '../file/015 - Powermet 2.pdf'),
(59, 'Leadermax', '35', '1', '018 - Leadermax.pdf', 185355, 'pdf', '../file/018 - Leadermax.pdf'),
(60, 'Schelling 1', '35', '1', '019 - Schelling 1.pdf', 133956, 'pdf', '../file/019 - Schelling 1.pdf'),
(61, 'Schelling 2', '35', '1', '019 - Schelling 2.pdf', 133976, 'pdf', '../file/019 - Schelling 2.pdf'),
(62, 'Sander Time Saver', '35', '1', '036 Sander Time saver.pdf', 111953, 'pdf', '../file/036 Sander Time saver.pdf'),
(63, 'Sanding Brush Rail', '35', '1', '036 Sanding Brush Rail.pdf', 136459, 'pdf', '../file/036 Sanding Brush Rail.pdf'),
(64, 'Sanding Time Saver', '35', '1', '036 Sanding Time Saver.pdf', 90738, 'pdf', '../file/036 Sanding Time Saver.pdf'),
(65, 'Mourtizer Rail', '35', '1', '036-Mourtizer Rail.pdf', 162369, 'pdf', '../file/036-Mourtizer Rail.pdf'),
(66, 'Mourtizer Stille', '35', '1', '036-Mourtizer Stille.pdf', 139412, 'pdf', '../file/036-Mourtizer Stille.pdf'),
(67, 'X-Cut Optimizer', '35', '1', '037-X-Cut Optimizer.pdf', 131688, 'pdf', '../file/037-X-Cut Optimizer.pdf'),
(68, 'Koch Bor', '35', '1', '038 - KochBor.pdf', 180996, 'pdf', '../file/038 - KochBor.pdf'),
(69, 'Double End Tenoner (DET) Time Saver', '36', '1', '006 - Double End Tenoner (DET) Time saver.pdf', 179378, 'pdf', '../file/006 - Double End Tenoner (DET) Time saver.pdf'),
(70, 'Scissor Lift DET Sander', '36', '1', '012 - Scissor Lift DET Sander.pdf', 101610, 'pdf', '../file/012 - Scissor Lift DET Sander.pdf'),
(71, 'Scissor Lift Taylor 1', '36', '1', '012 - Scissor Lift Taylor 1.pdf', 101643, 'pdf', '../file/012 - Scissor Lift Taylor 1.pdf'),
(72, 'Scissor Lift Taylor 2', '36', '1', '012 - Scissor Lift Taylor 2.pdf', 101722, 'pdf', '../file/012 - Scissor Lift Taylor 2.pdf'),
(73, 'Air Frame 3', '36', '1', '020 OPL - Mesin A- Frame 3.pdf', 136692, 'pdf', '../file/020 OPL - Mesin A- Frame 3.pdf'),
(74, 'Post Claim', '36', '1', '020 OPL - Mesin Post Claim.pdf', 171222, 'pdf', '../file/020 OPL - Mesin Post Claim.pdf'),
(75, 'Cramping 1', '36', '1', '033-Cramping 1.pdf', 290825, 'pdf', '../file/033-Cramping 1.pdf'),
(76, 'Cramping 2', '36', '1', '033-Cramping 2.pdf', 291071, 'pdf', '../file/033-Cramping 2.pdf'),
(77, 'Cramping Taylor 1', '36', '1', '033-Cramping Taylor 1.pdf', 276646, 'pdf', '../file/033-Cramping Taylor 1.pdf'),
(78, 'Cramping Taylor 2', '36', '1', '033-Cramping Taylor 2.pdf', 276660, 'pdf', '../file/033-Cramping Taylor 2.pdf'),
(79, 'CNC 1', '38', '2', '010 - CNC 1.pdf', 164862, 'pdf', '../file/010 - CNC 1.pdf'),
(80, 'CNC 2', '38', '2', '010 - CNC 2.pdf', 144483, 'pdf', '../file/010 - CNC 2.pdf'),
(81, 'CNC 3', '38', '2', '010 - CNC 3.pdf', 144490, 'pdf', '../file/010 - CNC 3.pdf'),
(82, 'CNC 4', '38', '2', '010 - CNC 4.pdf', 144483, 'pdf', '../file/010 - CNC 4.pdf'),
(83, 'CNC 5 Repair', '38', '2', '010 - CNC 5 Repair.pdf', 150157, 'pdf', '../file/010 - CNC 5 Repair.pdf'),
(84, 'Drop Saw Pollybase', '38', '2', '002 - Drop Saw Pollybase.pdf', 100501, 'pdf', '../file/002 - Drop Saw Pollybase.pdf'),
(85, 'Radial Armsaw Pollybase', '38', '2', '003 - Radial Armsaw Pollybase.pdf', 135112, 'pdf', '../file/003 - Radial Armsaw Pollybase.pdf'),
(86, 'Radial Armsaw Reject', '38', '2', '003 - Radial Armsaw Reject FB.pdf', 135106, 'pdf', '../file/003 - Radial Armsaw Reject FB.pdf'),
(87, 'Glue Spreader Pollybase', '38', '2', '019 OPL - Glue Spreader Pollybase.pdf', 180767, 'pdf', '../file/019 OPL - Glue Spreader Pollybase.pdf'),
(88, 'Scissor Lift CNC 1', '38', '2', '012 - Scissor Lift CNC 1.pdf', 101764, 'pdf', '../file/012 - Scissor Lift CNC 1.pdf'),
(89, 'Scissor Lift CNC 2', '38', '2', '012 - Scissor Lift CNC 2.pdf', 101765, 'pdf', '../file/012 - Scissor Lift CNC 2.pdf'),
(90, 'Scissor Lift CNC 3', '38', '2', '012 - Scissor Lift CNC 3.pdf', 101766, 'pdf', '../file/012 - Scissor Lift CNC 3.pdf'),
(91, 'Air Pin Gun Pollybase', '38', '2', '034-Air Pin Gun Pollybase.pdf', 130729, 'pdf', '../file/034-Air Pin Gun Pollybase.pdf'),
(92, 'Scissor Lift Membran Press ', '39', '2', '012 - Scissor Lift Membran Press FB.pdf', 101761, 'pdf', '../file/012 - Scissor Lift Membran Press FB.pdf'),
(93, 'Coll Press 1', '39', '2', '021 OPL - Mesin Coll Press FB 1.pdf', 175778, 'pdf', '../file/021 OPL - Mesin Coll Press FB 1.pdf'),
(94, 'Coll Press 2', '39', '2', '021 OPL - Mesin Coll Press FB 2.pdf', 175770, 'pdf', '../file/021 OPL - Mesin Coll Press FB 2.pdf'),
(95, 'Coll Press 3', '39', '2', '021 OPL - Mesin Coll Press FB 3.pdf', 175771, 'pdf', '../file/021 OPL - Mesin Coll Press FB 3.pdf'),
(96, 'Air Pin Gun Glassbed', '33', '1', '034-Air Pin Gun Glassbed.pdf', 139931, 'pdf', '../file/034-Air Pin Gun Glassbed.pdf'),
(97, 'Air Pin Gun Finishing', '9', '2', '034-Air Pin Gun Finishing.pdf', 149452, 'pdf', '../file/034-Air Pin Gun Finishing.pdf'),
(98, 'Manual Handling', '12', '2', '037_ - Manual Handling.pdf', 44891, 'pdf', '../file/037_ - Manual Handling.pdf'),
(99, 'Air Pin Gun PDI', '12', '2', '038 -Air Pin Gun PDI.pdf', 132645, 'pdf', '../file/038 -Air Pin Gun PDI.pdf'),
(100, 'Komunikasi Bahaya Bahan B3', '12', '2', 'OPL - Komunikasi Bahaya Bahan B3.pdf', 127921, 'pdf', '../file/OPL - Komunikasi Bahaya Bahan B3.pdf'),
(101, 'Cutter Kenko Retract', '12', '2', 'OPL Cutter kenko Retract.pdf', 133669, 'pdf', '../file/OPL Cutter kenko Retract.pdf'),
(102, 'Glass Wrapping 1', '20', '3', '012 - Glass Wrapping 1.pdf', 260821, 'pdf', '../file/012 - Glass Wrapping 1.pdf'),
(103, 'Glass Wrapping 2', '20', '3', '012 - Glass Wrapping 2.pdf', 260815, 'pdf', '../file/012 - Glass Wrapping 2.pdf'),
(104, 'Glass Wrapping 3', '20', '3', '012 - Glass Wrapping 3.pdf', 265064, 'pdf', '../file/012 - Glass Wrapping 3.pdf'),
(105, 'Radial Armsaw Crating', '18', '3', '003 - Radial Armsaw Crating.pdf', 134835, 'pdf', '../file/003 - Radial Armsaw Crating.pdf'),
(106, 'Blower Manual Crating', '18', '3', '008 - Blower Manual Crating.pdf', 122344, 'pdf', '../file/008 - Blower Manual Crating.pdf'),
(107, 'Kompresor Distribusi', '17', '3', '008 - Kompresor Distribusi.pdf', 134119, 'pdf', '../file/008 - Kompresor Distribusi.pdf'),
(108, 'Cross Cut Crating', '18', '3', '017 - Cross Cut Crating.pdf', 163030, 'pdf', '../file/017 - Cross Cut Crating.pdf'),
(109, 'Air Nail Gun Crating', '18', '3', '034-Air Nail Gun Crating.pdf', 138232, 'pdf', '../file/034-Air Nail Gun Crating.pdf'),
(110, 'Air Nail Gun Distribusi', '17', '3', '034-Air Nail Gun Distribusi.pdf', 139851, 'pdf', '../file/034-Air Nail Gun Distribusi.pdf'),
(111, 'Air Pin Gun Crating', '18', '3', '034-Air Pin Gun Crating.pdf', 140044, 'pdf', '../file/034-Air Pin Gun Crating.pdf'),
(112, 'Air Pin Gun Distribusi', '17', '3', '034-Air Pin Gun Distribusi.pdf', 140099, 'pdf', '../file/034-Air Pin Gun Distribusi.pdf'),
(113, 'Warehouse Unloading', '19', '3', '035 - WAREHOUSE Unloading.pdf', 159861, 'pdf', '../file/035 - WAREHOUSE Unloading.pdf'),
(114, 'Kompresor Unloading', '19', '3', '008 - Kompresor Unloading.pdf', 134119, 'pdf', '../file/008 - Kompresor Unloading.pdf'),
(115, 'Router Manual Makita Sample Maker', '11', '2', '002 - Router Manual Makita Sampel Maker.pdf', 129009, 'pdf', '../file/002 - Router Manual Makita Sampel Maker.pdf'),
(116, 'Tenon Table Sample Maker', '11', '2', '004 - Tenon Table Sample Maker.pdf', 121147, 'pdf', '../file/004 - Tenon Table Sample Maker.pdf'),
(117, 'Spindle Sample Maker', '11', '2', '006 - Spindle Sample Maker.pdf', 128551, 'pdf', '../file/006 - Spindle Sample Maker.pdf'),
(118, 'Air Pin Gun Sample Maker', '11', '2', '035-Air Pin Gun Sample Maker.pdf', 140035, 'pdf', '../file/035-Air Pin Gun Sample Maker.pdf'),
(119, 'Borring Manual Sample Maker', '11', '2', '037- Borring Manual Sample Maker.pdf', 167323, 'pdf', '../file/037- Borring Manual Sample Maker.pdf'),
(120, 'OPL Painting', '10', '2', '037- OPl Painting Fac. B.pdf', 177326, 'pdf', '../file/037- OPl Painting Fac. B.pdf'),
(121, 'Table Saw Sample Maker', '11', '2', '026 - Table Saw Sample Maker.pdf', 231404, 'pdf', '../file/026 - Table Saw Sample Maker.pdf'),
(122, 'Bor Makita Manual TPM', '58', '4', '002 - Bor Makita Manual TPM.pdf', 123693, 'pdf', '../file/002 - Bor Makita Manual TPM.pdf'),
(123, 'Bor Manual Table TPM', '58', '4', '002 - Bor Manual Table TPM.pdf', 130986, 'pdf', '../file/002 - Bor Manual Table TPM.pdf'),
(124, 'Cutting Wheel TPM', '58', '4', '002 - Cutting Wheel TPM.pdf', 130527, 'pdf', '../file/002 - Cutting Wheel TPM.pdf'),
(125, 'Drop Saw TPM', '58', '4', '002 - Drop Saw TPM.pdf', 100383, 'pdf', '../file/002 - Drop Saw TPM.pdf'),
(126, 'Gerinda Tangan TPM', '58', '4', '002 - Gerinda Tangan TPM.pdf', 127614, 'pdf', '../file/002 - Gerinda Tangan TPM.pdf'),
(127, 'Router Manual Makita TPM', '58', '4', '002 - Router Manual Makita TPM.pdf', 128877, 'pdf', '../file/002 - Router Manual Makita TPM.pdf'),
(128, 'OPL Engineering', '60', '1', '024 OPL - Engineering.pdf', 107785, 'pdf', '../file/024 OPL - Engineering.pdf'),
(129, 'Las Daiden TPM', '58', '4', '024 OPL - Mesin Las Daiden TPM.pdf', 210704, 'pdf', '../file/024 OPL - Mesin Las Daiden TPM.pdf'),
(130, 'Table Saw TPM', '58', '4', '026 - Table Saw TPM.pdf', 205990, 'pdf', '../file/026 - Table Saw TPM.pdf'),
(131, 'Tool Gun Support TPM', '58', '4', '034-Tool Gun Support TPM.pdf', 136790, 'pdf', '../file/034-Tool Gun Support TPM.pdf'),
(132, 'Air Pin Gun TPM', '58', '4', '035-Air Pin Gun TPM.pdf', 140431, 'pdf', '../file/035-Air Pin Gun TPM.pdf'),
(133, 'Drop Saw Finishing', '9', '2', '002 - Drop Saw Finishing.pdf', 100302, 'pdf', '../file/002 - Drop Saw Finishing.pdf'),
(134, 'Drop Saw Frame', '1', '1', '002 - Drop Saw Frame.pdf', 100302, 'pdf', '../file/002 - Drop Saw Frame.pdf'),
(135, 'Drop Saw Gaujing', '33', '1', '002 - Drop Saw Gaujing.pdf', 100302, 'pdf', '../file/002 - Drop Saw Gaujing.pdf'),
(136, 'Drop Saw Offline', '6', '1', '002 - Drop Saw Offline.pdf', 100363, 'pdf', '../file/002 - Drop Saw Offline.pdf'),
(137, 'Drop Saw Sample Maker', '11', '2', '002 - Drop Saw Sample Maker.pdf', 100302, 'pdf', '../file/002 - Drop Saw Sample Maker.pdf'),
(138, 'Frame Joint', '1', '1', '002 - Frame Joint.pdf', 82627, 'pdf', '../file/002 - Frame Joint.pdf'),
(139, 'Mitre Saw Joint', '1', '1', '002 - Mitre Saw Joint.pdf', 67730, 'pdf', '../file/002 - Mitre Saw Joint.pdf'),
(140, 'Giollotine 1', '9', '2', '003 - Giollotine 1 ( Glass bead^JMS ).pdf', 86936, 'pdf', '../file/003 - Giollotine 1 ( Glass bead^JMS ).pdf'),
(141, 'Giollotine 2', '9', '2', '003 - Giollotine 2 ( Glass bead^JMS ).pdf', 86966, 'pdf', '../file/003 - Giollotine 2 ( Glass bead^JMS ).pdf'),
(142, 'Giollotine 3', '9', '2', '003 - Giollotine 3 ( Glass bead^JMS ).pdf', 86968, 'pdf', '../file/003 - Giollotine 3 ( Glass bead^JMS ).pdf'),
(143, 'Brush Sanding BSA', '1', '1', '004 - Brush Sanding BSA.pdf', 142873, 'pdf', '../file/004 - Brush Sanding BSA.pdf'),
(144, 'Double End Tenoner (DET) FB', '38', '2', '006 - Double End Tenoner (DET) FB.pdf', 159598, 'pdf', '../file/006 - Double End Tenoner (DET) FB.pdf'),
(145, 'Spindle 1 Offline', '6', '1', '006 - Spindle 1 Offline.pdf', 135211, 'pdf', '../file/006 - Spindle 1 Offline.pdf'),
(146, 'Spindle 2 Offline', '6', '1', '006 - Spindle 2 Offline.pdf', 135211, 'pdf', '../file/006 - Spindle 2 Offline.pdf'),
(147, 'Spindle 3 Offline', '6', '1', '006 - Spindle 3 Offline.pdf', 135187, 'pdf', '../file/006 - Spindle 3 Offline.pdf'),
(148, 'Spindle 4 Komponen', '5', '1', '006 - Spindle 4 Komponen.pdf', 161593, 'pdf', '../file/006 - Spindle 4 Komponen.pdf'),
(149, 'Spindle Archt', '35', '1', '006 - Spindle Archt.pdf', 137796, 'pdf', '../file/006 - Spindle Archt.pdf'),
(150, 'Halving 1', '6', '1', '007 - Halving 1.pdf', 129098, 'pdf', '../file/007 - Halving 1.pdf'),
(151, 'Halving 2', '6', '1', '008 - Halving 2.pdf', 129103, 'pdf', '../file/008 - Halving 2.pdf'),
(152, 'Bor Manual Rail Komponen', '35', '1', '009 - Bor Manual Rail Komponen.pdf', 129157, 'pdf', '../file/009 - Bor Manual Rail Komponen.pdf'),
(153, 'Bor Manual Single', '6', '1', '009 - Bor Manual Single.pdf', 120158, 'pdf', '../file/009 - Bor Manual Single.pdf'),
(154, 'Auto Stacking DET 2 FB', '38', '2', '009 - Mesin Auto Stacking DET 2 FB.pdf', 138238, 'pdf', '../file/009 - Mesin Auto Stacking DET 2 FB.pdf'),
(155, 'Auto Stacking DET Sander Time Saver', '36', '1', '009 - Mesin Auto Stacking DET Sander Time Saver.pdf', 138426, 'pdf', '../file/009 - Mesin Auto Stacking DET Sander Time Saver.pdf'),
(156, 'Auto Stacking DET Time Saver', '38', '2', '009 - Mesin Auto Stacking DET Time Saver.pdf', 138238, 'pdf', '../file/009 - Mesin Auto Stacking DET Time Saver.pdf'),
(157, 'Auto Stacking Hydromat', '35', '1', '009 - Mesin Auto Stacking Hydromat.pdf', 146847, 'pdf', '../file/009 - Mesin Auto Stacking Hydromat.pdf'),
(158, 'Auto Stacking Leadermax ', '35', '1', '009 - Mesin Auto Stacking Leadermax.pdf', 146844, 'pdf', '../file/009 - Mesin Auto Stacking Leadermax.pdf'),
(159, 'Makita Brace Rail dan Router', '1', '1', '010 - Makita Brace Rail dan Router.pdf', 139133, 'pdf', '../file/010 - Makita Brace Rail dan Router.pdf'),
(160, 'Plastic Cutter Machiner', '20', '3', '011 - Plastic Cutter Machiner.pdf', 250137, 'pdf', '../file/011 - Plastic Cutter Machiner.pdf'),
(161, 'Hidromat 2', '35', '1', '014 - Hidromat II.pdf', 158881, 'pdf', '../file/014 - Hidromat II.pdf'),
(162, 'Bandsaw Vertical', '6', '1', '019 - Bandsaw Vertical.pdf', 134283, 'pdf', '../file/019 - Bandsaw Vertical.pdf'),
(163, 'Glue Spreader A-Frame 1', '4', '1', '019 OPL - Glue Spreader A-Frame 1.pdf', 181240, 'pdf', '../file/019 OPL - Glue Spreader A-Frame 1.pdf'),
(164, 'Glue Spreader A-Frame 2', '4', '1', '019 OPL - Glue Spreader A-Frame 2.pdf', 180867, 'pdf', '../file/019 OPL - Glue Spreader A-Frame 2.pdf'),
(165, 'Glue Spreader Delaypress', '38', '2', '019 OPL - Glue Spreader Delaypress.pdf', 181665, 'pdf', '../file/019 OPL - Glue Spreader Delaypress.pdf'),
(166, 'Glue Spreader HF Encaps', '4', '1', '019 OPL - Glue Spreader HF Encaps.pdf', 181187, 'pdf', '../file/019 OPL - Glue Spreader HF Encaps.pdf'),
(167, 'Glue Spreader Hotpress FA', '34', '1', '019 OPL - Glue Spreader Hotpress FA.pdf', 180675, 'pdf', '../file/019 OPL - Glue Spreader Hotpress FA.pdf'),
(168, 'Glue Spreader Hotpress FB', '34', '1', '019 OPL - Glue Spreader Hotpress FB.pdf', 181102, 'pdf', '../file/019 OPL - Glue Spreader Hotpress FB.pdf'),
(169, 'Glue Spreader Hotpress', '34', '1', '019 OPL - Glue Spreader HotPress.pdf', 181191, 'pdf', '../file/019 OPL - Glue Spreader HotPress.pdf'),
(170, 'Glue Spreader Membran Press', '38', '2', '019 OPL - Glue Spreader Membran Press.pdf', 181625, 'pdf', '../file/019 OPL - Glue Spreader Membran Press.pdf'),
(171, 'Srapping', '9', '2', '020 OPL - Mesin Srapping.pdf', 188216, 'pdf', '../file/020 OPL - Mesin Srapping.pdf'),
(172, 'Delay Press FB', '39', '2', '021 OPL - Mesin Delay Press FB.pdf', 183608, 'pdf', '../file/021 OPL - Mesin Delay Press FB.pdf'),
(173, 'Hotpress FB', '39', '2', '021 OPL - Mesin Hotpress  FB.pdf', 183610, 'pdf', '../file/021 OPL - Mesin Hotpress  FB.pdf'),
(174, 'Membran Press', '39', '2', '021 OPL - Mesin Membran Press.pdf', 196385, 'pdf', '../file/021 OPL - Mesin Membran Press.pdf'),
(175, 'Tool Room Mesin LMC - TM 300', '60', '1', '023 OPL - Tool room mesin LMC - TM 300.pdf', 216673, 'pdf', '../file/023 OPL - Tool room mesin LMC - TM 300.pdf'),
(176, 'Tool Room Mesin Makita Gerinda', '60', '1', '023 OPL - Tool room mesin Makita Gerinda.pdf', 165478, 'pdf', '../file/023 OPL - Tool room mesin Makita Gerinda.pdf'),
(177, 'Tool Room Mesin Rondamat 1', '60', '1', '023 OPL - Tool room mesin Rondamat 1.pdf', 168877, 'pdf', '../file/023 OPL - Tool room mesin Rondamat 1.pdf'),
(178, 'Tool Room Mesin Rondamat 2', '60', '1', '023 OPL - Tool room mesin Rondamat 2.pdf', 168990, 'pdf', '../file/023 OPL - Tool room mesin Rondamat 2.pdf'),
(179, 'Tool Room Mesin Rondamat 909', '60', '1', '023 OPL - Tool room mesin Rondamat 909.pdf', 166488, 'pdf', '../file/023 OPL - Tool room mesin Rondamat 909.pdf'),
(180, 'Tool Room Mesin Vollmer', '60', '1', '023 OPL - Tool room mesin Vollmer.pdf', 173355, 'pdf', '../file/023 OPL - Tool room mesin Vollmer.pdf'),
(181, 'Panel Saw', '6', '1', '026 - Panel Saw.pdf', 222029, 'pdf', '../file/026 - Panel Saw.pdf'),
(182, 'Air Pin Gun Frame', '1', '1', '034-Air Pin Gun Frame.pdf', 140156, 'pdf', '../file/034-Air Pin Gun Frame.pdf'),
(183, 'HF Laminator Taylor 1', '36', '1', '035-HF Laminator Taylor 1.pdf', 166670, 'pdf', '../file/035-HF Laminator Taylor 1.pdf'),
(184, 'Manual Handling Assembling', '36', '1', '037_ - Manual Handling Assembling.pdf', 43636, 'pdf', '../file/037_ - Manual Handling Assembling.pdf'),
(185, 'Manual Handling Cramping HF 1', '36', '1', '037_ - Manual Handling Cramping HF 1.pdf', 45895, 'pdf', '../file/037_ - Manual Handling Cramping HF 1.pdf'),
(186, 'Manual Handling Cramping HF 2', '36', '1', '037_ - Manual Handling Cramping HF 2.pdf', 43583, 'pdf', '../file/037_ - Manual Handling Cramping HF 2.pdf'),
(187, 'Manual Handling Cramping Taylor 1', '36', '1', '037_ - Manual Handling Cramping Taylor 1.pdf', 43569, 'pdf', '../file/037_ - Manual Handling Cramping Taylor 1.pdf'),
(188, 'Manual Handling Cramping Taylor 2', '36', '1', '037_ - Manual Handling Cramping Taylor 2.pdf', 43579, 'pdf', '../file/037_ - Manual Handling Cramping Taylor 2.pdf'),
(189, 'Manual Handling Tool Room', '60', '1', '037_ - Manual Handling Tool room.pdf', 44632, 'pdf', '../file/037_ - Manual Handling Tool room.pdf'),
(190, 'Komunikasi Bahaya Bahan B3', '22', '4', 'OPL - Komunikasi Bahaya Bahan B3.pdf', 127551, 'pdf', '../file/OPL - Komunikasi Bahaya Bahan B3.pdf'),
(191, 'Salida Sander', '5', '1', 'OPL - Mesin Salida Sander.pdf', 107039, 'pdf', '../file/OPL - Mesin Salida Sander.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sebagai` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `nama`, `sebagai`) VALUES
(1, '4608', 'arip', 'Arip Lisantoro', 'admin'),
(2, 'user', 'user', 'user', 'user'),
(3, '4444', 'Noval', 'Muhamad Noval Abiyu', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_id` int(11) NOT NULL,
  `lokasi_id` int(11) NOT NULL,
  `department_nama` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_department`
--

INSERT INTO `tbl_department` (`department_id`, `lokasi_id`, `department_nama`) VALUES
(1, 1, 'Frame'),
(2, 1, 'Jamb'),
(3, 1, 'Venner'),
(4, 1, 'Laminating'),
(5, 1, 'Door Componen'),
(6, 1, 'Offline'),
(7, 1, 'Cramping'),
(8, 1, 'Tool Room'),
(9, 2, 'Finishing'),
(10, 2, 'Painting'),
(11, 2, 'Sample Maker'),
(12, 2, 'PDI'),
(13, 2, 'Repair Door'),
(14, 2, 'Poly Base'),
(15, 2, 'CNC'),
(16, 2, 'Subcon'),
(17, 3, 'Distribusi'),
(18, 3, 'Crating'),
(19, 3, 'Un/Loading'),
(20, 3, 'Glass Store'),
(21, 4, 'Mekanik/Elektrik'),
(22, 4, 'AM/TPM'),
(23, 4, 'Boiler'),
(24, 6, 'Security'),
(25, 5, 'Financial Controller'),
(26, 5, 'NPD & Compliaces'),
(27, 5, 'HR & Training'),
(28, 5, 'Custumer Servis & Planning'),
(29, 5, 'Operational Bogor'),
(30, 5, 'Procurement'),
(31, 5, 'OHSE'),
(32, 7, 'SCM'),
(33, 1, 'Line-1'),
(34, 1, 'Line-2'),
(35, 1, 'Line-3'),
(36, 1, 'Line-4'),
(38, 2, 'Line-5'),
(39, 2, 'Line-6'),
(40, 1, 'Forklift'),
(41, 2, 'Forklift'),
(42, 3, 'Forklift'),
(43, 4, 'Forklift'),
(44, 1, 'X-Brasi'),
(58, 4, 'Workshop'),
(59, 10, 'All Area'),
(60, 1, 'Engeneering'),
(61, 2, 'Engeneering');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lokasi`
--

CREATE TABLE `tbl_lokasi` (
  `lokasi_id` int(11) NOT NULL,
  `lokasi_nama` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_lokasi`
--

INSERT INTO `tbl_lokasi` (`lokasi_id`, `lokasi_nama`) VALUES
(1, 'FA'),
(2, 'FB'),
(3, 'FC'),
(4, 'MTC'),
(5, 'Office'),
(6, 'Security'),
(7, 'SCM'),
(10, 'All Factory');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dataopl`
--
ALTER TABLE `dataopl`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `lokasi_id` (`lokasi_id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `lokasi_id` (`lokasi_id`) USING BTREE;

--
-- Indeks untuk tabel `tbl_lokasi`
--
ALTER TABLE `tbl_lokasi`
  ADD PRIMARY KEY (`lokasi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dataopl`
--
ALTER TABLE `dataopl`
  MODIFY `idx` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `tbl_lokasi`
--
ALTER TABLE `tbl_lokasi`
  MODIFY `lokasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Agu 2024 pada 07.51
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsis21`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `namalengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `level`, `namalengkap`) VALUES
(1, 'admin', 'ADMIN', 'ADMIN', 'ADMIN'),
(2, 'shifa', 'shifa', 'USER', 'shifa adzkia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` varchar(5) NOT NULL,
  `nm_alternatif` varchar(35) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nm_alternatif`, `nik`, `alamat`) VALUES
('al001', 'A. RAIHAN ANUGERAH', '7309020404050001', 'Lingkungan Mallisu'),
('al002', 'AAN IBRAHIM', '7271032707930004', 'Lingkungan Mario'),
('al003', 'ABD. MUIS', '7309020507830002', 'Lingkungan Tobonggae'),
('al004', 'AFIF MAWARDI', '7309020701840002', 'Lingkungan Tobonggae'),
('al005', 'AHMAD JAMHARI', '7309021912030001', 'Lingkungan Barugae'),
('al006', 'AHMAD SYARIF', '7309022603890002', 'Lingkungan Tobonggae'),
('al007', 'AKMAL W', '7309021607830004', 'Lingkungan Tobonggae'),
('al008', 'AKSAL', '7309020507850002', 'Lingkungan Gattareng'),
('al009', 'ANDIKA HIDAYAT', '7309021811050001', 'Lingkungan Barugae'),
('al010', 'ARMAWATI', '7309024111890001', 'Lingkungan Mario'),
('al011', 'AWALUDDIN', '7309022609830001', 'Lingkungan Gattareng'),
('al012', 'AZIZAH MUKHLISA', '7309024107000005', 'Lingkungan Mario'),
('al013', 'DARMAWATI', '7309026104730002', 'Lingkungan Gattareng'),
('al014', 'DEVI ADRIANI AMELIA', '7309027105000002', 'Lingkungan Tobonggae'),
('al015', 'DIAN PRIMA SAPUTRA', '730922204920001', 'Lingkungan Tobonggae'),
('al016', 'DIDIET ARDIANSYAH', '7309020312040001', 'Lingkungan Mario'),
('al017', 'FATMAWATI', '7309026606950001', 'Lingkungan Bonto Marannu'),
('al018', 'FENNI SARI', '7312054505910004', 'Lingkungan Mallisu'),
('al019', 'FIJRIANI', '7309026107940002', 'Lingkungan Tobonggae'),
('al020', 'FIRDAUS', '7309022506740001', 'Lingkungan Bonto Marannu'),
('al021', 'FITRI AWALIAH', '7309025502980001', 'Lingkungan Tobonggae'),
('al022', 'FITRIANI', '7309026712000001', 'Lingkungan Barugae'),
('al023', 'FITRIANI ARAS', '7309025708920004', 'Lingkungan Mario'),
('al024', 'HAMKA', '7309021710750002', 'Lingkungan Mallisu'),
('al025', 'HASNAWATI', '7309024311700001', 'Lingkungan Gattareng'),
('al026', 'HASRI', '7401191501850001', 'Lingkungan Bonto Marannu'),
('al027', 'HIDAYAT TAHTI', '7309020603800002', 'Lingkungan Tobonggae'),
('al028', 'HIDAYATULLAH', '7309020606050002', 'Lingkungan Barugae'),
('al029', 'ICHA NUR AZIZAH', '7309024203050001', 'Lingkungan Barugae'),
('al030', 'ILMAWATI', '7309026704870003', 'Lingkungan Tobonggae'),
('al031', 'INDAH KHAERUNNISA', '7309025705000001', 'Lingkungan Bonto Marannu'),
('al032', 'IRNAWATI', '7309024102010003', 'Lingkungan Bonto Marannu'),
('al033', 'IRWANDI', '7309020504850003', 'Lingkungan Tobonggae'),
('al034', 'ISMAIL', '7309020908800002', 'Lingkungan Tobonggae'),
('al035', 'JABAL NUR', '7309021103850001', 'Lingkungan Mario'),
('al036', 'JASMAWATI', '7309027009880001', 'Lingkungan Barugae'),
('al037', 'LUKMAN', '7309021707820002', 'Lingkungan Bonto Marannu'),
('al038', 'MANSYUR', '7309020102810006', 'Lingkungan Mario'),
('al039', 'MASRIANI', '7309025309880001', 'Lingkungan Tobonggae'),
('al040', 'MAWAR CITRA LESTARI', '7309024303040001', 'Lingkungan Mario'),
('al041', 'MAYASARI', '7309024402950001', 'Lingkungan Tobonggae'),
('al042', 'MISRIANI', '7308124602950002', 'Lingkungan Bonto Marannu'),
('al043', 'MURSALIM', '7309022208940001', 'Lingkungan Gattareng'),
('al044', 'MUSLIMAWATI', '7309026209910001', 'Lingkungan Gattareng'),
('al045', 'MUTIARA FADLIA', '7309016207990003', 'Lingkungan Gattareng'),
('al046', 'NAHALIJAH', '7309025212800002', 'Lingkungan Mario'),
('al047', 'NUR SHABAH', '7310085408860002', 'Lingkungan Tobonggae'),
('al048', 'NURAENI', '7309024809980001', 'Lingkungan Tobonggae'),
('al049', 'RAHMAT BASRI', '7309021601010001', 'Lingkungan Mallisu'),
('al050', 'RAHMAT RAMADHAN ADIL', '7309021610040002', 'Lingkungan Mallisu'),
('al051', 'RAHMAWATI', '7309027105970001', 'Lingkungan Mario'),
('al052', 'RAMLI', '7309023112780035', 'Lingkungan Mallisu'),
('al053', 'RINA SYAHYANI', '7309024705900001', 'Lingkungan Mallisu'),
('al054', 'RISKA YUNITA ALWI', '7309026005930002', 'Lingkungan Tobonggae'),
('al055', 'ROSDIANA UDIN', '7309027112940022', 'Lingkungan Tobonggae'),
('al056', 'RUSDIANTO UDIN', '7309021608990001', 'Lingkungan Barugae'),
('al057', 'RUSDIN', '7309021005790002', 'Lingkungan Gattareng'),
('al058', 'SAHRIYANI RIDWAN', '7309026607770001', 'Lingkungan Gattareng'),
('al059', 'SAHRYANTI', '7309025308930001', 'Lingkungan Mario'),
('al060', 'SINARWATI', '7309024304780001', 'Lingkungan Mario'),
('al061', 'SRI DEVI LESTARI', '7309026910990001', 'Lingkungan Gattareng'),
('al062', 'SRI MEI UTAMI', '7309024305000005', 'Lingkungan Mallisu'),
('al063', 'SRI WAHYUNI', '7309027006920001', 'Lingkungan Tobonggae'),
('al064', 'SRI WAHYUNI GAFFAR', '7309026105890002', 'Lingkungan Tobonggae'),
('al065', 'SUKMAWATI', '7309024506860001', 'Lingkungan Mario'),
('al066', 'SYAMSUL ALAM', '7309022503920001', 'Lingkungan Mallisu'),
('al067', 'TENRI SANNA', '7309024703930001', 'Lingkungan Mario'),
('al068', 'WAHYU ASRIADI DARWIS', '7309021406930004', 'Lingkungan Tobonggae'),
('al069', 'ZAINAL', '7309021505820001', 'Lingkungan Gattareng'),
('al070', 'ZUL KHAEDIR. A', '7309020704980001', 'Lingkungan Mallisu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` varchar(5) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `bobot` double NOT NULL,
  `poin1` double NOT NULL,
  `poin2` double NOT NULL,
  `poin3` double NOT NULL,
  `poin4` double NOT NULL,
  `poin5` double NOT NULL,
  `sifat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`, `poin1`, `poin2`, `poin3`, `poin4`, `poin5`, `sifat`) VALUES
('kr001', 'Pengalaman', 35, 1, 2, 3, 4, 5, 'benefit'),
('kr002', 'Domisili', 35, 1, 2, 3, 4, 5, 'benefit'),
('kr003', 'Pendidikan', 30, 1, 2, 3, 4, 5, 'benefit'),
('kr004', 'Non-Politik', 30, 1, 2, 3, 4, 5, 'benefit'),
('kr005', 'Pengetahuan', 30, 1, 2, 3, 4, 5, 'benefit'),
('kr006', 'kesehatan', 25, 1, 2, 3, 4, 5, 'benefit'),
('kr007', 'Umur', 15, 1, 2, 3, 4, 5, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin'),
('admin1', 'e00cf25ad42683b3df678c61f42c6bda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_matrik`
--

CREATE TABLE `nilai_matrik` (
  `id_matrik` int(7) NOT NULL,
  `id_alternatif` varchar(7) NOT NULL,
  `id_kriteria` varchar(7) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nilai_matrik`
--

INSERT INTO `nilai_matrik` (`id_matrik`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(1713, 'al070', 'kr007', 5),
(1712, 'al070', 'kr006', 5),
(1711, 'al070', 'kr005', 5),
(1710, 'al070', 'kr004', 5),
(1709, 'al070', 'kr003', 4),
(1708, 'al070', 'kr002', 4),
(1707, 'al070', 'kr001', 5),
(1706, 'al069', 'kr007', 5),
(1705, 'al069', 'kr006', 4),
(1704, 'al069', 'kr005', 4),
(1703, 'al069', 'kr004', 4),
(1702, 'al069', 'kr003', 5),
(1701, 'al069', 'kr002', 5),
(1700, 'al069', 'kr001', 4),
(1699, 'al068', 'kr007', 4),
(1698, 'al068', 'kr006', 5),
(1697, 'al068', 'kr005', 3),
(1696, 'al068', 'kr004', 4),
(1695, 'al068', 'kr003', 4),
(1694, 'al068', 'kr002', 5),
(1693, 'al068', 'kr001', 5),
(1692, 'al067', 'kr007', 5),
(1691, 'al067', 'kr006', 4),
(1690, 'al067', 'kr005', 3),
(1689, 'al067', 'kr004', 3),
(1688, 'al067', 'kr003', 4),
(1687, 'al067', 'kr002', 4),
(1686, 'al067', 'kr001', 4),
(1678, 'al066', 'kr007', 4),
(1677, 'al066', 'kr006', 4),
(1676, 'al066', 'kr005', 5),
(1675, 'al066', 'kr004', 5),
(1674, 'al066', 'kr003', 4),
(1673, 'al066', 'kr002', 4),
(1672, 'al066', 'kr001', 4),
(1671, 'al065', 'kr007', 3),
(1670, 'al065', 'kr006', 4),
(1669, 'al065', 'kr005', 4),
(1668, 'al065', 'kr004', 5),
(1667, 'al065', 'kr003', 4),
(1666, 'al065', 'kr002', 4),
(1665, 'al065', 'kr001', 3),
(1664, 'al064', 'kr007', 4),
(1663, 'al064', 'kr006', 4),
(1662, 'al064', 'kr005', 5),
(1661, 'al064', 'kr004', 5),
(1660, 'al064', 'kr003', 5),
(1659, 'al064', 'kr002', 4),
(1658, 'al064', 'kr001', 5),
(1657, 'al063', 'kr007', 5),
(1656, 'al063', 'kr006', 4),
(1655, 'al063', 'kr005', 5),
(1654, 'al063', 'kr004', 5),
(1653, 'al063', 'kr003', 4),
(1652, 'al063', 'kr002', 5),
(1651, 'al063', 'kr001', 4),
(1650, 'al062', 'kr007', 4),
(1649, 'al062', 'kr006', 4),
(1648, 'al062', 'kr005', 5),
(1647, 'al062', 'kr004', 5),
(1646, 'al062', 'kr003', 5),
(1645, 'al062', 'kr002', 5),
(1644, 'al062', 'kr001', 4),
(1643, 'al061', 'kr007', 4),
(1642, 'al061', 'kr006', 5),
(1641, 'al061', 'kr005', 5),
(1640, 'al061', 'kr004', 5),
(1639, 'al061', 'kr003', 4),
(1638, 'al061', 'kr002', 4),
(1637, 'al061', 'kr001', 4),
(1636, 'al060', 'kr007', 5),
(1635, 'al060', 'kr006', 5),
(1634, 'al060', 'kr005', 4),
(1633, 'al060', 'kr004', 4),
(1632, 'al060', 'kr003', 4),
(1631, 'al060', 'kr002', 5),
(1630, 'al060', 'kr001', 5),
(1629, 'al059', 'kr007', 4),
(1628, 'al059', 'kr006', 4),
(1627, 'al059', 'kr005', 3),
(1626, 'al059', 'kr004', 4),
(1625, 'al059', 'kr003', 5),
(1624, 'al059', 'kr002', 5),
(1623, 'al059', 'kr001', 4),
(1622, 'al058', 'kr007', 4),
(1621, 'al058', 'kr006', 5),
(1620, 'al058', 'kr005', 3),
(1619, 'al058', 'kr004', 5),
(1618, 'al058', 'kr003', 4),
(1617, 'al058', 'kr002', 5),
(1616, 'al058', 'kr001', 3),
(1615, 'al057', 'kr007', 3),
(1614, 'al057', 'kr006', 4),
(1613, 'al057', 'kr005', 5),
(1612, 'al057', 'kr004', 4),
(1611, 'al057', 'kr003', 5),
(1610, 'al057', 'kr002', 5),
(1609, 'al057', 'kr001', 5),
(1608, 'al056', 'kr007', 4),
(1607, 'al056', 'kr006', 5),
(1606, 'al056', 'kr005', 5),
(1605, 'al056', 'kr004', 4),
(1604, 'al056', 'kr003', 4),
(1603, 'al056', 'kr002', 5),
(1602, 'al056', 'kr001', 5),
(1601, 'al055', 'kr007', 5),
(1600, 'al055', 'kr006', 5),
(1599, 'al055', 'kr005', 4),
(1598, 'al055', 'kr004', 4),
(1597, 'al055', 'kr003', 5),
(1596, 'al055', 'kr002', 5),
(1595, 'al055', 'kr001', 4),
(1594, 'al054', 'kr007', 4),
(1593, 'al054', 'kr006', 4),
(1592, 'al054', 'kr005', 5),
(1591, 'al054', 'kr004', 5),
(1590, 'al054', 'kr003', 5),
(1589, 'al054', 'kr002', 5),
(1588, 'al054', 'kr001', 5),
(1587, 'al053', 'kr007', 4),
(1586, 'al053', 'kr006', 5),
(1585, 'al053', 'kr005', 4),
(1584, 'al053', 'kr004', 5),
(1583, 'al053', 'kr003', 5),
(1582, 'al053', 'kr002', 5),
(1581, 'al053', 'kr001', 4),
(1580, 'al052', 'kr007', 5),
(1579, 'al052', 'kr006', 5),
(1578, 'al052', 'kr005', 5),
(1577, 'al052', 'kr004', 5),
(1576, 'al052', 'kr003', 4),
(1575, 'al052', 'kr002', 4),
(1574, 'al052', 'kr001', 4),
(1573, 'al051', 'kr007', 5),
(1572, 'al051', 'kr006', 4),
(1571, 'al051', 'kr005', 5),
(1570, 'al051', 'kr004', 4),
(1569, 'al051', 'kr003', 4),
(1568, 'al051', 'kr002', 4),
(1567, 'al051', 'kr001', 5),
(1566, 'al050', 'kr007', 5),
(1565, 'al050', 'kr006', 5),
(1564, 'al050', 'kr005', 4),
(1563, 'al050', 'kr004', 5),
(1562, 'al050', 'kr003', 5),
(1561, 'al050', 'kr002', 5),
(1560, 'al050', 'kr001', 3),
(1559, 'al049', 'kr007', 3),
(1558, 'al049', 'kr006', 3),
(1557, 'al049', 'kr005', 4),
(1556, 'al049', 'kr004', 5),
(1555, 'al049', 'kr003', 5),
(1554, 'al049', 'kr002', 5),
(1553, 'al049', 'kr001', 5),
(1552, 'al048', 'kr007', 4),
(1551, 'al048', 'kr006', 4),
(1550, 'al048', 'kr005', 3),
(1549, 'al048', 'kr004', 5),
(1548, 'al048', 'kr003', 4),
(1547, 'al048', 'kr002', 4),
(1546, 'al048', 'kr001', 3),
(1545, 'al047', 'kr007', 3),
(1544, 'al047', 'kr006', 5),
(1543, 'al047', 'kr005', 4),
(1542, 'al047', 'kr004', 5),
(1541, 'al047', 'kr003', 5),
(1540, 'al047', 'kr002', 5),
(1539, 'al047', 'kr001', 4),
(1538, 'al046', 'kr007', 5),
(1537, 'al046', 'kr006', 5),
(1536, 'al046', 'kr005', 5),
(1535, 'al046', 'kr004', 5),
(1534, 'al046', 'kr003', 4),
(1533, 'al046', 'kr002', 5),
(1532, 'al046', 'kr001', 4),
(1531, 'al045', 'kr007', 5),
(1530, 'al045', 'kr006', 5),
(1529, 'al045', 'kr005', 3),
(1528, 'al045', 'kr004', 5),
(1527, 'al045', 'kr003', 3),
(1526, 'al045', 'kr002', 4),
(1525, 'al045', 'kr001', 3),
(1524, 'al044', 'kr007', 4),
(1523, 'al044', 'kr006', 5),
(1522, 'al044', 'kr005', 4),
(1521, 'al044', 'kr004', 4),
(1520, 'al044', 'kr003', 4),
(1519, 'al044', 'kr002', 5),
(1518, 'al044', 'kr001', 4),
(1517, 'al043', 'kr007', 4),
(1516, 'al043', 'kr006', 5),
(1515, 'al043', 'kr005', 4),
(1514, 'al043', 'kr004', 3),
(1513, 'al043', 'kr003', 4),
(1512, 'al043', 'kr002', 4),
(1511, 'al043', 'kr001', 4),
(1510, 'al042', 'kr007', 3),
(1509, 'al042', 'kr006', 5),
(1508, 'al042', 'kr005', 5),
(1507, 'al042', 'kr004', 5),
(1506, 'al042', 'kr003', 4),
(1505, 'al042', 'kr002', 4),
(1504, 'al042', 'kr001', 5),
(1503, 'al041', 'kr007', 5),
(1502, 'al041', 'kr006', 5),
(1501, 'al041', 'kr005', 5),
(1500, 'al041', 'kr004', 5),
(1499, 'al041', 'kr003', 3),
(1498, 'al041', 'kr002', 5),
(1497, 'al041', 'kr001', 5),
(1496, 'al040', 'kr007', 5),
(1495, 'al040', 'kr006', 5),
(1494, 'al040', 'kr005', 5),
(1493, 'al040', 'kr004', 5),
(1492, 'al040', 'kr003', 4),
(1491, 'al040', 'kr002', 5),
(1490, 'al040', 'kr001', 5),
(1489, 'al039', 'kr007', 5),
(1488, 'al039', 'kr006', 5),
(1487, 'al039', 'kr005', 4),
(1486, 'al039', 'kr004', 5),
(1485, 'al039', 'kr003', 5),
(1484, 'al039', 'kr002', 5),
(1483, 'al039', 'kr001', 5),
(1482, 'al038', 'kr007', 3),
(1481, 'al038', 'kr006', 5),
(1480, 'al038', 'kr005', 3),
(1479, 'al038', 'kr004', 3),
(1478, 'al038', 'kr003', 4),
(1477, 'al038', 'kr002', 4),
(1476, 'al038', 'kr001', 3),
(1475, 'al037', 'kr007', 3),
(1474, 'al037', 'kr006', 4),
(1473, 'al037', 'kr005', 4),
(1472, 'al037', 'kr004', 3),
(1471, 'al037', 'kr003', 4),
(1470, 'al037', 'kr002', 4),
(1469, 'al037', 'kr001', 3),
(1468, 'al036', 'kr007', 3),
(1467, 'al036', 'kr006', 4),
(1466, 'al036', 'kr005', 4),
(1465, 'al036', 'kr004', 5),
(1464, 'al036', 'kr003', 5),
(1463, 'al036', 'kr002', 5),
(1462, 'al036', 'kr001', 3),
(1461, 'al035', 'kr007', 4),
(1460, 'al035', 'kr006', 4),
(1459, 'al035', 'kr005', 5),
(1458, 'al035', 'kr004', 5),
(1457, 'al035', 'kr003', 4),
(1456, 'al035', 'kr002', 5),
(1455, 'al035', 'kr001', 5),
(1454, 'al034', 'kr007', 4),
(1453, 'al034', 'kr006', 5),
(1452, 'al034', 'kr005', 5),
(1451, 'al034', 'kr004', 5),
(1450, 'al034', 'kr003', 5),
(1449, 'al034', 'kr002', 4),
(1448, 'al034', 'kr001', 5),
(1447, 'al033', 'kr007', 5),
(1446, 'al033', 'kr006', 5),
(1445, 'al033', 'kr005', 4),
(1444, 'al033', 'kr004', 5),
(1443, 'al033', 'kr003', 5),
(1442, 'al033', 'kr002', 4),
(1441, 'al033', 'kr001', 4),
(1440, 'al032', 'kr007', 3),
(1439, 'al032', 'kr006', 5),
(1438, 'al032', 'kr005', 5),
(1437, 'al032', 'kr004', 5),
(1436, 'al032', 'kr003', 5),
(1435, 'al032', 'kr002', 5),
(1434, 'al032', 'kr001', 5),
(1433, 'al031', 'kr007', 4),
(1432, 'al031', 'kr006', 5),
(1431, 'al031', 'kr005', 5),
(1430, 'al031', 'kr004', 5),
(1429, 'al031', 'kr003', 4),
(1428, 'al031', 'kr002', 4),
(1427, 'al031', 'kr001', 5),
(1426, 'al030', 'kr007', 5),
(1425, 'al030', 'kr006', 5),
(1424, 'al030', 'kr005', 5),
(1423, 'al030', 'kr004', 4),
(1422, 'al030', 'kr003', 5),
(1421, 'al030', 'kr002', 5),
(1420, 'al030', 'kr001', 5),
(1419, 'al029', 'kr007', 4),
(1418, 'al029', 'kr006', 5),
(1417, 'al029', 'kr005', 3),
(1416, 'al029', 'kr004', 5),
(1415, 'al029', 'kr003', 3),
(1414, 'al029', 'kr002', 4),
(1413, 'al029', 'kr001', 3),
(1412, 'al028', 'kr007', 3),
(1411, 'al028', 'kr006', 4),
(1410, 'al028', 'kr005', 5),
(1409, 'al028', 'kr004', 5),
(1408, 'al028', 'kr003', 4),
(1407, 'al028', 'kr002', 5),
(1406, 'al028', 'kr001', 4),
(1405, 'al027', 'kr007', 4),
(1404, 'al027', 'kr006', 4),
(1403, 'al027', 'kr005', 5),
(1402, 'al027', 'kr004', 4),
(1401, 'al027', 'kr003', 4),
(1400, 'al027', 'kr002', 4),
(1399, 'al027', 'kr001', 4),
(1398, 'al026', 'kr007', 3),
(1397, 'al026', 'kr006', 5),
(1396, 'al026', 'kr005', 4),
(1395, 'al026', 'kr004', 5),
(1394, 'al026', 'kr003', 4),
(1393, 'al026', 'kr002', 4),
(1392, 'al026', 'kr001', 4),
(1391, 'al025', 'kr007', 3),
(1390, 'al025', 'kr006', 5),
(1389, 'al025', 'kr005', 5),
(1388, 'al025', 'kr004', 5),
(1387, 'al025', 'kr003', 5),
(1386, 'al025', 'kr002', 5),
(1385, 'al025', 'kr001', 5),
(1384, 'al024', 'kr007', 4),
(1383, 'al024', 'kr006', 5),
(1382, 'al024', 'kr005', 5),
(1381, 'al024', 'kr004', 3),
(1380, 'al024', 'kr003', 3),
(1379, 'al024', 'kr002', 4),
(1378, 'al024', 'kr001', 3),
(1377, 'al023', 'kr007', 5),
(1376, 'al023', 'kr006', 5),
(1375, 'al023', 'kr005', 4),
(1374, 'al023', 'kr004', 5),
(1373, 'al023', 'kr003', 5),
(1372, 'al023', 'kr002', 5),
(1371, 'al023', 'kr001', 4),
(1370, 'al022', 'kr007', 3),
(1369, 'al022', 'kr006', 5),
(1368, 'al022', 'kr005', 4),
(1367, 'al022', 'kr004', 3),
(1366, 'al022', 'kr003', 5),
(1365, 'al022', 'kr002', 5),
(1364, 'al022', 'kr001', 4),
(1363, 'al021', 'kr007', 2),
(1362, 'al021', 'kr006', 4),
(1361, 'al021', 'kr005', 3),
(1360, 'al021', 'kr004', 5),
(1359, 'al021', 'kr003', 4),
(1358, 'al021', 'kr002', 5),
(1357, 'al021', 'kr001', 4),
(1356, 'al020', 'kr007', 4),
(1355, 'al020', 'kr006', 5),
(1354, 'al020', 'kr005', 3),
(1353, 'al020', 'kr004', 5),
(1352, 'al020', 'kr003', 4),
(1351, 'al020', 'kr002', 4),
(1350, 'al020', 'kr001', 4),
(1349, 'al019', 'kr007', 4),
(1348, 'al019', 'kr006', 4),
(1347, 'al019', 'kr005', 4),
(1346, 'al019', 'kr004', 5),
(1345, 'al019', 'kr003', 5),
(1344, 'al019', 'kr002', 5),
(1343, 'al019', 'kr001', 4),
(1342, 'al018', 'kr007', 3),
(1341, 'al018', 'kr006', 5),
(1340, 'al018', 'kr005', 3),
(1339, 'al018', 'kr004', 5),
(1338, 'al018', 'kr003', 4),
(1337, 'al018', 'kr002', 4),
(1336, 'al018', 'kr001', 3),
(1335, 'al017', 'kr007', 3),
(1334, 'al017', 'kr006', 4),
(1333, 'al017', 'kr005', 3),
(1332, 'al017', 'kr004', 5),
(1331, 'al017', 'kr003', 5),
(1330, 'al017', 'kr002', 5),
(1329, 'al017', 'kr001', 4),
(1328, 'al016', 'kr007', 4),
(1327, 'al016', 'kr006', 5),
(1326, 'al016', 'kr005', 4),
(1325, 'al016', 'kr004', 4),
(1324, 'al016', 'kr003', 5),
(1323, 'al016', 'kr002', 4),
(1322, 'al016', 'kr001', 5),
(1321, 'al015', 'kr007', 3),
(1320, 'al015', 'kr006', 5),
(1319, 'al015', 'kr005', 4),
(1318, 'al015', 'kr004', 3),
(1317, 'al015', 'kr003', 4),
(1316, 'al015', 'kr002', 4),
(1315, 'al015', 'kr001', 4),
(1314, 'al014', 'kr007', 5),
(1313, 'al014', 'kr006', 5),
(1312, 'al014', 'kr005', 3),
(1311, 'al014', 'kr004', 4),
(1310, 'al014', 'kr003', 4),
(1309, 'al014', 'kr002', 5),
(1308, 'al014', 'kr001', 3),
(1307, 'al013', 'kr007', 3),
(1306, 'al013', 'kr006', 4),
(1305, 'al013', 'kr005', 5),
(1304, 'al013', 'kr004', 4),
(1303, 'al013', 'kr003', 3),
(1302, 'al013', 'kr002', 4),
(1301, 'al013', 'kr001', 5),
(1300, 'al012', 'kr007', 3),
(1299, 'al012', 'kr006', 4),
(1298, 'al012', 'kr005', 5),
(1297, 'al012', 'kr004', 4),
(1296, 'al012', 'kr003', 5),
(1295, 'al012', 'kr002', 5),
(1294, 'al012', 'kr001', 5),
(1293, 'al011', 'kr007', 4),
(1292, 'al011', 'kr006', 4),
(1291, 'al011', 'kr005', 5),
(1290, 'al011', 'kr004', 5),
(1289, 'al011', 'kr003', 4),
(1288, 'al011', 'kr002', 5),
(1287, 'al011', 'kr001', 4),
(1286, 'al010', 'kr007', 4),
(1285, 'al010', 'kr006', 5),
(1284, 'al010', 'kr005', 5),
(1283, 'al010', 'kr004', 5),
(1282, 'al010', 'kr003', 4),
(1281, 'al010', 'kr002', 5),
(1280, 'al010', 'kr001', 4),
(1279, 'al009', 'kr007', 3),
(1278, 'al009', 'kr006', 5),
(1277, 'al009', 'kr005', 5),
(1276, 'al009', 'kr004', 4),
(1275, 'al009', 'kr003', 4),
(1274, 'al009', 'kr002', 5),
(1273, 'al009', 'kr001', 5),
(1272, 'al008', 'kr007', 4),
(1271, 'al008', 'kr006', 4),
(1270, 'al008', 'kr005', 5),
(1269, 'al008', 'kr004', 4),
(1268, 'al008', 'kr003', 5),
(1267, 'al008', 'kr002', 5),
(1266, 'al008', 'kr001', 5),
(1265, 'al007', 'kr007', 3),
(1264, 'al007', 'kr006', 4),
(1263, 'al007', 'kr005', 4),
(1262, 'al007', 'kr004', 5),
(1261, 'al007', 'kr003', 4),
(1260, 'al007', 'kr002', 5),
(1259, 'al007', 'kr001', 4),
(1258, 'al006', 'kr007', 4),
(1257, 'al006', 'kr006', 5),
(1256, 'al006', 'kr005', 5),
(1255, 'al006', 'kr004', 5),
(1254, 'al006', 'kr003', 4),
(1253, 'al006', 'kr002', 5),
(1252, 'al006', 'kr001', 5),
(1251, 'al005', 'kr007', 4),
(1250, 'al005', 'kr006', 4),
(1249, 'al005', 'kr005', 5),
(1248, 'al005', 'kr004', 4),
(1247, 'al005', 'kr003', 4),
(1246, 'al005', 'kr002', 5),
(1245, 'al005', 'kr001', 5),
(1244, 'al004', 'kr007', 5),
(1243, 'al004', 'kr006', 5),
(1242, 'al004', 'kr005', 4),
(1241, 'al004', 'kr004', 5),
(1240, 'al004', 'kr003', 4),
(1239, 'al004', 'kr002', 5),
(1238, 'al004', 'kr001', 4),
(1237, 'al003', 'kr007', 4),
(1236, 'al003', 'kr006', 5),
(1235, 'al003', 'kr005', 5),
(1234, 'al003', 'kr004', 5),
(1233, 'al003', 'kr003', 4),
(1232, 'al003', 'kr002', 4),
(1231, 'al003', 'kr001', 5),
(1230, 'al002', 'kr007', 4),
(1229, 'al002', 'kr006', 5),
(1228, 'al002', 'kr005', 5),
(1227, 'al002', 'kr004', 4),
(1226, 'al002', 'kr003', 4),
(1225, 'al002', 'kr002', 5),
(1224, 'al002', 'kr001', 5),
(1223, 'al001', 'kr007', 3),
(1222, 'al001', 'kr006', 4),
(1221, 'al001', 'kr005', 5),
(1220, 'al001', 'kr004', 5),
(1219, 'al001', 'kr003', 4),
(1218, 'al001', 'kr002', 4),
(1217, 'al001', 'kr001', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_preferensi`
--

CREATE TABLE `nilai_preferensi` (
  `nm_alternatif` varchar(35) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`password`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  ADD PRIMARY KEY (`id_matrik`);

--
-- Indeks untuk tabel `nilai_preferensi`
--
ALTER TABLE `nilai_preferensi`
  ADD PRIMARY KEY (`nm_alternatif`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  MODIFY `id_matrik` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1714;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jan 2026
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan_toko`
--
-- --------------------------------------------------------
--
-- Struktur dari tabel `cabang`
--

CREATE TABLE `cabang` (
  `no` int(11) NOT NULL,
  `id_Cabang` int(11) NOT NULL,
  `Nama_Cabang` varchar(11) DEFAULT NULL,
  `kota` varchar(150) DEFAULT NULL,
  `aksi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cabang`
--

INSERT INTO `cabang` (`no`,`id_cabang`, `nama_cabang`, `kota`) VALUES
(1, 15, 'Toko Pusat', 'Banjarmasin'),
(2, 14, 'Toko Martapura', 'Martapura'),
(3, 13, 'Toko Banjarbaru', 'Banjarbaru'),
(4, 12, 'Toko Kandangan', 'Kandangan'),
(5, 11, 'Toko Barabai', 'Barabai'),
(6, 10, 'Toko Amuntai', 'Amuntai'),
(7, 9, 'Toko Tabalong', 'Tabalong'),
(8, 8, 'Toko Kotabaru', 'Kotabaru'),
(9, 7, 'Toko Balikpapan', 'Balikpapan'),
(10, 6, 'Toko Samarinda', 'Samarinda'),
(11, 5, 'Toko Palangka Raya', 'Palangka Raya'),
(12, 4, 'Toko Hulu Sungai', 'Hulu Sungai'),
(13, 3, 'Toko Kapuas', 'Kapuas'),
(14, 2, 'Toko Tanah Laut', 'Tanah Laut'),
(15, 1, 'Toko Kalteng"', 'Kalteng"'),

-- --------------------------------------------------------
--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `no` int(11) NOT NULL,
  `id_kategori` varchar(200) NOT NULL,
  `nama_kategori` varchar(150) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

  INSERT INTO `kategori` (`no`,`id_kategori`, `nama_kategori`) VALUES
  {1'CAT01', 'Elektronik'},
  {2, 'CAT02', 'Fashion'},
  {3, 'CAT03', 'Perabot'},
  {4, 'CAT04', 'Buku'},
  {5, 'CAT05', 'Aksesoris'},
  {6, 'CAT06', 'Otomotif'},
  {7, 'CAT07', 'Alat Tulis'},
  {8  'CAT08', 'Dapur'},
  {9  'CAT09', 'Olahraga'},
  {10 'CAT10', 'Kesehatan'},
  {11 'CAT11', 'Kosmetik'},
  {12'CAT12', 'Mainan'},
  {13 'CAT13', 'Sepatu'},
  {14 'CAT14', 'Komputer'},
  {15 'CAT15', 'Handphone'}

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `no` int(11) NOT NULL,
  `id_kurir` varchar (20) DEFAULT NULL,
  `nama_kurir` varchar(150) DEFAULT NULL,
  `layanan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kurir`
--

INSERT INTO `kurir` (`no`,`id_kurir`, `nama_kurir`, `layanan` ) VALUES
  {1'CAT01', 'Elektronik'},
  {1 'KUR01', "JNE", "Reguler"},
  {2 'KUR02', "J&T", "Reguler"},
  {3 'KUR03', "SiCepat", "Halu"},
  {4 'KUR04', "Gosend", "Instant"},
  {5 'KUR05', "Grab Express", "Same Day"},
  {6 'KUR06', "Shopee Express", "Reguler"},
  {7 'KUR07', "AnterAja", "Ekonomi"},
  {8 'KUR08', "Ninja Xpress", "Reguler"},
  {9 'KUR09', "POS Indonesia", "Kilat"},
  {10 'KUR10', "TIKI",:"Reguler"},
  {11 'KUR11', "Lalamove", "Instant"},
  {12 'KUR12', "Paxel", "Same Day"},
  {13 'KUR13', "ID Express","Ekonomi"},
  {14 'KUR14', "Lion Parcel", "Reguler"},
  {15 'KUR15', "BorExpress", "Lokal"}

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `no` int(11) NOT NULL,
  `id_pelanggan` varchar(20) DEFAULT NULL,
  `nama_pelanggan` varchar(150) DEFAULT NULL,
  `kota` varchar(20) DEFAULT NULL
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`no`, `id_pelanggan`, `nama_pelanggan`, `kota`, `email`) VALUES
(1, 'CUS01', 'Hanika', 'Banjarmasin', 'hanika1@mail.com'),
(2, 'CUS02', 'Rahmat Hidayat', 'Banjarbaru', 'rahmat2@mail.com'),
(3, 'CUS03', 'Siti Aisyah', 'Martapura', 'siti3@mail.com'),
(4, 'CUS04', 'Nur Ahmad', 'Barabai', 'nur4@mail.com'),
(5, 'CUS05', 'Maya Sari', 'Amuntai', 'maya5@mail.com'),
(6, 'CUS06', 'Dimas Putra', 'Tabalong', 'dimas6@mail.com'),
(7, 'CUS07', 'Rina Lestari', 'Kotabaru', 'rina7@mail.com'),
(8, 'CUS08', 'Fauzan', 'Balikpapan', 'fauzan8@mail.com'),
(9, 'CUS09', 'Laila', 'Samarinda', 'laila9@mail.com'),
(10, 'CUS10', 'Agus', 'Kapuas', 'agus10@mail.com'),
(11, 'CUS11', 'Nadya', 'Tanah Laut', 'nadya11@mail.com'),
(12, 'CUS12', 'Firman', 'Kandangan', 'firman12@mail.com'),
(13, 'CUS13', 'Wahyu', 'Palangka Raya', 'wahyu13@mail.com'),
(14, 'CUS14', 'Putri', 'Banjarmasin', 'putri14@mail.com'),
(15, 'CUS15', 'Budi', 'Banjarbaru', 'budi15@mail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `platform`
--

CREATE TABLE `platform` (
  `no` int(11) NOT NULL,
  `id_platform` int(11) DEFAULT NULL,
  `nama_platform` varchar(150) DEFAULT NULL,
  `situs_web` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `platform`
--

INSERT INTO `platform` (`no`, `id_platform`, `nama_platform`, `situs_web`) VALUES
(1, 1, 'Tokopedia', 'tokopedia.com'),
(2, 2, 'Shopee', 'shopee.co.id'),
(3, 3, 'Lazada', 'lazada.co.id'),
(4, 4, 'Blibli', 'blibli.com'),
(5, 5, 'Bukalapak', 'bukalapak.com'),
(6, 6, 'Tiktok Shop', 'tiktok.com/shop'),
(7, 7, 'Instagram Shop', 'instagram.com/shop'),
(8, 8, 'Facebook Shop', 'facebook.com/shop'),
(9, 9, 'JD.ID', 'jd.id'),
(10, 10, 'Zalora', 'zalora.co.id'),
(11, 11, 'Amazon', 'amazon.com'),
(12, 12, 'Alibaba', 'alibaba.com'),
(13, 13, 'Oshop', 'oshop.com'),
(14, 14, 'Olx', 'olx.co.id'),
(15, 15, 'BorneoMarket', 'borneo-market.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `no` int(11) NOT NULL,
  `id_produk` varchar(10) DEFAULT NULL,
  `nama_produk` varchar(150) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `id_kategori` varchar(10) DEFAULT NULL,
  `id_supplier` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`no`, `id_produk`, `nama_produk`, `harga`, `stok`, `id_kategori`, `id_supplier`) VALUES
(1, 'PR001', 'MacBook Air M1', 12000000, 10, 'CAT01', 'SUP01'),
(2, 'PR002', 'iPhone 13', 9000000, 15, 'CAT15', 'SUP15'),
(3, 'PR003', 'Nike Running', 750000, 25, 'CAT09', 'SUP09'),
(4, 'PR004', 'Meja Belajar', 350000, 20, 'CAT03', 'SUP03'),
(5, 'PR005', 'Panci Set', 500000, 30, 'CAT08', 'SUP08'),
(6, 'PR006', 'Keyboard Gaming', 450000, 18, 'CAT14', 'SUP14'),
(7, 'PR007', 'Baju Kemeja', 150000, 40, 'CAT02', 'SUP02'),
(8, 'PR008', 'Sendal Santai', 45000, 50, 'CAT13', 'SUP13'),
(9, 'PR009', 'TV Samsung 43', 4500000, 8, 'CAT01', 'SUP01'),
(10, 'PR010', 'Kompor Gas', 700000, 12, 'CAT08', 'SUP08'),
(11, 'PR011', 'Toner Printer', 250000, 19, 'CAT01', 'SUP07'),
(12, 'PR012', 'Novel Best Seller', 90000, 34, 'CAT04', 'SUP04'),
(13, 'PR013', 'Raket Badminton', 300000, 21, 'CAT09', 'SUP09'),
(14, 'PR014', 'Headset Bluetooth', 150000, 17, 'CAT05', 'SUP01'),
(15, 'PR015', 'Router WiFi', 500000, 13, 'CAT07', 'SUP15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  no int(11) NOT NULL,
  id_ruang varchar(10) DEFAULT NULL,
  nama_ruang varchar(100) DEFAULT NULL,
  id_cabang varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`no`, `id_ruang`, `nama_ruang`, `id_cabang`) VALUES
(1,'RU01','Gudang A','CAB01'),
(2,'RU02','Gudang B','CAB01'),
(3,'RU03','Gudang C','CAB02'),
(4,'RU04','Gudang D','CAB02'),
(5,'RU05','Store Room 1','CAB03'),
(6,'RU06','Store Room 2','CAB03'),
(7,'RU07','Store Room 3','CAB04'),
(8,'RU08','Store Room 4','CAB05'),
(9,'RU09','Store Room 5','CAB06'),
(10,'RU10','Store Room 6','CAB07'),
(11,'RU11','Store Room 7','CAB08'),
(12,'RU12','Gudang Utama','CAB09'),
(13,'RU13','Gudang Belakang','CAB10'),
(14,'RU14','Gudang Transit','CAB11'),
(15,'RU15','Gudang Online','CAB12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `no` int(11) NOT NULL,
  `id_supplier` varchar(10) DEFAULT NULL,
  `nama_supplier` varchar(150) DEFAULT NULL,
  `kontak` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier`(`no`, `id_supplier`, `nama_supplier`, `kontak`) VALUES
(1,'SUP01','PT Sumber Elektronik','085123412001'),
(2,'SUP02','CV Fashion Indo','085123134002'),
(3,'SUP03','PT Perabot Jaya','085123414003'),
(4,'SUP04','Distributor Buku','085123415004'),
(5,'SUP05','PT Aksesori Global','085123416005'),
(6,'SUP06','CV Otomotif Makmur','085123417006'),
(7,'SUP07','PT ATK Berkah','085123418007'),
(8,'SUP08','CV Dapur Bersama','085123419008'),
(9,'SUP09','PT Sport Center','085123411009'),
(10,'SUP10','CV Sehat Sentosa','085123419010'),
(11,'SUP11','PT Kosmetik Natural','085123418011'),
(12,'SUP12','Distributor Mainan','085123480412'),
(13,'SUP13','PT Sepatu Premium','085123422013'),
(14,'SUP14','PT Komputer Corp','085123432014'),
(15,'SUP15','PT Handphone ID','085123417015');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail`
--

CREATE TABLE `detail` (
  `no` int(11) NOT NULL,
  `id_transaksi` varchar(10) DEFAULT NULL,
  `id_produk` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail`
--

INSERT INTO `detail`
(`no`, `id_transaksi`, `id_produk`, `qty`, `total`) VALUES
(1,'TRX001','PR001',2,14000000),
(2,'TRX002','PR002',1,9000000),
(3,'TRX003','PR003',3,2250000),
(4,'TRX004','PR004',1,350000),
(5,'TRX005','PR005',2,1000000),
(6,'TRX006','PR006',1,450000),
(7,'TRX007','PR007',1,150000),
(8,'TRX008','PR008',1,45000),
(9,'TRX009','PR009',1,4500000),
(10,'TRX010','PR010',1,700000),
(11,'TRX011','PR011',1,250000),
(12,'TRX012','PR012',1,90000),
(13,'TRX013','PR013',2,600000),
(14,'TRX014','PR014',1,150000),
(15,'TRX015','PR015',2,1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

 CREATE TABLE `laporan` (
  `no` int(11) NOT NULL,
  `id_transaksi` varchar(10) DEFAULT NULL,
  `id_produk` varchar(10) DEFAULT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `metode_bayar` varchar(30) DEFAULT NULL,
  `status_bayar` varchar(20) DEFAULT NULL,
  `kurir` varchar(50) DEFAULT NULL,
  `layanan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan`(`no`,`id_transaksi`,`id_produk`,`nama_pelanggan`,`tanggal`,`qty`,`total`, `metode_bayar`,`status_bayar`,`kurir`,`layanan`) VALUES
(1,'TRX001','PR001','Hanika','2025-12-01',2,14000000,'Transfer','Lunas','JNE','Reguler'),
(2,'TRX002','PR002','Rahmat Hidayat','2025-12-01',1,9000000,'Transfer','Lunas','J&T','Reguler'),
(3,'TRX003','PR003','Siti Aisyah','2025-12-02',3,2250000,'Cash','Lunas','SiCepat','Halu'),
(4,'TRX004','PR004','Nur Ahmad','2025-12-02',1,350000,'Cash','Lunas','Gosend','Instant'),
(5,'TRX005','PR005','Maya Sari','2025-12-03',2,1000000,'Transfer','Lunas','Grab Express','Same Day'),
(6,'TRX006','PR006','Dimas Putra','2025-12-03',1,450000,'Cash','Lunas','Shopee Express','Reguler'),
(7,'TRX007','PR007','Rina Lestari','2025-12-04',1,150000,'Transfer','Lunas','AnterAja','Ekonomi'),
(8,'TRX008','PR008','Fauzan','2025-12-04',1,45000,'Cash','Lunas','Ninja Xpress','Reguler'),
(9,'TRX009','PR009','Laila','2025-12-05',1,4500000,'Transfer','Lunas','POS Indonesia','Kilat'),
(10,'TRX010','PR010','Agus','2025-12-05',1,700000,'Cash','Lunas','TIKI','Reguler'),
(11,'TRX011','PR011','Nadya','2025-12-06',1,250000,'Transfer','Lunas','Lalamove','Instant'),
(12,'TRX012','PR012','Firman','2025-12-06',1,90000,'Cash','Lunas','Paxel','Same Day'),
(13,'TRX013','PR013','Wahyu','2025-12-07',2,600000,'Transfer','Lunas','ID Express','Ekonomi'),
(14,'TRX014','PR014','Putri','2025-12-07',1,150000,'Cash','Lunas','Lion Parcel','Reguler'),
(15,'TRX015','PR015','Budi','2025-12-08',2,1000000,'Transfer','Lunas','BorExpress','Lokal');
-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `id_pembayaran` varchar(10) DEFAULT NULL,
  `id_transaksi` varchar(10) DEFAULT NULL,
  `metode_bayar` varchar(30) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `status_bayar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran`(`no`,`id_pembayaran`,`id_transaksi`,`metode_bayar`,`jumlah`,`status_bayar`) VALUES
(1,'PAY001','TRX001','Transfer',14000000,'Lunas'),
(2,'PAY002','TRX002','Transfer',9000000,'Lunas'),
(3,'PAY003','TRX003','Cash',2250000,'Lunas'),
(4,'PAY004','TRX004','Cash',350000,'Lunas'),
(5,'PAY005','TRX005','Transfer',1000000,'Lunas'),
(6,'PAY006','TRX006','Cash',450000,'Lunas'),
(7,'PAY007','TRX007','Transfer',150000,'Lunas'),
(8,'PAY008','TRX008','Cash',45000,'Lunas'),
(9,'PAY009','TRX009','Transfer',4500000,'Lunas'),
(10,'PAY010','TRX010','Cash',700000,'Lunas'),
(11,'PAY011','TRX011','Transfer',250000,'Lunas'),
(12,'PAY012','TRX012','Cash',90000,'Lunas'),
(13,'PAY013','TRX013','Transfer',600000,'Lunas'),
(14,'PAY014','TRX014','Cash',150000,'Lunas'),
(15,'PAY015','TRX015','Transfer',1000000,'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `no` int(11) NOT NULL,
  `id_pengiriman` varchar(10) DEFAULT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `kurir` varchar(50) DEFAULT NULL,
  `layanan` varchar(30) DEFAULT NULL,
  `status_pengiriman` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman`(`no`,`id_pengiriman`,`nama_pelanggan`,`kurir`,`layanan`,`status_pengiriman`) VALUES
(1,'SHP001','Hanika','JNE','Reguler','Menunggu'),
(2,'SHP002','Rahmat Hidayat','J&T','Reguler','Di Jalan'),
(3,'SHP003','Siti Aisyah','SiCepat','Halu','Sampai'),
(4,'SHP004','Nur Ahmad','Gosend','Instant','Di Jalan'),
(5,'SHP005','Maya Sari','Grab Express','Same Day','Tertunda'),
(6,'SHP006','Dimas Putra','Shopee Express','Reguler','Menunggu'),
(7,'SHP007','Rina Lestari','AnterAja','Ekonomi','Sampai'),
(8,'SHP008','Fauzan','Ninja Xpress','Reguler','Di Jalan'),
(9,'SHP009','Laila','POS Indonesia','Kilat','Menunggu'),
(10,'SHP010','Agus','TIKI','Reguler','Sampai'),
(11,'SHP011','Nadya','Lalamove','Instant','Di Jalan'),
(12,'SHP012','Firman','Paxel','Same Day','Menunggu'),
(13,'SHP013','Wahyu','ID Express','Ekonomi','Tertunda'),
(14,'SHP014','Putri','Lion Parcel','Reguler','Di Jalan'),
(15,'SHP015','Budi','BorExpress','Lokal','Sampai');


-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `no` int(11) NOT NULL,
  `id_transaksi` varchar(10) DEFAULT NULL,
  `id_produk` varchar(10) DEFAULT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan`
(`no`,`id_transaksi`,`id_produk`,`nama_pelanggan`,`tanggal`,`qty`,`total`) VALUES
(1,'TRX001','PR001','Hanika','2025-12-01',2,'14.000.000'),
(2,'TRX002','PR002','Rahmat Hidayat','2025-12-01',1,'9.000.000'),
(3,'TRX003','PR003','Siti Aisyah','2025-12-02',3,'2.250.000'),
(4,'TRX004','PR004','Nur Ahmad','2025-12-02',1,'350.000'),
(5,'TRX005','PR005','Maya Sari','2025-12-03',2,'1.000.000'),
(6,'TRX006','PR006','Dimas Putra','2025-12-03',1,'450.000'),
(7,'TRX007','PR007','Rina Lestari','2025-12-04',1,'150.000'),
(8,'TRX008','PR008','Fauzan','2025-12-04',1,'45.000'),
(9,'TRX009','PR009','Laila','2025-12-05',1,'4.500.000'),
(10,'TRX010','PR010','Agus','2025-12-05',1,'700.000'),
(11,'TRX011','PR011','Nadya','2025-12-06',1,'250.000'),
(12,'TRX012','PR012','Firman','2025-12-06',1,'90.000'),
(13,'TRX013','PR013','Wahyu','2025-12-07',2,'600.000'),
(14,'TRX014','PR014','Putri','2025-12-07',1,'150.000'),
(15,'TRX015','PR015','Budi','2025-12-08',2,'1.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`) VALUES
( 'admin1', '123', 'Administrator', '2026-01-21 09:32:56'),

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id_cabang`);


--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id_platform`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`),
  ADD KEY `id_cabang` (`id_cabang`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);


--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id_cabang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id_kurir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `platform`
--
ALTER TABLE `platform`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel `alumni`
--
ALTER TABLE `cabang`
  ADD CONSTRAINT `cabang_ibfk_1` FOREIGN KEY (`id_cabang`) REFERENCES `cabang` (`id_cabang`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
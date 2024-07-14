-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 18, 2024 at 04:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `da12`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bill_name` varchar(50) NOT NULL,
  `bill_diachi` varchar(255) NOT NULL,
  `bill_sdt` int(10) NOT NULL,
  `bill_email` varchar(225) NOT NULL,
  `id_pttt` int(11) NOT NULL DEFAULT 1,
  `id_trangthai` int(11) NOT NULL DEFAULT 1,
  `ngaydathang` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `id_user`, `bill_name`, `bill_diachi`, `bill_sdt`, `bill_email`, `id_pttt`, `id_trangthai`, `ngaydathang`, `total`) VALUES
(141, 31, 'Lê Duy Đức', 'Nam Từ Liêm-Hà Nội', 364846403, 'leduyduc963@gmail.com', 1, 3, '2024-03-29', 26100000),
(142, 31, 'Lê Duy Đức', 'Nam Từ Liêm-Hà Nội', 364846403, 'ducldph43245@fpt.edu.vn', 1, 1, '2024-03-29', 68970000),
(143, 31, 'Lê Duy Đức', 'Nam Từ Liêm-Hà Nội', 364846403, 'ducldph43245@fpt.edu.vn', 1, 1, '2024-04-02', 226000000),
(144, 31, 'Lê Duy Đức', 'Nam Từ Liêm-Hà Nội', 364846403, 'ducldph43245@fpt.edu.vn', 1, 1, '2024-04-02', 226000000),
(145, 31, 'Lê Duy Đức', 'Nam Từ Liêm-Hà Nội', 364846403, 'ducldph43245@fpt.edu.vn', 1, 1, '2024-04-02', 239000000),
(146, 31, 'Lê Duy Đức', 'Nam Từ Liêm-Hà Nội', 364846403, 'ducldph43245@fpt.edu.vn', 1, 1, '2024-04-02', 61100000),
(147, 31, 'duc', 'Nam Từ Liêm-Hà Nội', 364846403, 'ducldph43245@fpt.edu.vn', 1, 0, '2024-04-09', 26070000),
(148, 31, 'Đào Văn Hải', 'Quốc Oai', 364846403, 'ducldph43245@fpt.edu.vn', 2, 1, '2024-04-11', 136100000),
(149, 31, 'Lê Duy Đức', 'Nam Từ Liêm-Hà Nội', 364846403, 'ducldph43245@fpt.edu.vn', 1, 3, '2024-04-11', 140100000),
(150, 1, 'Demo', 'Quốc Oai', 364846403, 'ducldph43245@fpt.edu.vn', 1, 0, '2024-04-16', 90100000);

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id_bl` int(11) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sp` varchar(11) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id_bl`, `noidung`, `id_user`, `id_sp`, `ngaybinhluan`, `is_delete`) VALUES
(4, 'sdfghj', 3, '2', '2023-11-08', 1),
(8, 'lam', 3, '2', '01:37:14pm 28/11/2023', 1),
(12, 'good', 3, '9', '07:59:52pm 07/12/2023', 1),
(13, 'tốt', 3, '9', '08:09:17pm 07/12/2023', 1),
(14, 'đẹp', 3, '6', '11:43:16pm 07/12/2023', 1),
(15, 'sđgfd', 31, '33', '02:23:44pm 11/04/2024', 1),
(16, 'Sản phẩm đẹp quá', 0, '37', '05:22:19am 16/04/2024', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sp` varchar(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `gia` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_spbt` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_sp`, `img`, `tensp`, `gia`, `soluong`, `id_bill`, `id_spbt`) VALUES
(1, 31, '37', 'ong-kinh-fujifilm-gf-100200mm-f56-r-lm-ois-wr.jpg', 'ỐNG KÍNH FUJIFILM GF 100-200MM F/5.6 R LM OIS WR', 61000000, 1, 146, 0),
(2, 31, '32', 'may-quay-gopro-hero-12-black.jpg', 'MÁY QUAY GOPRO HERO 12 BLACK', 26000000, 1, 147, 0),
(3, 31, '33', 'may-quay-sony-xdcam-pxwz90.jpg', 'MÁY QUAY CHUYÊN DỤNG SONY PXW-Z90V (PAL/ NTSC)', 68000000, 2, 148, 0),
(4, 31, '35', 'may-quay-gopro-hero-10.jpg', 'MÁY QUAY GOPRO HERO 10', 18000000, 1, 149, 0),
(5, 31, '37', 'ong-kinh-fujifilm-gf-100200mm-f56-r-lm-ois-wr.jpg', 'ỐNG KÍNH FUJIFILM GF 100-200MM F/5.6 R LM OIS WR', 61000000, 2, 149, 0),
(6, 1, '31', 'camera7.png', 'MÁY ẢNH FUJIFILM X-S20 + LENS XC 15-45MM F/3.5-5.6 (CHÍNH HÃNG)', 36000000, 2, 150, 0),
(7, 1, '35', 'may-quay-gopro-hero-10.jpg', 'MÁY QUAY GOPRO HERO 10', 18000000, 1, 150, 0);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name_dm` varchar(255) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name_dm`, `is_delete`) VALUES
(8, 'Máy ảnh', 0),
(9, 'Máy quay', 0),
(10, 'Ống kính', 0),
(11, 'Mỏng nhẹ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `lh_name` varchar(255) NOT NULL,
  `lh_email` varchar(255) NOT NULL,
  `lh_sdt` varchar(10) NOT NULL,
  `lh_noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id`, `lh_name`, `lh_email`, `lh_sdt`, `lh_noidung`) VALUES
(5, 'ádfg', 'lamptph32198@fpt.edu.vn', '0123456789', 'xdfg');

-- --------------------------------------------------------

--
-- Table structure for table `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id` int(11) NOT NULL,
  `name_magg` varchar(30) NOT NULL,
  `giamgia` int(11) NOT NULL,
  `end_date` date NOT NULL,
  `soluong` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `name_magg`, `giamgia`, `end_date`, `soluong`, `is_delete`) VALUES
(5, 'SQL30K', 30000, '0000-00-00', 4, 1),
(6, 'SQL10K', 10000, '0000-00-00', 9, 1),
(7, 'SQL20K', 20000, '0000-00-00', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mausp`
--

CREATE TABLE `mausp` (
  `idmau` int(11) NOT NULL,
  `mau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mausp`
--

INSERT INTO `mausp` (`idmau`, `mau`) VALUES
(1, 'Đen'),
(2, 'Xám');

-- --------------------------------------------------------

--
-- Table structure for table `phuongthuctt`
--

CREATE TABLE `phuongthuctt` (
  `id` int(11) NOT NULL,
  `pttt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phuongthuctt`
--

INSERT INTO `phuongthuctt` (`id`, `pttt`) VALUES
(1, 'lam'),
(2, 'hoa');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name_role`) VALUES
(1, 'admin'),
(2, 'khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `img` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `id_dm` int(11) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensp`, `img`, `gia`, `mota`, `luotxem`, `id_dm`, `is_delete`) VALUES
(28, 'MÁY ẢNH FUJIFILM X-T30 MARK II + KIT XF 18-55MM F/2.8-4/ SLIVER', 'camera7.png', 42000000, '- Cảm biến CMOS Exmor APS-C 24.2MP  - Bộ xử lý hình ảnh BIONZ X - EVF OLED XGA Tru-Finder 2.36m-Dot - Màn hình cảm ứng, lật 180° 3.0\" 921.6k-Dot - Quay video UHD 4K nội bộ, S-Log3, HLG - Quay S&Q Motion ở chế độ Full HD từ 1-120 fps - Hệ thống AF nhận diện pha và tương phản 425 điểm', 9, 8, 0),
(29, 'MÁY ẢNH SONY ALPHA A7M4 BODY/ ILCE-7M4', 'camera3.png', 34000000, '- Cảm biến CMOS Exmor APS-C 24.2MP  - Bộ xử lý hình ảnh BIONZ X - EVF OLED XGA Tru-Finder 2.36m-Dot - Màn hình cảm ứng, lật 180° 3.0\" 921.6k-Dot - Quay video UHD 4K nội bộ, S-Log3, HLG - Quay S&Q Motion ở chế độ Full HD từ 1-120 fps - Hệ thống AF nhận diện pha và tương phản 425 điểm', 13, 8, 0),
(30, 'CANON EOS R50 KIT 18-45MM IS STM ( LBM )', 'camera1.png', 31000000, 'Máy ảnh Canon EOS R100 được thiết kế để dành cho những nhà sáng tạo nội dung hiện đại. Mirrorless camera Canon R100 nhỏ gọn và di động, cung cấp nhiều tính năng phù hợp với nhiều ứng dụng đa phương tiện. Máy ảnh được trang bị cảm biến CMOS 24.1MP, bộ xử lý DIGIC 8, khả năng quay video 4K/24fps, hệ thống lấy nét Dual Pixel CMOS AF, màn hình LCD 3 inch và kính ngắm OLED 2,36 triệu điểm.', 6, 8, 0),
(31, 'MÁY ẢNH FUJIFILM X-S20 + LENS XC 15-45MM F/3.5-5.6 (CHÍNH HÃNG)', 'camera7.png', 36000000, ' Cảm biến ảnh APS-C X-Trans CMOS 5 HR BSI 40.2MP - Chip xử lý hình ảnh X-Processor 5 - Ổn định hình ảnh trong thân máy 7 bước dừng - Quay video 8K 30p, 4K 60p, FHD 240p 10bit - Khung ngắm điện tử OLED 5.76 triệu điểm - Màn hình cảm ứng 3\" 1.62 triệu điểm, thiết kế xoay lật - Màn hình phụ 1.28\" OLED hiển thị thông số - Chụp liên tiếp 20 fps bằng màn trập điện, 15 fps bằng màn', 4, 8, 0),
(32, 'MÁY QUAY GOPRO HERO 12 BLACK', 'may-quay-gopro-hero-12-black.jpg', 26000000, 'Quay video: 5.3K 60 FPS, 4K 120 FPS, 2.7K 240FPS;  Camera: 27MP;  Cảm biến: 1/1.9 inch;  Chống rung: HyperSmooth 6.0; 360° Horizon Lock;  Chống nước: 33 feet (ft) khoảng 10 mét (m);  Livestream: 1080p;', 26, 9, 0),
(33, 'MÁY QUAY CHUYÊN DỤNG SONY PXW-Z90V (PAL/ NTSC)', 'may-quay-sony-xdcam-pxwz90.jpg', 68000000, '- Cảm biến 1 inch 14MP - Quay phim 4K siêu nét - Hệ thống lấy nét lai 273 điểm - Màn hình LCD cảm ứng - Ống ngắm EVF OLED cực rõ - Ống kính Zeiss Vario-Sonnar T* 12x tiêu cự 18mm - Zoom quang 12x và zoom 18x bằng công nghệ Clear Image Zoom.', 8, 9, 0),
(34, 'MÁY QUAY SONY HANDYCAM 4K FDR-AX43A', 'fdr-ax43a.jpg', 31000000, 'Cảm biến chiếu sáng sau Exmor R™ CMOS Độ phân giải: 8.29MP Kết nối không dây: WiFi, NFC Màn hình LCD cảm ứng xoay lật 3.0 inch Quay video: 4K, HD Khe cắm thẻ Memory Stick PRO Duo và SD / SDHC / SDXC', 16, 9, 0),
(35, 'MÁY QUAY GOPRO HERO 10', 'may-quay-gopro-hero-10.jpg', 18000000, '- Camera cảm biến CMOS 23MP - Bộ xử lý chip GP2 thế hệ mới - ISO: 100 - 6400 - Chụp liên tục: 25 ảnh/giây - Hỗ trợ chụp ảnh trong điều kiện thiếu sáng - Màn hình cảm ứng LCD phía trước 2,27 inch - Màn hình phụ Live-View LCD 1,4 inch - Video 5.3K60/4K120/2.7K240, ảnh 23MP - Chống rung HyperSmooth 4.0', 12, 9, 0),
(36, 'ỐNG KÍNH CANON EF24-105MM F4 L IS II USM (NHẬP KHẨU)', 'gf-45-100mm-f4-2.jpg', 13000000, '- Khẩu độ f/4-22 - 4 thấu kính phi cầu - Tráng phủ Air Sphere Coating (ASC) - Phóng đại 0.24x - Số lượng lá khẩu 10 - Khoảng cách lấy nét gần nhất (m/ft) 0.45/1.5 - Trọng lượng 795g - Kích thước bộ lọc ø77mm', 32, 10, 1),
(37, 'ỐNG KÍNH FUJIFILM GF 100-200MM F/5.6 R LM OIS WR', 'ong-kinh-fujifilm-gf-100200mm-f56-r-lm-ois-wr.jpg', 61000000, ' Tiêu Cự: 100 - 200mm - Khẩu Độ Lớn Nhất: f/5.6 - Khẩu Độ Nhỏ Nhất: f/32 - Góc Nhìn: 15.6° - 30.6° - Khoảng Cách Lấy Nét Tối Thiểu: 60 cm - Độ Phóng Đại: 0.2x - Thành Phần Quang Học: 20 Elements in 13 Groups - Số Lá Khẩu: 9 - Loại Lấy Nét: Autofocus', 15, 10, 0),
(38, 'Iphone 15promax', 'camera5.png', 42000000, 'Cảm biến chiếu sáng sau Exmor R™ CMOS Độ phân giải: 8.29MP Kết nối không dây: WiFi, NFC Màn hình LCD cảm ứng xoay lật 3.0 inch Quay video: 4K, HD Khe cắm thẻ Memory Stick PRO Duo và SD / SDHC / SDXC', 4, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sizesp`
--

CREATE TABLE `sizesp` (
  `idsize` int(11) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizesp`
--

INSERT INTO `sizesp` (`idsize`, `size`) VALUES
(1, '36 x 24mm'),
(2, '23,6 x 15,6mm');

-- --------------------------------------------------------

--
-- Table structure for table `spbienthe`
--

CREATE TABLE `spbienthe` (
  `id_bt` int(11) NOT NULL,
  `id_sp` varchar(11) NOT NULL,
  `id_size` int(1) NOT NULL,
  `id_mau` int(1) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spbienthe`
--

INSERT INTO `spbienthe` (`id_bt`, `id_sp`, `id_size`, `id_mau`, `soluong`) VALUES
(1, '28', 1, 1, 37),
(2, '29', 1, 1, 52),
(3, '30', 2, 1, 37),
(4, '31', 1, 1, 6),
(5, '32', 2, 1, 9),
(6, '28', 1, 2, 56),
(7, '28', 1, 2, 56),
(8, '35', 1, 1, 21),
(9, '33', 1, 1, 24),
(10, '34', 1, 1, 12),
(11, '36', 2, 1, 8),
(12, '37', 2, 1, 18),
(13, '38', 2, 2, 37),
(14, '28', 2, 2, 23),
(15, '38', 2, 1, 37);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` text NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `id_role` int(11) NOT NULL DEFAULT 2,
  `is_delete` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `name`, `pass`, `email`, `diachi`, `sdt`, `id_role`, `is_delete`) VALUES
(1, 'admin', '12345', 'leduyduc963@gmail.com', 'Nam Từ Liêm- Hà Nội', '0364846403', 1, 0),
(31, 'leduyduc', '0364846403', 'leduyduc963@gmail.com', 'Nam Từ Liêm- Hà Nội', '0364846403', 2, 1),
(32, 'phamhiep', '123456', 'hiepptph43201@fpt.edu.vn', 'Hà Nội', '0364571497', 2, 1),
(33, 'duyduc', '12345', 'ducldph43245@fpt.edu.vn', 'Bắc Ninh', '0364846403', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trangthaidh`
--

CREATE TABLE `trangthaidh` (
  `idtrangthai` int(11) NOT NULL,
  `trangthai` varchar(255) NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trangthaidh`
--

INSERT INTO `trangthaidh` (`idtrangthai`, `trangthai`, `is_delete`) VALUES
(0, 'Chờ xử lý', 1),
(1, 'Đang xử lý', 1),
(2, 'Đang giao hàng', 1),
(3, 'Hoàn tất', 1),
(4, 'Hủy đơn hàng', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_bill_taikhoan` (`id_user`),
  ADD KEY `lk_bill_phuongthuctt` (`id_pttt`),
  ADD KEY `lk_bill_trangthaidh` (`id_trangthai`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_bl`),
  ADD KEY `lk_binhluan_taikhoan` (`id_user`),
  ADD KEY `lk_binhluan_sanpham` (`id_sp`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_cart_bill` (`id_bill`),
  ADD KEY `lk_cart_taikhoan` (`id_user`),
  ADD KEY `lk_cart_sanpham` (`id_sp`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mausp`
--
ALTER TABLE `mausp`
  ADD PRIMARY KEY (`idmau`);

--
-- Indexes for table `phuongthuctt`
--
ALTER TABLE `phuongthuctt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`id_dm`);

--
-- Indexes for table `sizesp`
--
ALTER TABLE `sizesp`
  ADD PRIMARY KEY (`idsize`);

--
-- Indexes for table `spbienthe`
--
ALTER TABLE `spbienthe`
  ADD PRIMARY KEY (`id_bt`),
  ADD KEY `lk_spbienthe_mausp` (`id_mau`),
  ADD KEY `lk_spbienthe_sizesp` (`id_size`),
  ADD KEY `lk_spbienthe_sanpham` (`id_sp`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_taikhoan_role` (`id_role`);

--
-- Indexes for table `trangthaidh`
--
ALTER TABLE `trangthaidh`
  ADD PRIMARY KEY (`idtrangthai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `spbienthe`
--
ALTER TABLE `spbienthe`
  MODIFY `id_bt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

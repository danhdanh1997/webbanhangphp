-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2018 lúc 10:38 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Binhluan` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaKH` int(10) NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaQTV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(255) NOT NULL,
  `MaSP` int(255) DEFAULT NULL,
  `Soluong` int(255) DEFAULT NULL,
  `Tongtien` decimal(18,0) DEFAULT NULL,
  `Tinhtrang` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `Soluong`, `Tongtien`, `Tinhtrang`) VALUES
(1, 1149, 10, '6500000', 1),
(3, 1116, 1, '670000', 1),
(4, 1148, 1, '800000', 0),
(5, 1116, 1, '670000', 0),
(6, 1148, 1, '800000', 0),
(7, 1130, 3, '1650000', 1),
(8, 1153, 1, '550000', 1),
(9, 1150, 2, '1400000', 1),
(10, 1129, 1, '800000', 1),
(11, 1150, 2, '1400000', 0),
(12, 1129, 1, '800000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieudat`
--

CREATE TABLE `chitietphieudat` (
  `MaPD` int(255) DEFAULT NULL,
  `MaSP` int(255) DEFAULT NULL,
  `Soluong` int(255) DEFAULT NULL,
  `Giatien` decimal(18,2) DEFAULT NULL,
  `Tinhtrang` int(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieudat`
--

INSERT INTO `chitietphieudat` (`MaPD`, `MaSP`, `Soluong`, `Giatien`, `Tinhtrang`) VALUES
(2026, 1111, 1, '550000.00', 1),
(2030, 1148, 3, '800000.00', 1),
(2035, 1153, 1, '550000.00', 1),
(2036, 1150, 2, '700000.00', 0),
(2037, 1150, 2, '700000.00', 0),
(2038, 1150, 2, '700000.00', 0),
(2038, 1129, 1, '800000.00', 0),
(2039, 1150, 2, '700000.00', 0),
(2039, 1129, 1, '800000.00', 0),
(2040, 1150, 2, '700000.00', 0),
(2040, 1129, 1, '800000.00', 0),
(2041, 1150, 2, '700000.00', 0),
(2041, 1129, 1, '800000.00', 0),
(2042, 1150, 2, '700000.00', 0),
(2042, 1129, 1, '800000.00', 0),
(2043, 1150, 2, '700000.00', 0),
(2043, 1129, 1, '800000.00', 0),
(2044, 1150, 2, '700000.00', 0),
(2044, 1129, 1, '800000.00', 0),
(2045, 1150, 2, '700000.00', 1),
(2045, 1129, 1, '800000.00', 1),
(2046, 1150, 2, '700000.00', 0),
(2046, 1129, 2, '800000.00', 0),
(2046, 1138, 3, '650000.00', 0),
(2046, 1111, 1, '550000.00', 0),
(2047, 1150, 2, '700000.00', 0),
(2047, 1129, 2, '800000.00', 0),
(2047, 1138, 3, '650000.00', 0),
(2047, 1111, 1, '550000.00', 0),
(2048, 1150, 2, '700000.00', 0),
(2048, 1129, 2, '800000.00', 0),
(2048, 1138, 3, '650000.00', 0),
(2048, 1111, 1, '550000.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `MaPN` int(255) NOT NULL,
  `MaSP` int(255) DEFAULT NULL,
  `Soluongnhap` int(255) DEFAULT NULL,
  `Gianhap` decimal(18,0) DEFAULT NULL,
  `Thanhtien` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `MaPX` int(255) NOT NULL,
  `MaSP` int(255) DEFAULT NULL,
  `Soluong` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenDM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
('1001', 'ADIDAS'),
('1002', 'CONVERSE'),
('1003', 'PUMA'),
('1004', 'SNEAKER'),
('1005', 'NIKE'),
('1006', 'VANS');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(255) NOT NULL,
  `MaKH` int(255) NOT NULL,
  `MaNV` int(255) DEFAULT NULL,
  `Ngaylap` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `Ngaylap`) VALUES
(1, 1028, 102, '2018-06-09 20:34:45'),
(2, 1028, 102, '2018-06-10 11:19:48'),
(3, 1028, 102, '2018-06-10 11:19:50'),
(4, 1028, 102, '2018-06-10 11:19:51'),
(5, 1028, 102, '2018-06-10 11:19:53'),
(6, 1028, 102, '2018-06-10 11:19:53'),
(7, 1028, 102, '2018-06-10 12:41:07'),
(8, 1028, 102, '2018-06-10 21:14:34'),
(9, 1028, 102, '2018-06-13 14:51:19'),
(10, 1028, 102, '2018-06-13 14:51:19'),
(11, 1028, 102, '2018-06-13 14:51:23'),
(12, 1028, 102, '2018-06-13 14:51:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(255) NOT NULL,
  `TenKH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Matkhau` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Diachi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Sdt` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `Matkhau`, `Diachi`, `Sdt`) VALUES
(1019, 'duchiep', 'duchiep@gmail.com', '12345', 'hochiminh', '0901345678'),
(1020, 'minhhoang', 'minhhoang@gmail.com', '12345', 'HÃ  Ná»™i', '0902245235'),
(1028, 'nguyenthibichlien', 'lien@gmail.com', '11111', 'TiÃªn PhÆ°á»›c', '01234567888'),
(1030, 'nam', 'nam@gmail.com', '11111', 'TiÃªn PhÆ°á»›c', '01234567887'),
(1031, 'dung', 'dung@gmail.com', '22222', 'TiÃªn PhÆ°á»›c', '0935292787');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenNCC` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`) VALUES
('2001', 'CÃ´ng Ty TNHH Sáº£n Xuáº¥t VÃ  ThÆ°Æ¡ng Máº¡i Vina'),
('2002', 'CÆ¡ Sá»Ÿ Gia CÃ´ng Sáº£n Xuáº¥t KhuÃ´n Dao Dáº­p Giáº§y DÃ©p Tá»·'),
('2003', 'CÃ´ng Ty TNHH Sáº£n Xuáº¥t ThÆ°Æ¡ng Máº¡i NguyÃªn Phá»¥ Liá»‡u Kim HÆ°ng'),
('2004', 'Viá»‡t Ã ChÃ¢u - CÃ´ng Ty Cá»• Pháº§n Äáº§u TÆ°'),
('2005', 'CÃ´ng Ty TNHH MTV ThÃ¡nh KhÃ´n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(255) NOT NULL,
  `TenNV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Cmnd` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Sdt` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Matkhau` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Bophan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Mucluong` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Cmnd`, `Sdt`, `Matkhau`, `Bophan`, `Mucluong`) VALUES
(3001, 'Nguyen Thi Phuong Dung', '206022727', '0935292787', 'abc123', 'Giao hang', '5000000'),
(3002, 'Truong Van Vu', '206022728', '0935292788', 'abc123', 'Ban hang', '5500000'),
(3003, 'Vo Thi Nguyet', '206022729', '0935292789', 'abc123', 'Quan Ly Kho', '7000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudat`
--

CREATE TABLE `phieudat` (
  `MaPD` int(255) NOT NULL,
  `MaKH` int(255) DEFAULT NULL,
  `Ngaydat` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieudat`
--

INSERT INTO `phieudat` (`MaPD`, `MaKH`, `Ngaydat`) VALUES
(2030, 1028, '2018-06-09 15:46:28'),
(2031, 1028, '2018-06-09 20:34:31'),
(2032, 1028, '2018-06-09 20:37:00'),
(2033, 1028, '2018-06-10 11:19:36'),
(2034, 1028, '2018-06-10 12:40:54'),
(2035, 1028, '2018-06-10 21:11:21'),
(2036, 1028, '2018-06-13 12:56:27'),
(2037, 1028, '2018-06-13 12:59:26'),
(2038, 1028, '2018-06-13 13:13:19'),
(2039, 1028, '2018-06-13 13:15:21'),
(2040, 1028, '2018-06-13 13:15:24'),
(2041, 1028, '2018-06-13 13:18:42'),
(2042, 1028, '2018-06-13 13:21:33'),
(2043, 1028, '2018-06-13 13:22:34'),
(2044, 1028, '2018-06-13 13:22:59'),
(2045, 1028, '2018-06-13 13:42:40'),
(2046, 1028, '2018-06-13 15:14:57'),
(2047, 1028, '2018-06-13 15:16:43'),
(2048, 1028, '2018-06-13 15:16:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(255) NOT NULL,
  `MaNV` int(255) DEFAULT NULL,
  `Ngaynhap` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int(255) NOT NULL,
  `MaNV` int(255) DEFAULT NULL,
  `Ngayxuat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantrivien`
--

CREATE TABLE `quantrivien` (
  `MaQTV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenQTV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Matkhau` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quantrivien`
--

INSERT INTO `quantrivien` (`MaQTV`, `TenQTV`, `Matkhau`) VALUES
('H227', NULL, '123456'),
('Lien', NULL, 'abc123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(255) NOT NULL,
  `MaDM` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaNCC` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `TenSP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Mau` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Size` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChatLieu` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `AnhSP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Soluong` int(255) DEFAULT NULL,
  `Khuyenmai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Mota` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Dongia` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaDM`, `MaNCC`, `TenSP`, `Mau`, `Size`, `ChatLieu`, `AnhSP`, `Soluong`, `Khuyenmai`, `Mota`, `Dongia`) VALUES
(1008, ' 1001', ' 2001', 'GIÃ€Y ADIDAS 101 ', 'Há»’NG,XANH DÆ¯Æ NG', '37,38,39', 'Váº£i thÃ´', 'a1.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '550000'),
(1101, ' 1001', ' 2002', 'GIÃ€Y ADIDAS102', 'ÄEN,TRáº®NG', '37,38,39,40,41,42', 'Da', 'giayadidas2.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '450000'),
(1103, ' 1001', ' 2002', 'GIÃ€Y ADIDAS 103', 'Äá»Ž,ÄEN', '37,38,39,40,41,42', 'Da', 'a3.jpg', 50, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '800000'),
(1104, ' 1001', ' 2004', 'GIÃ€Y ADIDAS NMD', 'TRáº®NG Äá»Ž,ÄEN Äá»Ž', '37', 'Váº£i thÃ´', 'qzh8aylqii2ta.jpg', 50, '', 'Cháº¥t liá»‡u cao cáº¥p.\r\n\r\nThiáº¿t káº¿ thá»i trang.\r\n\r\nHÃ ng chÃ­nh hÃ£ng.', '700000'),
(1105, ' 1001', ' 2001', 'GIÃ€Y ADIDAS1', 'ÄEN,TRáº®NG,XANH DÆ¯Æ NG', '37', 'Da', 'giay-adidas-Stan-Smith-Nam-xanh-01-800x800_0.jpg', 40, '', 'Sáº£n pháº©m nÃ y tá»‘t\r\n\r\nÆ¯a nhÃ¬n,gá»n,nháº¹.\r\nBá»n, gá»n ,nháº¹.\r\n\r\nThiáº¿t káº¿ thá»i trang.', '650000'),
(1106, ' 1001', ' 2004', 'GIÃ€Y ADIDAS DAME ', 'ÄEN', '37', 'Váº£i thÃ´', 'giay-adidas-dame-3-nam-den-01-800x800_0.jpg', 25, '', 'Äáº¿ nháº¹,bá»n.\r\n\r\nPVC bá»n bá»‰ ,khÃ´ng lá»—i má»‘t,ráº¥t thá»i thÆ°á»£ng.', '450000'),
(1107, ' 1001', ' 2001', 'GIÃ€Y ADIDAS104', 'ÄEN, XÃM,TRáº®NG', '37,38', 'Váº£i cotton', 'a4.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '550000'),
(1108, ' 1001', ' 2003', 'GIÃ€Y ADIDAS NMD ', 'ÄEN,TRáº®NG,XANH DÆ¯Æ NG', '37,38,39,40,41,42', 'Váº£i cotton', 'a2.jpg', 20, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '550000'),
(1109, ' 1001', ' 2001', 'GIÃ€Y ADIDAS 105', 'Äá»Ž,ÄEN', '37,38,39', 'Váº£i thÃ´', 'a8.jpg', 50, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '650000'),
(1110, ' 1002', ' 2001', 'CONVERSE 002', 'ÄEN, XANH ÄEN, TRáº®NG', '37,38,39', 'Váº£i cotton', 'c1.jpg', 30, '', 'GiÃ y Converse Nam CÃ¡ tÃ­nh Size 37,38,39', '450000'),
(1111, ' 1002', ' 2001', 'GIÃ€Y CONVERSE 103', 'TRáº®NG', '37,38,39', 'Váº£i cotton', 'c2.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '550000'),
(1112, ' 1002', ' 2001', 'GIÃ€Y CONVERSE 102', 'TRáº®NG', '37,38,39', 'Váº£i thÃ´', 'c3.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '800000'),
(1113, ' 1002', ' 2001', 'GIÃ€Y CONVERSE 101', 'ÄEN,TRáº®NG,XANH DÆ¯Æ NG', '37,38,39,40', 'Váº£i thÃ´', 'c8.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '700000'),
(1114, ' 1002', ' 2004', 'GIÃ€Y CONVERSE 001', 'VÃ€NG', '37,38,39,40', 'Da', 'c5.jpg', 30, '', 'Äáº¿ nháº¹,bá»n. PVC bá»n bá»‰ ,khÃ´ng lá»—i má»‘t,ráº¥t thá»i thÆ°á»£ng.', '800000'),
(1115, ' 1002', ' 2001', 'GIÃ€Y CONVERSE 003', 'ÄEN, XÃM,TRáº®NG', '37,38,39,40,41,42', 'Da Lá»™n', 'c6.jpg', 25, '', 'Kiá»ƒu dÃ¡ng tráº» trung HÃ ng chÃ­nh hÃ£ng Bá»n bá»‰.', '700000'),
(1116, ' 1002', ' 2003', 'CONVERSE 004', 'TRáº®NG Äá»Ž,ÄEN Äá»Ž', '37,38', 'Da Lá»™n', 'c7.jpg', 50, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '670000'),
(1117, ' 1002', ' 2002', 'CONVERSE 005', 'ÄEN,TRáº®NG,XANH DÆ¯Æ NG', '37,38,39,40', 'Váº£i thÃ´', 'c8.jpg', 20, '', 'Cháº¥t liá»‡u cao cáº¥p. Thiáº¿t káº¿ thá»i trang. HÃ ng chÃ­nh hÃ£ng.', '650000'),
(1118, ' 1002', ' 2005', 'GIÃ€Y CONVERSE 006', 'VÃ€NG', '37,38,39,40', 'Váº£i cotton', 'c9.jpg', 50, '', 'Äáº¿ nháº¹,bá»n. PVC bá»n bá»‰ ,khÃ´ng lá»—i má»‘t,ráº¥t thá»i thÆ°á»£ng.', '800000'),
(1119, ' 1002', ' 2002', 'CONVERSE 007', 'XÃM,DA BÃ’', '37,38,39', 'Da Lá»™n', 'c10.jpg', 40, '', 'Kiáº¿u dÃ¡ng hiá»‡n dáº¡i\r\n\r\nMang dá»… chá»‹u\r\nMÃ u nÃ¢u tÃ¢y sang trong\r\n\r\nCháº¥t PVC mang thoáº£i mÃ¡i', '700000'),
(1120, ' 1003', ' 2003', 'GIÃ€Y PUMA 101', 'TRáº®NG Äá»Ž,ÄEN Äá»Ž', '37,38,39', 'Váº£i thÃ´', 'p1.jpg', 50, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '650000'),
(1121, ' 1003', ' 2001', 'GIÃ€Y PUMA 102', 'Há»’NG NHáº T,TRáº®NG', '37,38,39,40,41,42', 'Váº£i cotton', 'p2.jpg', 30, '', 'Äáº¿ nháº¹,bá»n. PVC bá»n bá»‰ ,khÃ´ng lá»—i má»‘t,ráº¥t thá»i thÆ°á»£ng.', '700000'),
(1122, ' 1003', ' 2005', 'GIÃ€Y PUMA 103', 'ÄEN,TRáº®NG,Äá»Ž,XÃM', '37,38', 'Da', 'p3.jpg', 25, '', 'Kiáº¿u dÃ¡ng hiá»‡n dáº¡i Mang dá»… chá»‹u MÃ u nÃ¢u tÃ¢y sang trong Cháº¥t PVC mang thoáº£i mÃ¡i', '800000'),
(1123, ' 1003', ' 2001', 'GIÃ€Y PUMA 104', 'ÄEN, XÃM,TRáº®NG', '37,38,39,40', 'Váº£i cotton', 'p4.jpg', 50, '', 'Cháº¥t liá»‡u cao cáº¥p. Thiáº¿t káº¿ thá»i trang. HÃ ng chÃ­nh hÃ£ng.', '650000'),
(1124, ' 1003', ' 2004', 'GIÃ€Y PUMA 105', 'ÄEN, XANH ÄEN, TRáº®NG', '37,38,39', 'Váº£i thÃ´', 'p5.jpg', 50, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '450000'),
(1125, ' 1003', ' 2002', 'GIÃ€Y PUMA 106', 'ÄEN,TRáº®NG,XANH DÆ¯Æ NG', '37,38', 'Da', 'p6.jpg', 25, '', 'Kiáº¿u dÃ¡ng hiá»‡n dáº¡i Mang dá»… chá»‹u MÃ u nÃ¢u tÃ¢y sang trong Cháº¥t PVC mang thoáº£i mÃ¡i', '800000'),
(1126, ' 1003', ' 2001', 'GIÃ€Y PUMA 107', 'TRáº®NG Äá»Ž,ÄEN Äá»Ž', '37,38,39,40,41,42', 'Váº£i cotton', 'p7.jpg', 50, '', '	Äáº¿ nháº¹,bá»n. PVC bá»n bá»‰ ,khÃ´ng lá»—i má»‘t,ráº¥t thá»i thÆ°á»£ng.', '500000'),
(1127, ' 1003', ' 2001', 'GIÃ€Y PUMA 108', 'ÄEN, XÃM,TRáº®NG', '37,38', 'Da Lá»™n', 'p8.jpg', 20, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '650000'),
(1128, ' 1003', ' 2005', 'GIÃ€Y PUMA 109', 'Äá»Ž,ÄEN', '37,38,39,40', 'Váº£i cotton', 'p9.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '800000'),
(1129, ' 1003', ' 2001', 'GIÃ€Y PUMA 110', 'ÄEN, XÃM,TRáº®NG', '37,38,39,40,41,42', 'Váº£i thÃ´', 'p10.jpg', 25, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '800000'),
(1130, ' 1004', ' 2001', 'GIÃ€Y SNEAKER 101', 'TRáº®NG Äá»Ž,ÄEN Äá»Ž', '37,38,39,40', 'Váº£i thÃ´', 's1.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '550000'),
(1131, ' 1004', ' 2002', 'GIÃ€Y SNEAKER 102', 'DA BÃ’,NÃ‚U', '37,38,39,40,41,42', 'Váº£i cotton', 's2.jpg', 50, '', 'Äáº¿ nháº¹,bá»n. PVC bá»n bá»‰ ,khÃ´ng lá»—i má»‘t,ráº¥t thá»i thÆ°á»£ng.', '890000'),
(1132, ' 1004', ' 2005', 'GIÃ€Y SNEAKER 103', 'ÄEN, XÃM,TRáº®NG', '37,38,39', 'Váº£i cotton', 's3.jpg', 20, '', 'Äáº¿ nháº¹,bá»n. PVC bá»n bá»‰ ,khÃ´ng lá»—i má»‘t,ráº¥t thá»i thÆ°á»£ng.', '800000'),
(1133, ' 1004', ' 2004', 'GIÃ€Y SNEAKER 104', 'ÄEN, XÃM,TRáº®NG', '37,38,39,40,41,42', 'Da Lá»™n', 's4.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '650000'),
(1134, ' 1004', ' 2003', 'GIÃ€Y SNEAKER 105', 'ÄEN, XÃM,TRáº®NG', '37,38,39', 'Váº£i cotton', 'sneaker3.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '650000'),
(1135, ' 1004', ' 2005', 'GIÃ€Y SNEAKER 106', 'XANH,XANH ÄEN,ÄEN', '37,38,39', 'Váº£i thÃ´', 'sneaker7.jpg', 25, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '800000'),
(1136, ' 1004', ' 2001', 'GIÃ€Y SNEAKER 107', 'XÃM,DA BÃ’', '37,38,39,40,41,42', 'Da Lá»™n', 'Sneaker8.jpg', 50, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '700000'),
(1137, ' 1004', ' 2004', 'GIÃ€Y SNEAKER 108', 'ÄEN, XÃM,TRáº®NG', '37,38', 'Da', 'sneaker2.jpg', 50, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '650000'),
(1138, ' 1005', ' 2001', 'GIÃ€Y NIKE 101', 'ÄEN, XÃM,TRáº®NG', '37,38,39', 'Váº£i thÃ´', 'n1.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '650000'),
(1139, ' 1005', ' 2002', 'GIÃ€Y NIKE 102', 'ÄEN, XANH ÄEN, TRáº®NG', '37,38,39,40,41,42', 'Váº£i cotton', 'n2.jpg', 30, '', 'Kiáº¿u dÃ¡ng hiá»‡n dáº¡i Mang dá»… chá»‹u MÃ u nÃ¢u tÃ¢y sang trong Cháº¥t PVC mang thoáº£i mÃ¡i', '900000'),
(1140, ' 1005', ' 2004', 'GIÃ€Y NIKE 103', 'TRáº®NG Äá»Ž,ÄEN Äá»Ž', '37,38,39,40', 'Da', 'n3.jpg', 25, '', 'Kiáº¿u dÃ¡ng hiá»‡n dáº¡i Mang dá»… chá»‹u MÃ u nÃ¢u tÃ¢y sang trong Cháº¥t PVC mang thoáº£i mÃ¡i', '650000'),
(1141, ' 1005', ' 2003', 'GIÃ€Y NIKE 104', 'TRáº®NG Äá»Ž,ÄEN Äá»Ž', '37,38,39,40,41,42', 'Váº£i cotton', 'n4.jpg', 25, '', 'Kiáº¿u dÃ¡ng hiá»‡n dáº¡i Mang dá»… chá»‹u MÃ u nÃ¢u tÃ¢y sang trong Cháº¥t PVC mang thoáº£i mÃ¡i', '450000'),
(1142, ' 1005', ' 2004', 'GIÃ€Y NIKE 105', 'Äá»Ž,ÄEN', '37,38,39,40', 'Da', 'n5.jpg', 50, '', 'Kiáº¿u dÃ¡ng hiá»‡n dáº¡i Mang dá»… chá»‹u MÃ u nÃ¢u tÃ¢y sang trong Cháº¥t PVC mang thoáº£i mÃ¡i', '800000'),
(1143, ' 1005', ' 2001', 'GIÃ€Y NIKE 106', 'ÄEN, XÃM,TRáº®NG', '37,38,39', 'Váº£i cotton', 'n6.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '700000'),
(1144, ' 1005', ' 2001', 'GIÃ€Y NIKE 107', 'TRáº®NG Äá»Ž,ÄEN Äá»Ž', '37,38,39,40,41,42', 'Váº£i thÃ´', 'n7.jpg', 20, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '450000'),
(1145, ' 1005', ' 2003', 'GIÃ€Y NIKE 108', 'TRáº®NG', '37,38,39', 'Váº£i thÃ´', 'n8.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '800000'),
(1146, ' 1005', ' 2001', 'GIÃ€Y NIKE 109', 'TRáº®NG', '37,38,39,40,41,42', 'Da Lá»™n', 'n9.jpg', 50, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '650000'),
(1147, ' 1005', ' 2004', 'GIÃ€Y NIKE 110', 'Há»’NG NHáº T,TRáº®NG', '37,38,39,40', 'Váº£i thÃ´', 'n10.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '800000'),
(1148, ' 1006', ' 2003', 'GIÃ€Y VANS 101', 'TRáº®NG,ÄEN', '37,38,39', 'Váº£i cotton', 'v1.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '800000'),
(1149, ' 1006', ' 2002', 'GIÃ€Y VANS 102', 'ÄEN, XÃM,TRáº®NG', '37,38,39', 'Váº£i cotton', 'v2.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '650000'),
(1150, ' 1006', ' 2004', 'GIÃ€Y VANS 103', 'Äá»Ž,ÄEN', '37,38,39,40,41,42', 'Da', 'v3.jpg', 50, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '700000'),
(1151, ' 1006', ' 2001', 'GIÃ€Y VANS 104', 'Äá»Ž,ÄEN', '37,38,39', 'Váº£i thÃ´', 'v4.jpg', 20, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '800000'),
(1152, ' 1006', ' 2005', 'GIÃ€Y VANS 105', 'Äá»Ž ÄÃ”,ÄEN', '37,38,39,40,41,42', 'Da Lá»™n', 'vans1.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '450000'),
(1153, ' 1006', ' 2004', 'GIÃ€Y VANS 106', 'TRáº®NG,ÄEN', '37,38,39,40', 'Da', 'vans3.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '550000'),
(1154, ' 1006', ' 2003', 'GIÃ€Y VANS 107', 'ÄEN,TRáº®NG,XANH DÆ¯Æ NG', '37,38,39,40,41,42', 'Váº£i cotton', 'vans5.jpg', 30, '', 'Sáº£n pháº©m nÃ y tá»‘t Æ¯a nhÃ¬n,gá»n,nháº¹. Bá»n, gá»n ,nháº¹. Thiáº¿t káº¿ thá»i trang.', '700000');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaQTV` (`MaQTV`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitietphieudat`
--
ALTER TABLE `chitietphieudat`
  ADD KEY `MaPD` (`MaPD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD KEY `MaPN` (`MaPN`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD KEY `MaPX` (`MaPX`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`),
  ADD UNIQUE KEY `khachhang_Email` (`Email`),
  ADD UNIQUE KEY `khachhang_Sdt` (`Sdt`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`),
  ADD UNIQUE KEY `nv_cmnd` (`Cmnd`),
  ADD UNIQUE KEY `nv_Sdt` (`Sdt`);

--
-- Chỉ mục cho bảng `phieudat`
--
ALTER TABLE `phieudat`
  ADD PRIMARY KEY (`MaPD`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `quantrivien`
--
ALTER TABLE `quantrivien`
  ADD PRIMARY KEY (`MaQTV`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaKH` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `MaHD` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `MaPN` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `MaPX` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1032;

--
-- AUTO_INCREMENT cho bảng `phieudat`
--
ALTER TABLE `phieudat`
  MODIFY `MaPD` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2049;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

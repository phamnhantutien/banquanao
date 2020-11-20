-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2020 lúc 02:08 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banquanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_banquanao_user`
--

CREATE TABLE `nv4_banquanao_user` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT 0 COMMENT 'mã khách hàng',
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'tên khách hàng',
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'địa chỉ khách hàng',
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'số điện thoại',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'email khách hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nv4_banquanao_user`
--

INSERT INTO `nv4_banquanao_user` (`id`, `id_user`, `fullname`, `address`, `phone`, `email`) VALUES
(2, 0, 'Đào Long Nhật', '30 Ngõ 6 Ngô Quyền', '0339240505', 'dlnhat98@gmail.com'),
(4, 0, 'Đào Long Nhật 666', 'Hà Nội', '0339240505', 'dlnhat98@gmail.com'),
(5, 0, 'Nhớ Nhà 123', 'Hà Nội', '0339240505', 'dlnhat98@gmail.com'),
(6, 0, 'Nhat 1234', 'Hà Nội', '0339240505', 'dlnhat98@gmail.com'),
(7, 0, 'Đào Long Nhật 09', 'Hà Nội', '0339240505', 'dlnhat98@gmail.com'),
(8, 0, 'My Love', 'Hà Nội', '0339240505', 'dlnhat98@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nv4_banquanao_user`
--
ALTER TABLE `nv4_banquanao_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nv4_banquanao_user`
--
ALTER TABLE `nv4_banquanao_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2020 lúc 10:25 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nukeviet4`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv4_shop_product`
--

CREATE TABLE `nv4_shop_product` (
  `id` int(11) NOT NULL,
  `id_product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'mã sản phẩm',
  `name_product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'tên sản phẩm',
  `poduct_maker` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'hãng sản phẩm',
  `price` int(11) NOT NULL COMMENT 'giá sản phẩm',
  `status` int(11) NOT NULL COMMENT 'tình trạng sản phẩm',
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ảnh sản phẩm',
  `information` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'thông tin sản phẩm',
  `details` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'thông tin chi tiết sản phẩm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nv4_shop_product`
--
ALTER TABLE `nv4_shop_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nv4_shop_product`
--
ALTER TABLE `nv4_shop_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

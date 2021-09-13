-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 13, 2021 lúc 04:20 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoplaptop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id_bill` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `order_code` varchar(50) NOT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `status_bill` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id_bill`, `id_customer`, `date_order`, `order_code`, `total`, `payment`, `status_bill`) VALUES
(132, 139, '2020-11-29', 'a269b', 15000, 'ATM', 2),
(134, 141, '2020-12-01', '24bee', 120000, 'COD', 1),
(137, 144, '2021-02-27', '0b4be', 24000, 'ATM', 1),
(138, 145, '2021-03-03', '4100e', 12000, 'COD', 1),
(139, 146, '2021-03-03', '91fdd', 12000, 'COD', 1),
(140, 147, '2021-04-06', '2e52f', 420000, 'COD', 0),
(141, 148, '2021-03-09', '05ff8', 30000, 'COD', 1),
(142, 149, '2021-03-11', '6fa57', 30000, 'COD', 1),
(143, 150, '2021-03-13', '25a6f', 29000, 'COD', 1),
(144, 151, '2021-03-13', '4cb98', 30000, 'ATM', 1),
(145, 152, '2021-04-01', 'f2282', 22000, 'COD', 1),
(146, 153, '2021-04-02', 'ee61f', 12000, 'COD', 1),
(149, 156, '2021-04-05', '80cdd', 3000000, 'COD', 0),
(147, 154, '2021-04-03', '01011', 12000, 'COD', 1),
(148, 155, '2021-04-04', '277be', 20000000, 'COD', 0),
(160, 175, '2021-04-13', '7fede', 120000, 'COD', 0),
(161, 176, '2021-04-14', 'a18aa', 32000, 'COD', 0),
(162, 177, '2021-04-15', '9fc23', 24000, 'COD', 1),
(163, 178, '2021-05-01', 'dbd76', 10000000, 'COD', 1),
(167, 181, '2021-05-01', 'ecda9', 1200000, 'ATM', 1),
(168, 181, '2021-05-02', '2f829', 12000000, 'ATM', 1),
(169, 182, '2021-05-04', 'd8611', 24000000, 'ATM', 1),
(170, 183, '2021-05-13', '4f49d', 9900000, 'ATM', 0),
(171, 184, '2021-05-13', '5960c', 9000000, 'ATM', 0),
(172, 185, '2021-05-13', '2ec8d', 12000000, 'ATM', 1),
(173, 186, '2021-09-13', '4ec06', 19999000, 'COD', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id_bill_detail` int(11) UNSIGNED NOT NULL,
  `id_bill` int(10) DEFAULT NULL,
  `id_product` int(10) DEFAULT NULL,
  `id_post_bill_detail` int(11) NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `quantity` int(10) DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id_bill_detail`, `id_bill`, `id_product`, `id_post_bill_detail`, `order_code`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(75, 132, 90, 16, 'a269b', 1, 15000, '2020-11-29 13:50:09', '2020-11-29 13:50:09'),
(77, 134, 16, 5, '24bee', 1, 120000, '2020-12-01 02:58:19', '2020-12-01 02:58:19'),
(110, 168, 77, 4, '2f829', 1, 12000000, '2021-05-02 02:46:51', '2021-05-02 02:46:51'),
(80, 137, 74, 1, '0b4be', 2, 12000, '2021-02-27 06:22:44', '2021-02-27 06:22:44'),
(81, 138, 74, 1, '4100e', 1, 12000, '2021-03-03 08:17:51', '2021-03-03 08:17:51'),
(82, 139, 74, 1, '91fdd', 1, 12000, '2021-03-03 08:21:01', '2021-03-03 08:21:01'),
(83, 140, 13, 7, '2e52f', 1, 300000, '2021-03-06 05:46:18', '2021-03-06 05:46:18'),
(84, 140, 16, 5, '2e52f', 1, 120000, '2021-03-06 05:46:18', '2021-03-06 05:46:18'),
(85, 141, 74, 1, '05ff8', 1, 30000, '2021-03-09 02:29:34', '2021-03-09 02:29:34'),
(86, 142, 74, 1, '6fa57', 1, 30000, '2021-03-11 03:28:46', '2021-03-11 03:28:46'),
(87, 143, 87, 9, '25a6f', 1, 29000, '2021-03-13 10:05:38', '2021-03-13 10:05:38'),
(88, 144, 74, 1, '4cb98', 1, 30000, '2021-03-13 10:07:53', '2021-03-13 10:07:53'),
(89, 145, 88, 11, 'f2282', 1, 22000, '2021-03-13 10:38:13', '2021-03-13 10:38:13'),
(90, 146, 75, 3, 'ee61f', 1, 12000, '2021-03-13 11:28:40', '2021-03-13 11:28:40'),
(91, 147, 75, 3, '01011', 1, 12000, '2021-03-30 13:17:25', '2021-03-30 13:17:25'),
(92, 148, 99, 1, '277be', 1, 20000000, '2021-03-30 13:19:20', '2021-03-30 13:19:20'),
(93, 149, 74, 1, '80cdd', 1, 3000000, '2021-03-31 14:19:30', '2021-03-31 14:19:30'),
(94, 150, 16, 5, '6355b', 1, 120000, '2021-04-01 01:22:49', '2021-04-01 01:22:49'),
(95, 151, 13, 7, '118f3', 2, 3000000, '2021-04-01 01:43:16', '2021-04-01 01:43:16'),
(96, 152, 88, 11, '58863', 1, 22000, '2021-04-02 10:51:32', '2021-04-02 10:51:32'),
(97, 153, 88, 11, '7b65c', 1, 22000, '2021-04-02 10:52:53', '2021-04-02 10:52:53'),
(98, 154, 88, 11, '5f3ac', 1, 22000, '2021-04-02 10:53:35', '2021-04-02 10:53:35'),
(99, 155, 74, 1, '296f1', 1, 3000000, '2021-04-06 05:10:04', '2021-04-06 05:10:04'),
(100, 156, 74, 1, '42863', 1, 3000000, '2021-04-06 05:10:05', '2021-04-06 05:10:05'),
(101, 157, 74, 1, '0361d', 1, 3000000, '2021-04-06 05:10:07', '2021-04-06 05:10:07'),
(102, 158, 74, 1, '96781', 1, 12000, '2021-04-06 05:10:08', '2021-04-06 05:10:08'),
(103, 159, 16, 5, 'f6e74', 1, 120000, '2021-04-06 05:16:10', '2021-04-06 05:16:10'),
(104, 160, 16, 5, '7fede', 1, 120000, '2021-04-06 05:19:15', '2021-04-06 05:19:15'),
(105, 161, 98, 19, 'a18aa', 1, 32000, '2021-04-06 05:36:00', '2021-04-06 05:36:00'),
(106, 162, 77, 4, '9fc23', 2, 12000, '2021-04-06 05:41:04', '2021-04-06 05:41:04'),
(107, 163, 96, 8, 'dbd76', 1, 10000000, '2021-04-06 05:56:48', '2021-04-06 05:56:48'),
(109, 167, 16, 5, 'ecda9', 1, 1200000, '2021-05-02 02:42:39', '2021-05-02 02:42:39'),
(111, 169, 77, 4, 'd8611', 2, 12000000, '2021-05-02 10:45:08', '2021-05-02 10:45:08'),
(112, 170, 91, 15, '4f49d', 1, 11000000, '2021-05-13 13:40:44', '2021-05-13 13:40:44'),
(113, 171, 77, 4, '5960c', 1, 10000000, '2021-05-13 13:56:58', '2021-05-13 13:56:58'),
(114, 172, 86, 2, '2ec8d', 1, 12000000, '2021-05-13 13:58:46', '2021-05-13 13:58:46'),
(115, 173, 106, 31, '4ec06', 1, 19999000, '2021-09-13 14:15:50', '2021-09-13 14:15:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_qty` int(50) NOT NULL,
  `coupon_number` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_condition` int(11) NOT NULL,
  `coupon_date_start` varchar(50) NOT NULL,
  `coupon_date_end` varchar(50) NOT NULL,
  `coupon_status` int(10) NOT NULL,
  `coupon_used` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_name`, `coupon_qty`, `coupon_number`, `coupon_code`, `coupon_condition`, `coupon_date_start`, `coupon_date_end`, `coupon_status`, `coupon_used`) VALUES
(1, 'Giảm Thôi', 51, 20, 'nam000', 0, '19-04-2021', '29-04-2021', 0, ''),
(2, 'Giảm COVID-19', 5, 100000, 'nam002', 1, '03-04-2021', '09-05-2021', 0, ',10'),
(3, 'Giảm Chơi', 10, 1, 'nam003', 0, '01-04-2021', '11-06-2021', 0, ',10'),
(4, 'Giảm Chơi Thôi Mà', 12, 6, 'PVCOVIT', 0, '01-05-2021', '04-05-2021', 0, ',27'),
(5, 'Giảm la Giam thôi', 5, 10, 'sale3', 0, '01-05-2021', '24-05-2021', 0, ',36'),
(6, 'xx', 7, 3, 'quangdb2ffffff', 0, '29-03-2021', '29-04-2021', 0, NULL),
(7, 'ccc', 17, 4, 'quangdb2sss', 0, '29-03-2021', '29-04-2021', 0, NULL),
(8, 'test', 7, 3, 'sale1', 0, '29-04-2021', '11-05-2021', 0, NULL),
(9, 'test1', 17, 4, 'sale2', 0, '29-04-2021', '29-05-2021', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(186, 'Phạm Thị Huyền Trang', 'nữ', 'tranghanhtien@gmail.com', 'Phú Hộ', '0375916092', NULL, '2021-09-13 14:15:50', '2021-09-13 14:15:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id_payment` int(10) NOT NULL,
  `id_customer` varchar(255) NOT NULL,
  `id_post_payment` int(11) NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `code_bank` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id_payment`, `id_customer`, `id_post_payment`, `order_code`, `code_bank`, `time`) VALUES
(1, '182', 5, 'ecda9', 'NCB', '02-05-2021 09:42:39'),
(2, '182', 4, '2f829', 'NCB', '02-05-2021 09:46:51'),
(3, '182', 4, 'd8611', 'NCB', '02-05-2021 17:45:08'),
(4, '183', 15, '4f49d', 'NCB', '13-05-2021 20:40:44'),
(5, '184', 4, '5960c', 'NCB', '13-05-2021 20:56:58'),
(6, '185', 2, '2ec8d', 'NCB', '13-05-2021 20:58:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id_post` int(10) NOT NULL,
  `sp_vi` varchar(255) NOT NULL,
  `sp_en` varchar(255) NOT NULL,
  `description_vi` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `product_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id_post`, `sp_vi`, `sp_en`, `description_vi`, `description_en`, `product_slug`) VALUES
(1, 'Sản Phẩm 1', 'Product 1', '<p>D&ograve;ng m&aacute;y Thinkpad T460S thiết kế sang trọng v&agrave; cứng c&aacute;p</p>\r\n\r\n<p>CPU: Intel Core i3-10210U (thế hệ thứ 10).</p>\r\n\r\n<p>RAM: DDR4 8 GB&nbsp;(On board 4 GB +1 khe 4 GB).</p>\r\n\r\n<p>Ổ cứng: SSD 120GB M.2 PCIe, hỗ trợ khe cắm HDD SATA.</p>\r\n\r\n<p>Card đồ họa rời:&nbsp;NVIDIA GeForce MX250 2 GB.</p>', '<p>description 1</p>', 'san-pham-1'),
(2, 'Sản Phẩm 2', 'Product 2', '<p>CPU: Intel Core i5-10210U (thế hệ thứ 10).</p>\r\n\r\n<p>RAM: DDR4 8 GB&nbsp;(On board 4 GB +1 khe 4 GB).</p>\r\n\r\n<p>Ổ cứng: SSD 512 GB M.2 PCIe, hỗ trợ khe cắm HDD SATA.</p>\r\n\r\n<p>Card đồ họa rời:&nbsp;NVIDIA GeForce MX250 2 GB.</p>', '<p>description 2</p>', 'san-pham-2'),
(3, 'Sản Phẩm 3', 'Product 3', '<p>D&ograve;ng sản phẩm: MacBook</p>  <p>Tốc độ CPU: 2.0GHz</p>  <p>Bộ xử l&yacute; đồ họa (GPU): NVIDIA GeForce 9400M</p>  <p>Độ lớn m&agrave;n h&igrave;nh (inch): 13.3 inch</p>  <p>Ổ cứng (HDD): 160GB</p>  <p>Loại bộ vi xử l&yacute; (CPU): Intel Core 2 Duo</p>  <p>Dung lượng bộ nhớ ch&iacute;nh (RAM): 2.0GB</p>', 'description 3', 'san-pham-3'),
(4, 'Sản Phẩm 4', 'Product 4', '<p>CPU: Intel Core i7 720QM 4 nh&acirc;n x 1,6Ghz, Turboboost 2,8Ghz.</p>  <p>RAM: 2GB x 2 DD3 8500 1066Mhz.<br /> Card đồ họa: nVidia GTX260, 1GB VRAM<br /> Ổ cứng: 2 x 500GB, 7200 v&ograve;ng.<br /> Ổ đĩa: đọc Bluray, đọc + ghi DVD/CD.<br /> Giao tiếp: 4 cổng USB, ng&otilde; nhập/xuất audio, microphone, khe đọc thẻ SD/MMC/MS, Express Card 54, HDMI, eSata, mini-FireWire, cổng VGA.<br /> Pin: 6 cell, 4800mAh</p>', 'description 4', 'san-pham-4'),
(5, 'Sản Phẩm 5', 'Product 5', '<p>CPU: Intel Core i7 2630QM, 2.00 GHz<br />\r\nBộ nhớ: DDR3, 8 GB.<br />\r\nỔ đĩa 750GB 7200Rpm<br />\r\nM&agrave;n h&igrave;nh: 15.6 inch Led HD 1366- 768<br />\r\nĐồ họa: NVIDIA GeForce GTX 460M, 1.5 GB Uptu 3GB 192Bit&nbsp;<br />\r\n&Acirc;m thanh 2.1 C&ocirc;ng nghệ EAX Advanced HD 5.0, THX TruStudio Pro</p>', 'description 5', 'san-pham-5'),
(6, 'Sản Phẩm 6', 'Product 6', '<p>CPU: Intel Core i7 2630QM, 2.00 GHz<br /> Bộ nhớ: DDR3, 8 GB.<br /> Ổ đĩa 750GB 7200Rpm<br /> M&agrave;n h&igrave;nh: 15.6 inch Led HD 1366- 768<br /> Đồ họa: NVIDIA GeForce GTX 460M, 1.5 GB Uptu 3GB 192Bit&nbsp;<br /> &Acirc;m thanh 2.1 C&ocirc;ng nghệ EAX Advanced HD 5.0, THX TruStudio Pro</p>', 'description 6', 'san-pham-6'),
(7, 'Sản Phẩm 7', 'Product 7', '<p>CPU: Intel Core i5-10210U (thế hệ thứ 10).</p>\r\n\r\n<p>RAM: DDR4 8 GB&nbsp;(On board 4 GB +1 khe 4 GB).</p>\r\n\r\n<p>Ổ cứng: SSD 512 GB M.2 PCIe, hỗ trợ khe cắm HDD SATA.</p>\r\n\r\n<p>Card đồ họa rời:&nbsp;NVIDIA GeForce MX250 2 GB.</p>', 'description 7', 'san-pham-7'),
(8, 'Sản Phẩm 8', 'Product 8', '<p>bgfbgf</p>', 'description 8', 'san-pham-8'),
(9, 'Sản Phẩm 9', 'Product 9', '<p>Dell XPS 13 7390 I5 10210U 8GB 256SS 13.3FHD W10 Finger Silver</p>', 'description 9', 'san-pham-9'),
(10, 'Sản Phẩm 10', 'Product 10', 'frferwfrwferfe', 'description 10', 'san-pham-10'),
(11, 'Sản Phẩm 11', 'Product 11', '<p>HP Envy 13 ba1027TU i5 1135G7/8GB/256GB/Office H&amp;S2019/Win10 (2K0B1PA)</p>', 'description 11', 'san-pham-11'),
(13, 'Sản Phẩm 12', 'Product 12', 'Lenovo Thinkpad T490s', 'description 12', 'san-pham-12'),
(14, 'Sản Phẩm 13', 'Product 13', '<p>ssssssssssss</p>', 'description 13', 'san-pham-13'),
(15, 'Sản Phẩm 14', 'Product 14', '<p>CPU: Intel&reg;&nbsp; Core&trade; i3-7130U</p>  <p>RAM: 4GB DDR44</p>  <p>M&agrave;n h&igrave;nh:&nbsp;14&Prime; FHD IPS LCD with glass</p>  <p>Cổng kết nối:&nbsp;1 x USB 3.1 Type C Gen 1 5Gbps, 2 x USB 3.0 ( One with off-line charger), 1 x USB 2.0, 1 x SD Card Reader, 1 x HDMI (v1.4), 1 x DC-In, 1 x Headphone Jack, 1 x K-lock, Fingerprint reader.</p>', 'description 14', 'san-pham-14'),
(16, 'Sản Phẩm 15', 'Product 15', '<p>THE NEW RAZER BLADE 15 ADVANCE 2020</p>', 'description 15', 'san-pham-15'),
(17, 'Sản Phẩm 16', 'Product 16', '<p><em><strong>xcdcdc</strong></em></p>', 'description 16', 'san-pham-16'),
(18, 'Sản phẩm 17', 'Product 17', '<p>CPU: Intel Core i7-10210U (thế hệ thứ 10).</p>', 'description 17', 'san-pham-17'),
(19, 'Sản Phẩm 18', 'Product 18', '<p>Sản Phẩm 18</p>', 'description 18', 'san-pham-18'),
(24, 'Sản Phẩm 19', 'Product 19', '<p>Sản Phẩm 19</p>', 'description 19', 'san-pham-19'),
(25, 'Sản Phẩm 20', 'Product 20', '<p>Sản Phẩm 20</p>', 'description 20', 'san-pham-20'),
(26, 'Sản Phẩm 21', 'Product 21', '<p>Sản Phẩm 21</p>', 'description 21', 'san-pham-21'),
(27, 'Sản Phẩm 22', 'Product 22', '<p>22222222222222</p>', 'description 22', 'san-pham-22'),
(28, 'Sản Phẩm 23', 'Product 23', '<p>Sản Phẩm 23</p>', '<p>Product 23</p>', 'san-pham-23'),
(29, 'Laptop Acer Gaming Predator Helios 300 PH315-54-78W5', 'Laptop Acer Gaming Predator Helios 300 PH315-54-78W5', '<p>H&atilde;ng sản xuất: Acer<br />\r\nChủng loại: Predator Helios 300 PH315-54-78W5 (2021)<br />\r\nPart Number: NH.QC5SV.001<br />\r\nMầu sắc, chất liệu: Đen<br />\r\nCover A,C: nh&ocirc;mCover B,D: nhựa cứng Polycarbonate<br />\r\nBộ vi xử l&yacute;: Intel&reg; Core&trade; i7-11800H &ndash; CPU thế hệ 11 mới nhất<br />\r\nChipset&nbsp;&nbsp; &nbsp;Intel<br />\r\nBộ nhớ trong: 8GB DDR4 3200Mhz<br />\r\nSố khe cắm: 2<br />\r\nDung lượng tối đa: 32GB<br />\r\nVGA: NVIDIA&reg; GeForce&reg; RTX 3050Ti 4G-GDDR6<br />\r\nỔ cứng: 512GB SSD PCIe NVMe (n&acirc;ng cấp tối đa 2TB SSD PCIe NVMe v&agrave; 2TB HDD 2.5-inch 5400 RPM)<br />\r\nỔ quang&nbsp;&nbsp; &nbsp;None<br />\r\nCard Reader: None<br />\r\nBảo mật, c&ocirc;ng nghệ: Đ&egrave;n b&agrave;n ph&iacute;m RGB 4 Zone; Quạt Aero Blade 3D thế hệ thứ 5; Firmware Trusted Platform Module (TPM) solution BIOS user, supervisor, HDD passwords, Kensington lock slot<br />\r\nM&agrave;n h&igrave;nh: 15.6 inch FHD IPS 144Hz SlimBezel Acer ComfyView LED-backlit<br />\r\nWebcam: HD<br />\r\nAudio: Acer TrueHarmony technology; Acer Purified<br />\r\nGiao tiếp mạng: Gigabit<br />\r\nGiao tiếp kh&ocirc;ng d&acirc;y: 802.11 ax +Bluetooth 5.1<br />\r\nCổng giao tiếp&nbsp;&nbsp; &nbsp;USB Type-C port: USB 3.2 Gen 2 (up to 10 Gbps)&bull; DisplayPort over USB-C&bull; Thunderbolt 4&bull; USB charging 5 V; 3 A1 x USB 3.2 Gen 2 port featuring power-off USB charging, 2 x USB 3.2 Gen 1 ports, 1 x HDMI&reg;2.1, 1 x Mini DisplayPort 1.4, 3.5 mm headphone/speaker jack, DC-in jack for AC adapter<br />\r\nPin: 59 Wh<br />\r\nK&iacute;ch thước (rộng x d&agrave;i x cao): 363 (W) x 255 (D) x 22.9 (H) mm<br />\r\nC&acirc;n nặng: 2.3kg&nbsp;<br />\r\nHệ điều h&agrave;nh: Win 10 Home<br />\r\nPhụ kiện đi k&egrave;m&nbsp;&nbsp; &nbsp;Cable + Sạc</p>', '<p>Manufacturer: Acer<br />\r\nType: Predator Helios 300 PH315-54-78W5 (2021)<br />\r\nPart Number: NH.QC5SV.001<br />\r\nColor, material: Black<br />\r\nCover A, C: aluminumCover B, D: hard plastic Polycarbonate<br />\r\nProcessor: Intel&reg; Core&trade; i7-11800H &ndash; Latest 11th Gen CPU<br />\r\nIntel Chipset<br />\r\nInternal Memory: 8GB DDR4 3200Mhz<br />\r\nNumber of slots: 2<br />\r\nMaximum capacity: 32GB<br />\r\nVGA: NVIDIA&reg; GeForce&reg; RTX 3050Ti 4G-GDDR6<br />\r\nHard Drive: 512GB PCIe NVMe SSD (upgradable up to 2TB PCIe NVMe SSD and 2TB 2.5-inch 5400 RPM HDD)<br />\r\nOptical Drive None<br />\r\nCard Reader: None<br />\r\nSecurity, technology: 4 Zone RGB keyboard light; 5th Generation Aero Blade 3D Fan; Firmware Trusted Platform Module (TPM) solution BIOS user, supervisor, HDD passwords, Kensington lock slot<br />\r\nScreen: 15.6-inch FHD IPS 144Hz SlimBezel Acer ComfyView LED-backlit<br />\r\nWebcam: HD<br />\r\nAudio: Acer TrueHarmony technology; Acer Purified<br />\r\nNetwork interface: Gigabit<br />\r\nWireless communication: 802.11 ax +Bluetooth 5.1<br />\r\nUSB Type-C port: USB 3.2 Gen 2 (up to 10 Gbps)&bull; DisplayPort over USB-C&bull; Thunderbolt 4&bull; USB charging 5 V; 3 A1 x USB 3.2 Gen 2 port featuring power-off USB charging, 2 x USB 3.2 Gen 1 ports, 1 x HDMI&reg;2.1, 1 x Mini DisplayPort 1.4, 3.5 mm headphone/speaker jack, DC-in jack for AC adapter<br />\r\nBattery: 59 Wh<br />\r\nDimensions (width x length x height): 363 (W) x 255 (D) x 22.9 (H) mm<br />\r\nWeight: 2.3kg<br />\r\nOperating System: Windows 10 Home<br />\r\nAccessories included Cable + Charger</p>', 'laptop-acer-gaming-predator-helios-300-ph315-54-78w5'),
(30, 'Laptop Acer Gaming Nitro 5 Eagle AN515-57-74NU', 'Laptop Acer Gaming Nitro 5 Eagle AN515-57-74NU', '<p>H&atilde;ng sản xuất: Acer<br />\r\nChủng loại: Nitro 5 AN515-57-74NU (2021)<br />\r\nPart Number: NH.QD9SV.001<br />\r\nMầu sắc&nbsp;&nbsp; &nbsp;Đen<br />\r\nBộ vi xử l&yacute;: Intel&reg; Core&trade; i7-11800H &ndash; CPU thế hệ 11 mới nhất<br />\r\nChipset&nbsp;&nbsp; &nbsp;Intel<br />\r\nBộ nhớ trong: 8GB DDR4 3200Mhz<br />\r\nSố khe cắm: 2<br />\r\nDung lượng tối đa: 32GB<br />\r\nVGA: NVIDIA&reg; GeForce&reg; RTX 3050Ti 4G-GDDR6<br />\r\nỔ cứng&nbsp;&nbsp; &nbsp;512GB SSD PCIe NVMe (n&acirc;ng cấp tối đa 1TB SSD PCIe Gen3, 8 Gb/s, NVMe v&agrave; 2TB HDD 2.5-inch 5400 RPM)<br />\r\nỔ quang&nbsp;&nbsp; &nbsp;None<br />\r\nCard Reader: None<br />\r\nBảo mật, c&ocirc;ng nghệ: Đ&egrave;n b&agrave;n ph&iacute;m RGB 4 Zone; Tản nhiệt 2 quạt<br />\r\nM&agrave;n h&igrave;nh: 15.6 inch FHD IPS (1920 x 1080) 144Hz slim benzel<br />\r\nWebcam: HD<br />\r\nAudio: Acer TrueHarmony technology; Acer Purified<br />\r\nGiao tiếp mạng: Gigabit<br />\r\nGiao tiếp kh&ocirc;ng d&acirc;y: 802.11 SX +Bluetooth 5.0<br />\r\nCổng giao tiếp: 1 x USB Type C; 1xUSB 3.2 Gen 1 port featuring power-off USB charging; 2xUSB 3.2 Gen 1 ports; 1xEthernet (RJ-45) port; 1xHDMI&reg; 2.0<br />\r\nPin: 57 Wh<br />\r\nK&iacute;ch thước (rộng x d&agrave;i x cao)&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\nC&acirc;n nặng: 2.2 kg&nbsp;<br />\r\nHệ điều h&agrave;nh: Win 10 Home<br />\r\nPhụ kiện đi k&egrave;m&nbsp;&nbsp; &nbsp;Cable + Sạc</p>', '<p>Manufacturer: Acer<br />\r\nType: Nitro 5 AN515-57-74NU (2021)<br />\r\nPart Number: NH.QD9SV.001<br />\r\nColor Black<br />\r\nProcessor: Intel&reg; Core&trade; i7-11800H &ndash; Latest 11th Gen CPU<br />\r\nIntel Chipset<br />\r\nInternal Memory: 8GB DDR4 3200Mhz<br />\r\nNumber of slots: 2<br />\r\nMaximum capacity: 32GB<br />\r\nVGA: NVIDIA&reg; GeForce&reg; RTX 3050Ti 4G-GDDR6<br />\r\n512GB PCIe NVMe SSD (upgradable up to 1TB PCIe Gen3 SSD, 8 Gb/s, NVMe and 2TB 2.5-inch 5400 RPM HDD)<br />\r\nOptical Drive None<br />\r\nCard Reader: None<br />\r\nSecurity, technology: 4 Zone RGB keyboard light; Heatsink 2 fans<br />\r\nScreen: 15.6 inch FHD IPS (1920 x 1080) 144Hz slim bezel<br />\r\nWebcam: HD<br />\r\nAudio: Acer TrueHarmony technology; Acer Purified<br />\r\nNetwork interface: Gigabit<br />\r\nWireless communication: 802.11 SX +Bluetooth 5.0<br />\r\nCommunication port: 1 x USB Type C; 1xUSB 3.2 Gen 1 port featuring power-off USB charging; 2xUSB 3.2 Gen 1 ports; 1xEthernet (RJ-45) port; 1xHDMI&reg; 2.0<br />\r\nBattery: 57 Wh<br />\r\nDimensions (width x length x height)<br />\r\nWeight: 2.2 kg<br />\r\nOperating System: Windows 10 Home<br />\r\nAccessories included Cable + Charger</p>', 'laptop-acer-gaming-nitro-5-eagle-an515-57-74nu'),
(31, 'Laptop Acer Gaming Aspire 7 A715-75G-56ZL', 'Laptop Acer Gaming Aspire 7 A715-75G-56ZL', '<p>H&atilde;ng sản xuất: Acer<br />\r\nChủng loại: Aspire 7 A715-75G-56ZL &ndash; model Giải tr&iacute;, Gaming<br />\r\nPart Number: NH.Q97SV.001<br />\r\nMầu sắc&nbsp;&nbsp; &nbsp;Black<br />\r\nBộ vi xử l&yacute;: Intel i5 10300H (2.5Ghz up to 4.5Ghz, 8MB cache)<br />\r\nChipset&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\nBộ nhớ trong: 8GB DDR4<br />\r\nSố khe cắm: 2<br />\r\nDung lượng tối đa: 32GB<br />\r\nVGA: NVIDIA&reg; GeForce&reg; GTX 1650 4G-GDDR6<br />\r\nỔ cứng: 512GB PCIe NVMe SSD (n&acirc;ng cấp được tối đa 1TB SSD)<br />\r\nỔ quang&nbsp;&nbsp; &nbsp;No<br />\r\nCard Reader: No<br />\r\nBảo mật; c&ocirc;ng nghệ: 2 quạt tản nhiệt, bản lề mở 180o<br />\r\nM&agrave;n h&igrave;nh: 15.6 inch FHD (1920 * 1080) Acer ComfyView IPS LED LCD<br />\r\nWebcam: 720p HD<br />\r\nAudio: Two built-in stereo speakers<br />\r\nGiao tiếp mạng: Gigabit<br />\r\nGiao tiếp kh&ocirc;ng d&acirc;y: 802.11a/b/g/n/acR2+ax wireless LAN; 2x2 MU-MIMO technology; &nbsp;Bluetooth 4.1<br />\r\nCổng giao tiếp: 2 x USB 3.2 Gen 1 ports with one featuring power-off USB charging, 1 x USB Type-C port: USB 3.2 Gen 1 (up to 5 Gbps), 1 x USB 2.0 port, 1 x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone, 1 x HDMI&reg;port with HDCP support, 1 x Ethernet (RJ-45) port<br />\r\n1 x DC-in jack for AC adapter<br />\r\nPin: 48Wh, Li-ion<br />\r\nK&iacute;ch thước (rộng x d&agrave;i x cao): 363.4 (W) x 254.5 (D) x 22.9 (H) mm<br />\r\nC&acirc;n nặng: 2.15kg<br />\r\nHệ điều h&agrave;nh: Win 10<br />\r\nPhụ kiện đi k&egrave;m&nbsp;&nbsp; &nbsp;AC Adapter</p>', '<p>Manufacturer: Acer<br />\r\nType: Aspire 7 A715-75G-56ZL &ndash; Entertainment, Gaming model<br />\r\nPart Number: NH.Q97SV.001<br />\r\nBlack color<br />\r\nProcessor: Intel i5 10300H (2.5Ghz up to 4.5Ghz, 8MB cache)<br />\r\nChipset<br />\r\nInternal Memory: 8GB DDR4<br />\r\nNumber of slots: 2<br />\r\nMaximum capacity: 32GB<br />\r\nVGA: NVIDIA&reg; GeForce&reg; GTX 1650 4G-GDDR6<br />\r\nHard Drive: 512GB PCIe NVMe SSD (upgradable up to 1TB SSD)<br />\r\nOptical Drive No<br />\r\nCard Reader: No<br />\r\nSecurity; technology: 2 cooling fans, hinges open 180o<br />\r\nScreen: 15.6 inch FHD (1920 * 1080) Acer ComfyView IPS LED LCD<br />\r\nWebcam: 720p HD<br />\r\nAudio: Two built-in stereo speakers<br />\r\nNetwork interface: Gigabit<br />\r\nWireless communication: 802.11a/b/g/n/acR2+ax wireless LAN; 2x2 MU-MIMO technology; Bluetooth 4.1<br />\r\nInterface: 2 x USB 3.2 Gen 1 ports with one featuring power-off USB charging, 1 x USB Type-C port: USB 3.2 Gen 1 (up to 5 Gbps), 1 x USB 2.0 port, 1 x 3.5 mm headphone /speaker jack, supporting headsets with built-in microphone, 1 x HDMI&reg;port with HDCP support, 1 x Ethernet (RJ-45) port<br />\r\n1 x DC-in jack for AC adapter<br />\r\nBattery: 48Wh, Li-ion<br />\r\nDimensions (width x length x height): 363.4 (W) x 254.5 (D) x 22.9 (H) mm<br />\r\nWeight: 2.15kg<br />\r\nOperating System: Windows 10<br />\r\nAccessories included with AC Adapter</p>', 'laptop-acer-gaming-aspire-7-a715-75g-56zl'),
(32, 'Laptop Acer Gaming Nitro 5 AN515-45-R9SC', 'Laptop Acer Gaming Nitro 5 AN515-45-R9SC', '<p>H&atilde;ng sản xuất: Acer</p>\r\n\r\n<p>Chủng loại: Nitro 5 AN515-45-R9SC (2021)</p>\r\n\r\n<p>Part Number: NH.QBRSV.001</p>\r\n\r\n<p>Mầu sắc: Đen</p>\r\n\r\n<p>Bộ vi xử l&yacute;: AMD Ryzen 7 5800H (8*3.2Ghz, upto 4.4Ghz)</p>\r\n\r\n<p>Chipset: AMD</p>\r\n\r\n<p>Bộ nhớ trong: 8GB DDR4 3200Mhz</p>\r\n\r\n<p>Số khe cắm: 2</p>\r\n\r\n<p>Dung lượng tối đa: 32GB</p>\r\n\r\n<p>VGA: NVIDIA&reg; GeForce RTX&trade; 3070 with 8GB GDDR6</p>\r\n\r\n<p>Ổ cứng: 512GB SSD PCIe NVMe (n&acirc;ng cấp tối đa 2TB SSD v&agrave; 2TB HDD 2.5-inch)</p>\r\n\r\n<p>Ổ quang: None</p>\r\n\r\n<p>Card Reader: None</p>\r\n\r\n<p>Bảo mật, c&ocirc;ng nghệ: Đ&egrave;n b&agrave;n ph&iacute;m RGB 4 Zone; Tản nhiệt 2 quạt</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: 15.6 inch FHD IPS (1920 x 1080) 144Hz slim benzel</p>\r\n\r\n<p>Webcam: HD</p>\r\n\r\n<p>Audio: Acer TrueHarmony technology; Acer Purified</p>\r\n\r\n<p>Giao tiếp mạng: Gigabit</p>\r\n\r\n<p>Giao tiếp kh&ocirc;ng d&acirc;y: 802.11 SX +Bluetooth 5.0</p>\r\n\r\n<p>Cổng giao tiếp: 1 x USB 3.2 Gen 2 port featuring power-off USB charging; 2 x USB 3.2 Gen 1 ports; 1 x HDMI&reg; 2.0 port with HDCP support; 1 x Ethernet (RJ-45) port; 1 x USB Type-C port: USB 3.2 Gen 2 (up to 10 Gbps); 1 x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone; 1 x DC-in jack for AC adapter</p>\r\n\r\n<p>Pin: 57 Wh</p>\r\n\r\n<p>K&iacute;ch thước (rộng x d&agrave;i x cao): 363.4 (W) x 255 (D) x 23.9 (H) mm</p>\r\n\r\n<p>C&acirc;n nặng: 2.2 kg&nbsp;</p>\r\n\r\n<p>Hệ điều h&agrave;nh: Win 10 Home</p>\r\n\r\n<p>Phụ kiện đi k&egrave;m Cable + Sạc</p>', '<p>Manufacturer: Acer</p>\r\n\r\n<p>Type: Nitro 5 AN515-45-R9SC (2021)</p>\r\n\r\n<p>Part Number: NH.QBRSV.001</p>\r\n\r\n<p>Color: Black</p>\r\n\r\n<p>Processor: AMD Ryzen 7 5800H (8*3.2Ghz, upto 4.4Ghz)</p>\r\n\r\n<p>Chipset: AMD</p>\r\n\r\n<p>Internal Memory: 8GB DDR4 3200Mhz</p>\r\n\r\n<p>Number of slots: 2</p>\r\n\r\n<p>Maximum capacity: 32GB</p>\r\n\r\n<p>VGA: NVIDIA&reg; GeForce RTX&trade; 3070 with 8GB GDDR6</p>\r\n\r\n<p>Hard Drive: 512GB PCIe NVMe SSD (upgradable up to 2TB SSD and 2TB 2.5-inch HDD)</p>\r\n\r\n<p>Optical drive: None</p>\r\n\r\n<p>Card Reader: None</p>\r\n\r\n<p>Security, technology: 4 Zone RGB keyboard light; Heatsink 2 fans</p>\r\n\r\n<p>Screen: 15.6 inch FHD IPS (1920 x 1080) 144Hz slim bezel</p>\r\n\r\n<p>Webcam: HD</p>\r\n\r\n<p>Audio: Acer TrueHarmony technology; Acer Purified</p>\r\n\r\n<p>Network interface: Gigabit</p>\r\n\r\n<p>Wireless communication: 802.11 SX +Bluetooth 5.0</p>\r\n\r\n<p>Interface: 1 x USB 3.2 Gen 2 port featuring power-off USB charging; 2 x USB 3.2 Gen 1 ports; 1 x HDMI&reg; 2.0 port with HDCP support; 1 x Ethernet (RJ-45) port; 1 x USB Type-C port: USB 3.2 Gen 2 (up to 10 Gbps); 1 x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone; 1 x DC-in jack for AC adapter</p>\r\n\r\n<p>Battery: 57 Wh</p>\r\n\r\n<p>Dimensions (width x length x height): 363.4 (W) x 255 (D) x 23.9 (H) mm</p>\r\n\r\n<p>Weight: 2.2 kg</p>\r\n\r\n<p>Operating System: Windows 10 Home</p>\r\n\r\n<p>Accessories included Cable + Charger</p>', 'laptop-acer-gaming-nitro-5-an515-45-r9sc'),
(33, 'Laptop Acer Aspire A315-56-502X', 'Laptop Acer Aspire A315-56-502X', '<p>H&atilde;ng sản xuất: Acer</p>\r\n\r\n<p>Chủng loại: Aspire 3 A315-56-502X</p>\r\n\r\n<p>Part Number: NX.HS5SV.00F</p>\r\n\r\n<p>Mầu sắc: Đen (Shale Black)</p>\r\n\r\n<p>Bộ vi xử l&yacute;: Intel&reg; Core&trade; i5-1035G1 (1.00 GHz,6MB)</p>\r\n\r\n<p>Chipset: Intel</p>\r\n\r\n<p>Bộ nhớ trong: 4 GB onboard</p>\r\n\r\n<p>Số khe cắm: 1 (khe trống, c&oacute; thể n&acirc;ng cấp)</p>\r\n\r\n<p>Dung lượng tối đa: 20GB</p>\r\n\r\n<p>VGA: Intel&reg; UHD Graphics</p>\r\n\r\n<p>Ổ cứng: 256GB PCIe NVMe SSD, c&ograve;n 1 slop 2.5 trống (n&acirc;ng cấp tối đa 2TB HDD v&agrave; 1TB SSD PCIe NVMe)</p>\r\n\r\n<p>Ổ quang: None</p>\r\n\r\n<p>Card Reader: None</p>\r\n\r\n<p>Bảo mật</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: 15.6 inch FHD IPS Acer ComfyView LED LCD</p>\r\n\r\n<p>Webcam: HD</p>\r\n\r\n<p>Audio: Two built-in stereo speakers; Built-in digital microphone</p>\r\n\r\n<p>Giao tiếp mạng: Gigabit LAN</p>\r\n\r\n<p>Giao tiếp kh&ocirc;ng d&acirc;y: Intel&reg; Wireless-AC 9461/9462, 802.11a/b/g/n/ac wireless LAN, 1x1 MU-MIMO technology, Bluetooth&reg; 5.0</p>\r\n\r\n<p>Cổng giao tiếp: 1 x USB 3.1, 2 x USB 2.0, 1 x HDMI,1 x Ethernet, 1 x 3.5 mm Headphone /speaker jack, 1 x DC Jack</p>\r\n\r\n<p>Pin: 2-cell</p>\r\n\r\n<p>K&iacute;ch thước (rộng x d&agrave;i x cao): 363.4 (W) x 247.5 (D) x 19.9 (H) mm</p>\r\n\r\n<p>C&acirc;n nặng: 1.7kg</p>\r\n\r\n<p>Hệ điều h&agrave;nh: Win 10 Home</p>\r\n\r\n<p>Phụ kiện đi k&egrave;m Cable + Sạc</p>', '<p>Manufacturer: Acer</p>\r\n\r\n<p>Type: Aspire 3 A315-56-502X</p>\r\n\r\n<p>Part Number: NX.HS5SV.00F</p>\r\n\r\n<p>Color: Black (Shale Black)</p>\r\n\r\n<p>Processor: Intel&reg; Core&trade; i5-1035G1 (1.00 GHz,6MB)</p>\r\n\r\n<p>Chipset: Intel</p>\r\n\r\n<p>Internal memory: 4 GB onboard</p>\r\n\r\n<p>Number of slots: 1 (empty slot, upgradable)</p>\r\n\r\n<p>Maximum capacity: 20GB</p>\r\n\r\n<p>VGA: Intel&reg; UHD Graphics</p>\r\n\r\n<p>Hard drive: 256GB PCIe NVMe SSD, 1 free 2.5 slop (upgradable up to 2TB HDD and 1TB PCIe NVMe SSD)</p>\r\n\r\n<p>Optical drive: None</p>\r\n\r\n<p>Card Reader: None</p>\r\n\r\n<p>Security</p>\r\n\r\n<p>Screen: 15.6 inch FHD IPS Acer ComfyView LED LCD</p>\r\n\r\n<p>Webcam: HD</p>\r\n\r\n<p>Audio: Two built-in stereo speakers; Built-in digital microphone</p>\r\n\r\n<p>Network interface: Gigabit LAN</p>\r\n\r\n<p>Wireless communication: Intel&reg; Wireless-AC 9461/9462, 802.11a/b/g/n/ac wireless LAN, 1x1 MU-MIMO technology, Bluetooth&reg; 5.0</p>\r\n\r\n<p>Interface: 1 x USB 3.1, 2 x USB 2.0, 1 x HDMI, 1 x Ethernet, 1 x 3.5 mm Headphone/speaker jack, 1 x DC Jack</p>\r\n\r\n<p>Battery: 2-cell</p>\r\n\r\n<p>Dimensions (width x length x height): 363.4 (W) x 247.5 (D) x 19.9 (H) mm</p>\r\n\r\n<p>Weight: 1.7kg</p>\r\n\r\n<p>Operating System: Windows 10 Home</p>\r\n\r\n<p>Accessories included Cable + Charger</p>', 'laptop-acer-aspire-a315-56-502x'),
(34, 'Laptop Acer Aspire A315-57G-524Z', 'Laptop Acer Aspire A315-57G-524Z', '<p>H&atilde;ng sản xuất: Acer</p>\r\n\r\n<p>Chủng loại: Aspire 3 A315-57G-524Z</p>\r\n\r\n<p>Part Number: NX.HZRSV.009</p>\r\n\r\n<p>Mầu sắc: Đen (Charcoal Black)</p>\r\n\r\n<p>Bộ vi xử l&yacute;: Intel&reg; Core&trade; i5-1035G1 (1.00 GHz,6MB)</p>\r\n\r\n<p>Chipset: Intel</p>\r\n\r\n<p>Bộ nhớ trong: 8GB (4GB + 4GB onboard)</p>\r\n\r\n<p>Số khe cắm: 1</p>\r\n\r\n<p>Dung lượng tối đa: 20GB</p>\r\n\r\n<p>VGA: Nvidia Geforce MX 330 2G DDR5</p>\r\n\r\n<p>Ổ cứng: 512GB PCIe NVMe SSD (n&acirc;ng cấp t&oacute;i đa 2TB HDD v&agrave; 512SSD PCIe NVMe)</p>\r\n\r\n<p>Ổ quang: None</p>\r\n\r\n<p>Card Reader: None</p>\r\n\r\n<p>Bảo mật, c&ocirc;ng nghệ: BIOS user, supervisor, HDD passwords, Kensington lock slot; bản lề mở 180o</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: 15.6 inch FHD Acer ComfyView LED LCD</p>\r\n\r\n<p>Webcam: HD</p>\r\n\r\n<p>Audio: Two built-in stereo speakers; Built-in digital microphone</p>\r\n\r\n<p>Giao tiếp mạng: Gigabit LAN</p>\r\n\r\n<p>Giao tiếp kh&ocirc;ng d&acirc;y: Intel&reg; Wireless-AC 9461/9462, 802.11a/b/g/n/ac wireless LAN, 1x1 MU-MIMO technology, Bluetooth&reg; 5.0</p>\r\n\r\n<p>Cổng giao tiếp: 2x USB 3.1, 1 x USB 2.0, 1 x HDMI,1 x Ethernet, 1 x 3.5 mm Headphone /speaker jack, 1 x DC Jack</p>\r\n\r\n<p>Pin: 3-cell (36Whr)</p>\r\n\r\n<p>K&iacute;ch thước (rộng x d&agrave;i x cao): 363.4 (W) x 247.5 (D) x 19.9 (H) mm</p>\r\n\r\n<p>C&acirc;n nặng: 1.9kg</p>\r\n\r\n<p>Hệ điều h&agrave;nh: Win 10 Home</p>\r\n\r\n<p>Phụ kiện đi k&egrave;m Cable + Sạc</p>', '<p>Manufacturer: Acer</p>\r\n\r\n<p>Type: Aspire 3 A315-57G-524Z</p>\r\n\r\n<p>Part Number: NX.HZRSV.009</p>\r\n\r\n<p>Color: Black (Charcoal Black)</p>\r\n\r\n<p>Processor: Intel&reg; Core&trade; i5-1035G1 (1.00 GHz,6MB)</p>\r\n\r\n<p>Chipset: Intel</p>\r\n\r\n<p>Internal Memory: 8GB (4GB + 4GB onboard)</p>\r\n\r\n<p>Number of slots: 1</p>\r\n\r\n<p>Maximum capacity: 20GB</p>\r\n\r\n<p>VGA: Nvidia Geforce MX 330 2G DDR5</p>\r\n\r\n<p>Hard Drive: 512GB PCIe NVMe SSD (upgradable to up to 2TB HDD and 512SSD PCIe NVMe)</p>\r\n\r\n<p>Optical drive: None</p>\r\n\r\n<p>Card Reader: None</p>\r\n\r\n<p>Security, technology: BIOS user, supervisor, HDD passwords, Kensington lock slot; hinge opening 180o</p>\r\n\r\n<p>Screen: 15.6 inch FHD Acer ComfyView LED LCD</p>\r\n\r\n<p>Webcam: HD</p>\r\n\r\n<p>Audio: Two built-in stereo speakers; Built-in digital microphone</p>\r\n\r\n<p>Network interface: Gigabit LAN</p>\r\n\r\n<p>Wireless communication: Intel&reg; Wireless-AC 9461/9462, 802.11a/b/g/n/ac wireless LAN, 1x1 MU-MIMO technology, Bluetooth&reg; 5.0</p>\r\n\r\n<p>Interface: 2x USB 3.1, 1 x USB 2.0, 1 x HDMI, 1 x Ethernet, 1 x 3.5 mm Headphone/speaker jack, 1 x DC Jack</p>\r\n\r\n<p>Battery: 3-cell (36Whr)</p>\r\n\r\n<p>Dimensions (width x length x height): 363.4 (W) x 247.5 (D) x 19.9 (H) mm</p>\r\n\r\n<p>Weight: 1.9kg</p>\r\n\r\n<p>Operating System: Windows 10 Home</p>\r\n\r\n<p>Accessories included Cable + Charger</p>', 'laptop-acer-aspire-a315-57g-524z');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `id_post` int(10) DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_soid` int(11) NOT NULL,
  `unit_price` int(100) DEFAULT NULL,
  `promotion_price` int(100) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `date_sale` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hours_sale` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `id_type`, `id_post`, `product_quantity`, `product_soid`, `unit_price`, `promotion_price`, `image`, `sub_image`, `new`, `date_sale`, `hours_sale`, `created_at`, `updated_at`) VALUES
(104, 1, 29, '50', 0, 33899000, 0, '1631541785.60216_laptop_acer_gaming_predator_helios_300_ph3155478w5_nhqc5sv001_den_2021_468.png', NULL, 1, '2021/09/13', '23:59:59', NULL, NULL),
(105, 1, 30, '10', 0, 30299000, 29099000, '1631541909.60020_laptop_acer_gaming_nitro_5_eagle_an515_57_1732.png', NULL, 1, '2021/09/30', '23:59:59', NULL, NULL),
(106, 1, 31, '9', 1, 19999000, 0, '1631542072.60350_laptop_acer_gaming_aspire_7_a715_75g_56zl_nhq97sv001_den_1861.jpg', NULL, 1, '2021/09/13', '23:59:59', NULL, NULL),
(107, 1, 32, '10', 0, 40489000, 38999000, '1631542213.58742_laptop_acer_gaming_nitro_5_1854.jpg', NULL, 1, '2021/11/30', '23:59:59', NULL, NULL),
(108, 1, 33, '9', 0, 14439000, 14129000, '1631542349.57472_a315_54black__5_84.png', NULL, 1, '2021/09/30', '23:59:5', NULL, NULL),
(109, 1, 34, '8', 0, 16959000, 16399000, '1631542479.57183_aspire_3_a315_57g_wp_black__5_37.jpg', NULL, 1, '2021/09/30', '23:59:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`rating_id`, `product_id`, `rating_number`) VALUES
(1, 16, 2),
(2, 16, 4),
(3, 77, 3),
(4, 74, 3),
(5, 74, 1),
(6, 91, 4),
(7, 91, 3),
(8, 91, 3),
(9, 91, 3),
(10, 91, 4),
(11, 91, 4),
(12, 91, 4),
(13, 91, 3),
(14, 91, 2),
(15, 91, 1),
(16, 91, 1),
(17, 91, 1),
(18, 100, 3),
(19, 100, 3),
(20, 86, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `status_slide` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`, `status_slide`) VALUES
(18, NULL, '1620138936.dell_pro_hpb___web_banner30.jpg', 0),
(19, 'http://hiepsiit.com/', '1620177863.banner00361.jpg', 0),
(20, NULL, '1606225287.banner-web-laptop-1199.png', 1),
(22, 'http://hiepsiit.com/', '1606225797.banner417.jpg', 0),
(23, 'http://localhost:8081/shoplaptop_1/public/chi-tiet-san-pham/74', '1606791963.banner399.jpg', 1),
(24, NULL, '1615196388.gs75-20190107-152.jpg', 0),
(25, NULL, '1615556266.banner-la-gi48.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social`
--

CREATE TABLE `social` (
  `social_id` int(10) NOT NULL,
  `provider_user_id` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `social`
--

INSERT INTO `social` (`social_id`, `provider_user_id`, `provider`, `user`) VALUES
(1, '100417728284693981439', 'GOOGLE', 27),
(2, '108072461302466486528', 'GOOGLE', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statistical`
--

CREATE TABLE `statistical` (
  `id_statistic` int(11) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `sales` varchar(255) NOT NULL,
  `profit` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `statistical`
--

INSERT INTO `statistical` (`id_statistic`, `order_date`, `sales`, `profit`, `quantity`, `total_order`) VALUES
(1, '2021-03-06', '10000000', '9999000', 1, 1),
(2, '2021-03-05', '30000000', '29999000', 2, 1),
(3, '2021-03-27', '29000000', '28999000', 2, 1),
(4, '2021-03-03', '29000000', '28998000', 2, 2),
(5, '2021-03-09', '14500000', '14499000', 1, 1),
(6, '2021-03-11', '14500000', '14499000', 1, 1),
(7, '2021-03-13', '43500000', '43498000', 2, 2),
(8, '2021-04-01', '22000000', '21999000', 1, 1),
(9, '2021-04-02', '19000000', '18999000', 1, 1),
(10, '2021-05-03', '19000000', '18999000', 1, 1),
(11, '2021-05-01', '1500000', '1499000', 1, 1),
(12, '2021-05-02', '15000000', '14999000', 1, 1),
(13, '2021-04-30', '14500000', '14499000', 1, 1),
(14, '2021-04-15', '30000000', '29999000', 2, 1),
(15, '2021-05-13', '19000000', '18999000', 1, 1),
(16, '2021-09-13', '19999000', '19998000', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name_type`, `image`) VALUES
(1, 'Acer', '1620386954.acer-logo-icon41.png'),
(2, 'Asus', 'asus.png'),
(3, 'Apple', '37150-apple-logo-icon-vector-icon-vector-eps.png'),
(4, 'Dell', 'dell-4-569248.png'),
(5, 'Lenovo', 'lenovo-226431.png'),
(6, 'Razer', 'razer-1-285174.png'),
(7, 'HP', '1024px-HP_logo_2012.png'),
(8, 'MSI', 'msi-1-286075.png'),
(9, 'LG', '1631541487.LG22.png'),
(10, 'Microsoft', '1631541334.Microsoft_logo29.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_token` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `user_token`, `remember_token`, `level`, `created_at`, `updated_at`) VALUES
(37, 'Duy Tùng', 'tung@gmail.com', '$2y$10$obpEB0Ct0H6z.w5UNcflpOT57vJoIsabvEka57Iu4Y4wTAeS4s1xO', '0964688431', 'Số 6 92/8 Nguyễn Khánh Toàn', NULL, NULL, 1, '2021-09-13 13:46:52', '2021-09-13 13:46:52'),
(38, 'Phạm Thị Huyền Trang', 'tranghanhtien@gmail.com', '$2y$10$1V5f89/gsu2qRGyUJydZMOQynHU7IHXoXko58ZFlOXMD7FwmluxBy', '0375916092', 'Phú Hộ', NULL, NULL, 2, '2021-09-13 13:49:01', '2021-09-13 13:49:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visitors`
--

CREATE TABLE `visitors` (
  `id_visitors` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `date_visitor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `visitors`
--

INSERT INTO `visitors` (`id_visitors`, `ip_address`, `date_visitor`) VALUES
(1, '192.168.2.1', '2021-01-03'),
(2, '192.168.1.1', '2021-03-11'),
(3, '::1', '2021-03-30'),
(4, '127.0.0.1', '2021-05-12');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id_bill_detail`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_payment`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `zazaza` (`id_post`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`social_id`);

--
-- Chỉ mục cho bảng `statistical`
--
ALTER TABLE `statistical`
  ADD PRIMARY KEY (`id_statistic`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id_visitors`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id_bill` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id_bill_detail` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id_payment` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `social`
--
ALTER TABLE `social`
  MODIFY `social_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `statistical`
--
ALTER TABLE `statistical`
  MODIFY `id_statistic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id_visitors` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`),
  ADD CONSTRAINT `zazaza` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 24, 2023 lúc 03:27 PM
-- Phiên bản máy phục vụ: 10.5.19-MariaDB-cll-lve
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `u287647950_bhdt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `noidung` text NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `ngay` timestamp NOT NULL DEFAULT current_timestamp(),
  `trangthai` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_sp`, `noidung`, `hoten`, `ngay`, `trangthai`) VALUES
(13, 26, 'Iphone đỉnh hơn android nhiều', 'Phùng duy tân', '2023-08-24 14:55:37', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdienthoai`
--

CREATE TABLE `chitietdienthoai` (
  `id` int(11) NOT NULL,
  `congnghemanhinh` varchar(255) DEFAULT NULL,
  `maumanhinh` varchar(255) DEFAULT NULL,
  `chuanmanhinh` varchar(255) DEFAULT NULL,
  `dophangiai` varchar(255) DEFAULT NULL,
  `manhinh` varchar(255) DEFAULT NULL,
  `matkinhmanhinh` varchar(255) DEFAULT NULL,
  `ct_dophangiai` varchar(255) DEFAULT NULL,
  `ct_thongtinkhac` varchar(255) DEFAULT NULL,
  `cs_dophangiai` varchar(255) DEFAULT NULL,
  `cs_quayphim` varchar(255) DEFAULT NULL,
  `cs_flash` varchar(255) DEFAULT NULL,
  `cs_chupnangcao` varchar(255) DEFAULT NULL,
  `tocdocpu` varchar(255) DEFAULT NULL,
  `sonhan` int(11) DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `gpu` varchar(255) DEFAULT NULL,
  `cambien` varchar(255) DEFAULT NULL,
  `rom` varchar(255) DEFAULT NULL,
  `thenho` varchar(255) DEFAULT NULL,
  `thenhotoida` varchar(255) DEFAULT NULL,
  `kieudang` varchar(255) DEFAULT NULL,
  `chatlieu` varchar(255) DEFAULT NULL,
  `kichthuoc` varchar(255) DEFAULT NULL,
  `trongluong` varchar(255) DEFAULT NULL,
  `loaipin` varchar(255) DEFAULT NULL,
  `dungluongpin` varchar(255) DEFAULT NULL,
  `sacnhanh` varchar(255) DEFAULT NULL,
  `id_dienthoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_sp` int(11) NOT NULL,
  `id_hd` int(11) NOT NULL,
  `gia` int(11) NOT NULL DEFAULT 0,
  `soluong` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_sp`, `id_hd`, `gia`, `soluong`) VALUES
(7, 52, 4390000, 1),
(26, 54, 3200000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienthoai`
--

CREATE TABLE `dienthoai` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `hang` int(11) NOT NULL,
  `mota` text NOT NULL,
  `daciemnoibat` text DEFAULT NULL,
  `gia` int(11) NOT NULL DEFAULT 0,
  `anhminhhoa` text DEFAULT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dienthoai`
--

INSERT INTO `dienthoai` (`id`, `ten`, `hang`, `mota`, `daciemnoibat`, `gia`, `anhminhhoa`, `sl`) VALUES
(7, 'Samsung Galaxy A21s', 4, 'Chiếc điện thoại với những đột phá đầy ấn tượng, Samsung Galaxy A21s sở hữu 4 camera sau đa chức năng, camera trước nằm ngay trong tấm kính màn hình, mang đến trải nghiệm màn hình lớn hấp dẫn hơn bao giờ hết.', 'Bộ 4 camera 48MP;Siêu pin dung lượng 5000mAh', 4390000, './views/assets/image/5.jpg', 4),
(9, 'Oppo Reno3 8GB-128GB', 5, 'Chiếc “camera phone” thế hệ mới nhất đã xuất hiện, OPPO Reno3 sở hữu 4 camera sau đẳng cấp và camera chuyên selfie đêm 44MP cực chất sẽ nâng tầm trải nghiệm nhiếp ảnh của bạn, mang đến sự sáng tạo đầy thú vị.', 'Camera selfi đêm 44MP;4 Camera 48MP - Zom 20x', 8490000, './views/assets/image/637236780184025189_reno-3-den-1.jpg', 1),
(10, 'Samsung Galaxy Note 10+', 4, 'Chiếc điện thoại cao cấp nhất, màn hình lớn nhất, mang trên mình sức mạnh đáng kinh ngạc của một chiếc máy tính và hệ thống 4 camera sau chuyên nghiệp, đó chính là Samsung Galaxy Note 10+, nơi quyền năng mới được thể hiện.', 'Chiếc điện thoại cao cấp nhất;Sức mạnh đáng kinh ngạc', 16990000, './views/assets/image/637008711602926121_SS-note-10-pl-den-1-1.jpg', 10),
(11, 'Vivo Y30 4GB - 128GB', 7, 'Sở hữu màn hình cực lớn, dung lượng pin lên tới 5000 mAh, 4 camera sau thời thượng và bộ nhớ trong 128GB, Vivo Y30 sẵn sàng cho cuộc sống năng động, tràn đầy niềm vui của bạn.', '4 camera sau thời thượng;Pin trâu 5000 mAh', 4990000, './views/assets/image/637251375337089908_vivo-y30-xanh-1.jpg', 5),
(13, 'Vsmart Active 3 6GB-64GB', 9, 'Không có giá chênh lệch nhiều so với phiên bản 4GB nhưng Vsmart Active 3 6GB-64GB cho bạn trải nghiệm đa nhiệm tốt hơn, hứa hẹn sử dụng được lâu dài hơn và tránh khỏi những hiện tượng lag giật.', 'Camera trượt sành điệu;Màn hình sắc nét 6.39 inch', 3990000, './views/assets/image/637133775510221830_Vsmart-active-3-green-1.jpg', 6),
(15, 'Realme 6i 4GB-128GB', 10, 'Realme 6i gói gọn hàng loạt ưu điểm đáng mơ ước vào trong một smartphone tầm trung. Trở thành chủ nhân của chiếc điện thoại này, bạn sẽ có được trải nghiệm hiệu năng ấn tượng nhờ chip xử lý Helio G80 mạnh mẽ, viên pin lớn 5.000 mAh sạc siêu nhanh và thỏa sức chụp ảnh tuyệt vời qua camera 48MP AI.', 'Bộ 4 camera AI;Cấu hình mạnh mẽ', 4990000, './views/assets/image/637227349699080396_realme-6i-xanh-1.jpg', 6),
(26, 'Iphone 13 pro max', 6, 'Iphone này chụp ban đêm rất đệp', 'Cam ba mắt', 3200000, './views/assets/image/iphone-14-trang.jpg', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `ghichu` text DEFAULT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL DEFAULT 0,
  `trangthai` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `ghichu`, `ngaytao`, `khachhang_id`, `tongtien`, `trangthai`) VALUES
(52, 'Cổng sau trường đại học kinh tế kĩ thuật bình dương', '2023-08-24 14:50:59', 24, 4390000, 3),
(53, 'Ngã tư bình chuẩn', '2023-08-24 14:57:05', 25, 3200000, 0),
(54, 'Ngã tư bình chuẩn', '2023-08-24 14:57:30', 25, 3200000, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `sdt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `ten`, `diachi`, `sdt`) VALUES
(24, 'Nguyễn Bá Hòa', 'Bình Dương', '0961431721'),
(25, 'Đinh Ngọc Tài', 'Bình dương', '0982888221');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`id`, `ten`, `mota`) VALUES
(4, 'Samsung', 'Samsung'),
(5, 'Oppo', 'Oppo'),
(6, 'Iphone', 'Iphone'),
(7, 'Vivo', 'Vivo'),
(9, 'Vsmart', 'Vsmart'),
(10, 'Realme', 'Realme');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `display_name` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `display_name`, `password`, `ngay_tao`) VALUES
(2, 'hoapro', 'Admin Hòa', '00000000', '2023-08-24 19:32:28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `chitietdienthoai`
--
ALTER TABLE `chitietdienthoai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dienthoai` (`id_dienthoai`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_sp`,`id_hd`),
  ADD KEY `id_hd` (`id_hd`);

--
-- Chỉ mục cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hang` (`hang`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `khachhang_id` (`khachhang_id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `chitietdienthoai`
--
ALTER TABLE `chitietdienthoai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `dienthoai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `binhluan_ibfk_3` FOREIGN KEY (`id_sp`) REFERENCES `dienthoai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietdienthoai`
--
ALTER TABLE `chitietdienthoai`
  ADD CONSTRAINT `chitietdienthoai_ibfk_1` FOREIGN KEY (`id_dienthoai`) REFERENCES `dienthoai` (`id`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `dienthoai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`id_hd`) REFERENCES `hoadon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD CONSTRAINT `dienthoai_ibfk_1` FOREIGN KEY (`hang`) REFERENCES `loai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

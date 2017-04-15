-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 15, 2017 lúc 11:48 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `school`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyencan`
--

CREATE TABLE `chuyencan` (
  `IDCC` varchar(15) NOT NULL,
  `IDHS` varchar(15) NOT NULL,
  `IDDD` varchar(15) NOT NULL,
  `Ngay` date NOT NULL,
  `Buoi` varchar(10) NOT NULL,
  `TinhTrang` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chuyencan`
--

INSERT INTO `chuyencan` (`IDCC`, `IDHS`, `IDDD`, `Ngay`, `Buoi`, `TinhTrang`) VALUES
('CC001', 'CC001', 'DD001', '2017-04-02', 'Chiều', 1),
('CC002', 'HS002', 'DD002', '2017-04-03', 'Sáng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachhocsinh`
--

CREATE TABLE `danhsachhocsinh` (
  `IDHS` varchar(15) NOT NULL,
  `IDGV` varchar(15) NOT NULL,
  `TenLop` varchar(15) NOT NULL,
  `Namhoc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhsachhocsinh`
--

INSERT INTO `danhsachhocsinh` (`IDHS`, `IDGV`, `TenLop`, `Namhoc`) VALUES
('HS001', 'GV001', 'lá 1', '2015-2016'),
('HS002', 'GV001', 'lá 1', '2015-2016'),
('HS003', 'GV002', 'mầm 1', '2015-2016'),
('HS004', 'GV002', 'mầm 1', '2015-2016');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dinhduong`
--

CREATE TABLE `dinhduong` (
  `IDDD` varchar(15) NOT NULL,
  `TinhTrang` tinyint(1) NOT NULL,
  `MonAn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dinhduong`
--

INSERT INTO `dinhduong` (`IDDD`, `TinhTrang`, `MonAn`) VALUES
('DD001', 1, 'Cơm+canh+cá+thịt+sữa'),
('DD002', 1, 'Cơm+canh+tôm+thịt+sữa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `IDGV` varchar(15) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `NgayVaoTruong` date DEFAULT NULL,
  `CMND` varchar(11) NOT NULL,
  `QuocTich` varchar(30) NOT NULL,
  `TrinhDo` varchar(30) NOT NULL,
  `DienThoai` varchar(12) NOT NULL,
  `TonGiao` varchar(30) NOT NULL,
  `TenCha/Me` varchar(100) NOT NULL,
  `DiaChi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`IDGV`, `HoTen`, `NgaySinh`, `GioiTinh`, `NgayVaoTruong`, `CMND`, `QuocTich`, `TrinhDo`, `DienThoai`, `TonGiao`, `TenCha/Me`, `DiaChi`) VALUES
('GV001', 'Trần Thị Hoa', '1980-04-02', 0, '2009-04-02', '123456789', 'Việt Nam', 'Tốt nghiệp đại học sư phạm', '0986512347', 'Không', 'Trần Văn Hồng', 'Hội An Quảng Nam'),
('GV002', 'Lê Thị Huệ', '1982-04-10', 0, '2010-04-16', '129834567', 'Việt Nam', 'Tốt nghiệp đại học sư phạm', '0976851243', 'Không', 'Lê Thị Hường', 'Nam Đàn Nghệ An'),
('GV003', 'Võ Thị Na', '1985-04-26', 0, '2011-04-16', '18239465', 'Việt Nam', 'Tốt nghiệp đại học sư phạm', '0987341625', 'Không', 'Võ Văn Tài', 'Điện Bàn Quảng Nam'),
('GV004', 'Nguyễn Thị Lan', '1985-04-09', 0, '2011-04-03', '128436759', 'Việt Nam', 'Tốt nghiệp đại học sư phạm', '0128346759', 'Không', 'Nguyễn Văn Phong', 'Liên Chiểu Đà Nẵng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocsinh`
--

CREATE TABLE `hocsinh` (
  `IDHS` varchar(15) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `NgGiamHo` varchar(100) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hocsinh`
--

INSERT INTO `hocsinh` (`IDHS`, `HoTen`, `NgaySinh`, `GioiTinh`, `NgGiamHo`, `DiaChi`, `SDT`) VALUES
('HS001', 'Nguyễn Văn Tí', '2013-04-10', 1, 'Nguyễn Văn Tôm', 'Liên Chiểu Đà Nẵng', '0123456789'),
('HS002', 'Lê Thị Bi', '2013-04-04', 0, 'Lê Văn Bí', 'Liên Chiểu Đà Nẵng', '0123784569'),
('HS003', 'Hồ Văn Tèo', '2014-04-18', 1, 'Hồ Văn Tiến', 'Sơn Trà Đà Nẵng', '0123987654'),
('HS004', 'Hà Thị Thu', '2014-04-02', 0, 'Hà Văn Đông', 'Sơn Trà Đà Nẵng', '0123869457'),
('HS005', 'Phạm Thị Xuân', '2014-04-11', 0, 'Phạm Văn Hạ', 'Hải Châu Đà Nẵng', '0987654321');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suckhoe`
--

CREATE TABLE `suckhoe` (
  `IDSK` varchar(15) NOT NULL,
  `IDHS` varchar(15) NOT NULL,
  `NgayKiemTra` date NOT NULL,
  `ChieuCao` float NOT NULL,
  `CanNang` float NOT NULL,
  `GhiChu` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `suckhoe`
--

INSERT INTO `suckhoe` (`IDSK`, `IDHS`, `NgayKiemTra`, `ChieuCao`, `CanNang`, `GhiChu`) VALUES
('SK001', 'HS001', '2017-04-10', 126, 28, 'Sức khỏe tốt'),
('SK002', 'HS002', '2017-04-10', 127, 29, 'Sức khỏe tốt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ID` varchar(15) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`ID`, `Password`, `Type`) VALUES
('GV002', '54321', 'giáo viên'),
('HS001', '12345', 'học sinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `IDTB` varchar(15) NOT NULL,
  `TieuDe` varchar(100) NOT NULL,
  `NoiDung` varchar(1000) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`IDTB`, `TieuDe`, `NoiDung`, `Date`) VALUES
('TB001', 'Nghỉ lễ', 'Thông báo cho giáo viên và học sinh toàn trường nghỉ học vào thứ 5 ngày 08/03/2016 ', '2016-03-06'),
('TB002', 'Ngoại khóa', 'Thông báo cho giáo viên và học sinh toàn trường tham gia buổi ngoại khóa vào thứ 4 ngày 11/02/2017 tại công viên 2/9', '2017-02-09');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chuyencan`
--
ALTER TABLE `chuyencan`
  ADD PRIMARY KEY (`IDCC`),
  ADD UNIQUE KEY `IDHS` (`IDHS`),
  ADD UNIQUE KEY `IDDD` (`IDDD`);

--
-- Chỉ mục cho bảng `danhsachhocsinh`
--
ALTER TABLE `danhsachhocsinh`
  ADD PRIMARY KEY (`IDHS`,`IDGV`),
  ADD KEY `IDGV` (`IDGV`);

--
-- Chỉ mục cho bảng `dinhduong`
--
ALTER TABLE `dinhduong`
  ADD PRIMARY KEY (`IDDD`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`IDGV`);

--
-- Chỉ mục cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`IDHS`);

--
-- Chỉ mục cho bảng `suckhoe`
--
ALTER TABLE `suckhoe`
  ADD PRIMARY KEY (`IDSK`),
  ADD UNIQUE KEY `IDHS` (`IDHS`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`IDTB`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chuyencan`
--
ALTER TABLE `chuyencan`
  ADD CONSTRAINT `chuyencan_ibfk_1` FOREIGN KEY (`IDDD`) REFERENCES `dinhduong` (`IDDD`);

--
-- Các ràng buộc cho bảng `danhsachhocsinh`
--
ALTER TABLE `danhsachhocsinh`
  ADD CONSTRAINT `danhsachhocsinh_ibfk_1` FOREIGN KEY (`IDHS`) REFERENCES `hocsinh` (`IDHS`),
  ADD CONSTRAINT `danhsachhocsinh_ibfk_2` FOREIGN KEY (`IDGV`) REFERENCES `giaovien` (`IDGV`);

--
-- Các ràng buộc cho bảng `suckhoe`
--
ALTER TABLE `suckhoe`
  ADD CONSTRAINT `suckhoe_ibfk_1` FOREIGN KEY (`IDHS`) REFERENCES `hocsinh` (`IDHS`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

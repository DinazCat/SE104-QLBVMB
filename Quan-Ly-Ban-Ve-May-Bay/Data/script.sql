
USE [master]
GO
/****** Object:  Database [QuanLyBanVeMayBay]    Script Date: 14/05/2023 6:32:09 PM ******/
CREATE DATABASE [QuanLyBanVeMayBay]
 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanVeMayBay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyBanVeMayBay', N'ON'
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET QUERY_STORE = OFF
GO
USE [QuanLyBanVeMayBay]
GO
/****** Object:  Table [BANGTHAMSO]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BANGTHAMSO](
	[TenThamSo] [text] NOT NULL,
	[GiaTri] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CHUYENBAY]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CHUYENBAY](
	[MaChuyenBay] [varchar](10) NOT NULL,
	[SanBayDi] [nvarchar](50) NOT NULL,
	[SanBayDen] [nvarchar](50) NOT NULL,
	[NgayKhoiHanh] [nvarchar](50) NOT NULL,
	[ThoiGianXuatPhat] [nvarchar](50) NOT NULL,
	[ThoiGianDuKien] [nvarchar](50) NOT NULL,
	[MaHangMayBay] [varchar](10) NOT NULL,
	[LoaiMayBay] [varchar](50) NOT NULL,
	[Gia] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CTHD]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CTHD](
	[MaCTHD] [varchar](10) NOT NULL,
	[MaHD] [varchar](10) NOT NULL,
	[MaVe] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HANGMAYBAY]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HANGMAYBAY](
	[MaHang] [varchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NOT NULL,
	[Logo] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HANGVE]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HANGVE](
	[MaHangVe] [varchar](10) NOT NULL,
	[TenHangVe] [nvarchar](50) NOT NULL,
	[TyLe] [varchar](4) NOT NULL,
	[Mau] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HOADON]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HOADON](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[ThanhTien] [int] NULL,
	[TinhTrang] [varchar](30) NULL,
	[MaTK] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [QuanLyHangVeChuyenBay]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QuanLyHangVeChuyenBay](
	[MaChuyenBay] [varchar](10) NOT NULL,
	[MaHangVe] [varchar](10) NOT NULL,
	[SoLuong] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC,
	[MaHangVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SANBAY]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SANBAY](
	[MaSanBay] [varchar](10) NOT NULL,
	[TenSanBay] [nvarchar](50) NOT NULL,
	[Tinh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SANBAYTRUNGGIAN]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SANBAYTRUNGGIAN](
	[SanBayTrungGian] [nvarchar](50) NOT NULL,
	[MaChuyenBay] [varchar](10) NOT NULL,
	[ThoiGianDung] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TAIKHOAN]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TAIKHOAN](
	[MaTK] [varchar](20) NOT NULL,
	[TenDangNhap] [varchar](100) NOT NULL,
	[MatKhau] [varchar](10) NOT NULL,
	[Loai] [int] NOT NULL,
	[Email] [varchar](50) NULL,
	[TenHienThi] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VE]    Script Date: 14/05/2023 6:32:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VE](
	[MaVe] [varchar](10) NOT NULL,
	[MaChuyenBay] [varchar](10) NOT NULL,
	[SoGhe] [varchar](10) NOT NULL,
	[MaHK] [varchar](10) NULL,
	[TenHK] [nvarchar](100) NULL,
	[SDT] [varchar](11) NULL,
	[CMND] [varchar](9) NULL,
	[TinhTrang] [nvarchar](20) NOT NULL,
	[MaHangVe] [varchar](10) NOT NULL,

PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'ThoiGianBayToiThieu', 30)
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'SoSanBayTrungGianToiDa', 2)
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'ThoiGianDungToiThieu', 10)
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'ThoiGianDungToiDa', 20)
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'ThoiGianChamNhatChoPhepDatVe', 24)
INSERT [BANGTHAMSO] ([TenThamSo], [GiaTri]) VALUES (N'ThoiGianChamNhatChoPhepHuyVe', 24)
GO
INSERT [HANGMAYBAY] ([MaHang], [TenHang], [Logo]) VALUES (N'BL', N'Jetstar Pacific Airlines', N'/Images/logo_Jetstar.png')
INSERT [HANGMAYBAY] ([MaHang], [TenHang], [Logo]) VALUES (N'QH', N'Bamboo Airways', N'/Images/logo_Bamboo.png')
INSERT [HANGMAYBAY] ([MaHang], [TenHang], [Logo]) VALUES (N'VJ', N'Vietjet Air', N'/Images/logo_Vietjet.png')
INSERT [HANGMAYBAY] ([MaHang], [TenHang], [Logo]) VALUES (N'VNA', N'VietNam Airlines', N'/Images/VNA.png')
GO
INSERT [HANGVE] ([MaHangVe], [TenHangVe], [TyLe], [Mau]) VALUES (N'HV229365', N'Hạng 2', N'100', N'#C8D70C')
INSERT [HANGVE] ([MaHangVe], [TenHangVe], [TyLe], [Mau]) VALUES (N'HV643717', N'Hạng 1', N'105', N'#CB1D1D')
GO
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'DAD', N'San bay Quoc te Da Nang', N'Da Nang')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'HAN', N'San bay Quoc te Noi Bai', N'Ha Noi')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'SGN', N'San bay Quoc te Tan Son Nhat', N'Ho Chi Minh')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'VDO', N'San bay Quoc te Van Don', N'Quang Ninh')
GO
INSERT [TAIKHOAN] ([MaTK], [TenDangNhap], [MatKhau], [Loai], [Email], [TenHienThi]) VALUES (N'U000000', N'admin', N'123', 1, N'cattuong510@gmail.com', N'Admin')
INSERT [TAIKHOAN] ([MaTK], [TenDangNhap], [MatKhau], [Loai], [Email], [TenHienThi]) VALUES (N'U110400', N'nv1', N'123', 2, N'nhanvien1@gmail.com', N'Nhân viên 1')
INSERT [TAIKHOAN] ([MaTK], [TenDangNhap], [MatKhau], [Loai], [Email], [TenHienThi]) VALUES (N'U521952', N'abc', N'123', 3, N'abc@gmail.com', N'ahihi')
GO
ALTER TABLE [CHUYENBAY]  WITH CHECK ADD FOREIGN KEY([MaHangMayBay])
REFERENCES [HANGMAYBAY] ([MaHang])
GO
ALTER TABLE [CTHD]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [HOADON] ([MaHD])
GO
ALTER TABLE [CTHD]  WITH CHECK ADD FOREIGN KEY([MaVe])
REFERENCES [VE] ([MaVe])
GO
ALTER TABLE [HOADON]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [TAIKHOAN] ([MaTK])
GO
ALTER TABLE [QuanLyHangVeChuyenBay]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [CHUYENBAY] ([MaChuyenBay])
GO
ALTER TABLE [QuanLyHangVeChuyenBay]  WITH CHECK ADD FOREIGN KEY([MaHangVe])
REFERENCES [HANGVE] ([MaHangVe])
GO
ALTER TABLE [SANBAYTRUNGGIAN]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [CHUYENBAY] ([MaChuyenBay])
GO
ALTER TABLE [VE]  WITH CHECK ADD FOREIGN KEY([MaChuyenBay])
REFERENCES [CHUYENBAY] ([MaChuyenBay])
GO
ALTER TABLE [VE]  WITH CHECK ADD FOREIGN KEY([MaHangVe])
REFERENCES [HANGVE] ([MaHangVe])
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanVeMayBay] SET  READ_WRITE 
GO


Use QuanLyBanVeMayBay
Go
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'CXR', N'San bay Quoc te Cam Ranh', N'Khanh Hoa')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'PQC', N'San bay Quoc te Phu Quoc', N'Phu Quoc')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'HUI', N'San bay Quoc te Phu Bai', N'Thua Thien Hue')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'HND', N'San bay Quoc te Tokyo', N'Tokyo')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'ITM', N'San bay Quoc te Osaka', N'Tokyo')
INSERT [SANBAY] ([MaSanBay], [TenSanBay], [Tinh]) VALUES (N'ICN', N'San bay Quoc te Incheon', N'Seoul')

INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'VJ001',N'SGH',N'HAN',N'02/07/2023',N'06:00',N'130','VJ','BOEING','1600000')
INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'VJ002',N'SGH',N'HAN',N'02/07/2023',N'18:00',N'130','VJ','BOEING','1700000')
INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'VN001',N'SGH',N'HAN',N'02/07/2023',N'05:00',N'135','VNA','BOEING','1900000')
INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'QH001',N'SGH',N'HAN',N'02/07/2023',N'20:40',N'130','QH','BOEING','1800000')
INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'QH002',N'SGH',N'HUI',N'02/07/2023',N'19:10',N'95','QH','BOEING','1200000')
INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'VN002',N'SGH',N'HUI',N'02/07/2023',N'13:05',N'90','VNA','BOEING','1800000')

INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'QH003',N'HAN',N'VDO',N'02/07/2023',N'12:45',N'485','QH','BOEING','3800000') 
INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'VJ003',N'HAN',N'VDO',N'02/07/2023',N'07:00',N'830','VJ','BOEING','3300000') 

INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'VJ004',N'HAN',N'PQC',N'28/06/2023',N'18:15',N'130','VJ','BOEING','1400000')
INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'VJ005',N'HAN',N'PQC',N'28/06/2023',N'06:00',N'125','VJ','BOEING','1500000')
INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'VN003',N'HAN',N'PQC',N'28/06/2023',N'07:35',N'120','VNA','BOEING','1700000')

INSERT [CHUYENBAY] ([MaChuyenBay],[SanBayDi],[SanBayDen],[NgayKhoiHanh],[ThoiGianXuatPhat],[ThoiGianDuKien],[MaHangMayBay],[LoaiMayBay],[GIA])  VALUES (N'VN004',N'CXR',N'DAD',N'28/06/2023',N'09:05',N'70','VNA','BOEING','1200000')

INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VJ001',N'HV229365','12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VJ002',N'HV229365','12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VJ003',N'HV229365','12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VJ004',N'HV229365','12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VJ005',N'HV229365','12')

INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VN001',N'HV229365','12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VN002',N'HV229365','12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VN003',N'HV229365','12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VN004',N'HV229365','12')

INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'QH001',N'HV229365','12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'QH002',N'HV229365','12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'QH003',N'HV229365','12')


INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VJ001',N'HV643717','12')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VJ002',N'HV643717','18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VJ003',N'HV643717','18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VJ004',N'HV643717','18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VJ005',N'HV643717','18')

INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VN001',N'HV643717','18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VN002',N'HV643717','18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VN003',N'HV643717','18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'VN004',N'HV643717','18')

INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'QH001',N'HV643717','18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'QH002',N'HV643717','18')
INSERT [QuanLyHangVeChuyenBay] ([MaChuyenBay],[MaHangVe],[SoLuong]) VALUES (N'QH003',N'HV643717','18')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('1',N'VJ001','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('2',N'VJ001','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('3',N'VJ001','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('4',N'VJ001','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('5',N'VJ001','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('6',N'VJ001','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('7',N'VJ001','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('8',N'VJ001','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('9',N'VJ001','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('10',N'VJ001','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('11',N'VJ001','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('12',N'VJ001','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('13',N'VJ002','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('14',N'VJ002','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('15',N'VJ002','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('16',N'VJ002','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('17',N'VJ002','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('18',N'VJ002','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('19',N'VJ002','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('20',N'VJ002','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('21',N'VJ002','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('22',N'VJ002','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('23',N'VJ002','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('24',N'VJ002','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('25',N'VJ003','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('26',N'VJ003','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('27',N'VJ003','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('28',N'VJ003','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('29',N'VJ003','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('30',N'VJ003','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('31',N'VJ003','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('32',N'VJ003','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('33',N'VJ003','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('34',N'VJ003','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('35',N'VJ003','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('36',N'VJ003','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('37',N'VJ004','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('38',N'VJ004','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('39',N'VJ004','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('40',N'VJ004','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('41',N'VJ004','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('42',N'VJ004','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('43',N'VJ004','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('44',N'VJ004','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('45',N'VJ004','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('46',N'VJ004','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('47',N'VJ004','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('48',N'VJ004','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('49',N'VJ005','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('50',N'VJ005','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('51',N'VJ005','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('52',N'VJ005','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('53',N'VJ005','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('54',N'VJ005','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('55',N'VJ005','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('56',N'VJ005','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('57',N'VJ005','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('58',N'VJ005','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('59',N'VJ005','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('60',N'VJ005','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('61',N'VN001','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('62',N'VN001','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('63',N'VN001','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('64',N'VN001','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('65',N'VN001','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('66',N'VN001','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('67',N'VN001','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('68',N'VN001','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('69',N'VN001','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('70',N'VN001','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('71',N'VN001','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('72',N'VN001','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('73',N'VN002','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('74',N'VN002','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('75',N'VN002','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('76',N'VN002','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('77',N'VN002','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('78',N'VN002','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('79',N'VN002','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('80',N'VN002','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('81',N'VN002','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('82',N'VN002','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('83',N'VN002','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('84',N'VN002','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('85',N'VN003','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('86',N'VN003','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('87',N'VN003','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('88',N'VN003','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('89',N'VN003','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('90',N'VN003','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('91',N'VN003','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('92',N'VN003','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('93',N'VN003','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('94',N'VN003','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('95',N'VN003','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('96',N'VN003','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('97',N'VN004','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('98',N'VN004','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('99',N'VN004','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('100',N'VN004','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('101',N'VN004','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('102',N'VN004','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('103',N'VN004','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('104',N'VN004','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('105',N'VN004','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('106',N'VN004','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('107',N'VN004','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('108',N'VN004','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('109',N'QH001','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('110',N'QH001','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('111',N'QH001','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('112',N'QH001','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('113',N'QH001','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('114',N'QH001','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('115',N'QH001','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('116',N'QH001','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('117',N'QH001','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('118',N'QH001','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('119',N'QH001','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('120',N'QH001','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('121',N'QH002','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('122',N'QH002','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('123',N'QH002','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('124',N'QH002','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('125',N'QH002','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('126',N'QH002','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('127',N'QH002','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('128',N'QH002','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('129',N'QH002','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('130',N'QH002','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('131',N'QH002','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('132',N'QH002','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('133',N'QH003','1',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('134',N'QH003','2',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('135',N'QH003','3',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('136',N'QH003','4',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('137',N'QH003','5',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('138',N'QH003','6',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('139',N'QH003','7',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('140',N'QH003','8',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('141',N'QH003','9',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('142',N'QH003','10',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('143',N'QH003','11',N'TRONG',N'HV229365')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('144',N'QH003','12',N'TRONG',N'HV229365')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('145',N'VJ001','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('146',N'VJ001','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('147',N'VJ001','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('148',N'VJ001','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('149',N'VJ001','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('150',N'VJ001','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('151',N'VJ001','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('152',N'VJ001','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('153',N'VJ001','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('154',N'VJ001','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('155',N'VJ001','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('156',N'VJ001','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('157',N'VJ001','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('158',N'VJ001','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('159',N'VJ001','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('160',N'VJ001','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('161',N'VJ001','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('162',N'VJ001','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('163',N'VJ002','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('164',N'VJ002','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('165',N'VJ002','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('166',N'VJ002','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('167',N'VJ002','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('168',N'VJ002','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('169',N'VJ002','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('170',N'VJ002','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('171',N'VJ002','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('172',N'VJ002','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('173',N'VJ002','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('174',N'VJ002','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('175',N'VJ002','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('176',N'VJ002','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('177',N'VJ002','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('178',N'VJ002','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('179',N'VJ002','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('180',N'VJ002','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('181',N'VJ003','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('182',N'VJ003','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('183',N'VJ003','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('184',N'VJ003','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('185',N'VJ003','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('186',N'VJ003','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('187',N'VJ003','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('188',N'VJ003','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('189',N'VJ003','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('190',N'VJ003','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('191',N'VJ003','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('192',N'VJ003','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('193',N'VJ003','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('194',N'VJ003','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('195',N'VJ003','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('196',N'VJ003','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('197',N'VJ003','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('198',N'VJ003','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('199',N'VJ004','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('200',N'VJ004','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('201',N'VJ004','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('202',N'VJ004','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('203',N'VJ004','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('204',N'VJ004','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('205',N'VJ004','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('206',N'VJ004','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('207',N'VJ004','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('208',N'VJ004','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('209',N'VJ004','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('210',N'VJ004','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('211',N'VJ004','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('212',N'VJ004','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('213',N'VJ004','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('214',N'VJ004','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('215',N'VJ004','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('216',N'VJ004','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('217',N'VJ005','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('218',N'VJ005','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('219',N'VJ005','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('220',N'VJ005','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('221',N'VJ005','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('222',N'VJ005','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('223',N'VJ005','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('224',N'VJ005','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('225',N'VJ005','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('226',N'VJ005','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('227',N'VJ005','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('228',N'VJ005','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('229',N'VJ005','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('230',N'VJ005','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('231',N'VJ005','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('232',N'VJ005','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('233',N'VJ005','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('234',N'VJ005','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('235',N'VN001','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('236',N'VN001','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('237',N'VN001','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('238',N'VN001','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('239',N'VN001','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('240',N'VN001','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('241',N'VN001','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('242',N'VN001','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('243',N'VN001','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('244',N'VN001','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('245',N'VN001','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('246',N'VN001','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('247',N'VN001','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('248',N'VN001','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('249',N'VN001','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('250',N'VN001','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('251',N'VN001','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('252',N'VN001','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('253',N'VN002','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('254',N'VN002','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('255',N'VN002','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('256',N'VN002','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('257',N'VN002','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('258',N'VN002','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('259',N'VN002','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('260',N'VN002','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('261',N'VN002','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('262',N'VN002','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('263',N'VN002','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('264',N'VN002','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('265',N'VN002','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('266',N'VN002','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('267',N'VN002','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('268',N'VN002','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('269',N'VN002','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('270',N'VN002','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('271',N'VN003','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('272',N'VN003','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('273',N'VN003','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('274',N'VN003','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('275',N'VN003','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('276',N'VN003','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('277',N'VN003','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('278',N'VN003','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('279',N'VN003','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('280',N'VN003','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('281',N'VN003','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('282',N'VN003','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('283',N'VN003','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('284',N'VN003','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('285',N'VN003','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('286',N'VN003','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('287',N'VN003','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('288',N'VN003','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('289',N'VN004','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('290',N'VN004','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('291',N'VN004','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('292',N'VN004','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('293',N'VN004','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('294',N'VN004','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('295',N'VN004','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('296',N'VN004','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('297',N'VN004','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('298',N'VN004','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('299',N'VN004','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('300',N'VN004','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('301',N'VN004','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('302',N'VN004','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('303',N'VN004','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('304',N'VN004','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('305',N'VN004','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('306',N'VN004','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('307',N'QH001','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('308',N'QH001','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('309',N'QH001','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('310',N'QH001','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('311',N'QH001','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('312',N'QH001','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('313',N'QH001','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('314',N'QH001','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('315',N'QH001','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('316',N'QH001','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('317',N'QH001','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('318',N'QH001','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('319',N'QH001','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('320',N'QH001','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('321',N'QH001','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('322',N'QH001','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('323',N'QH001','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('324',N'QH001','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('325',N'QH002','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('326',N'QH002','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('327',N'QH002','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('328',N'QH002','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('329',N'QH002','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('330',N'QH002','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('331',N'QH002','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('332',N'QH002','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('333',N'QH002','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('334',N'QH002','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('335',N'QH002','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('336',N'QH002','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('337',N'QH002','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('338',N'QH002','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('339',N'QH002','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('340',N'QH002','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('341',N'QH002','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('342',N'QH002','18',N'TRONG',N'HV643717')

INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('343',N'QH003','1',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('344',N'QH003','2',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('345',N'QH003','3',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('346',N'QH003','4',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('347',N'QH003','5',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('348',N'QH003','6',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('349',N'QH003','7',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('350',N'QH003','8',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('351',N'QH003','9',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('352',N'QH003','10',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('353',N'QH003','11',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('354',N'QH003','12',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('355',N'QH003','13',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('356',N'QH003','14',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('357',N'QH003','15',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('358',N'QH003','16',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('359',N'QH003','17',N'TRONG',N'HV643717')
INSERT VE ([MaVe],[MaChuyenBay],[SoGhe],[TinhTrang],[MaHangVe]) VALUES ('360',N'QH003','18',N'TRONG',N'HV643717')


INSERT SANBAYTRUNGGIAN ([SanBayTrungGian],[MaChuyenBay],[ThoiGianDung],[GhiChu]) VALUES (N'SGN', N'VJ003','570','KHONG CO')
INSERT SANBAYTRUNGGIAN ([SanBayTrungGian],[MaChuyenBay],[ThoiGianDung],[GhiChu]) VALUES (N'SGN', N'QH003','220','KHONG CO')
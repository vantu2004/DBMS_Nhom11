USE [master]
GO
/****** Object:  Database [ImeiShop]    Script Date: 10/23/2024 1:40:52 PM ******/
CREATE DATABASE [ImeiShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ImeiShop', FILENAME = N'C:\Users\tulev\ImeiShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ImeiShop_log', FILENAME = N'C:\Users\tulev\ImeiShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ImeiShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ImeiShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ImeiShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ImeiShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ImeiShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ImeiShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ImeiShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [ImeiShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ImeiShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ImeiShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ImeiShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ImeiShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ImeiShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ImeiShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ImeiShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ImeiShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ImeiShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ImeiShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ImeiShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ImeiShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ImeiShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ImeiShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ImeiShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ImeiShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ImeiShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ImeiShop] SET  MULTI_USER 
GO
ALTER DATABASE [ImeiShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ImeiShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ImeiShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ImeiShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ImeiShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ImeiShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ImeiShop] SET QUERY_STORE = OFF
GO
USE [ImeiShop]
GO
/****** Object:  Table [dbo].[DONG_MAY]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONG_MAY](
	[Ma_dong_may] [char](9) NOT NULL,
	[Ten_dong_may] [nvarchar](36) NOT NULL,
	[Dung_luong_pin] [nvarchar](63) NOT NULL,
	[Kich_thuoc] [nvarchar](63) NOT NULL,
	[Mo_ta] [nvarchar](63) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_dong_may] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIEN_THOAI]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEN_THOAI](
	[Ma_Imei] [char](18) NOT NULL,
	[Hinh_anh] [image] NULL,
	[Mau_sac] [nvarchar](18) NULL,
	[Trang_thai] [nvarchar](18) NULL,
	[Gia_nhap] [numeric](18, 2) NULL,
	[Gia_ban] [numeric](18, 2) NULL,
	[Thue] [numeric](4, 2) NULL,
	[Ma_dong_may] [char](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Imei] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DON_BAN]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_BAN](
	[Ma_don_ban] [char](9) NOT NULL,
	[Ngay_tao_don] [date] NULL,
	[Gio_tao_don] [time](0) NULL,
	[SL_dien_thoai] [int] NULL,
	[Tri_gia] [numeric](18, 2) NULL,
	[So_tien_tra] [numeric](18, 2) NULL,
	[Trang_thai] [nvarchar](18) NULL,
	[Ma_khach_hang] [char](9) NOT NULL,
	[Ma_nhan_vien] [char](9) NULL,
	[Ma_khuyen_mai] [char](9) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_don_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DON_BAN]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DON_BAN](
	[Ma_Imei] [char](18) NOT NULL,
	[Ma_don_ban] [char](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Imei] ASC,
	[Ma_don_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Dgv_ChiTietDonHang]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dgv_ChiTietDonHang] AS
SELECT 
    db.Ma_don_ban AS [Mã đơn bán],  -- Thêm cột Ma_don_ban
    dm.Ma_dong_may AS [Mã dòng máy],
    dm.Ten_dong_may AS [Tên dòng máy],
    dm.Kich_thuoc AS [Kích thước màn hình],
    dm.Dung_luong_pin AS [Dung lượng pin],
    dt.Ma_Imei AS [Mã Imei],
    dt.Mau_sac AS [Màu sắc],
    dt.Trang_thai AS [Trạng thái],
    dt.Thue AS [Thuế],
    dt.Gia_ban AS [Giá bán],
    dt.Gia_nhap AS [Giá nhập],
    dt.Hinh_anh AS [Hình ảnh]
FROM 
    CT_DON_BAN cdb
JOIN 
    DIEN_THOAI dt ON cdb.Ma_Imei = dt.Ma_Imei
JOIN 
    DON_BAN db ON cdb.Ma_don_ban = db.Ma_don_ban
JOIN 
    DONG_MAY dm ON dt.Ma_dong_may = dm.Ma_dong_may;
GO
/****** Object:  Table [dbo].[DON_NHAP]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_NHAP](
	[Ma_don_nhap] [char](9) NOT NULL,
	[Ngay_nhap] [date] NULL,
	[Gio_nhap] [time](0) NULL,
	[SL_dien_thoai] [int] NULL,
	[Tri_gia] [numeric](18, 2) NULL,
	[Ma_NCC] [char](9) NOT NULL,
	[Ma_nhan_vien] [char](9) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_don_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DON_NHAP]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DON_NHAP](
	[Ma_Imei] [char](18) NOT NULL,
	[Ma_don_nhap] [char](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Imei] ASC,
	[Ma_don_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Dgv_ChiTietDonNhap]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dgv_ChiTietDonNhap] AS
SELECT 
    dn.Ma_don_nhap AS [Mã đơn nhập], -- Thêm thuộc tính mã đơn nhập
    dm.Ma_dong_may AS [Mã dòng máy],
    dm.Ten_dong_may AS [Tên dòng máy],
    dm.Kich_thuoc AS [Kích thước màn hình],
    dm.Dung_luong_pin AS [Dung lượng pin],
    dt.Ma_Imei AS [Mã Imei],
    dt.Mau_sac AS [Màu sắc],
    dt.Trang_thai AS [Trạng thái],
    dt.Thue AS [Thuế],
    dt.Gia_ban AS [Giá bán],
    dt.Gia_nhap AS [Giá nhập],
    dt.Hinh_anh AS [Hình ảnh]
FROM 
    CT_DON_NHAP ctn
JOIN 
    DIEN_THOAI dt ON ctn.Ma_Imei = dt.Ma_Imei
JOIN 
    DON_NHAP dn ON ctn.Ma_don_nhap = dn.Ma_don_nhap
JOIN 
    DONG_MAY dm ON dt.Ma_dong_may = dm.Ma_dong_may;
GO
/****** Object:  Table [dbo].[GHI_NO]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GHI_NO](
	[STT_ghi_no] [int] NOT NULL,
	[Ma_khach_hang] [char](9) NOT NULL,
	[Ngay_ghi_no] [date] NULL,
	[Chua_thanh_toan] [numeric](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STT_ghi_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Dgv_ChiTietThanhToan]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE VIEW [dbo].[Dgv_ChiTietThanhToan] AS
	SELECT 
	gn.STT_ghi_no AS [Số thứ tự],
	gn.Ma_khach_hang AS [Mã khách hàng], -- Thêm thuộc tính mã khách hàng
    gn.Ngay_ghi_no AS [Ngày thanh toán],
    gn.Chua_thanh_toan AS [Số tiền còn lại chưa thanh toán]
    
	FROM 
    GHI_NO gn;
GO
/****** Object:  View [dbo].[Dgv_DanhSachDienThoai]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dgv_DanhSachDienThoai] AS
SELECT 
    dm.Ma_dong_may AS [Mã dòng máy],
    dm.Ten_dong_may AS [Tên dòng máy],
    dm.Kich_thuoc AS [Kích thước màn hình],
    dm.Dung_luong_pin AS [Dung lượng pin],
    dt.Ma_Imei AS [Mã Imei],
    dt.Mau_sac AS [Màu sắc],
    dt.Trang_thai AS [Trạng thái],
    dt.Thue AS [Thuế],
    dt.Gia_ban AS [Giá bán],
    dt.Gia_nhap AS [Giá nhập],
	dt.Hinh_anh AS [Hình ảnh]
FROM 
    DIEN_THOAI dt
    LEFT JOIN DONG_MAY dm ON dt.Ma_dong_may = dm.Ma_dong_may;
GO
/****** Object:  View [dbo].[Dgv_DanhSachDienThoaiSanCo]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dgv_DanhSachDienThoaiSanCo] AS
SELECT 
    dm.Ma_dong_may AS [Mã dòng máy],
    dm.Ten_dong_may AS [Tên dòng máy],
    dm.Kich_thuoc AS [Kích thước màn hình],
    dm.Dung_luong_pin AS [Dung lượng pin],
    dt.Ma_Imei AS [Mã Imei],
    dt.Mau_sac AS [Màu sắc],
    dt.Trang_thai AS [Trạng thái],
    dt.Thue AS [Thuế],
    dt.Gia_ban AS [Giá bán],
    dt.Gia_nhap AS [Giá nhập],
	dt.Hinh_anh AS [Hình ảnh]
FROM 
    DIEN_THOAI dt
    LEFT JOIN DONG_MAY dm ON dt.Ma_dong_may = dm.Ma_dong_may;
GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN_VIEN](
	[Ma_nhan_vien] [char](9) NOT NULL,
	[Mat_khau] [varchar](27) NOT NULL,
	[Ten_nhan_vien] [nvarchar](36) NOT NULL,
	[Chuc_vu] [nvarchar](36) NULL,
	[Gmail] [varchar](36) NULL,
	[SDT] [varchar](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_nhan_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHA_CUNG_CAP]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHA_CUNG_CAP](
	[Ma_NCC] [char](9) NOT NULL,
	[Ten_NCC] [nvarchar](36) NOT NULL,
	[Dia_chi] [nvarchar](63) NOT NULL,
	[SDT] [varchar](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_NCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Dgv_DanhSachDonNhap]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dgv_DanhSachDonNhap] AS
SELECT 
    ncc.Ma_NCC AS [Mã nhà cung cấp],
    ncc.Ten_NCC AS [Tên nhà cung cấp],
    ncc.SDT AS [Số điện thoại nhà cung cấp],
    ncc.Dia_chi AS [Địa chỉ],
    dn.Ma_don_nhap AS [Mã đơn nhập],
    dn.Ngay_nhap AS [Ngày nhập],
    dn.Tri_gia AS [Trị giá],
    dn.SL_dien_thoai AS [Số lượng],
    nv.Ma_nhan_vien AS [Mã nhân viên],
    nv.Ten_nhan_vien AS [Tên nhân viên]
FROM 
    DON_NHAP dn
    LEFT JOIN NHA_CUNG_CAP ncc ON dn.Ma_NCC = ncc.Ma_NCC
    LEFT JOIN NHAN_VIEN nv ON dn.Ma_nhan_vien = nv.Ma_nhan_vien;
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[Ma_khach_hang] [char](9) NOT NULL,
	[SDT] [varchar](18) NOT NULL,
	[Ten_khach_hang] [nvarchar](36) NULL,
	[Dia_chi] [nvarchar](63) NULL,
	[Gmail] [varchar](36) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_khach_hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Dgv_DanhSachKhachHang]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dgv_DanhSachKhachHang] AS
SELECT 
    kh.Ma_khach_hang AS [Mã khách hàng],
    kh.SDT AS [Số điện thoại],
    kh.Gmail AS [Gmail],
    kh.Dia_chi AS [Địa chỉ],
    kh.Ten_khach_hang AS [Tên khách hàng]
FROM 
    KHACH_HANG kh;
GO
/****** Object:  Table [dbo].[KHUYEN_MAI]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYEN_MAI](
	[Ma_khuyen_mai] [char](9) NOT NULL,
	[Ten_chuong_trinh] [nvarchar](36) NOT NULL,
	[Chiet_khau] [numeric](4, 2) NULL,
	[SL_ap_dung] [int] NULL,
	[Ngay_ap_dung] [date] NULL,
	[Ngay_ket_thuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_khuyen_mai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Dgv_DanhSachMaKhuyenMai]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dgv_DanhSachMaKhuyenMai] AS
SELECT 
    km.Ma_khuyen_mai AS [Mã khuyến mãi],
    km.Chiet_khau AS [Chiết khấu],
    km.Ngay_ap_dung AS [Ngày áp dụng],
    km.Ngay_ket_thuc AS [Ngày kết thúc],
    km.Ten_chuong_trinh AS [Tên chương trình],
    km.SL_ap_dung AS [Số lượng áp dụng]
FROM 
    KHUYEN_MAI km;
GO
/****** Object:  View [dbo].[Dgv_DanhSachSanPham]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dgv_DanhSachSanPham] AS
SELECT 
    dm.Ma_dong_may AS [Mã dòng máy],
    dm.Ten_dong_may AS [Tên dòng máy],
    dm.Kich_thuoc AS [Kích thước màn hình],
    dm.Dung_luong_pin AS [Dung lượng pin],
    dt.Ma_Imei AS [Mã Imei],
    dt.Mau_sac AS [Màu sắc],
    dt.Trang_thai AS [Trạng thái],
    dt.Thue AS [Thuế],
    dt.Gia_ban AS [Giá bán],
    dt.Gia_nhap AS [Giá nhập],
	dt.Hinh_anh AS [Hình ảnh]
FROM 
    DIEN_THOAI dt
    LEFT JOIN DONG_MAY dm ON dt.Ma_dong_may = dm.Ma_dong_may;
GO
/****** Object:  View [dbo].[Dgv_DienThoaiDaThem]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dgv_DienThoaiDaThem] AS
SELECT 
    dm.Ma_dong_may AS [Mã dòng máy],
    dm.Ten_dong_may AS [Tên dòng máy],
    dm.Kich_thuoc AS [Kích thước màn hình],
    dm.Dung_luong_pin AS [Dung lượng pin],
    dt.Ma_Imei AS [Mã Imei],
    dt.Mau_sac AS [Màu sắc],
    dt.Trang_thai AS [Trạng thái],
    dt.Thue AS [Thuế],
    dt.Gia_ban AS [Giá bán],
    dt.Gia_nhap AS [Giá nhập],
	dt.Hinh_anh AS [Hình ảnh]
FROM 
    DIEN_THOAI dt
    LEFT JOIN DONG_MAY dm ON dt.Ma_dong_may = dm.Ma_dong_may;
GO
/****** Object:  View [dbo].[dgv_SanPhamCanCapNhat]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dgv_SanPhamCanCapNhat] AS
SELECT 
    dm.Ma_dong_may AS [Mã dòng máy],
    dm.Ten_dong_may AS [Tên dòng máy],
    dm.Kich_thuoc AS [Kích thước màn hình],
    dm.Dung_luong_pin AS [Dung lượng pin],
    dt.Ma_Imei AS [Mã Imei],
    dt.Mau_sac AS [Màu sắc],
    dt.Trang_thai AS [Trạng thái],
    dt.Thue AS [Thuế],
    dt.Gia_ban AS [Giá bán],
    dt.Gia_nhap AS [Giá nhập],
	dt.Hinh_anh AS [Hình ảnh]
FROM 
    DIEN_THOAI dt
    LEFT JOIN DONG_MAY dm ON dt.Ma_dong_may = dm.Ma_dong_may;
GO
/****** Object:  View [dbo].[Dgv_DanhSachDonHang]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dgv_DanhSachDonHang] AS
SELECT 
    db.Ma_don_ban AS [Mã đơn bán],
    db.Ngay_tao_don AS [Ngày tạo đơn],
    db.So_tien_tra AS [Số tiền khách đã trả],
    db.SL_dien_thoai AS [Số lượng điện thoại],
    db.Tri_gia AS [Trị giá],
    db.Trang_thai AS [Trạng thái],
    kh.Ma_khach_hang AS [Mã khách hàng],
    kh.SDT AS [Số điện thoại khách hàng],
    kh.Ten_khach_hang AS [Tên khách hàng],
    km.Ma_khuyen_mai AS [Mã khuyến mãi],
    km.Chiet_khau AS [Chiết khấu],
    nv.Ma_nhan_vien AS [Mã nhân viên],
    nv.Ten_nhan_vien AS [Tên nhân viên]
FROM 
    DON_BAN db
    LEFT JOIN KHACH_HANG kh ON db.Ma_khach_hang = kh.Ma_khach_hang
    LEFT JOIN KHUYEN_MAI km ON db.Ma_khuyen_mai = km.Ma_khuyen_mai
    LEFT JOIN NHAN_VIEN nv ON db.Ma_nhan_vien = nv.Ma_nhan_vien;
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[Ten_dang_nhap] [varchar](36) NOT NULL,
	[Mat_khau] [varchar](27) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ten_dang_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONG_KE_NGAY]    Script Date: 10/23/2024 1:40:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONG_KE_NGAY](
	[Ngay_thong_ke] [date] NOT NULL,
	[So_luong_ban] [int] NULL,
	[Tong_thu] [numeric](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ngay_thong_ke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ADMIN] ([Ten_dang_nhap], [Mat_khau]) VALUES (N'Admin', N'Admin')
INSERT [dbo].[ADMIN] ([Ten_dang_nhap], [Mat_khau]) VALUES (N'KhanhHotBoy', N'120504')
GO
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'001233217343157   ', N'DB0120   ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'001233218274425   ', N'DB0120   ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332110293473   ', N'DB0120   ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332114511655   ', N'DB0120   ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332126172921   ', N'DB0120   ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332131198214   ', N'DB241001 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332140039303   ', N'DB241001 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332151218326   ', N'DB241001 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332159952557   ', N'DB241002 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332171808506   ', N'DB241002 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332177530341   ', N'DB241003 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332179735478   ', N'DB241003 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332183489696   ', N'DB241003 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332184685104   ', N'DB241003 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332186216435   ', N'DB241003 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'012332191447405   ', N'DB241003 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321101359978   ', N'DB241003 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321107265253   ', N'DB241003 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321112520148   ', N'DB241004 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321119283788   ', N'DB241004 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321141307291   ', N'DB241005 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321148793532   ', N'DB241005 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321167196339   ', N'DB241005 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321170839848   ', N'DB241005 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321175716462   ', N'DB241005 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321176436332   ', N'DB241005 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321188611053   ', N'DB241006 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321195111908   ', N'DB241006 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321197339719   ', N'DB241006 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321214683227   ', N'DB241006 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321241341676   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321249204600   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321251555348   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321267825776   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321269156962   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321273656898   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321297600577   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321307995298   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321309440004   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321321604134   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321323729094   ', N'DB241007 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321327863949   ', N'DB241008 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321328716433   ', N'DB241008 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321352172196   ', N'DB241008 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321360414838   ', N'DB241008 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321366690067   ', N'DB241008 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321369286725   ', N'DB241008 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321371376020   ', N'DB241009 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321381596480   ', N'DB241009 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321395212223   ', N'DB241009 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321406730609   ', N'DB241009 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321420849840   ', N'DB241009 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321425570000   ', N'DB241009 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321431313678   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321441097998   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321443064889   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321449726000   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321456048074   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321457953973   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321465119562   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321484150399   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321499925845   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321502681642   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321506498845   ', N'DB241010 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321506586334   ', N'DB241011 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321514839709   ', N'DB241011 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321517899414   ', N'DB241011 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321524469029   ', N'DB241011 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321532186553   ', N'DB241012 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321536204408   ', N'DB241012 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321544177563   ', N'DB241013 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321544484229   ', N'DB241013 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321572318547   ', N'DB241014 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321572576466   ', N'DB241014 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321575891792   ', N'DB241014 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321580959028   ', N'DB241014 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321595898206   ', N'DB241014 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321599432810   ', N'DB241015 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321621680866   ', N'DB241015 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321625551052   ', N'DB241015 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321628986072   ', N'DB241015 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321641343029   ', N'DB241015 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321643402803   ', N'DB241015 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321646748441   ', N'DB241015 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321649495262   ', N'DB241016 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321662779876   ', N'DB241016 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321663314274   ', N'DB241017 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321668280439   ', N'DB241017 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321676685294   ', N'DB241017 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321702642078   ', N'DB241017 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321710535183   ', N'DB241017 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321714883420   ', N'DB241017 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321716333338   ', N'DB241017 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321727929988   ', N'DB241017 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321734539320   ', N'DB241018 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321737838448   ', N'DB241019 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321755939196   ', N'DB241019 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321773677723   ', N'DB241019 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321775838940   ', N'DB241019 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321790381163   ', N'DB241019 ')
GO
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321802107526   ', N'DB241019 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321812128156   ', N'DB241019 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321817419624   ', N'DB241019 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321822306194   ', N'DB241019 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321824889320   ', N'DB241020 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321825780428   ', N'DB241020 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321837169351   ', N'DB241020 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321838422616   ', N'DB241020 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321842430165   ', N'DB241020 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321844899718   ', N'DB241020 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321852235430   ', N'DB241020 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321859423745   ', N'DB241020 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321865353882   ', N'DB241021 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321868528159   ', N'DB241021 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321870822275   ', N'DB241022 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321877501478   ', N'DB241022 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321913776587   ', N'DB241022 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321921268053   ', N'DB241022 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321928030114   ', N'DB241022 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321937678298   ', N'DB241023 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321939486343   ', N'DB241024 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321944045202   ', N'DB241024 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321946017558   ', N'DB241024 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321952138471   ', N'DB241024 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321954015891   ', N'DB241025 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321961820465   ', N'DB241025 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321962049588   ', N'DB241025 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321979531737   ', N'DB241025 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321984088936   ', N'DB241025 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321988254416   ', N'DB241025 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321988270883   ', N'DB241025 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321992480970   ', N'DB241025 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321996374828   ', N'DB241026 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'123321996930176   ', N'DB241026 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211002536377   ', N'DB241026 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211019293965   ', N'DB241026 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211035562262   ', N'DB241026 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211039169403   ', N'DB241026 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211041306855   ', N'DB241026 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211048407748   ', N'DB241026 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211063245513   ', N'DB241026 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211065725934   ', N'DB241026 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211071669115   ', N'DB241027 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211073561837   ', N'DB241027 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211088351780   ', N'DB241028 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211089581989   ', N'DB241028 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211094885416   ', N'DB241028 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211101715443   ', N'DB241028 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211114404765   ', N'DB241028 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211121988820   ', N'DB241028 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211129986218   ', N'DB241028 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211138936838   ', N'DB241029 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211145706789   ', N'DB241029 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211165336328   ', N'DB241029 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211178727824   ', N'DB241029 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211183391764   ', N'DB241029 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211184889235   ', N'DB241029 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211187972234   ', N'DB241029 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211191149640   ', N'DB241029 ')
INSERT [dbo].[CT_DON_BAN] ([Ma_Imei], [Ma_don_ban]) VALUES (N'233211194043928   ', N'DB241029 ')
GO
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'001233217343157   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'001233218274425   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332110293473   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332114511655   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332126172921   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332131198214   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332140039303   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332151218326   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332159952557   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332171808506   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332177530341   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332179735478   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332183489696   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332184685104   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332186216435   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'012332191447405   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321101359978   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321107265253   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321112520148   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321119283788   ', N'HH241001 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321141307291   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321148793532   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321167196339   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321170839848   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321175716462   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321176436332   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321188611053   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321195111908   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321197339719   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321214683227   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321241341676   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321249204600   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321251555348   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321267825776   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321269156962   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321273656898   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321297600577   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321307995298   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321309440004   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321321604134   ', N'HH241002 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321323729094   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321327863949   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321328716433   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321352172196   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321360414838   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321366690067   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321369286725   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321371376020   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321381596480   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321395212223   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321406730609   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321420849840   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321425570000   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321431313678   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321441097998   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321443064889   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321449726000   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321456048074   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321457953973   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321465119562   ', N'HH241003 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321484150399   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321499925845   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321502681642   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321506498845   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321506586334   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321514839709   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321517899414   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321524469029   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321532186553   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321536204408   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321544177563   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321544484229   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321572318547   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321572576466   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321575891792   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321580959028   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321595898206   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321599432810   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321621680866   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321625551052   ', N'HH241004 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321628986072   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321641343029   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321643402803   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321646748441   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321649495262   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321662779876   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321663314274   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321668280439   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321676685294   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321702642078   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321710535183   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321714883420   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321716333338   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321727929988   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321734539320   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321737838448   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321755939196   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321773677723   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321775838940   ', N'HH241005 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321790381163   ', N'HH241005 ')
GO
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321802107526   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321812128156   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321817419624   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321822306194   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321824889320   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321825780428   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321837169351   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321838422616   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321842430165   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321844899718   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321852235430   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321859423745   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321865353882   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321868528159   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321870822275   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321877501478   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321913776587   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321921268053   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321928030114   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321937678298   ', N'HH241006 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321939486343   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321944045202   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321946017558   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321952138471   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321954015891   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321961820465   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321962049588   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321979531737   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321984088936   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321988254416   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321988270883   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321992480970   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321996374828   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'123321996930176   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211002536377   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211019293965   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211035562262   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211039169403   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211041306855   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211048407748   ', N'HH241007 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211063245513   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211065725934   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211071669115   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211073561837   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211088351780   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211089581989   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211094885416   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211101715443   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211114404765   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211121988820   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211129986218   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211138936838   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211145706789   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211165336328   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211178727824   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211183391764   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211184889235   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211187972234   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211191149640   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211194043928   ', N'HH241008 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211195755016   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211196503270   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211199244213   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211206915821   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211210101364   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211210936251   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211218735936   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211219795163   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211221293660   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211229010818   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211229209393   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211234826636   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211237993711   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211243840047   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211244162420   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211244869737   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211246514599   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211252884457   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211287519265   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211300587162   ', N'HH241009 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211301444034   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211310789375   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211322569708   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211328284971   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211333699863   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211341179130   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211356208130   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211368088743   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211371805623   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211372046817   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211380910288   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211396121654   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211398628367   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211398911131   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211402373131   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211406808546   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211408897325   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211408988281   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211414001767   ', N'HH241010 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211414348462   ', N'HH241010 ')
GO
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211422724979   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211442612851   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211446945745   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211448331525   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211452242079   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211452801611   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211454086558   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211456521836   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211467168172   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211477259820   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211479061997   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211483658669   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211494003053   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211496561888   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211498505480   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211513471347   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211518659346   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211519522428   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211523536494   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211575865424   ', N'HH241011 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211591222093   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211598539452   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211602024216   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211615024152   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211615125717   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211617675993   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211644888862   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211646933872   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211653394419   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211667612655   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211675648504   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211699113314   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211704410966   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211710960734   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211712713085   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211715730647   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211737889793   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211738770622   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211741980680   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211742645428   ', N'HH241012 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211745745612   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211751080289   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211755268633   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211756956807   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211770704475   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211773795295   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211783158466   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211785369000   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211789904183   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211790200473   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211809640461   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211817761505   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211825993491   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211829676394   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211835117779   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211836507795   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211842613539   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211850116009   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211855113863   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211865278390   ', N'HH241013 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211875898974   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211878681414   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211883051422   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211885354965   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211890226962   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211890958929   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211893271401   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211902374319   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211914850972   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211917101011   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211917200932   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211920998916   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211925837807   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211927600718   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211933187572   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211933515528   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211937621517   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211938330633   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211946962312   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211972239744   ', N'HH241014 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211973751537   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233211997254827   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212008978821   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212035994756   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212036719963   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212045466456   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212051659694   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212064279650   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212068154917   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212077518520   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212077744721   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212081900285   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212085089547   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212104699963   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212111459394   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212126478700   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212130563115   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212143904221   ', N'HH241015 ')
INSERT [dbo].[CT_DON_NHAP] ([Ma_Imei], [Ma_don_nhap]) VALUES (N'233212146948559   ', N'HH241015 ')
GO
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'001233217343157   ', NULL, N'Midnight Green', N'Đã bán', CAST(17500000.00 AS Numeric(18, 2)), CAST(20700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'001233218274425   ', NULL, N'Space Gray', N'Đã bán', CAST(12500000.00 AS Numeric(18, 2)), CAST(21200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332110293473   ', NULL, N'Gold', N'Đã bán', CAST(17500000.00 AS Numeric(18, 2)), CAST(23300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332114511655   ', NULL, N'Silver', N'Đã bán', CAST(11300000.00 AS Numeric(18, 2)), CAST(16700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332126172921   ', NULL, N'Space Gray', N'Đã bán', CAST(13400000.00 AS Numeric(18, 2)), CAST(20800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332131198214   ', NULL, N'Black', N'Đã bán', CAST(11200000.00 AS Numeric(18, 2)), CAST(13400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332140039303   ', NULL, N'Midnight Green', N'Đã bán', CAST(19100000.00 AS Numeric(18, 2)), CAST(28100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332151218326   ', NULL, N'Silver', N'Đã bán', CAST(11800000.00 AS Numeric(18, 2)), CAST(15600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332159952557   ', NULL, N'Silver', N'Đã bán', CAST(10500000.00 AS Numeric(18, 2)), CAST(16100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332171808506   ', NULL, N'Space Gray', N'Đã bán', CAST(15100000.00 AS Numeric(18, 2)), CAST(19900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332177530341   ', NULL, N'Gold', N'Đã bán', CAST(16200000.00 AS Numeric(18, 2)), CAST(16300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332179735478   ', NULL, N'Black', N'Đã bán', CAST(16900000.00 AS Numeric(18, 2)), CAST(21700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332183489696   ', NULL, N'Gold', N'Đã bán', CAST(16000000.00 AS Numeric(18, 2)), CAST(19700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332184685104   ', NULL, N'Gold', N'Đã bán', CAST(13500000.00 AS Numeric(18, 2)), CAST(16000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332186216435   ', NULL, N'Black', N'Đã bán', CAST(11600000.00 AS Numeric(18, 2)), CAST(15900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'012332191447405   ', NULL, N'Silver', N'Đã bán', CAST(18400000.00 AS Numeric(18, 2)), CAST(28000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321101359978   ', NULL, N'Black', N'Đã bán', CAST(12100000.00 AS Numeric(18, 2)), CAST(20200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321107265253   ', NULL, N'Gold', N'Đã bán', CAST(17500000.00 AS Numeric(18, 2)), CAST(25800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321112520148   ', NULL, N'Gold', N'Đã bán', CAST(15600000.00 AS Numeric(18, 2)), CAST(21700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321119283788   ', NULL, N'Space Gray', N'Đã bán', CAST(19000000.00 AS Numeric(18, 2)), CAST(23800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321141307291   ', NULL, N'Space Gray', N'Đã bán', CAST(15200000.00 AS Numeric(18, 2)), CAST(21800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321148793532   ', NULL, N'Black', N'Đã bán', CAST(13900000.00 AS Numeric(18, 2)), CAST(16100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321167196339   ', NULL, N'Space Gray', N'Đã bán', CAST(13700000.00 AS Numeric(18, 2)), CAST(23300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321170839848   ', NULL, N'Midnight Green', N'Đã bán', CAST(18100000.00 AS Numeric(18, 2)), CAST(20500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321175716462   ', NULL, N'Midnight Green', N'Đã bán', CAST(18800000.00 AS Numeric(18, 2)), CAST(26300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321176436332   ', NULL, N'Silver', N'Đã bán', CAST(16000000.00 AS Numeric(18, 2)), CAST(18200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321188611053   ', NULL, N'Black', N'Đã bán', CAST(14800000.00 AS Numeric(18, 2)), CAST(21400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321195111908   ', NULL, N'Midnight Green', N'Đã bán', CAST(16800000.00 AS Numeric(18, 2)), CAST(25000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321197339719   ', NULL, N'Midnight Green', N'Đã bán', CAST(14400000.00 AS Numeric(18, 2)), CAST(22400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321214683227   ', NULL, N'Gold', N'Đã bán', CAST(17900000.00 AS Numeric(18, 2)), CAST(27100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321241341676   ', NULL, N'Gold', N'Đã bán', CAST(14000000.00 AS Numeric(18, 2)), CAST(23600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321249204600   ', NULL, N'Black', N'Đã bán', CAST(15400000.00 AS Numeric(18, 2)), CAST(23100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321251555348   ', NULL, N'Black', N'Đã bán', CAST(11400000.00 AS Numeric(18, 2)), CAST(20700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321267825776   ', NULL, N'Midnight Green', N'Đã bán', CAST(18100000.00 AS Numeric(18, 2)), CAST(18900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321269156962   ', NULL, N'Gold', N'Đã bán', CAST(12100000.00 AS Numeric(18, 2)), CAST(18600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321273656898   ', NULL, N'Black', N'Đã bán', CAST(15000000.00 AS Numeric(18, 2)), CAST(18700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321297600577   ', NULL, N'Space Gray', N'Đã bán', CAST(13700000.00 AS Numeric(18, 2)), CAST(15300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321307995298   ', NULL, N'Silver', N'Đã bán', CAST(13200000.00 AS Numeric(18, 2)), CAST(16300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321309440004   ', NULL, N'Gold', N'Đã bán', CAST(11200000.00 AS Numeric(18, 2)), CAST(13100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321321604134   ', NULL, N'Space Gray', N'Đã bán', CAST(19100000.00 AS Numeric(18, 2)), CAST(20200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321323729094   ', NULL, N'Space Gray', N'Đã bán', CAST(16300000.00 AS Numeric(18, 2)), CAST(22700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321327863949   ', NULL, N'Midnight Green', N'Đã bán', CAST(11300000.00 AS Numeric(18, 2)), CAST(12800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321328716433   ', NULL, N'Midnight Green', N'Đã bán', CAST(16400000.00 AS Numeric(18, 2)), CAST(26000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321352172196   ', NULL, N'Gold', N'Đã bán', CAST(14900000.00 AS Numeric(18, 2)), CAST(21400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321360414838   ', NULL, N'Black', N'Đã bán', CAST(15400000.00 AS Numeric(18, 2)), CAST(21900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321366690067   ', NULL, N'Silver', N'Đã bán', CAST(18700000.00 AS Numeric(18, 2)), CAST(27700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321369286725   ', NULL, N'Gold', N'Đã bán', CAST(11800000.00 AS Numeric(18, 2)), CAST(14900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321371376020   ', NULL, N'Black', N'Đã bán', CAST(15600000.00 AS Numeric(18, 2)), CAST(24800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321381596480   ', NULL, N'Midnight Green', N'Đã bán', CAST(13000000.00 AS Numeric(18, 2)), CAST(15700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321395212223   ', NULL, N'Gold', N'Đã bán', CAST(17100000.00 AS Numeric(18, 2)), CAST(20000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321406730609   ', NULL, N'Black', N'Đã bán', CAST(15000000.00 AS Numeric(18, 2)), CAST(16100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321420849840   ', NULL, N'Midnight Green', N'Đã bán', CAST(19900000.00 AS Numeric(18, 2)), CAST(24500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321425570000   ', NULL, N'Black', N'Đã bán', CAST(12600000.00 AS Numeric(18, 2)), CAST(18200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321431313678   ', NULL, N'Silver', N'Đã bán', CAST(19000000.00 AS Numeric(18, 2)), CAST(21200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321441097998   ', NULL, N'Silver', N'Đã bán', CAST(16900000.00 AS Numeric(18, 2)), CAST(22300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321443064889   ', NULL, N'Silver', N'Đã bán', CAST(11600000.00 AS Numeric(18, 2)), CAST(20700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321449726000   ', NULL, N'Space Gray', N'Đã bán', CAST(14700000.00 AS Numeric(18, 2)), CAST(23500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321456048074   ', NULL, N'Gold', N'Đã bán', CAST(19700000.00 AS Numeric(18, 2)), CAST(25500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321457953973   ', NULL, N'Gold', N'Đã bán', CAST(17100000.00 AS Numeric(18, 2)), CAST(18500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321465119562   ', NULL, N'Midnight Green', N'Đã bán', CAST(17400000.00 AS Numeric(18, 2)), CAST(19600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321484150399   ', NULL, N'Space Gray', N'Đã bán', CAST(18900000.00 AS Numeric(18, 2)), CAST(24200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321499925845   ', NULL, N'Silver', N'Đã bán', CAST(16100000.00 AS Numeric(18, 2)), CAST(18200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321502681642   ', NULL, N'Gold', N'Đã bán', CAST(17200000.00 AS Numeric(18, 2)), CAST(27100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321506498845   ', NULL, N'Black', N'Đã bán', CAST(18200000.00 AS Numeric(18, 2)), CAST(24200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321506586334   ', NULL, N'Midnight Green', N'Đã bán', CAST(10100000.00 AS Numeric(18, 2)), CAST(17800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321514839709   ', NULL, N'Silver', N'Đã bán', CAST(10300000.00 AS Numeric(18, 2)), CAST(18200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321517899414   ', NULL, N'Black', N'Đã bán', CAST(14000000.00 AS Numeric(18, 2)), CAST(16000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321524469029   ', NULL, N'Black', N'Đã bán', CAST(10800000.00 AS Numeric(18, 2)), CAST(18400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321532186553   ', NULL, N'Midnight Green', N'Đã bán', CAST(16300000.00 AS Numeric(18, 2)), CAST(24900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321536204408   ', NULL, N'Midnight Green', N'Đã bán', CAST(13600000.00 AS Numeric(18, 2)), CAST(21600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321544177563   ', NULL, N'Black', N'Đã bán', CAST(18800000.00 AS Numeric(18, 2)), CAST(21100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321544484229   ', NULL, N'Black', N'Đã bán', CAST(11800000.00 AS Numeric(18, 2)), CAST(12900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321572318547   ', NULL, N'Midnight Green', N'Đã bán', CAST(11100000.00 AS Numeric(18, 2)), CAST(17400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321572576466   ', NULL, N'Space Gray', N'Đã bán', CAST(11300000.00 AS Numeric(18, 2)), CAST(20700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321575891792   ', NULL, N'Silver', N'Đã bán', CAST(17300000.00 AS Numeric(18, 2)), CAST(20000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321580959028   ', NULL, N'Space Gray', N'Đã bán', CAST(18000000.00 AS Numeric(18, 2)), CAST(20100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321595898206   ', NULL, N'Silver', N'Đã bán', CAST(16000000.00 AS Numeric(18, 2)), CAST(20800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321599432810   ', NULL, N'Midnight Green', N'Đã bán', CAST(13800000.00 AS Numeric(18, 2)), CAST(16200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321621680866   ', NULL, N'Space Gray', N'Đã bán', CAST(12700000.00 AS Numeric(18, 2)), CAST(15000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321625551052   ', NULL, N'Space Gray', N'Đã bán', CAST(15100000.00 AS Numeric(18, 2)), CAST(19500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321628986072   ', NULL, N'Silver', N'Đã bán', CAST(18400000.00 AS Numeric(18, 2)), CAST(24800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321641343029   ', NULL, N'Midnight Green', N'Đã bán', CAST(17300000.00 AS Numeric(18, 2)), CAST(24400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321643402803   ', NULL, N'Space Gray', N'Đã bán', CAST(14100000.00 AS Numeric(18, 2)), CAST(18800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321646748441   ', NULL, N'Space Gray', N'Đã bán', CAST(11400000.00 AS Numeric(18, 2)), CAST(12500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321649495262   ', NULL, N'Midnight Green', N'Đã bán', CAST(13300000.00 AS Numeric(18, 2)), CAST(21800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321662779876   ', NULL, N'Gold', N'Đã bán', CAST(14200000.00 AS Numeric(18, 2)), CAST(15900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321663314274   ', NULL, N'Space Gray', N'Đã bán', CAST(12600000.00 AS Numeric(18, 2)), CAST(13000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321668280439   ', NULL, N'Black', N'Đã bán', CAST(12000000.00 AS Numeric(18, 2)), CAST(13000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321676685294   ', NULL, N'Black', N'Đã bán', CAST(12500000.00 AS Numeric(18, 2)), CAST(16100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321702642078   ', NULL, N'Midnight Green', N'Đã bán', CAST(11600000.00 AS Numeric(18, 2)), CAST(20000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321710535183   ', NULL, N'Space Gray', N'Đã bán', CAST(18400000.00 AS Numeric(18, 2)), CAST(22600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321714883420   ', NULL, N'Gold', N'Đã bán', CAST(17400000.00 AS Numeric(18, 2)), CAST(17400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321716333338   ', NULL, N'Midnight Green', N'Đã bán', CAST(15600000.00 AS Numeric(18, 2)), CAST(22100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321727929988   ', NULL, N'Space Gray', N'Đã bán', CAST(13100000.00 AS Numeric(18, 2)), CAST(21400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321734539320   ', NULL, N'Gold', N'Đã bán', CAST(15900000.00 AS Numeric(18, 2)), CAST(20200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321737838448   ', NULL, N'Silver', N'Đã bán', CAST(10300000.00 AS Numeric(18, 2)), CAST(10400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321755939196   ', NULL, N'Space Gray', N'Đã bán', CAST(19000000.00 AS Numeric(18, 2)), CAST(22100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321773677723   ', NULL, N'Silver', N'Đã bán', CAST(19000000.00 AS Numeric(18, 2)), CAST(22400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321775838940   ', NULL, N'Black', N'Đã bán', CAST(16300000.00 AS Numeric(18, 2)), CAST(19700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321790381163   ', NULL, N'Silver', N'Đã bán', CAST(17700000.00 AS Numeric(18, 2)), CAST(24200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
GO
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321802107526   ', NULL, N'Silver', N'Đã bán', CAST(18600000.00 AS Numeric(18, 2)), CAST(26200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321812128156   ', NULL, N'Space Gray', N'Đã bán', CAST(11900000.00 AS Numeric(18, 2)), CAST(17000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321817419624   ', NULL, N'Silver', N'Đã bán', CAST(17900000.00 AS Numeric(18, 2)), CAST(26100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321822306194   ', NULL, N'Black', N'Đã bán', CAST(12900000.00 AS Numeric(18, 2)), CAST(17700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321824889320   ', NULL, N'Midnight Green', N'Đã bán', CAST(12200000.00 AS Numeric(18, 2)), CAST(21900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321825780428   ', NULL, N'Gold', N'Đã bán', CAST(12600000.00 AS Numeric(18, 2)), CAST(14600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321837169351   ', NULL, N'Midnight Green', N'Đã bán', CAST(10500000.00 AS Numeric(18, 2)), CAST(15200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321838422616   ', NULL, N'Black', N'Đã bán', CAST(19000000.00 AS Numeric(18, 2)), CAST(21800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321842430165   ', NULL, N'Black', N'Đã bán', CAST(13100000.00 AS Numeric(18, 2)), CAST(16500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321844899718   ', NULL, N'Silver', N'Đã bán', CAST(14600000.00 AS Numeric(18, 2)), CAST(24100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321852235430   ', NULL, N'Gold', N'Đã bán', CAST(16700000.00 AS Numeric(18, 2)), CAST(16800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321859423745   ', NULL, N'Silver', N'Đã bán', CAST(16900000.00 AS Numeric(18, 2)), CAST(22500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321865353882   ', NULL, N'Space Gray', N'Đã bán', CAST(11800000.00 AS Numeric(18, 2)), CAST(18800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321868528159   ', NULL, N'Silver', N'Đã bán', CAST(16300000.00 AS Numeric(18, 2)), CAST(17900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321870822275   ', NULL, N'Silver', N'Đã bán', CAST(11000000.00 AS Numeric(18, 2)), CAST(13400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321877501478   ', NULL, N'Space Gray', N'Đã bán', CAST(11400000.00 AS Numeric(18, 2)), CAST(20200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321913776587   ', NULL, N'Gold', N'Đã bán', CAST(19800000.00 AS Numeric(18, 2)), CAST(21200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321921268053   ', NULL, N'Silver', N'Đã bán', CAST(10600000.00 AS Numeric(18, 2)), CAST(19900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321928030114   ', NULL, N'Midnight Green', N'Đã bán', CAST(17300000.00 AS Numeric(18, 2)), CAST(23300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321937678298   ', NULL, N'Midnight Green', N'Đã bán', CAST(16700000.00 AS Numeric(18, 2)), CAST(22100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321939486343   ', NULL, N'Black', N'Đã bán', CAST(16500000.00 AS Numeric(18, 2)), CAST(24700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321944045202   ', NULL, N'Space Gray', N'Đã bán', CAST(19800000.00 AS Numeric(18, 2)), CAST(21600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321946017558   ', NULL, N'Midnight Green', N'Đã bán', CAST(16200000.00 AS Numeric(18, 2)), CAST(21000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321952138471   ', NULL, N'Midnight Green', N'Đã bán', CAST(14600000.00 AS Numeric(18, 2)), CAST(24300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321954015891   ', NULL, N'Midnight Green', N'Đã bán', CAST(15900000.00 AS Numeric(18, 2)), CAST(23400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321961820465   ', NULL, N'Gold', N'Đã bán', CAST(13100000.00 AS Numeric(18, 2)), CAST(13500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321962049588   ', NULL, N'Black', N'Đã bán', CAST(16000000.00 AS Numeric(18, 2)), CAST(16000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321979531737   ', NULL, N'Black', N'Đã bán', CAST(17200000.00 AS Numeric(18, 2)), CAST(23400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321984088936   ', NULL, N'Space Gray', N'Đã bán', CAST(16800000.00 AS Numeric(18, 2)), CAST(21400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321988254416   ', NULL, N'Midnight Green', N'Đã bán', CAST(13900000.00 AS Numeric(18, 2)), CAST(14100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321988270883   ', NULL, N'Midnight Green', N'Đã bán', CAST(17700000.00 AS Numeric(18, 2)), CAST(24900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321992480970   ', NULL, N'Silver', N'Đã bán', CAST(18900000.00 AS Numeric(18, 2)), CAST(19600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321996374828   ', NULL, N'Gold', N'Đã bán', CAST(19500000.00 AS Numeric(18, 2)), CAST(28500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'123321996930176   ', NULL, N'Space Gray', N'Đã bán', CAST(12100000.00 AS Numeric(18, 2)), CAST(18100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211002536377   ', NULL, N'Space Gray', N'Đã bán', CAST(19400000.00 AS Numeric(18, 2)), CAST(20400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211019293965   ', NULL, N'Midnight Green', N'Đã bán', CAST(16500000.00 AS Numeric(18, 2)), CAST(22200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211035562262   ', NULL, N'Black', N'Đã bán', CAST(18400000.00 AS Numeric(18, 2)), CAST(27800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211039169403   ', NULL, N'Silver', N'Đã bán', CAST(12000000.00 AS Numeric(18, 2)), CAST(17600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211041306855   ', NULL, N'Silver', N'Đã bán', CAST(13200000.00 AS Numeric(18, 2)), CAST(21800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211048407748   ', NULL, N'Black', N'Đã bán', CAST(11700000.00 AS Numeric(18, 2)), CAST(21000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211063245513   ', NULL, N'Silver', N'Đã bán', CAST(10100000.00 AS Numeric(18, 2)), CAST(16300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211065725934   ', NULL, N'Space Gray', N'Đã bán', CAST(11900000.00 AS Numeric(18, 2)), CAST(17600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211071669115   ', NULL, N'Gold', N'Đã bán', CAST(19500000.00 AS Numeric(18, 2)), CAST(22600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211073561837   ', NULL, N'Black', N'Đã bán', CAST(14800000.00 AS Numeric(18, 2)), CAST(23800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211088351780   ', NULL, N'Gold', N'Đã bán', CAST(15900000.00 AS Numeric(18, 2)), CAST(20300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211089581989   ', NULL, N'Midnight Green', N'Đã bán', CAST(14200000.00 AS Numeric(18, 2)), CAST(22600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211094885416   ', NULL, N'Black', N'Đã bán', CAST(13400000.00 AS Numeric(18, 2)), CAST(16500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211101715443   ', NULL, N'Midnight Green', N'Đã bán', CAST(14100000.00 AS Numeric(18, 2)), CAST(16300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211114404765   ', NULL, N'Gold', N'Đã bán', CAST(17100000.00 AS Numeric(18, 2)), CAST(26700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211121988820   ', NULL, N'Black', N'Đã bán', CAST(19900000.00 AS Numeric(18, 2)), CAST(29000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211129986218   ', NULL, N'Midnight Green', N'Đã bán', CAST(14300000.00 AS Numeric(18, 2)), CAST(16700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211138936838   ', NULL, N'Gold', N'Đã bán', CAST(12200000.00 AS Numeric(18, 2)), CAST(16200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211145706789   ', NULL, N'Midnight Green', N'Đã bán', CAST(10000000.00 AS Numeric(18, 2)), CAST(19100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211165336328   ', NULL, N'Midnight Green', N'Đã bán', CAST(19900000.00 AS Numeric(18, 2)), CAST(29700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211178727824   ', NULL, N'Silver', N'Đã bán', CAST(10600000.00 AS Numeric(18, 2)), CAST(20100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211183391764   ', NULL, N'Gold', N'Đã bán', CAST(16200000.00 AS Numeric(18, 2)), CAST(22700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211184889235   ', NULL, N'Space Gray', N'Đã bán', CAST(13700000.00 AS Numeric(18, 2)), CAST(20700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211187972234   ', NULL, N'Gold', N'Đã bán', CAST(16500000.00 AS Numeric(18, 2)), CAST(18000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211191149640   ', NULL, N'Gold', N'Đã bán', CAST(15800000.00 AS Numeric(18, 2)), CAST(22700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211194043928   ', NULL, N'Silver', N'Đã bán', CAST(18800000.00 AS Numeric(18, 2)), CAST(27200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211195755016   ', NULL, N'Space Gray', N'Sẵn bán', CAST(12700000.00 AS Numeric(18, 2)), CAST(21200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211196503270   ', NULL, N'Silver', N'Sẵn bán', CAST(19800000.00 AS Numeric(18, 2)), CAST(27000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211199244213   ', NULL, N'Space Gray', N'Sẵn bán', CAST(19300000.00 AS Numeric(18, 2)), CAST(22600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211206915821   ', NULL, N'Silver', N'Sẵn bán', CAST(19200000.00 AS Numeric(18, 2)), CAST(21600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211210101364   ', NULL, N'Silver', N'Sẵn bán', CAST(15200000.00 AS Numeric(18, 2)), CAST(20000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211210936251   ', NULL, N'Gold', N'Sẵn bán', CAST(18600000.00 AS Numeric(18, 2)), CAST(26100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211218735936   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(18800000.00 AS Numeric(18, 2)), CAST(25900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211219795163   ', NULL, N'Black', N'Sẵn bán', CAST(17600000.00 AS Numeric(18, 2)), CAST(20400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211221293660   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(18600000.00 AS Numeric(18, 2)), CAST(21700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211229010818   ', NULL, N'Silver', N'Sẵn bán', CAST(15900000.00 AS Numeric(18, 2)), CAST(23000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211229209393   ', NULL, N'Black', N'Sẵn bán', CAST(17200000.00 AS Numeric(18, 2)), CAST(22900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211234826636   ', NULL, N'Gold', N'Sẵn bán', CAST(19400000.00 AS Numeric(18, 2)), CAST(25500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211237993711   ', NULL, N'Black', N'Sẵn bán', CAST(18800000.00 AS Numeric(18, 2)), CAST(24900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211243840047   ', NULL, N'Gold', N'Sẵn bán', CAST(17000000.00 AS Numeric(18, 2)), CAST(21700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211244162420   ', NULL, N'Silver', N'Sẵn bán', CAST(11400000.00 AS Numeric(18, 2)), CAST(14300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211244869737   ', NULL, N'Silver', N'Sẵn bán', CAST(11900000.00 AS Numeric(18, 2)), CAST(19600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211246514599   ', NULL, N'Space Gray', N'Sẵn bán', CAST(13500000.00 AS Numeric(18, 2)), CAST(17100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211252884457   ', NULL, N'Silver', N'Sẵn bán', CAST(14200000.00 AS Numeric(18, 2)), CAST(14600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211287519265   ', NULL, N'Silver', N'Sẵn bán', CAST(13800000.00 AS Numeric(18, 2)), CAST(22100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211300587162   ', NULL, N'Space Gray', N'Sẵn bán', CAST(16600000.00 AS Numeric(18, 2)), CAST(23800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211301444034   ', NULL, N'Gold', N'Sẵn bán', CAST(18000000.00 AS Numeric(18, 2)), CAST(19000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211310789375   ', NULL, N'Silver', N'Sẵn bán', CAST(15600000.00 AS Numeric(18, 2)), CAST(21500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211322569708   ', NULL, N'Silver', N'Sẵn bán', CAST(14200000.00 AS Numeric(18, 2)), CAST(20000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211328284971   ', NULL, N'Gold', N'Sẵn bán', CAST(10700000.00 AS Numeric(18, 2)), CAST(12200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211333699863   ', NULL, N'Space Gray', N'Sẵn bán', CAST(15800000.00 AS Numeric(18, 2)), CAST(19700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211341179130   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(17400000.00 AS Numeric(18, 2)), CAST(20000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211356208130   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(13100000.00 AS Numeric(18, 2)), CAST(18000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211368088743   ', NULL, N'Silver', N'Sẵn bán', CAST(16200000.00 AS Numeric(18, 2)), CAST(18700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211371805623   ', NULL, N'Black', N'Sẵn bán', CAST(10700000.00 AS Numeric(18, 2)), CAST(16700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211372046817   ', NULL, N'Black', N'Sẵn bán', CAST(12300000.00 AS Numeric(18, 2)), CAST(19900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211380910288   ', NULL, N'Space Gray', N'Sẵn bán', CAST(15600000.00 AS Numeric(18, 2)), CAST(15800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211396121654   ', NULL, N'Silver', N'Sẵn bán', CAST(16400000.00 AS Numeric(18, 2)), CAST(25500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211398628367   ', NULL, N'Space Gray', N'Sẵn bán', CAST(14900000.00 AS Numeric(18, 2)), CAST(24200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211398911131   ', NULL, N'Space Gray', N'Sẵn bán', CAST(16900000.00 AS Numeric(18, 2)), CAST(23400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211402373131   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(17500000.00 AS Numeric(18, 2)), CAST(20100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211406808546   ', NULL, N'Space Gray', N'Sẵn bán', CAST(11000000.00 AS Numeric(18, 2)), CAST(18600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211408897325   ', NULL, N'Space Gray', N'Sẵn bán', CAST(13200000.00 AS Numeric(18, 2)), CAST(21700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211408988281   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(15000000.00 AS Numeric(18, 2)), CAST(23300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211414001767   ', NULL, N'Space Gray', N'Sẵn bán', CAST(13600000.00 AS Numeric(18, 2)), CAST(17800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211414348462   ', NULL, N'Silver', N'Sẵn bán', CAST(15400000.00 AS Numeric(18, 2)), CAST(24800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
GO
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211422724979   ', NULL, N'Silver', N'Sẵn bán', CAST(16500000.00 AS Numeric(18, 2)), CAST(25200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211442612851   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(17400000.00 AS Numeric(18, 2)), CAST(17500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211446945745   ', NULL, N'Gold', N'Sẵn bán', CAST(12200000.00 AS Numeric(18, 2)), CAST(17900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211448331525   ', NULL, N'Black', N'Sẵn bán', CAST(17800000.00 AS Numeric(18, 2)), CAST(21100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211452242079   ', NULL, N'Space Gray', N'Sẵn bán', CAST(18800000.00 AS Numeric(18, 2)), CAST(21400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211452801611   ', NULL, N'Gold', N'Sẵn bán', CAST(12200000.00 AS Numeric(18, 2)), CAST(20400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211454086558   ', NULL, N'Black', N'Sẵn bán', CAST(10300000.00 AS Numeric(18, 2)), CAST(12900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211456521836   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(14800000.00 AS Numeric(18, 2)), CAST(24700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211467168172   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(19000000.00 AS Numeric(18, 2)), CAST(20900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211477259820   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(18200000.00 AS Numeric(18, 2)), CAST(27300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211479061997   ', NULL, N'Black', N'Sẵn bán', CAST(17400000.00 AS Numeric(18, 2)), CAST(20600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211483658669   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(14100000.00 AS Numeric(18, 2)), CAST(19100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211494003053   ', NULL, N'Silver', N'Sẵn bán', CAST(14300000.00 AS Numeric(18, 2)), CAST(20800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211496561888   ', NULL, N'Silver', N'Sẵn bán', CAST(15100000.00 AS Numeric(18, 2)), CAST(23500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211498505480   ', NULL, N'Gold', N'Sẵn bán', CAST(16400000.00 AS Numeric(18, 2)), CAST(23500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211513471347   ', NULL, N'Black', N'Sẵn bán', CAST(10800000.00 AS Numeric(18, 2)), CAST(11200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211518659346   ', NULL, N'Space Gray', N'Sẵn bán', CAST(16300000.00 AS Numeric(18, 2)), CAST(22600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211519522428   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(13800000.00 AS Numeric(18, 2)), CAST(21700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211523536494   ', NULL, N'Space Gray', N'Sẵn bán', CAST(17000000.00 AS Numeric(18, 2)), CAST(23600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211575865424   ', NULL, N'Gold', N'Sẵn bán', CAST(16700000.00 AS Numeric(18, 2)), CAST(24500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211591222093   ', NULL, N'Black', N'Sẵn bán', CAST(15600000.00 AS Numeric(18, 2)), CAST(23600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211598539452   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(18700000.00 AS Numeric(18, 2)), CAST(27100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211602024216   ', NULL, N'Space Gray', N'Sẵn bán', CAST(16800000.00 AS Numeric(18, 2)), CAST(17100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211615024152   ', NULL, N'Gold', N'Sẵn bán', CAST(15100000.00 AS Numeric(18, 2)), CAST(24700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211615125717   ', NULL, N'Silver', N'Sẵn bán', CAST(14600000.00 AS Numeric(18, 2)), CAST(19900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211617675993   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(19700000.00 AS Numeric(18, 2)), CAST(27700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211644888862   ', NULL, N'Space Gray', N'Sẵn bán', CAST(16300000.00 AS Numeric(18, 2)), CAST(25700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211646933872   ', NULL, N'Gold', N'Sẵn bán', CAST(16100000.00 AS Numeric(18, 2)), CAST(18300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211653394419   ', NULL, N'Space Gray', N'Sẵn bán', CAST(18900000.00 AS Numeric(18, 2)), CAST(20000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211667612655   ', NULL, N'Silver', N'Sẵn bán', CAST(15200000.00 AS Numeric(18, 2)), CAST(17900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211675648504   ', NULL, N'Gold', N'Sẵn bán', CAST(12000000.00 AS Numeric(18, 2)), CAST(21000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211699113314   ', NULL, N'Black', N'Sẵn bán', CAST(13200000.00 AS Numeric(18, 2)), CAST(17400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211704410966   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(15200000.00 AS Numeric(18, 2)), CAST(15200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211710960734   ', NULL, N'Space Gray', N'Sẵn bán', CAST(12100000.00 AS Numeric(18, 2)), CAST(19200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211712713085   ', NULL, N'Black', N'Sẵn bán', CAST(17500000.00 AS Numeric(18, 2)), CAST(24200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211715730647   ', NULL, N'Silver', N'Sẵn bán', CAST(10600000.00 AS Numeric(18, 2)), CAST(19000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211737889793   ', NULL, N'Gold', N'Sẵn bán', CAST(11700000.00 AS Numeric(18, 2)), CAST(11700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211738770622   ', NULL, N'Gold', N'Sẵn bán', CAST(11400000.00 AS Numeric(18, 2)), CAST(16700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211741980680   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(15500000.00 AS Numeric(18, 2)), CAST(17700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211742645428   ', NULL, N'Black', N'Sẵn bán', CAST(17400000.00 AS Numeric(18, 2)), CAST(22100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211745745612   ', NULL, N'Black', N'Sẵn bán', CAST(13500000.00 AS Numeric(18, 2)), CAST(23000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211751080289   ', NULL, N'Space Gray', N'Sẵn bán', CAST(17700000.00 AS Numeric(18, 2)), CAST(27300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211755268633   ', NULL, N'Gold', N'Sẵn bán', CAST(10900000.00 AS Numeric(18, 2)), CAST(11800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211756956807   ', NULL, N'Gold', N'Sẵn bán', CAST(13700000.00 AS Numeric(18, 2)), CAST(17500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211770704475   ', NULL, N'Black', N'Sẵn bán', CAST(16800000.00 AS Numeric(18, 2)), CAST(26200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211773795295   ', NULL, N'Black', N'Sẵn bán', CAST(11400000.00 AS Numeric(18, 2)), CAST(13100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211783158466   ', NULL, N'Silver', N'Sẵn bán', CAST(19200000.00 AS Numeric(18, 2)), CAST(27500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211785369000   ', NULL, N'Black', N'Sẵn bán', CAST(19700000.00 AS Numeric(18, 2)), CAST(29200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211789904183   ', NULL, N'Gold', N'Sẵn bán', CAST(17600000.00 AS Numeric(18, 2)), CAST(25800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211790200473   ', NULL, N'Gold', N'Sẵn bán', CAST(13700000.00 AS Numeric(18, 2)), CAST(23100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211809640461   ', NULL, N'Gold', N'Sẵn bán', CAST(14400000.00 AS Numeric(18, 2)), CAST(18100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211817761505   ', NULL, N'Gold', N'Sẵn bán', CAST(10900000.00 AS Numeric(18, 2)), CAST(19900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211825993491   ', NULL, N'Space Gray', N'Sẵn bán', CAST(18400000.00 AS Numeric(18, 2)), CAST(22900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211829676394   ', NULL, N'Gold', N'Sẵn bán', CAST(11800000.00 AS Numeric(18, 2)), CAST(20400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211835117779   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(18300000.00 AS Numeric(18, 2)), CAST(26800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211836507795   ', NULL, N'Gold', N'Sẵn bán', CAST(14400000.00 AS Numeric(18, 2)), CAST(18700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211842613539   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(14900000.00 AS Numeric(18, 2)), CAST(23400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211850116009   ', NULL, N'Silver', N'Sẵn bán', CAST(12000000.00 AS Numeric(18, 2)), CAST(12500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211855113863   ', NULL, N'Gold', N'Sẵn bán', CAST(11900000.00 AS Numeric(18, 2)), CAST(18900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211865278390   ', NULL, N'Silver', N'Sẵn bán', CAST(14800000.00 AS Numeric(18, 2)), CAST(21500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211875898974   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(12800000.00 AS Numeric(18, 2)), CAST(21500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211878681414   ', NULL, N'Gold', N'Sẵn bán', CAST(16300000.00 AS Numeric(18, 2)), CAST(17600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211883051422   ', NULL, N'Black', N'Sẵn bán', CAST(16900000.00 AS Numeric(18, 2)), CAST(19800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211885354965   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(11700000.00 AS Numeric(18, 2)), CAST(18300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211890226962   ', NULL, N'Space Gray', N'Sẵn bán', CAST(10900000.00 AS Numeric(18, 2)), CAST(17700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211890958929   ', NULL, N'Silver', N'Sẵn bán', CAST(16700000.00 AS Numeric(18, 2)), CAST(16800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211893271401   ', NULL, N'Gold', N'Sẵn bán', CAST(17300000.00 AS Numeric(18, 2)), CAST(26600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211902374319   ', NULL, N'Black', N'Sẵn bán', CAST(12900000.00 AS Numeric(18, 2)), CAST(13100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211914850972   ', NULL, N'Black', N'Sẵn bán', CAST(19500000.00 AS Numeric(18, 2)), CAST(19700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211917101011   ', NULL, N'Space Gray', N'Sẵn bán', CAST(17600000.00 AS Numeric(18, 2)), CAST(25300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211917200932   ', NULL, N'Gold', N'Sẵn bán', CAST(14700000.00 AS Numeric(18, 2)), CAST(16500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211920998916   ', NULL, N'Space Gray', N'Sẵn bán', CAST(15200000.00 AS Numeric(18, 2)), CAST(21200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211925837807   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(13600000.00 AS Numeric(18, 2)), CAST(21100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211927600718   ', NULL, N'Gold', N'Sẵn bán', CAST(13400000.00 AS Numeric(18, 2)), CAST(22500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211933187572   ', NULL, N'Black', N'Sẵn bán', CAST(19900000.00 AS Numeric(18, 2)), CAST(21400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211933515528   ', NULL, N'Space Gray', N'Sẵn bán', CAST(19600000.00 AS Numeric(18, 2)), CAST(23500000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211937621517   ', NULL, N'Gold', N'Sẵn bán', CAST(14500000.00 AS Numeric(18, 2)), CAST(18300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211938330633   ', NULL, N'Silver', N'Sẵn bán', CAST(18700000.00 AS Numeric(18, 2)), CAST(26600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211946962312   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(11100000.00 AS Numeric(18, 2)), CAST(15100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211972239744   ', NULL, N'Space Gray', N'Sẵn bán', CAST(11700000.00 AS Numeric(18, 2)), CAST(14700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211973751537   ', NULL, N'Silver', N'Sẵn bán', CAST(15600000.00 AS Numeric(18, 2)), CAST(24000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233211997254827   ', NULL, N'Black', N'Sẵn bán', CAST(15400000.00 AS Numeric(18, 2)), CAST(20400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212008978821   ', NULL, N'Silver', N'Sẵn bán', CAST(11400000.00 AS Numeric(18, 2)), CAST(11800000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212035994756   ', NULL, N'Black', N'Sẵn bán', CAST(15100000.00 AS Numeric(18, 2)), CAST(20400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212036719963   ', NULL, N'Silver', N'Sẵn bán', CAST(12400000.00 AS Numeric(18, 2)), CAST(19000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212045466456   ', NULL, N'Space Gray', N'Sẵn bán', CAST(12400000.00 AS Numeric(18, 2)), CAST(13200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212051659694   ', NULL, N'Black', N'Sẵn bán', CAST(14200000.00 AS Numeric(18, 2)), CAST(18900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212064279650   ', NULL, N'Black', N'Sẵn bán', CAST(11900000.00 AS Numeric(18, 2)), CAST(17200000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212068154917   ', NULL, N'Black', N'Sẵn bán', CAST(17100000.00 AS Numeric(18, 2)), CAST(25600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212077518520   ', NULL, N'Space Gray', N'Sẵn bán', CAST(15400000.00 AS Numeric(18, 2)), CAST(15900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212077744721   ', NULL, N'Silver', N'Sẵn bán', CAST(19900000.00 AS Numeric(18, 2)), CAST(24300000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212081900285   ', NULL, N'Silver', N'Sẵn bán', CAST(11900000.00 AS Numeric(18, 2)), CAST(20700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM001    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212085089547   ', NULL, N'Black', N'Sẵn bán', CAST(10600000.00 AS Numeric(18, 2)), CAST(17600000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212104699963   ', NULL, N'Gold', N'Sẵn bán', CAST(11800000.00 AS Numeric(18, 2)), CAST(17100000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212111459394   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(15900000.00 AS Numeric(18, 2)), CAST(19400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM004    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212126478700   ', NULL, N'Midnight Green', N'Sẵn bán', CAST(11800000.00 AS Numeric(18, 2)), CAST(20400000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212130563115   ', NULL, N'Black', N'Sẵn bán', CAST(11200000.00 AS Numeric(18, 2)), CAST(13900000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM003    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212143904221   ', NULL, N'Space Gray', N'Sẵn bán', CAST(13600000.00 AS Numeric(18, 2)), CAST(17000000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
INSERT [dbo].[DIEN_THOAI] ([Ma_Imei], [Hinh_anh], [Mau_sac], [Trang_thai], [Gia_nhap], [Gia_ban], [Thue], [Ma_dong_may]) VALUES (N'233212146948559   ', NULL, N'Space Gray', N'Sẵn bán', CAST(12800000.00 AS Numeric(18, 2)), CAST(20700000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(4, 2)), N'DM002    ')
GO
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB0120   ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 5, CAST(102700000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH006    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241001 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 3, CAST(57100000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241002 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 2, CAST(36000000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241003 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 8, CAST(163600000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241004 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 2, CAST(45500000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241005 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 6, CAST(126200000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241006 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 4, CAST(95900000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241007 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 11, CAST(211200000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241008 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 6, CAST(124700000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241009 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 6, CAST(119300000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241010 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 11, CAST(245000000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241011 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 4, CAST(70400000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241012 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 2, CAST(46500000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241013 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 2, CAST(34000000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241014 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 5, CAST(99000000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241015 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 7, CAST(131200000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241016 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 2, CAST(37700000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241017 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 8, CAST(145600000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241018 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 1, CAST(20200000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241019 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 9, CAST(185800000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241020 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 8, CAST(153400000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241021 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 2, CAST(36700000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241022 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 5, CAST(98000000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241023 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 1, CAST(22100000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241024 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 4, CAST(91600000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241025 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 8, CAST(156300000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241026 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 10, CAST(211300000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241027 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 2, CAST(46400000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241028 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 7, CAST(148100000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241029 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 9, CAST(196400000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241030 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241031 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241032 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241033 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241034 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241035 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241036 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241037 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241038 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241039 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH002    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241040 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241041 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241042 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241043 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241044 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241045 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241046 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241047 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241048 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241049 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'DB241050 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH007    ', NULL, NULL)
INSERT [dbo].[DON_BAN] ([Ma_don_ban], [Ngay_tao_don], [Gio_tao_don], [SL_dien_thoai], [Tri_gia], [So_tien_tra], [Trang_thai], [Ma_khach_hang], [Ma_nhan_vien], [Ma_khuyen_mai]) VALUES (N'TEst     ', CAST(N'2024-10-23' AS Date), CAST(N'13:54:03' AS Time), 0, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Chưa hoàn thành', N'KH001    ', NULL, NULL)
GO
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241001 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(296700000.00 AS Numeric(18, 2)), N'NCC003   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241002 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(302800000.00 AS Numeric(18, 2)), N'NCC002   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241003 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(314400000.00 AS Numeric(18, 2)), N'NCC001   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241004 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(291400000.00 AS Numeric(18, 2)), N'NCC004   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241005 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(300100000.00 AS Numeric(18, 2)), N'NCC003   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241006 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(291800000.00 AS Numeric(18, 2)), N'NCC002   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241007 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(319400000.00 AS Numeric(18, 2)), N'NCC001   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241008 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(298900000.00 AS Numeric(18, 2)), N'NCC004   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241009 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(329500000.00 AS Numeric(18, 2)), N'NCC003   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241010 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(293500000.00 AS Numeric(18, 2)), N'NCC002   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241011 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(309100000.00 AS Numeric(18, 2)), N'NCC001   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241012 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(303600000.00 AS Numeric(18, 2)), N'NCC004   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241013 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(296000000.00 AS Numeric(18, 2)), N'NCC003   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241014 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 20, CAST(305000000.00 AS Numeric(18, 2)), N'NCC002   ', NULL)
INSERT [dbo].[DON_NHAP] ([Ma_don_nhap], [Ngay_nhap], [Gio_nhap], [SL_dien_thoai], [Tri_gia], [Ma_NCC], [Ma_nhan_vien]) VALUES (N'HH241015 ', CAST(N'2024-10-22' AS Date), CAST(N'13:54:02' AS Time), 19, CAST(260400000.00 AS Numeric(18, 2)), N'NCC001   ', NULL)
GO
INSERT [dbo].[DONG_MAY] ([Ma_dong_may], [Ten_dong_may], [Dung_luong_pin], [Kich_thuoc], [Mo_ta]) VALUES (N'DM001    ', N'iPhone 14', N'5000mAh', N'6.1 inch', N'')
INSERT [dbo].[DONG_MAY] ([Ma_dong_may], [Ten_dong_may], [Dung_luong_pin], [Kich_thuoc], [Mo_ta]) VALUES (N'DM002    ', N'Samsung Galaxy S21', N'4500mAh', N'6.2 inch', N'')
INSERT [dbo].[DONG_MAY] ([Ma_dong_may], [Ten_dong_may], [Dung_luong_pin], [Kich_thuoc], [Mo_ta]) VALUES (N'DM003    ', N'Oppo Find X3', N'4800mAh', N'6.7 inch', N'')
INSERT [dbo].[DONG_MAY] ([Ma_dong_may], [Ten_dong_may], [Dung_luong_pin], [Kich_thuoc], [Mo_ta]) VALUES (N'DM004    ', N'Xiaomi Mi 11', N'4600mAh', N'6.8 inch', N'')
GO
INSERT [dbo].[KHACH_HANG] ([Ma_khach_hang], [SDT], [Ten_khach_hang], [Dia_chi], [Gmail]) VALUES (N'KH001    ', N'xxxx-xxx-xxx', N'Khách lẻ', N'Mua tại quầy', N' ')
INSERT [dbo].[KHACH_HANG] ([Ma_khach_hang], [SDT], [Ten_khach_hang], [Dia_chi], [Gmail]) VALUES (N'KH002    ', N'0915-xxx-345', N'Nguyễn Nguyễn Nguyễn', N'01 Võ Văn Ngân', N'nnn@gmail.com')
INSERT [dbo].[KHACH_HANG] ([Ma_khach_hang], [SDT], [Ten_khach_hang], [Dia_chi], [Gmail]) VALUES (N'KH003    ', N'0986-xxx-923', N'Trần Chỉnh Chu', N'SPKT', N'tcc@gmail.com')
INSERT [dbo].[KHACH_HANG] ([Ma_khach_hang], [SDT], [Ten_khach_hang], [Dia_chi], [Gmail]) VALUES (N'KH004    ', N'0934-xxx-349', N'Bùi Bội Bội', N'Phim cung đấu', N'bbb@gmail.com')
INSERT [dbo].[KHACH_HANG] ([Ma_khach_hang], [SDT], [Ten_khach_hang], [Dia_chi], [Gmail]) VALUES (N'KH005    ', N'0888-xxx-233', N'Harry Maguire', N'MU champion', N'mu@gmail.com')
INSERT [dbo].[KHACH_HANG] ([Ma_khach_hang], [SDT], [Ten_khach_hang], [Dia_chi], [Gmail]) VALUES (N'KH006    ', N'0234-xxx-388', N'Ngô Hạo', N'Đấu phá thương khung', N'dptk@gmail.com')
INSERT [dbo].[KHACH_HANG] ([Ma_khach_hang], [SDT], [Ten_khach_hang], [Dia_chi], [Gmail]) VALUES (N'KH007    ', N'0932-xxx-883', N'Vi Tiểu Bảo', N'Lộc Đỉnh Ký', N'ldk@gmail.com')
GO
INSERT [dbo].[KHUYEN_MAI] ([Ma_khuyen_mai], [Ten_chuong_trinh], [Chiet_khau], [SL_ap_dung], [Ngay_ap_dung], [Ngay_ket_thuc]) VALUES (N'KM001    ', N'Mừng Tết 2025', CAST(60.00 AS Numeric(4, 2)), 999, CAST(N'2025-01-29' AS Date), CAST(N'2025-02-12' AS Date))
INSERT [dbo].[KHUYEN_MAI] ([Ma_khuyen_mai], [Ten_chuong_trinh], [Chiet_khau], [SL_ap_dung], [Ngay_ap_dung], [Ngay_ket_thuc]) VALUES (N'KM002    ', N'Quà tháng 10', CAST(10.00 AS Numeric(4, 2)), 100, CAST(N'2024-10-01' AS Date), CAST(N'2024-10-31' AS Date))
INSERT [dbo].[KHUYEN_MAI] ([Ma_khuyen_mai], [Ten_chuong_trinh], [Chiet_khau], [SL_ap_dung], [Ngay_ap_dung], [Ngay_ket_thuc]) VALUES (N'KM003    ', N'Sale sập sàn', CAST(5.00 AS Numeric(4, 2)), 200, CAST(N'2024-01-29' AS Date), CAST(N'2024-12-12' AS Date))
INSERT [dbo].[KHUYEN_MAI] ([Ma_khuyen_mai], [Ten_chuong_trinh], [Chiet_khau], [SL_ap_dung], [Ngay_ap_dung], [Ngay_ket_thuc]) VALUES (N'KM004    ', N'Ưu đãi cuối năm', CAST(15.00 AS Numeric(4, 2)), 0, CAST(N'2024-06-01' AS Date), CAST(N'2024-12-31' AS Date))
INSERT [dbo].[KHUYEN_MAI] ([Ma_khuyen_mai], [Ten_chuong_trinh], [Chiet_khau], [SL_ap_dung], [Ngay_ap_dung], [Ngay_ket_thuc]) VALUES (N'KM005    ', N'Thời kì đổi mới', CAST(20.00 AS Numeric(4, 2)), 150, CAST(N'2022-01-29' AS Date), CAST(N'2022-02-12' AS Date))
INSERT [dbo].[KHUYEN_MAI] ([Ma_khuyen_mai], [Ten_chuong_trinh], [Chiet_khau], [SL_ap_dung], [Ngay_ap_dung], [Ngay_ket_thuc]) VALUES (N'KM006    ', N'Net ZERO', CAST(99.00 AS Numeric(4, 2)), 999, CAST(N'2050-01-29' AS Date), CAST(N'2050-02-12' AS Date))
GO
INSERT [dbo].[NHA_CUNG_CAP] ([Ma_NCC], [Ten_NCC], [Dia_chi], [SDT]) VALUES (N'NCC001   ', N'Elrond', N'000 Rivendell', N'0910xxx123')
INSERT [dbo].[NHA_CUNG_CAP] ([Ma_NCC], [Ten_NCC], [Dia_chi], [SDT]) VALUES (N'NCC002   ', N'Thranduil', N'238 Mirkwood ', N'0910xxx222')
INSERT [dbo].[NHA_CUNG_CAP] ([Ma_NCC], [Ten_NCC], [Dia_chi], [SDT]) VALUES (N'NCC003   ', N'O ho ho', N'999 Trần Vũ Khanh', N'0910xxx349')
INSERT [dbo].[NHA_CUNG_CAP] ([Ma_NCC], [Ten_NCC], [Dia_chi], [SDT]) VALUES (N'NCC004   ', N'Celebrimbor ', N'221B Eregion', N'0910xxx999')
GO
INSERT [dbo].[NHAN_VIEN] ([Ma_nhan_vien], [Mat_khau], [Ten_nhan_vien], [Chuc_vu], [Gmail], [SDT]) VALUES (N'NV001S635', N'matkhau', N'Trần Vũ Khanh', N'Quản lý', N'TrVuKhah27@gmail.com', N'091xxxx635')
INSERT [dbo].[NHAN_VIEN] ([Ma_nhan_vien], [Mat_khau], [Ten_nhan_vien], [Chuc_vu], [Gmail], [SDT]) VALUES (N'NV002S321', N'matkhau', N'Nguyễn Thị Thúy Lan', N'Nhân viên', N'ThuyLannt@gmail.com', N'0987654321')
INSERT [dbo].[NHAN_VIEN] ([Ma_nhan_vien], [Mat_khau], [Ten_nhan_vien], [Chuc_vu], [Gmail], [SDT]) VALUES (N'NV003S923', N'matkhau', N'Lê Văn Tú', N'Nhân viên', N'Tulv@gmail.com', N'0123456923')
INSERT [dbo].[NHAN_VIEN] ([Ma_nhan_vien], [Mat_khau], [Ten_nhan_vien], [Chuc_vu], [Gmail], [SDT]) VALUES (N'NV004S053', N'matkhau', N'Vũ Văn Đức', N'Nhân viên', N'ducvv@gmail.com', N'0987654053')
INSERT [dbo].[NHAN_VIEN] ([Ma_nhan_vien], [Mat_khau], [Ten_nhan_vien], [Chuc_vu], [Gmail], [SDT]) VALUES (N'NV005S635', N'matkhau', N'Lê Anh Tú', N'Nhân viên', N'tula@gmail.com', N'0123456782')
INSERT [dbo].[NHAN_VIEN] ([Ma_nhan_vien], [Mat_khau], [Ten_nhan_vien], [Chuc_vu], [Gmail], [SDT]) VALUES (N'NV006S635', N'matkhau', N'Thanh Ngọc', N'Nhân viên', N'NgocThanh@gmail.com', N'0987654323')
INSERT [dbo].[NHAN_VIEN] ([Ma_nhan_vien], [Mat_khau], [Ten_nhan_vien], [Chuc_vu], [Gmail], [SDT]) VALUES (N'NV007S635', N'matkhau', N'Vũ Trọng Phụng', N'Nhân viên', N'SoDo@gmail.com', N'0123456783')
GO
INSERT [dbo].[THONG_KE_NGAY] ([Ngay_thong_ke], [So_luong_ban], [Tong_thu]) VALUES (CAST(N'2024-10-22' AS Date), 50, CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[THONG_KE_NGAY] ([Ngay_thong_ke], [So_luong_ban], [Tong_thu]) VALUES (CAST(N'2024-10-23' AS Date), 0, NULL)
GO
ALTER TABLE [dbo].[DIEN_THOAI] ADD  DEFAULT (N'Sẵn bán') FOR [Trang_thai]
GO
ALTER TABLE [dbo].[DIEN_THOAI] ADD  DEFAULT ((0)) FOR [Gia_nhap]
GO
ALTER TABLE [dbo].[DIEN_THOAI] ADD  DEFAULT ((0)) FOR [Gia_ban]
GO
ALTER TABLE [dbo].[DIEN_THOAI] ADD  DEFAULT ((5)) FOR [Thue]
GO
ALTER TABLE [dbo].[DON_BAN] ADD  DEFAULT (getdate()) FOR [Ngay_tao_don]
GO
ALTER TABLE [dbo].[DON_BAN] ADD  DEFAULT (getdate()) FOR [Gio_tao_don]
GO
ALTER TABLE [dbo].[DON_BAN] ADD  DEFAULT ((0)) FOR [SL_dien_thoai]
GO
ALTER TABLE [dbo].[DON_BAN] ADD  DEFAULT ((0)) FOR [Tri_gia]
GO
ALTER TABLE [dbo].[DON_BAN] ADD  DEFAULT ((0)) FOR [So_tien_tra]
GO
ALTER TABLE [dbo].[DON_BAN] ADD  DEFAULT (N'Chưa hoàn thành') FOR [Trang_thai]
GO
ALTER TABLE [dbo].[DON_NHAP] ADD  DEFAULT (getdate()) FOR [Ngay_nhap]
GO
ALTER TABLE [dbo].[DON_NHAP] ADD  DEFAULT (getdate()) FOR [Gio_nhap]
GO
ALTER TABLE [dbo].[DON_NHAP] ADD  DEFAULT ((0)) FOR [SL_dien_thoai]
GO
ALTER TABLE [dbo].[DON_NHAP] ADD  DEFAULT ((0)) FOR [Tri_gia]
GO
ALTER TABLE [dbo].[GHI_NO] ADD  DEFAULT (getdate()) FOR [Ngay_ghi_no]
GO
ALTER TABLE [dbo].[KHACH_HANG] ADD  DEFAULT (N'Khách lẻ') FOR [Ten_khach_hang]
GO
ALTER TABLE [dbo].[KHUYEN_MAI] ADD  DEFAULT ((5)) FOR [Chiet_khau]
GO
ALTER TABLE [dbo].[KHUYEN_MAI] ADD  DEFAULT ((999)) FOR [SL_ap_dung]
GO
ALTER TABLE [dbo].[KHUYEN_MAI] ADD  DEFAULT (getdate()) FOR [Ngay_ap_dung]
GO
ALTER TABLE [dbo].[NHAN_VIEN] ADD  DEFAULT (N'Nhân viên') FOR [Chuc_vu]
GO
ALTER TABLE [dbo].[CT_DON_BAN]  WITH CHECK ADD FOREIGN KEY([Ma_don_ban])
REFERENCES [dbo].[DON_BAN] ([Ma_don_ban])
GO
ALTER TABLE [dbo].[CT_DON_BAN]  WITH CHECK ADD FOREIGN KEY([Ma_Imei])
REFERENCES [dbo].[DIEN_THOAI] ([Ma_Imei])
GO
ALTER TABLE [dbo].[CT_DON_NHAP]  WITH CHECK ADD FOREIGN KEY([Ma_don_nhap])
REFERENCES [dbo].[DON_NHAP] ([Ma_don_nhap])
GO
ALTER TABLE [dbo].[CT_DON_NHAP]  WITH CHECK ADD FOREIGN KEY([Ma_Imei])
REFERENCES [dbo].[DIEN_THOAI] ([Ma_Imei])
GO
ALTER TABLE [dbo].[DIEN_THOAI]  WITH CHECK ADD FOREIGN KEY([Ma_dong_may])
REFERENCES [dbo].[DONG_MAY] ([Ma_dong_may])
GO
ALTER TABLE [dbo].[DON_BAN]  WITH CHECK ADD FOREIGN KEY([Ma_khach_hang])
REFERENCES [dbo].[KHACH_HANG] ([Ma_khach_hang])
GO
ALTER TABLE [dbo].[DON_BAN]  WITH CHECK ADD FOREIGN KEY([Ma_khuyen_mai])
REFERENCES [dbo].[KHUYEN_MAI] ([Ma_khuyen_mai])
GO
ALTER TABLE [dbo].[DON_BAN]  WITH CHECK ADD FOREIGN KEY([Ma_nhan_vien])
REFERENCES [dbo].[NHAN_VIEN] ([Ma_nhan_vien])
GO
ALTER TABLE [dbo].[DON_BAN]  WITH CHECK ADD FOREIGN KEY([Ngay_tao_don])
REFERENCES [dbo].[THONG_KE_NGAY] ([Ngay_thong_ke])
GO
ALTER TABLE [dbo].[DON_NHAP]  WITH CHECK ADD FOREIGN KEY([Ma_NCC])
REFERENCES [dbo].[NHA_CUNG_CAP] ([Ma_NCC])
GO
ALTER TABLE [dbo].[DON_NHAP]  WITH CHECK ADD FOREIGN KEY([Ma_nhan_vien])
REFERENCES [dbo].[NHAN_VIEN] ([Ma_nhan_vien])
GO
ALTER TABLE [dbo].[GHI_NO]  WITH CHECK ADD FOREIGN KEY([Ma_khach_hang])
REFERENCES [dbo].[KHACH_HANG] ([Ma_khach_hang])
GO
USE [master]
GO
ALTER DATABASE [ImeiShop] SET  READ_WRITE 
GO

CREATE DATABASE BanGiayChinhSuaTest1
go
use BanGiayChinhSuaTest1
go


CREATE TABLE [dbo].[Accounts](
	[id] [int] IDENTITY(1,1) primary key not null,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[roles] [varchar](10) NOT NULL,
	[hoVaTen] [nvarchar](50) ,
	[diaChi] [nvarchar](50) ,
	[email] [varchar](200) ,
	[sdt] [nvarchar](50) ,
	[ngayDangKi] [date] ,
	[trangThai] [bit] ,
	[anhDaiDien] [nvarchar](max),
	[gioiTinh] [bit],
	[ngaySinh] [date],

)
CREATE TABLE [dbo].[DanhMuc](
	[id] [int] IDENTITY(1,1) primary key not null ,
	[tenDanhMuc] [nvarchar](100) ,
)
CREATE TABLE [dbo].[ThuongHieu](
	[id] [int] IDENTITY(1,1) primary key not null ,
	[maThuongHieu] [varchar](50) NOT NULL,
	[tenThuongHieu] [nvarchar](50) ,
	[logo] [nvarchar](max) ,
	[trangWeb] [nvarchar](200) ,
	[diaChi] [nvarchar](200) ,
	[email] [nvarchar](200) ,
	[sdt] [nvarchar](50) ,
	[ngayThanhLap] [date] ,
	[mota] [nvarchar](max)
)
CREATE TABLE [dbo].[GiamGia](
	[id] [int] IDENTITY(1,1) primary key not null ,
	[giamGiaPhamTram] [decimal](5, 2) ,
	[giamGiaSoTien] [decimal](10, 2) ,
	[dieuKienApDung] [decimal](10,2) ,
	[ngayBatDau] [date] ,
	[ngayKetThuc] [date] 
)
CREATE TABLE [dbo].[SanPham](
	[id] [int] IDENTITY(1,1) primary key not null,
	[tenSanPham] [nvarchar](100) ,
	[moTa] [nvarchar](max),
	[anhSanPham] [nvarchar](max),
	mausac nvarchar(50),
	[idThuongHieu] [int]  foreign key references ThuongHieu(id),
	[gia] [decimal](18, 2),
	[trangThai] [bit] ,
	[idDanhMuc] [int]  foreign key references DanhMuc(id)
)

CREATE TABLE SanPhamChiTiet (
    id INT PRIMARY KEY IDENTITY(1,1),
	[maSanPham] [varchar](50) NOT NULL,
    idSanPham INT NOT NULL FOREIGN KEY REFERENCES SanPham(id) ON DELETE CASCADE,
    kichCo int NOT NULL,
    soLuong INT NOT NULL,
    donGia DECIMAL(18, 2) NOT NULL,
	trangThai bit NOT NULL
);

CREATE TABLE [dbo].[DonHang](
	[id] [int] IDENTITY(1,1) primary key not null ,
	[idAccountKhachHang] [int] foreign key references Accounts(id),
	[idAccountNhanVien] [int] foreign key references Accounts(id),
	[ngayTaoDon] [datetime] ,
	[tongTien] [decimal](10, 2),
	[trangThai] [int],
	[sdtKhachHang] [varchar](15) ,
	[tenKhachhang] [nvarchar](100),
	[diaChi] [nvarchar](max),
	[idGiamGia] [int] foreign key references GiamGia(id),
	[soTienSauKhiGiam] [decimal](10,2),
	[khachTra] [decimal](10,2),
	[hinhThucThanhToan] [bit],
)

CREATE TABLE [dbo].[DonHangChiTiet](
	[id] [int] IDENTITY(1,1) primary key not null,
	[idDonHang] [int]  foreign key references Donhang(id) ON DELETE CASCADE,
	[idSanPham] [int]  foreign key references SanPhamChiTiet(id),
	[soLuong] [int] ,
	[donGia] [decimal](10, 2),
	[thanhTien] [decimal](10, 2) 
)

CREATE TABLE [dbo].[HoaDon](
	[id] [int] primary key not null,
	[ngayLapHoaDon] [date],
	[idAccountKhachHang] [int],
	[idAccountNhanVien] [int],
	[tongTien] [decimal](10, 2),
	[trangThai] [int],
	[sdtKhachHang] [varchar](15),
	[tenKhachhang] [nvarchar](100),
	[diaChi] [nvarchar](max) ,
	[giamGiaID] [int] foreign key references GiamGia(id),
	[soTienSauKhiGiam] [decimal](10,2),
	[khachTra] [decimal](10,2),
	[hinhThucThanhToan] [bit]
)
CREATE TABLE [dbo].[HoaDonChiTiet](
	[id] [int] identity(1,1) primary key not null ,
	[idHoaDon] [int] foreign key references HoaDon(id) ON DELETE CASCADE,
	[idSanPham] [int],
	[soLuong] [int] ,
	[donGia] [decimal](10, 2) ,
	[thanhTien] [decimal](10, 2),

)

INSERT INTO [dbo].[DanhMuc] (tenDanhMuc) VALUES 
(N'Sneaker thời trang'),
(N'Sneaker thể thao'),
(N'Sneaker cổ thấp'),
(N'Sneaker cổ cao'),
(N'Sneaker chunky'),
(N'Sneaker slip-on'),
(N'Sneaker retro'),
(N'Sneaker custom'),
(N'Sneaker dad shoes'),
(N'Sneaker minimalist');


INSERT INTO ThuongHieu (maThuongHieu, tenThuongHieu, logo, trangWeb, diaChi, email, sdt, ngayThanhLap, moTa) 
VALUES ('TH001', 'Nike', 'logo_nike.png', 'www.nike.com', 'USA', 'contact@nike.com', '1234567890', '1964-01-01', N'Mô tả về Nike');

INSERT INTO ThuongHieu (maThuongHieu, tenThuongHieu, logo, trangWeb, diaChi, email, sdt, ngayThanhLap, moTa) 
VALUES ('TH002', 'Adidas', 'logo_adidas.png', 'www.adidas.com', 'Germany', 'contact@adidas.com', '0987654321', '1949-08-18', N'Mô tả về Adidas');

INSERT INTO [dbo].[SanPham] (tenSanPham, moTa, anhSanPham, mausac, idThuongHieu, gia, trangThai, idDanhMuc)
VALUES
(N'Giày SH1 Trắng', N'giày chất lượng cao', N'1001.jpg',N'Trắng', 1, 199000.00, 1, 1),
(N'Giày SH2 Đen', N'Giày thể thao phù hợp cho vận động', '1002.jpg',N'Đen', 1, 799000.00, 1, 2),
(N'Giày SH3 Trắng', N'giày chất lượng cao', N'1003.jpg',N'Trắng', 2, 200000.00, 1, 3),
(N'Giày SH1 Đỏ', N'giày chất lượng cao', N'1001.jpg',N'Đỏ', 1, 149000.00, 1, 1),
(N'Giày SH2 Trắng', N'giày chất lượng cao', N'1002.jpg',N'Trắng', 1, 179000.00, 1, 2),
(N'Giày SH4 Trắng', N'giày chất lượng cao', N'1002.jpg',N'Trắng', 1, 179000.00, 1, 2),
(N'Giày SH5 Trắng', N'giày chất lượng cao', N'1002.jpg',N'Trắng', 1, 179000.00, 1, 2);

INSERT INTO SanPhamChiTiet(maSanPham, idSanPham, kichCo,soLuong, donGia,trangThai) VALUES
('100001-1', 1, 40, 20, 199000.00,1),
('100001-2', 1, 45, 20, 210000.00,1),
('100001-3', 1, 50, 20, 22000.00,1),
('100002-1', 2, 40, 15, 3000000.00,1),
('100002-2', 3, 50, 10, 320000.00,1),
('100003-1', 4, 40, 5, 799000.00,1),
('100004-1', 5, 40, 3, 820000.00,1),
('100005-2', 5, 45, 7, 840000.00,1);

INSERT INTO [dbo].[GiamGia] (giamGiaPhamTram, giamGiaSoTien, dieuKienApDung, ngayBatDau, ngayKetThuc)
VALUES 
(10.00, 300000.00, 500000.00, '2024-09-01', '2024-12-30'),  
(15.00, 500000.00, 600000.00, '2024-09-05', '2024-11-25'); 

delete from Accounts
SELECT * FROM [dbo].[Accounts];
SELECT * FROM [dbo].[DanhMuc];
SELECT * FROM [dbo].[ThuongHieu];
SELECT * FROM [dbo].[SanPham];
SELECT * FROM [dbo].[GiamGia];
SELECT * FROM [dbo].[DonHang];
SELECT * FROM [dbo].[DonHangChiTiet];
SELECT * FROM [dbo].[HoaDon];
SELECT * FROM [dbo].[HoaDonChiTiet];
SELECT * FROM SanPhamChiTiet


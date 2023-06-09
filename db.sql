USE [master]
GO
/****** Object:  Database [webquanaonu]    Script Date: 4/20/2023 9:45:26 PM ******/
CREATE DATABASE [webquanaonu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'webquanaonu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\webquanaonu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'webquanaonu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\webquanaonu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [webquanaonu] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webquanaonu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webquanaonu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webquanaonu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webquanaonu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webquanaonu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webquanaonu] SET ARITHABORT OFF 
GO
ALTER DATABASE [webquanaonu] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [webquanaonu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webquanaonu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webquanaonu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webquanaonu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webquanaonu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webquanaonu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webquanaonu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webquanaonu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webquanaonu] SET  ENABLE_BROKER 
GO
ALTER DATABASE [webquanaonu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webquanaonu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webquanaonu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webquanaonu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webquanaonu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webquanaonu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webquanaonu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webquanaonu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [webquanaonu] SET  MULTI_USER 
GO
ALTER DATABASE [webquanaonu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webquanaonu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webquanaonu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webquanaonu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webquanaonu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webquanaonu] SET QUERY_STORE = OFF
GO
USE [webquanaonu]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DateImport] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Picture] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[EmailAddress] [char](100) NULL,
	[Phone] [varchar](15) NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[PurcharsePrice] [decimal](18, 0) NULL,
	[SellPrice] [decimal](18, 0) NOT NULL,
	[DateImport] [datetime] NULL,
	[Quantity] [int] NULL,
	[TypeID] [bigint] NULL,
	[BrandID] [bigint] NULL,
	[Picture] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[Link] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Orderdate] [datetime] NULL,
	[Deliverystatus] [bit] NULL,
	[Deliverydate] [datetime] NULL,
	[Status] [bit] NULL,
	[Totalprice] [decimal](18, 0) NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ItemId] [bigint] NULL,
	[OrderID] [bigint] NULL,
	[Totalprice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 4/20/2023 9:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Payprices] [decimal](18, 0) NULL,
	[OrderID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Passwords], [Name], [Picture]) VALUES (N'Admin', N'1', N'Nguyen Van Admin', N'hinh.png')
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (1, N'cede05fead3b31431331ef7082b4b3ba.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [DateImport], [Title], [ShortTitle], [Picture], [Describe]) VALUES (1, CAST(N'2022-07-09T00:00:00.000' AS DateTime), N'Yeezy Boost 350 V2 Yeezreel', N'Chính thức mở bán ngày 14/12 với mức giá là 220 USD. Nếu muốn mua đôi giày này, bạn phải đến trực tiếp cửa hàng được định sẵn tại hai thành phố Hồ Chí Minh và Hà Nội để ghi phiếu may mắn, và chờ đợi kết quả bốc thăm từ hãng. Đây là hình thức khác hẳn với kiểu điểm danh ghi số tạo ra những hàng chờ dài tại nhiều điểm bán như trước đây.', N'yeezy-boost-350-v2-yeezreel-chinh-thuc-len-ke-ngay-1412-medium.jpg', N'Yeezy Boost 350 V2 Yeezreel chính thức lên kệ ngày 14/12')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (6, N'Trong nước', 1)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (7, N'Ngoài nước', 1)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (7, N'levanb', N'levanb', N'Lê Văn B', N'Hà Nội', N'levanb@gmail.com                                                                                    ', N'0394073752', NULL)
INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (8, N'buiquanghuy', N'quanghuy123', N'Bùi Quang HUy', N'Hà Nội', N'quanghuy@gmail.com                                                                                  ', N'0394512417', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (1, N'Áo Sọc ca rô', CAST(200000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), CAST(N'2023-03-13T00:00:00.000' AS DateTime), 40, 3, 6, N'16344643215944375e933c3397383f9ea8ffc25dce.jpg', 1, N'Áo khoác nữ Dây kéo Túi Nút phía trước Sọc ca rô Giải trí', N'<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">M&agrave;u sắc:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">trắng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Phong c&aacute;ch:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Giải tr&iacute;</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Kiểu mẫu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">L&aacute; thư, Khối M&agrave;u</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Viền:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Chải</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chi tiết:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">G&acirc;n đan</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chiều d&agrave;i tay:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Ngắn tay</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Loại tay &aacute;o:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Tay Raglan</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chiều d&agrave;i:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">M&ugrave;a vụ</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Loại Ph&ugrave; hợp:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Thon gọn</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Sợi vải:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Căng trung b&igrave;nh</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Vật liệu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Vải</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Th&agrave;nh phần:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">94% Polyester, 6% B&ocirc;ng vải thun</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Hướng dẫn Bảo quản:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Machine wash or professional dry clean</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Mỏng:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (2, N'Áo Gân đan', CAST(200000 AS Decimal(18, 0)), CAST(299000 AS Decimal(18, 0)), CAST(N'2023-03-13T00:00:00.000' AS DateTime), 40, 2, 7, N'165207784394ad28d2f821d939d613bad1a5909230.jpg', 1, N'DAZY Áo thun nữ Gân đan Khối Màu Lá thư Giải trí', N'<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">M&agrave;u sắc:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">trắng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Phong c&aacute;ch:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Giải tr&iacute;</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Kiểu mẫu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">L&aacute; thư, Khối M&agrave;u</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Viền:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Chải</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chi tiết:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">G&acirc;n đan</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chiều d&agrave;i tay:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Ngắn tay</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Loại tay &aacute;o:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Tay Raglan</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chiều d&agrave;i:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">M&ugrave;a vụ</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Loại Ph&ugrave; hợp:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Thon gọn</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Sợi vải:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Căng trung b&igrave;nh</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Vật liệu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Vải</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Th&agrave;nh phần:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">94% Polyester, 6% B&ocirc;ng vải thun</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Hướng dẫn Bảo quản:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Machine wash or professional dry clean</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; font-size: 12px;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Mỏng:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (3, N'Áo thun nữ Sọc', CAST(400000 AS Decimal(18, 0)), CAST(550000 AS Decimal(18, 0)), CAST(N'2023-03-13T00:00:00.000' AS DateTime), 40, 2, 7, N'16715020045af808cb5ec63e514e67f340bc4c4965.jpg', 1, N' Áo len nữ Sọc', N'<p>&nbsp;&Aacute;o len nữ Sọc</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (4, N'Áo Chấm bi', CAST(200000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), CAST(N'2023-03-13T00:00:00.000' AS DateTime), 37, 1, 6, N'1677048354985ba13db910c46c5077cf93d6043b79.jpg', 1, N'Áo sơ mi nữ Chấm bi Giải trí', N'<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">M&agrave;u sắc:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">M&agrave;u Hồng Tươi</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Phong c&aacute;ch:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Giải tr&iacute;</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Kiểu mẫu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Chấm bi</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Kiểu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Ngọn</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Viền:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Chải</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chiều d&agrave;i tay:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Ngắn tay</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Loại tay &aacute;o:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">tay c&aacute;nh</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chiều d&agrave;i:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Thường xuy&ecirc;n</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Loại Ph&ugrave; hợp:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Ph&ugrave; hợp thường</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Sợi vải:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng căng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Vật liệu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Vải dệt thoi</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Th&agrave;nh phần:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">95% Polyester, 5% B&ocirc;ng vải thun</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Hướng dẫn Bảo quản:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Machine wash or professional dry clean</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Mỏng:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (5, N'Túi đính ngọc trai', CAST(200000 AS Decimal(18, 0)), CAST(249000 AS Decimal(18, 0)), CAST(N'2023-03-13T00:00:00.000' AS DateTime), 37, 8, 7, N'1659922871a6ab955bfcc6246b6250125eff1ced95.jpg', 1, N'Túi đính ngọc trai và lá giả', N'<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 91.7188px;">M&agrave;u sắc:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Bạc</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 91.7188px;">Vật liệu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Sắt</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 91.7188px;">Phong c&aacute;ch:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Hấp dẫn</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 91.7188px;">Chi tiết:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Ngọc trai</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (6, N'Váy Dây kéo Hoa', CAST(400000 AS Decimal(18, 0)), CAST(550000 AS Decimal(18, 0)), CAST(N'2023-03-13T00:00:00.000' AS DateTime), 35, 6, 6, N'16768774427e907faf47710b266f8d8a4e48181eb9.jpg', 1, N'SHEIN VCAY Váy nữ Dây kéo Hoa Tất cả trên in Boho', N'<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">M&agrave;u sắc:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Xanh v&agrave; trắng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Phong c&aacute;ch:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Boho</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Kiểu mẫu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Hoa, Tất cả tr&ecirc;n in</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chi tiết:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">D&acirc;y k&eacute;o</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">V&ograve;ng eo:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">V&ograve;ng eo cao</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chiều d&agrave;i:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">D&agrave;i</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Loại Ph&ugrave; hợp:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Rộng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Kiểu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">B&ugrave;ng nổ</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Sợi vải:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng căng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Vật liệu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Vải dệt thoi</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Th&agrave;nh phần:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">100% Polyester</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Hướng dẫn Bảo quản:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Giặt m&aacute;y, kh&ocirc;ng giặt kh&ocirc;, giặt bằng chất tẩy rửa mềm</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Mỏng:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (7, N'Quần Nút Nghề thêu', CAST(200000 AS Decimal(18, 0)), CAST(415000 AS Decimal(18, 0)), CAST(N'2023-03-13T00:00:00.000' AS DateTime), 12, 7, 7, N'1653362575bca77b1f4200068d13725d1a6035aae1.jpg', 1, N'DAZY Quần jean nữ Nút Nghề thêu Túi Dây kéo Hoa', N'<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">M&agrave;u sắc:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Rửa nhẹ</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Kiểu mẫu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Hoa</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Kiểu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Ch&acirc;n thẳng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">loại đ&oacute;ng k&iacute;n:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">D&acirc;y k&eacute;o t&iacute;ch hợp</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chi tiết:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">N&uacute;t, Th&ecirc;u, T&uacute;i, D&acirc;y k&eacute;o</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">V&ograve;ng eo:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">V&ograve;ng eo cao</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chiều d&agrave;i:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">D&agrave;i</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Loại Ph&ugrave; hợp:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Rộng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Sợi vải:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng căng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Vật liệu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Denim/jean</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Th&agrave;nh phần:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">85% B&ocirc;ng, 15% Polyester</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Hướng dẫn Bảo quản:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Machine wash or professional dry clean</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Vải l&oacute;t:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng c&oacute; đường viền</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Mỏng:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (12, N'Quần Nút Túi Dây', CAST(200000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), CAST(N'2023-03-13T00:00:00.000' AS DateTime), 50, 5, 6, N'1671667642267d8a4420bc153c501b50000e92a062.jpg', 1, N'DAZY Quần đùi nữ Nút Túi Dây kéo màu trơn Giải trí', N'<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">M&agrave;u sắc:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">X&aacute;m</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Phong c&aacute;ch:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Giải tr&iacute;</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Kiểu mẫu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">m&agrave;u trơn</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Kiểu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Ch&acirc;n thẳng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">loại đ&oacute;ng k&iacute;n:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">D&acirc;y k&eacute;o t&iacute;ch hợp</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chi tiết:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">N&uacute;t, T&uacute;i, D&acirc;y k&eacute;o</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">V&ograve;ng eo:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Tự nhi&ecirc;n</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Chiều d&agrave;i:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Ngắn</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Loại Ph&ugrave; hợp:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Rộng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Sợi vải:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng căng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Vật liệu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Vải dệt thoi</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Th&agrave;nh phần:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">78% Polyester, 19% Sợi viscose, 3% B&ocirc;ng vải thun</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Hướng dẫn Bảo quản:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Machine wash or professional dry clean</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Vải l&oacute;t:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng c&oacute; đường viền</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 210px;">Mỏng:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (15, N'Thắt lưng khóa', CAST(60000 AS Decimal(18, 0)), CAST(95000 AS Decimal(18, 0)), CAST(N'2023-03-13T00:00:00.000' AS DateTime), 20, 9, 6, N'1667204857b01b6a302c92dfd5a83f2156d0a42fec.jpg', 1, N'Thắt lưng khóa kim loại 4 chiếc', N'<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 137.781px;">M&agrave;u sắc:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Nhiều m&agrave;u</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 137.781px;">Kiểu mẫu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">m&agrave;u trơn</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 137.781px;">Phong c&aacute;ch:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Giải tr&iacute;</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 137.781px;">Loại kh&oacute;a:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&oacute;a định h&igrave;nh</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 137.781px;">Chiều rộng thắt lưng:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Đai mỏng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 137.781px;">Kiểu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Bộ Thắt lưng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 137.781px;">Co giãn:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Kh&ocirc;ng căng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 137.781px;">Vật liệu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">chất liệu da PU</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (16, N'Túi vai', CAST(10000 AS Decimal(18, 0)), CAST(15000 AS Decimal(18, 0)), CAST(N'2023-03-13T00:00:00.000' AS DateTime), 21, 8, 6, N'16582899362239079d4fbfac3c4753877e86f0cd5a.jpg', 1, N'Túi vai', N'<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 125.047px;">M&agrave;u sắc:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Bạc</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 125.047px;">K&iacute;ch thước t&uacute;i:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Mini</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 125.047px;">Kiểu mẫu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">m&agrave;u trơn, Tất cả tr&ecirc;n in</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 125.047px;">Loại d&acirc;y đeo:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Chuỗi</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 125.047px;">Kiểu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">T&uacute;i Vu&ocirc;ng</div>
</div>
<div class="product-intro__description-table-item" style="box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; display: table-row; line-height: 20px; color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #ffffff;" tabindex="0" role="text">
<div class="key" style="box-sizing: border-box; margin: 0px; padding: 0px 25px 0px 0px; display: table-cell; vertical-align: bottom; width: 125.047px;">Vật liệu:</div>
<div class="val" style="box-sizing: border-box; margin: 0px; padding: 0px; display: table-cell; vertical-align: bottom;">Nhựa</div>
</div>')
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemType] ON 

INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (1, N'Áo sơ mi', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (2, N'Áo thun', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (3, N'Áo khoác', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (5, N'Quần sort', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (6, N'Váy dây', 4)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (7, N'Quần Jeans', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (8, N'Túi xách', 5)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (9, N'Thắt lưng', 5)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (11, N'Đầm suông', 4)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (12, N'Váy xòe', 4)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (13, N'Quần baggy', 3)
SET IDENTITY_INSERT [dbo].[ItemType] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (1, N'Xuất Xứ', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (2, N'Áo', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (3, N'Quần', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (4, N'Váy/ Đầm', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (5, N'Phụ kiện', NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__536C85E4659588B6]    Script Date: 4/20/2023 9:45:27 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item] ADD  DEFAULT (getdate()) FOR [DateImport]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [Orderdate]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[ItemType] ([ID])
GO
ALTER TABLE [dbo].[ItemType]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
USE [master]
GO
ALTER DATABASE [webquanaonu] SET  READ_WRITE 
GO

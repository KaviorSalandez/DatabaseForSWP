USE [master]
GO
/****** Object:  Database [SWP]    Script Date: 2/1/2023 11:38:15 AM ******/
CREATE DATABASE [SWP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP', FILENAME = N'D:\SQL2019\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP_log', FILENAME = N'D:\SQL2019\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SWP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SWP] SET  MULTI_USER 
GO
ALTER DATABASE [SWP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP] SET QUERY_STORE = OFF
GO
USE [SWP]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBacks]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBacks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[firstname] [nvarchar](30) NULL,
	[lastname] [nvarchar](30) NULL,
	[email] [nvarchar](250) NULL,
	[phone_number] [nvarchar](20) NULL,
	[note] [nvarchar](1000) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galeries]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galeries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[thumbnail] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [int] NULL,
	[num] [int] NULL,
	[total_money_in] [int] NULL,
	[total_money_out] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[firstname] [nvarchar](30) NULL,
	[lastname] [nvarchar](30) NULL,
	[email] [nvarchar](150) NULL,
	[phone_number] [nvarchar](20) NULL,
	[address] [nvarchar](200) NULL,
	[note] [nvarchar](1000) NULL,
	[order_date] [datetime] NULL,
	[status_id] [int] NULL,
	[total_money] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[title] [nvarchar](250) NULL,
	[gender_id] [int] NULL,
	[price_in] [int] NULL,
	[price_out] [int] NULL,
	[discount_id] [int] NULL,
	[thumbnail] [nvarchar](500) NULL,
	[description] [nvarchar](1500) NULL,
	[size_id] [int] NULL,
	[quantity] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[value] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/1/2023 11:38:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loginType] [int] NULL,
	[role_id] [int] NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](32) NULL,
	[email] [nvarchar](150) NULL,
	[phone_number] [nvarchar](15) NULL,
	[address] [nvarchar](200) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'The mood Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'Summer Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'Morra x JVevermind 10ml')
INSERT [dbo].[Categories] ([id], [name]) VALUES (4, N'1st Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (5, N'2nd Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (6, N'3rd Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (7, N'DECEMBER COMBACK')
INSERT [dbo].[Categories] ([id], [name]) VALUES (8, N'Nến thơm Elements Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (9, N'Nến thơm 2nd Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (10, N'Sữa tắm hương nước hoa Lumin Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (11, N'Dưỡng thể')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([id], [value]) VALUES (1, 0)
SET IDENTITY_INSERT [dbo].[Discounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([id], [name]) VALUES (1, N'Nam')
INSERT [dbo].[Genders] ([id], [name]) VALUES (2, N'Nữ')
INSERT [dbo].[Genders] ([id], [name]) VALUES (3, N'Unisex')
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (1, 1, N'Nước hoa Morra 2AM', 1, 200000, 390000, 1, NULL, N'Tầng hương đầu là những note gia vị khá mạnh.

Mùi hương nổi bật lên với note Vanilla và hương gỗ ấm áp.

Một màu hổ phách đẹp, đầy bụi bặm, ấm áp và gợi cảm.

Agarwood(Oud) mang hơi hướm của khói và một loại thuốc gây nghiện.

Mùi hương này sẽ quyện vào da bạn sau vài lần mặc, nó sẽ giống như chính mùi hương da thịt của bạn.

Những note hương thảo mộc Davana và gia vị (thuốc lá (tobaco), quế (cinnamon, nhục đậu khấu (nutmeg) là những note hương hỗ trợ cho Oud rất tốt, khiến cho mùi hương phong phú và khó đoán hơn.

Rất phù hợp cho các buổi tiệc tối, bar, hẹn hò,...', 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (2, 1, N'Nước hoa Morra 2AM', 1, 600000, 1790000, 1, NULL, N'Tầng hương đầu là những note gia vị khá mạnh.

Mùi hương nổi bật lên với note Vanilla và hương gỗ ấm áp.

Một màu hổ phách đẹp, đầy bụi bặm, ấm áp và gợi cảm.

Agarwood(Oud) mang hơi hướm của khói và một loại thuốc gây nghiện.

Mùi hương này sẽ quyện vào da bạn sau vài lần mặc, nó sẽ giống như chính mùi hương da thịt của bạn.

Những note hương thảo mộc Davana và gia vị (thuốc lá (tobaco), quế (cinnamon, nhục đậu khấu (nutmeg) là những note hương hỗ trợ cho Oud rất tốt, khiến cho mùi hương phong phú và khó đoán hơn.

Rất phù hợp cho các buổi tiệc tối, bar, hẹn hò,...', 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (3, 1, N'Nước hoa Morra 2AM', 1, 1500000, 2690000, 1, NULL, N'Tầng hương đầu là những note gia vị khá mạnh.

Mùi hương nổi bật lên với note Vanilla và hương gỗ ấm áp.

Một màu hổ phách đẹp, đầy bụi bặm, ấm áp và gợi cảm.

Agarwood(Oud) mang hơi hướm của khói và một loại thuốc gây nghiện.

Mùi hương này sẽ quyện vào da bạn sau vài lần mặc, nó sẽ giống như chính mùi hương da thịt của bạn.

Những note hương thảo mộc Davana và gia vị (thuốc lá (tobaco), quế (cinnamon, nhục đậu khấu (nutmeg) là những note hương hỗ trợ cho Oud rất tốt, khiến cho mùi hương phong phú và khó đoán hơn.

Rất phù hợp cho các buổi tiệc tối, bar, hẹn hò,...', 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (4, 1, N'Nước hoa Morra Breakfast In The Bed', 3, 200000, 390000, 1, NULL, N'Một bó hoa nhiều sắc màu hương thơm quyện trong hương thơm và một chút hương trái cây thanh mát.

Rất phù hợp cho quý cô duyên dáng, thanh lịch, sành điệu

Cũng phù hợp cho người phụ nữ trưởng thành nhưng muốn mặc một mùi hương trong sáng và ngây thơ (Lily of the valley & Mimosa là hai thành phần thể hiện cá tính này)

Mimosa là note hương thể hiện sắc thái ngọt nhẹ, hơi phấn và xanh.

Đây cũng là một mùi hương khơi gợi lại những ký ức thanh xuân mùa hè dưới ánh nắng lấp lánh.

Mùi hương phù hợp cho cả các buổi họp, công sở hay du lịch.', 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (5, 1, N'Nước hoa Morra Breakfast In The Bed', 3, 800000, 1790000, 1, NULL, N'Một bó hoa nhiều sắc màu hương thơm quyện trong hương thơm và một chút hương trái cây thanh mát.

Rất phù hợp cho quý cô duyên dáng, thanh lịch, sành điệu

Cũng phù hợp cho người phụ nữ trưởng thành nhưng muốn mặc một mùi hương trong sáng và ngây thơ (Lily of the valley & Mimosa là hai thành phần thể hiện cá tính này)

Mimosa là note hương thể hiện sắc thái ngọt nhẹ, hơi phấn và xanh.

Đây cũng là một mùi hương khơi gợi lại những ký ức thanh xuân mùa hè dưới ánh nắng lấp lánh.

Mùi hương phù hợp cho cả các buổi họp, công sở hay du lịch.', 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (6, 1, N'Nước hoa Morra Breakfast In The Bed', 3, 1600000, 2690000, 1, NULL, N'Một bó hoa nhiều sắc màu hương thơm quyện trong hương thơm và một chút hương trái cây thanh mát.

Rất phù hợp cho quý cô duyên dáng, thanh lịch, sành điệu

Cũng phù hợp cho người phụ nữ trưởng thành nhưng muốn mặc một mùi hương trong sáng và ngây thơ (Lily of the valley & Mimosa là hai thành phần thể hiện cá tính này)

Mimosa là note hương thể hiện sắc thái ngọt nhẹ, hơi phấn và xanh.

Đây cũng là một mùi hương khơi gợi lại những ký ức thanh xuân mùa hè dưới ánh nắng lấp lánh.

Mùi hương phù hợp cho cả các buổi họp, công sở hay du lịch.', 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (7, 1, N'Nước hoa Morra Chill With The Blue', 2, 200000, 400000, 1, NULL, N'Một mùi hương dễ mặc với sắc thái mềm mại, tươi mát, nhiều cảm xúc.

Ai cũng yêu một bó hoa huệ (tuberose) tuyệt đẹp, nhưng họ lại rất ngại mặc hương huệ bởi mùi hoa này rất sắc và mạnh. Tuy nhiên, Chill with the Blue lại rất tốt để có thể mặc mỗi ngày vì mùi hương rất mềm mại, nhẹ nhàng, một chút kem sữa (creamy & milk) được nhấn nhá bởi lactone.

Note hương Petitgrain và hương hoa cam vừa mang sắc thái của hoa lại vừa mang chút xanh, tươi mát của những mùi hương cam chanh.

Tất cả tạo nên một hợp hương rất cân bằng và không quá khó để mặc.

Mùi hương phù hợp cho hẹn hò, du lịch, các phòng tập yoga, thiền, thư giãn, và cũng có thể sử dụng cho công sở', 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (8, 1, N'Nước hoa Morra Chill With The Blue', 2, 700000, 1790000, 1, NULL, N'Một mùi hương dễ mặc với sắc thái mềm mại, tươi mát, nhiều cảm xúc.

Ai cũng yêu một bó hoa huệ (tuberose) tuyệt đẹp, nhưng họ lại rất ngại mặc hương huệ bởi mùi hoa này rất sắc và mạnh. Tuy nhiên, Chill with the Blue lại rất tốt để có thể mặc mỗi ngày vì mùi hương rất mềm mại, nhẹ nhàng, một chút kem sữa (creamy & milk) được nhấn nhá bởi lactone.

Note hương Petitgrain và hương hoa cam vừa mang sắc thái của hoa lại vừa mang chút xanh, tươi mát của những mùi hương cam chanh.

Tất cả tạo nên một hợp hương rất cân bằng và không quá khó để mặc.

Mùi hương phù hợp cho hẹn hò, du lịch, các phòng tập yoga, thiền, thư giãn, và cũng có thể sử dụng cho công sở', 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (9, 1, N'Nước hoa Morra Chill With The Blue', 2, 1700000, 2690000, 1, NULL, N'Một mùi hương dễ mặc với sắc thái mềm mại, tươi mát, nhiều cảm xúc.

Ai cũng yêu một bó hoa huệ (tuberose) tuyệt đẹp, nhưng họ lại rất ngại mặc hương huệ bởi mùi hoa này rất sắc và mạnh. Tuy nhiên, Chill with the Blue lại rất tốt để có thể mặc mỗi ngày vì mùi hương rất mềm mại, nhẹ nhàng, một chút kem sữa (creamy & milk) được nhấn nhá bởi lactone.

Note hương Petitgrain và hương hoa cam vừa mang sắc thái của hoa lại vừa mang chút xanh, tươi mát của những mùi hương cam chanh.

Tất cả tạo nên một hợp hương rất cân bằng và không quá khó để mặc.

Mùi hương phù hợp cho hẹn hò, du lịch, các phòng tập yoga, thiền, thư giãn, và cũng có thể sử dụng cho công sở', 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (10, 1, N'Nước hoa Morra Harmony Of The Sea', 3, 180000, 390000, 1, NULL, N'Một mùi hương tươi mát và sạch sẽ với sự nổi bật của Bergamot và Seawater.

Một sự lựa chọn tuyệt vời cho thời tiết ấm, nóng hoặc mưa.

Hương dừa (Coconut) : hỗ trợ rất tốt cho các note hương trái cây ngọt ngào tạo sắc thái của vanilla và hương sữa.

Mùi hương ngọt ngào mà không bị áp đảo bởi hương gỗ mà tạo ra sự cân bằng, vừa đủ.

Một vùng biển nhiệt đới trong mùa hè nóng nực.

Mùi hương tạo cảm giác của sự sảng khoái của người vừa mới đi bơi hoặc vừa mới tắm xong.

Mùi hương rất phù hợp vào buổi sáng, du lịch hoặc đi làm đều được. Đây là mùi hương phù hợp nhất cho dòng nước hoa Unisex.', 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (11, 1, N'Nước hoa Morra Harmony Of The Sea', 3, 500000, 1790000, 1, NULL, N'Một mùi hương tươi mát và sạch sẽ với sự nổi bật của Bergamot và Seawater.

Một sự lựa chọn tuyệt vời cho thời tiết ấm, nóng hoặc mưa.

Hương dừa (Coconut) : hỗ trợ rất tốt cho các note hương trái cây ngọt ngào tạo sắc thái của vanilla và hương sữa.

Mùi hương ngọt ngào mà không bị áp đảo bởi hương gỗ mà tạo ra sự cân bằng, vừa đủ.

Một vùng biển nhiệt đới trong mùa hè nóng nực.

Mùi hương tạo cảm giác của sự sảng khoái của người vừa mới đi bơi hoặc vừa mới tắm xong.

Mùi hương rất phù hợp vào buổi sáng, du lịch hoặc đi làm đều được. Đây là mùi hương phù hợp nhất cho dòng nước hoa Unisex.', 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (12, 1, N'Nước hoa Morra Harmony Of The Sea', 3, 1600000, 2690000, 1, NULL, N'Một mùi hương tươi mát và sạch sẽ với sự nổi bật của Bergamot và Seawater.

Một sự lựa chọn tuyệt vời cho thời tiết ấm, nóng hoặc mưa.

Hương dừa (Coconut) : hỗ trợ rất tốt cho các note hương trái cây ngọt ngào tạo sắc thái của vanilla và hương sữa.

Mùi hương ngọt ngào mà không bị áp đảo bởi hương gỗ mà tạo ra sự cân bằng, vừa đủ.

Một vùng biển nhiệt đới trong mùa hè nóng nực.

Mùi hương tạo cảm giác của sự sảng khoái của người vừa mới đi bơi hoặc vừa mới tắm xong.

Mùi hương rất phù hợp vào buổi sáng, du lịch hoặc đi làm đều được. Đây là mùi hương phù hợp nhất cho dòng nước hoa Unisex.', 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (13, 1, N'Nước hoa Morra Love At First Scent', 2, 200000, 390000, 1, NULL, N'Hương hoa tuyệt vời, đầy đặn, nữ tính, sang trọng

Mùi hương hiện đại, sang trọng, gợi cảm, giống như một nữ thần.

Tiêu hồng (Pink Pepper) : nằm ở tầng hương đầu vừa mang sắc thái cay nồng, lại vừa mang hương hoa hồng ngọt ngào dịu nhẹ. Mô tả tính cách vui tươi, táo bạo, bùng nổ.

Note hương Ozonic and Watery được thêm để hỗ trợ cho các note hương hoa thêm bừng sáng, tươi mát, tạo cảm giác yêu đời. Và cũng có thêm một chút cảm giác sạch sẽ và mềm mại của  hoa.

Đây có thể nói là một mùi hương rất quyến rũ để người đàn ông có thể nói “Yêu ngay từ mùi hương đầu tiên”

Xạ hương và Hổ Phách vừa hỗ trợ lưu hương vừa giúp cho mùi hương ấm áp hơn.

Mùi hương rất phù hợp cho các buổi tiệc tối, tiệc cưới...', 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (14, 1, N'Nước hoa Morra Love At First Scent', 2, 1700000, 1790000, 1, NULL, N'Hương hoa tuyệt vời, đầy đặn, nữ tính, sang trọng

Mùi hương hiện đại, sang trọng, gợi cảm, giống như một nữ thần.

Tiêu hồng (Pink Pepper) : nằm ở tầng hương đầu vừa mang sắc thái cay nồng, lại vừa mang hương hoa hồng ngọt ngào dịu nhẹ. Mô tả tính cách vui tươi, táo bạo, bùng nổ.

Note hương Ozonic and Watery được thêm để hỗ trợ cho các note hương hoa thêm bừng sáng, tươi mát, tạo cảm giác yêu đời. Và cũng có thêm một chút cảm giác sạch sẽ và mềm mại của  hoa.

Đây có thể nói là một mùi hương rất quyến rũ để người đàn ông có thể nói “Yêu ngay từ mùi hương đầu tiên”

Xạ hương và Hổ Phách vừa hỗ trợ lưu hương vừa giúp cho mùi hương ấm áp hơn.

Mùi hương rất phù hợp cho các buổi tiệc tối, tiệc cưới...', 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (15, 1, N'Nước hoa Morra Love At First Scent', 2, 1800000, 2690000, 1, NULL, N'Hương hoa tuyệt vời, đầy đặn, nữ tính, sang trọng

Mùi hương hiện đại, sang trọng, gợi cảm, giống như một nữ thần.

Tiêu hồng (Pink Pepper) : nằm ở tầng hương đầu vừa mang sắc thái cay nồng, lại vừa mang hương hoa hồng ngọt ngào dịu nhẹ. Mô tả tính cách vui tươi, táo bạo, bùng nổ.

Note hương Ozonic and Watery được thêm để hỗ trợ cho các note hương hoa thêm bừng sáng, tươi mát, tạo cảm giác yêu đời. Và cũng có thêm một chút cảm giác sạch sẽ và mềm mại của  hoa.

Đây có thể nói là một mùi hương rất quyến rũ để người đàn ông có thể nói “Yêu ngay từ mùi hương đầu tiên”

Xạ hương và Hổ Phách vừa hỗ trợ lưu hương vừa giúp cho mùi hương ấm áp hơn.

Mùi hương rất phù hợp cho các buổi tiệc tối, tiệc cưới...', 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (16, 2, N'Nước Hoa Morra Lemon Cedar Summer Collection', 3, 200000, 390000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (17, 2, N'Nước Hoa Morra Lemon Cedar Summer Collection', 3, 600000, 1790000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (18, 2, N'Nước Hoa Morra Lemon Cedar Summer Collection', 3, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (19, 2, N'Nước Hoa Morra Rose Quince Summer Collection', 2, 200000, 390000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (20, 2, N'Nước Hoa Morra Rose Quince Summer Collection', 2, 600000, 1790000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (21, 2, N'Nước Hoa Morra Rose Quince Summer Collection', 2, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (22, 2, N'Nước Hoa Morra Saffron Summer Collection', 1, 200000, 390000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (23, 2, N'Nước Hoa Morra Saffron Summer Collection', 1, 600000, 1790000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (24, 3, N'Nước hoa Mystic Weapon', 1, 250000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (25, 3, N'Nước hoa Mystic Weapon', 1, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (26, 3, N'Nước hoa Mystic Weapon', 1, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (27, 3, N'Nước hoa Private Drug', 1, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (28, 3, N'Nước hoa Private Drug', 1, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (29, 3, N'Nước hoa Private Drug', 1, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (30, 4, N'Nước hoa Morra Begamot Vetiver 15', 2, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (31, 4, N'Nước hoa Morra Begamot Vetiver 15', 2, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (32, 4, N'Nước hoa Morra Begamot Vetiver 15', 2, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (33, 4, N'Nước hoa Morra Camel Vanilla 11', 2, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (34, 4, N'Nước hoa Morra Camel Vanilla 11', 2, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (35, 4, N'Nước hoa Morra Camel Vanilla 11', 2, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (36, 4, N'Nước hoa Morra Iris 12', 2, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (37, 4, N'Nước hoa Morra Iris 12', 2, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (38, 4, N'Nước hoa Morra Iris 12', 2, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (39, 4, N'Nước hoa Morra Oceania 12', 3, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (40, 4, N'Nước hoa Morra Oceania 12', 3, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (41, 4, N'Nước hoa Morra Oceania 12', 3, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (42, 4, N'Nước hoa Morra Rose Cedar 10', 2, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (43, 4, N'Nước hoa Morra Rose Cedar 10', 2, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (44, 4, N'Nước hoa Morra Rose Cedar 10', 2, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (45, 5, N'Nước hoa Morra Blackcurrant 10', 3, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (46, 5, N'Nước hoa Morra Blackcurrant 10', 3, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (47, 5, N'Nước hoa Morra Blackcurrant 10', 3, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (48, 5, N'Nước hoa Morra Lilybell 07', 2, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (49, 5, N'Nước hoa Morra Lilybell 07', 2, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (50, 5, N'Nước hoa Morra Lilybell 07', 2, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (51, 5, N'Nước hoa Morra Musk Mallow 13', 3, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (52, 5, N'Nước hoa Morra Musk Mallow 13', 3, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (53, 5, N'Nước hoa Morra Musk Mallow 13', 3, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (54, 5, N'Nước hoa Morra Osmanthus 16', 2, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (55, 5, N'Nước hoa Morra Osmanthus 16', 2, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (56, 5, N'Nước hoa Morra Osmanthus 16', 2, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (57, 5, N'Nước hoa Morra Sandalwood 33', 1, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (58, 5, N'Nước hoa Morra Sandalwood 33', 1, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (59, 5, N'Nước hoa Morra Sandalwood 33', 1, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (60, 6, N'Nước hoa Morra Gardenia', 2, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (61, 6, N'Nước hoa Morra Gardenia', 2, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (62, 6, N'Nước hoa Morra Gardenia', 2, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (63, 6, N'Nước Hoa Morra Mandarina Aqua 11 Scents of Love Collection', 2, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (64, 6, N'Nước Hoa Morra Mandarina Aqua 11 Scents of Love Collection', 2, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (65, 6, N'Nước Hoa Morra Mandarina Aqua 11 Scents of Love Collection', 2, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (66, 6, N'Nước Hoa Morra Peony Cedar 18 Scents of Love collection', 2, 200000, 350000, 1, NULL, NULL, 1, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (67, 6, N'Nước Hoa Morra Peony Cedar 18 Scents of Love collection', 2, 1000000, 1590000, 1, NULL, NULL, 2, 100, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [price_in], [price_out], [discount_id], [thumbnail], [description], [size_id], [quantity], [created_at], [updated_at]) VALUES (68, 6, N'Nước Hoa Morra Peony Cedar 18 Scents of Love collection', 2, 1800000, 2690000, 1, NULL, NULL, 3, 100, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([id], [name], [value]) VALUES (1, N' 10ml', 10)
INSERT [dbo].[Sizes] ([id], [name], [value]) VALUES (2, N'50ml', 50)
INSERT [dbo].[Sizes] ([id], [name], [value]) VALUES (3, N'100ml', 100)
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
ALTER TABLE [dbo].[FeedBacks]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[FeedBacks]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Galeries]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([discount_id])
REFERENCES [dbo].[Discounts] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([gender_id])
REFERENCES [dbo].[Genders] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([size_id])
REFERENCES [dbo].[Sizes] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
GO
USE [master]
GO
ALTER DATABASE [SWP] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 5/1/2017 5:23:35 PM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/1/2017 5:23:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/1/2017 5:23:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/1/2017 5:23:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/1/2017 5:23:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Accessories] ([AccessoriesID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Addidas', N'\Content\images\man-accessories-6.jpg', N'Headband', N'red', N'summer', N'workout')
INSERT [dbo].[Accessories] ([AccessoriesID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Nike', N'\Content\images\man-accessories-6.jpg', N'Watch', N'Blue', N'All Year', N'Buiness')
INSERT [dbo].[Accessories] ([AccessoriesID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Gucci', N'\Content\images\man-accessories-6.jpg', N'Bracelet', N'White', N'Winter', N'Wedding')
INSERT [dbo].[Bottoms] ([BottomsID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Addidas', N'\Content\images\addidaspant.jpg', N'TechFit', N'Red', N'Summer', N'Fitness')
INSERT [dbo].[Bottoms] ([BottomsID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Nke', N'\Content\images\addidaspant.jpg', N'DriFit', N'Pink', N'Spring', N'Work')
INSERT [dbo].[Bottoms] ([BottomsID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Jordan', N'\Content\images\addidaspant.jpg', N'Chinos', N'Yellow', N'Fall', N'Workout')
INSERT [dbo].[Shoes] ([ShoesID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Addidas', N'\Content\images\shoe.jpg', N'boots', N'Black', N'summer', N'Work')
INSERT [dbo].[Shoes] ([ShoesID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Nike', N'\Content\images\shoe.jpg', N'Running shoes', N'White', N'All year', N'Track season')
INSERT [dbo].[Shoes] ([ShoesID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Reebok', N'\Content\images\shoe.jpg', N'oxford', N'orange', N'winter', N'Business')
INSERT [dbo].[Tops] ([TopsID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Addidas', N'\Content\images\shirt.jpg', N'Fitness', N'Red', N'Summer', N'Workout')
INSERT [dbo].[Tops] ([TopsID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Nike', N'\Content\images\shirt.jpg', N'Polo', N'Blue', N'Summer', N'Casual')
INSERT [dbo].[Tops] ([TopsID], [BrandName], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Gucci', N'\Content\images\shirt.jpg', N'Dress shirt', N'Multi- Colors', N'Fall', N'Formal')
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [CrudBlazor]    Script Date: 07-02-2022 12:45:00 PM ******/
CREATE DATABASE [CrudBlazor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CrudBlazor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CrudBlazor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CrudBlazor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CrudBlazor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CrudBlazor] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CrudBlazor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CrudBlazor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CrudBlazor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CrudBlazor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CrudBlazor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CrudBlazor] SET ARITHABORT OFF 
GO
ALTER DATABASE [CrudBlazor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CrudBlazor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CrudBlazor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CrudBlazor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CrudBlazor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CrudBlazor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CrudBlazor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CrudBlazor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CrudBlazor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CrudBlazor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CrudBlazor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CrudBlazor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CrudBlazor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CrudBlazor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CrudBlazor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CrudBlazor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CrudBlazor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CrudBlazor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CrudBlazor] SET  MULTI_USER 
GO
ALTER DATABASE [CrudBlazor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CrudBlazor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CrudBlazor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CrudBlazor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CrudBlazor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CrudBlazor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CrudBlazor] SET QUERY_STORE = OFF
GO
USE [CrudBlazor]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 07-02-2022 12:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Devices]    Script Date: 07-02-2022 12:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devices](
	[DeviceID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DeviceType] [nvarchar](max) NULL,
 CONSTRAINT [PK_Devices] PRIMARY KEY CLUSTERED 
(
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operations]    Script Date: 07-02-2022 12:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operations](
	[OperationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[OrderInWhichToPerform] [int] NOT NULL,
	[ImageData] [nvarchar](max) NULL,
	[Device] [nvarchar](max) NULL,
 CONSTRAINT [PK_Operations] PRIMARY KEY CLUSTERED 
(
	[OperationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220204124423_initial', N'5.0.0')
GO
SET IDENTITY_INSERT [dbo].[Devices] ON 

INSERT [dbo].[Devices] ([DeviceID], [Name], [DeviceType]) VALUES (1006, N'Device1', N'BarCode Scanner')
INSERT [dbo].[Devices] ([DeviceID], [Name], [DeviceType]) VALUES (1007, N'Device2', N'Camera')
INSERT [dbo].[Devices] ([DeviceID], [Name], [DeviceType]) VALUES (1008, NULL, N'Printer')
INSERT [dbo].[Devices] ([DeviceID], [Name], [DeviceType]) VALUES (1009, N'Device3', N'SocketTray')
INSERT [dbo].[Devices] ([DeviceID], [Name], [DeviceType]) VALUES (1010, N'device4', N'Camera')
SET IDENTITY_INSERT [dbo].[Devices] OFF
GO
SET IDENTITY_INSERT [dbo].[Operations] ON 

INSERT [dbo].[Operations] ([OperationID], [Name], [OrderInWhichToPerform], [ImageData], [Device]) VALUES (1007, N'Operation2', 0, N'image2', N'Camera')
INSERT [dbo].[Operations] ([OperationID], [Name], [OrderInWhichToPerform], [ImageData], [Device]) VALUES (1008, N'operation3', 0, N'image3', N'SocketTray')
INSERT [dbo].[Operations] ([OperationID], [Name], [OrderInWhichToPerform], [ImageData], [Device]) VALUES (1009, N'test', 0, N'tt', N'Camera')
SET IDENTITY_INSERT [dbo].[Operations] OFF
GO
USE [master]
GO
ALTER DATABASE [CrudBlazor] SET  READ_WRITE 
GO

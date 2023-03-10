USE [master]
GO
/****** Object:  Database [Otel]    Script Date: 5.12.2022 19:37:34 ******/
CREATE DATABASE [Otel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Otel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Otel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Otel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Otel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Otel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Otel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Otel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Otel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Otel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Otel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Otel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Otel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Otel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Otel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Otel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Otel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Otel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Otel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Otel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Otel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Otel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Otel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Otel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Otel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Otel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Otel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Otel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Otel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Otel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Otel] SET  MULTI_USER 
GO
ALTER DATABASE [Otel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Otel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Otel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Otel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Otel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Otel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Otel] SET QUERY_STORE = OFF
GO
USE [Otel]
GO
/****** Object:  Table [dbo].[MusteriHesabi]    Script Date: 5.12.2022 19:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusteriHesabi](
	[IslemNo] [int] IDENTITY(1,1) NOT NULL,
	[SonHesap] [money] NULL,
	[GirisTarihi] [varchar](50) NULL,
	[CikisTarihi] [varchar](50) NULL,
	[KisiSayisi] [int] NULL,
	[OdaNo] [int] NULL,
	[MNo] [int] NULL,
 CONSTRAINT [PK_MusteriHesabi] PRIMARY KEY CLUSTERED 
(
	[IslemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusteriKayit]    Script Date: 5.12.2022 19:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusteriKayit](
	[Mno] [int] IDENTITY(1,1) NOT NULL,
	[MAdi] [varchar](50) NULL,
	[MSoyadi] [varchar](50) NULL,
	[MCinsiyet] [varchar](50) NULL,
	[MAdres] [varchar](50) NULL,
	[Telefon] [varchar](50) NULL,
 CONSTRAINT [PK_MusteriKayit] PRIMARY KEY CLUSTERED 
(
	[Mno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odalar]    Script Date: 5.12.2022 19:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odalar](
	[OdaNo] [int] IDENTITY(1,1) NOT NULL,
	[OdaFiyat] [money] NULL,
	[YatakSayisi] [int] NULL,
	[OdaTuru] [varchar](50) NULL,
	[ServisNo] [int] NULL,
 CONSTRAINT [PK_Odalar] PRIMARY KEY CLUSTERED 
(
	[OdaNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servisler]    Script Date: 5.12.2022 19:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servisler](
	[ServisNo] [int] IDENTITY(1,1) NOT NULL,
	[ServisAdi] [varchar](50) NULL,
	[ServisUcret] [money] NULL,
 CONSTRAINT [PK_Servisler] PRIMARY KEY CLUSTERED 
(
	[ServisNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 5.12.2022 19:37:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[Uid1] [int] IDENTITY(1,1) NOT NULL,
	[Name1] [varchar](50) NULL,
	[UserId] [varchar](50) NULL,
	[Password1] [varchar](50) NULL,
	[isActive] [bit] NULL,
	[Role] [int] NULL,
	[createdon] [datetime] NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[Uid1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MusteriHesabi] ON 

INSERT [dbo].[MusteriHesabi] ([IslemNo], [SonHesap], [GirisTarihi], [CikisTarihi], [KisiSayisi], [OdaNo], [MNo]) VALUES (1, 1200.0000, N'6.12.2022', N'8.12.2022', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[MusteriHesabi] OFF
GO
SET IDENTITY_INSERT [dbo].[MusteriKayit] ON 

INSERT [dbo].[MusteriKayit] ([Mno], [MAdi], [MSoyadi], [MCinsiyet], [MAdres], [Telefon]) VALUES (1, N'Ayşe', N'Alpaslan', N'Kadın', N'Göztepe', N'2151551')
INSERT [dbo].[MusteriKayit] ([Mno], [MAdi], [MSoyadi], [MCinsiyet], [MAdres], [Telefon]) VALUES (2, N'Fatma', N'Sarı', N'Kadın', N'Avcılar', N'6512521521')
SET IDENTITY_INSERT [dbo].[MusteriKayit] OFF
GO
SET IDENTITY_INSERT [dbo].[Odalar] ON 

INSERT [dbo].[Odalar] ([OdaNo], [OdaFiyat], [YatakSayisi], [OdaTuru], [ServisNo]) VALUES (1, 250.0000, 1, N'Classic Double Bed', 1)
INSERT [dbo].[Odalar] ([OdaNo], [OdaFiyat], [YatakSayisi], [OdaTuru], [ServisNo]) VALUES (2, 300.0000, 2, N'Classic Double Bed', 2)
SET IDENTITY_INSERT [dbo].[Odalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Servisler] ON 

INSERT [dbo].[Servisler] ([ServisNo], [ServisAdi], [ServisUcret]) VALUES (1, N'Temizlik', 50.0000)
INSERT [dbo].[Servisler] ([ServisNo], [ServisAdi], [ServisUcret]) VALUES (2, N'Yemek', 150.0000)
INSERT [dbo].[Servisler] ([ServisNo], [ServisAdi], [ServisUcret]) VALUES (3, N'Sınırsız İçecek', 200.0000)
INSERT [dbo].[Servisler] ([ServisNo], [ServisAdi], [ServisUcret]) VALUES (4, N'Şezlong', 50.0000)
SET IDENTITY_INSERT [dbo].[Servisler] OFF
GO
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([Uid1], [Name1], [UserId], [Password1], [isActive], [Role], [createdon]) VALUES (1, N'Ayşe', N'Ayşe', N'12345', 1, 1, NULL)
INSERT [dbo].[UserMaster] ([Uid1], [Name1], [UserId], [Password1], [isActive], [Role], [createdon]) VALUES (2, N'Fatma', N'Fatma', N'123', 1, 1, NULL)
INSERT [dbo].[UserMaster] ([Uid1], [Name1], [UserId], [Password1], [isActive], [Role], [createdon]) VALUES (3, N'Şeyma', N'Şeyma', N'333', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
GO
ALTER TABLE [dbo].[MusteriHesabi]  WITH CHECK ADD  CONSTRAINT [FK_MusteriHesabi_MusteriKayit] FOREIGN KEY([MNo])
REFERENCES [dbo].[MusteriKayit] ([Mno])
GO
ALTER TABLE [dbo].[MusteriHesabi] CHECK CONSTRAINT [FK_MusteriHesabi_MusteriKayit]
GO
ALTER TABLE [dbo].[MusteriHesabi]  WITH CHECK ADD  CONSTRAINT [FK_MusteriHesabi_Odalar] FOREIGN KEY([OdaNo])
REFERENCES [dbo].[Odalar] ([OdaNo])
GO
ALTER TABLE [dbo].[MusteriHesabi] CHECK CONSTRAINT [FK_MusteriHesabi_Odalar]
GO
ALTER TABLE [dbo].[Odalar]  WITH CHECK ADD  CONSTRAINT [FK_Odalar_Servisler] FOREIGN KEY([ServisNo])
REFERENCES [dbo].[Servisler] ([ServisNo])
GO
ALTER TABLE [dbo].[Odalar] CHECK CONSTRAINT [FK_Odalar_Servisler]
GO
USE [master]
GO
ALTER DATABASE [Otel] SET  READ_WRITE 
GO

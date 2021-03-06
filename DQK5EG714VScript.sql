USE [master]
GO
/****** Object:  Database [Covid19_Community]    Script Date: 28-04-2022 10:33:19 ******/
CREATE DATABASE [Covid19_Community]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Covid19_Community', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Covid19_Community.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Covid19_Community_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Covid19_Community_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Covid19_Community] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Covid19_Community].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Covid19_Community] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Covid19_Community] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Covid19_Community] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Covid19_Community] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Covid19_Community] SET ARITHABORT OFF 
GO
ALTER DATABASE [Covid19_Community] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Covid19_Community] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Covid19_Community] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Covid19_Community] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Covid19_Community] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Covid19_Community] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Covid19_Community] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Covid19_Community] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Covid19_Community] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Covid19_Community] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Covid19_Community] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Covid19_Community] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Covid19_Community] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Covid19_Community] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Covid19_Community] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Covid19_Community] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Covid19_Community] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Covid19_Community] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Covid19_Community] SET  MULTI_USER 
GO
ALTER DATABASE [Covid19_Community] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Covid19_Community] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Covid19_Community] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Covid19_Community] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Covid19_Community] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Covid19_Community] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Covid19_Community] SET QUERY_STORE = OFF
GO
USE [Covid19_Community]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 28-04-2022 10:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] NOT NULL,
	[firstName] [nvarchar](200) NULL,
	[lastName] [nvarchar](200) NULL,
	[email] [nvarchar](200) NULL,
	[userName] [nvarchar](200) NULL,
	[hashedPassword] [nvarchar](200) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bloodtest]    Script Date: 28-04-2022 10:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bloodtest](
	[blootTestID] [int] NOT NULL,
	[fbs] [decimal](11, 0) NOT NULL,
	[bun] [decimal](11, 0) NOT NULL,
	[creatinine] [decimal](11, 0) NOT NULL,
	[sgot] [decimal](11, 0) NOT NULL,
	[sgpt] [decimal](11, 0) NOT NULL,
	[alkPhosphatase] [decimal](11, 0) NOT NULL,
	[tChol] [decimal](11, 0) NOT NULL,
	[hdlc] [decimal](11, 0) NOT NULL,
	[ldlc] [decimal](11, 0) NOT NULL,
	[tg] [decimal](11, 0) NOT NULL,
	[uricAcid] [decimal](11, 0) NOT NULL,
	[hbeag] [decimal](11, 0) NOT NULL,
	[hbvDna] [decimal](11, 0) NOT NULL,
	[testDate] [date] NOT NULL,
	[origdate] [datetime] NOT NULL,
	[patientID] [int] NOT NULL,
 CONSTRAINT [PK_bloodtest] PRIMARY KEY CLUSTERED 
(
	[blootTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patients]    Script Date: 28-04-2022 10:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patients](
	[patientID] [int] NOT NULL,
	[firstName] [varchar](255) NOT NULL,
	[lastName] [varchar](255) NOT NULL,
	[age] [int] NOT NULL,
	[gender] [varchar](30) NOT NULL,
	[address] [varchar](500) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[contactNo] [int] NOT NULL,
	[RAS] [int] NOT NULL,
	[OrigDate] [datetime] NOT NULL,
 CONSTRAINT [PK_patients] PRIMARY KEY CLUSTERED 
(
	[patientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[riskscore]    Script Date: 28-04-2022 10:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[riskscore](
	[rasID] [int] NOT NULL,
	[gender] [varchar](255) NOT NULL,
	[age] [int] NOT NULL,
	[sgpt] [decimal](11, 0) NOT NULL,
	[hbeag] [decimal](11, 0) NOT NULL,
	[hbvDna] [decimal](11, 0) NOT NULL,
	[origdagte] [datetime] NOT NULL,
	[ras] [int] NOT NULL,
	[patientID] [int] NOT NULL,
 CONSTRAINT [PK_riskscore] PRIMARY KEY CLUSTERED 
(
	[rasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[screening]    Script Date: 28-04-2022 10:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[screening](
	[screeningID] [int] NOT NULL,
	[afp] [decimal](10, 3) NOT NULL,
	[tumuorSize] [decimal](10, 3) NOT NULL,
	[result] [varchar](255) NOT NULL,
	[screeningDate] [date] NOT NULL,
	[patientID] [int] NOT NULL,
 CONSTRAINT [PK_screening] PRIMARY KEY CLUSTERED 
(
	[screeningID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (1, N'ab', N'Safi', N'admin1@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (2, N'ab', N'Safi', N'admin2@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (3, N'ab', N'Safi', N'admin3@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (4, N'ab', N'Safi', N'admin4@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (5, N'ab', N'Safi', N'admin5@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (6, N'ab', N'Safi', N'admin6@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (7, N'ab', N'Safi', N'admin7@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (8, N'ab', N'Safi', N'admin8@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (9, N'ab', N'Safi', N'admin9@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (10, N'ab', N'Safi', N'admin10@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (11, N'ab', N'Safi', N'admin11@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (12, N'ab', N'Safi', N'admin12@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (13, N'ab', N'Safi', N'admin13@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (14, N'ab', N'Safi', N'admin14@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (15, N'ab', N'Safi', N'admin15@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (16, N'ab', N'Safi', N'admin16@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (17, N'ab', N'Safi', N'admin17@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (18, N'ab', N'Safi', N'admin18@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (19, N'ab', N'Safi', N'admin19@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (20, N'ab', N'Safi', N'admin20@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (21, N'ab', N'Safi', N'admin21@gmail.com', N'admin', N'$2y$10$x8FTxggQyCXg.imp2JDYhuLO17uLBjBI0ENkZJ8jd65EGempWtzkm')
INSERT [dbo].[admin] ([id], [firstName], [lastName], [email], [userName], [hashedPassword]) VALUES (22, N'ab', N'Safi', N'admin22@gmail.com', N'admin1', N'$2y$10$Gfe80Vknj7KgRpc8jQYPw.8bnVXOw2oWW1s5EcUTWlYXwYy99JIEe')
GO
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (34, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (35, CAST(12 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(2 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2022-04-28T10:21:51.357' AS DateTime), 30)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (36, CAST(12 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2022-04-28T10:21:51.357' AS DateTime), 30)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (37, CAST(1235 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2022-04-28T10:21:51.357' AS DateTime), 31)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (38, CAST(12 AS Decimal(11, 0)), CAST(12 AS Decimal(11, 0)), CAST(12 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(2 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(12 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(2 AS Decimal(11, 0)), CAST(6 AS Decimal(11, 0)), CAST(N'2018-04-18' AS Date), CAST(N'2018-04-18T16:25:29.357' AS DateTime), 32)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (39, CAST(1234 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T16:26:44.357' AS DateTime), 30)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (40, CAST(2 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(221 AS Decimal(11, 0)), CAST(22 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T16:27:21.357' AS DateTime), 30)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (42, CAST(45 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T16:37:12.357' AS DateTime), 33)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (43, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T16:40:05.357' AS DateTime), 30)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (44, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T16:51:35.357' AS DateTime), 35)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (45, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T16:56:03.357' AS DateTime), 36)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (46, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T16:58:15.357' AS DateTime), 37)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (47, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T17:20:59.357' AS DateTime), 38)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (48, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T17:32:06.357' AS DateTime), 39)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (49, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T17:32:31.357' AS DateTime), 39)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (50, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'1900-01-01' AS Date), CAST(N'2018-04-18T19:37:34.357' AS DateTime), 40)
INSERT [dbo].[bloodtest] ([blootTestID], [fbs], [bun], [creatinine], [sgot], [sgpt], [alkPhosphatase], [tChol], [hdlc], [ldlc], [tg], [uricAcid], [hbeag], [hbvDna], [testDate], [origdate], [patientID]) VALUES (51, CAST(32 AS Decimal(11, 0)), CAST(12 AS Decimal(11, 0)), CAST(65 AS Decimal(11, 0)), CAST(25 AS Decimal(11, 0)), CAST(22 AS Decimal(11, 0)), CAST(22 AS Decimal(11, 0)), CAST(66 AS Decimal(11, 0)), CAST(11 AS Decimal(11, 0)), CAST(66 AS Decimal(11, 0)), CAST(88 AS Decimal(11, 0)), CAST(99 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-19' AS Date), CAST(N'2018-04-18T20:43:15.357' AS DateTime), 41)
GO
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (30, N'Jalil', N'  Niazi', 26, N'Male', N'  Ait, Bangkok  ', N'  st119799@gmail.com  ', 949856237, 0, CAST(N'2018-04-18T14:43:30.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (31, N'nikil', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-18T15:25:23.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (32, N'jalil', N'niazi', 60, N'Male', N'ait', N'abrahman.safi@gmail.com', 12554, 0, CAST(N'2018-04-18T16:24:31.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (33, N'sami', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-18T16:36:58.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (34, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-18T16:51:25.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (35, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-18T16:51:31.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (36, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-18T16:55:58.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (37, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-18T16:58:11.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (38, N'nikil', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-18T17:20:43.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (39, N'see', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-18T17:31:55.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (40, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-18T19:37:29.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (41, N'Salihi', N' safi', 24, N'Male', N' Ait ', N' abrahman.safi@gmail.com ', 2147483647, 0, CAST(N'2018-04-18T20:42:20.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (42, N'Nikil', N' Rao', 65, N'Male', N' Ait, Bangkok ', N' st1176768@gmail.com ', 989576123, 0, CAST(N'2018-04-19T01:22:44.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (43, N'Kavin', N'Chandraparakash', 40, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st123998@gmail.com', 2147483647, 0, CAST(N'2018-04-19T01:55:39.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (44, N'Jalil', N'NIazi', 55, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st119799@ait.ac.th', 2147483647, 0, CAST(N'2018-04-19T02:04:09.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (45, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-19T02:23:52.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (46, N'Adbul jaliL', N'Nazia', 60, N'Male', N'Ait, Bangkok', N'abrahman.safi@gmail.com', 2147483647, 0, CAST(N'2018-04-19T05:20:45.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (47, N'Nikil', N' Rao', 65, N'Male', N' Ait, Bangkok ', N' st1176768@gmail.com ', 989576123, 0, CAST(N'2018-04-19T01:22:44.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (48, N'Kavin', N'Chandraparakash', 40, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st123998@gmail.com', 2147483647, 0, CAST(N'2018-04-19T01:55:39.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (49, N'Jalil', N'NIazi', 55, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st119799@ait.ac.th', 2147483647, 0, CAST(N'2018-04-19T02:04:09.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (50, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-19T02:23:52.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (51, N'Adbul jaliL', N'Nazia', 60, N'Male', N'Ait, Bangkok', N'abrahman.safi@gmail.com', 2147483647, 0, CAST(N'2018-04-19T05:20:45.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (52, N'Salihi', N' safi', 24, N'Male', N' Ait ', N' abrahman.safi@gmail.com ', 2147483647, 0, CAST(N'2018-04-18T20:42:20.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (53, N'Nikil', N' Rao', 65, N'Male', N' Ait, Bangkok ', N' st1176768@gmail.com ', 989576123, 0, CAST(N'2018-04-19T01:22:44.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (54, N'Kavin', N'Chandraparakash', 40, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st123998@gmail.com', 2147483647, 0, CAST(N'2018-04-19T01:55:39.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (55, N'Jalil', N'NIazi', 55, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st119799@ait.ac.th', 2147483647, 0, CAST(N'2018-04-19T02:04:09.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (56, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-19T02:23:52.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (57, N'Adbul jaliL', N'Nazia', 60, N'Male', N'Ait, Bangkok', N'abrahman.safi@gmail.com', 2147483647, 0, CAST(N'2018-04-19T05:20:45.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (58, N'Nikil', N' Rao', 65, N'Male', N' Ait, Bangkok ', N' st1176768@gmail.com ', 989576123, 0, CAST(N'2018-04-19T01:22:44.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (59, N'Kavin', N'Chandraparakash', 40, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st123998@gmail.com', 2147483647, 0, CAST(N'2018-04-19T01:55:39.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (60, N'Jalil', N'NIazi', 55, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st119799@ait.ac.th', 2147483647, 0, CAST(N'2018-04-19T02:04:09.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (61, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-19T02:23:52.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (62, N'Adbul jaliL', N'Nazia', 60, N'Male', N'Ait, Bangkok', N'abrahman.safi@gmail.com', 2147483647, 0, CAST(N'2018-04-19T05:20:45.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (63, N'Nikil', N' Rao', 65, N'Male', N' Ait, Bangkok ', N' st1176768@gmail.com ', 989576123, 0, CAST(N'2018-04-19T01:22:44.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (64, N'Kavin', N'Chandraparakash', 40, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st123998@gmail.com', 2147483647, 0, CAST(N'2018-04-19T01:55:39.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (65, N'Jalil', N'NIazi', 55, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st119799@ait.ac.th', 2147483647, 0, CAST(N'2018-04-19T02:04:09.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (66, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-19T02:23:52.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (67, N'Adbul jaliL', N'Nazia', 60, N'Male', N'Ait, Bangkok', N'abrahman.safi@gmail.com', 2147483647, 0, CAST(N'2018-04-19T05:20:45.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (68, N'Salihi', N' safi', 24, N'Male', N' Ait ', N' abrahman.safi@gmail.com ', 2147483647, 0, CAST(N'2018-04-18T20:42:20.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (69, N'Nikil', N' Rao', 65, N'Male', N' Ait, Bangkok ', N' st1176768@gmail.com ', 989576123, 0, CAST(N'2018-04-19T01:22:44.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (70, N'Kavin', N'Chandraparakash', 40, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st123998@gmail.com', 2147483647, 0, CAST(N'2018-04-19T01:55:39.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (71, N'Jalil', N'NIazi', 55, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st119799@ait.ac.th', 2147483647, 0, CAST(N'2018-04-19T02:04:09.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (72, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-19T02:23:52.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (73, N'Adbul jaliL', N'Nazia', 60, N'Male', N'Ait, Bangkok', N'abrahman.safi@gmail.com', 2147483647, 0, CAST(N'2018-04-19T05:20:45.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (74, N'Nikil', N' Rao', 65, N'Male', N' Ait, Bangkok ', N' st1176768@gmail.com ', 989576123, 0, CAST(N'2018-04-19T01:22:44.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (75, N'Kavin', N'Chandraparakash', 40, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st123998@gmail.com', 2147483647, 0, CAST(N'2018-04-19T01:55:39.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (76, N'Jalil', N'NIazi', 55, N'Male', N'Klhong Luang, Pathumthani, Thailand', N'st119799@ait.ac.th', 2147483647, 0, CAST(N'2018-04-19T02:04:09.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (77, N'', N'', 0, N'', N'', N'', 0, 0, CAST(N'2018-04-19T02:23:52.000' AS DateTime))
INSERT [dbo].[patients] ([patientID], [firstName], [lastName], [age], [gender], [address], [email], [contactNo], [RAS], [OrigDate]) VALUES (78, N'Adbul jaliL', N'Nazia', 60, N'Male', N'Ait, Bangkok', N'abrahman.safi@gmail.com', 2147483647, 0, CAST(N'2018-04-19T05:20:45.000' AS DateTime))
GO
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (183, N'Male', 26, CAST(3 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:21:46.000' AS DateTime), 2, 30)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (184, N'Male', 26, CAST(3 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:22:02.000' AS DateTime), 2, 30)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (185, N'Male', 26, CAST(3 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:22:13.000' AS DateTime), 2, 30)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (186, N'Male', 26, CAST(3 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:22:43.000' AS DateTime), 2, 30)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (187, N'Male', 26, CAST(3 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:23:25.000' AS DateTime), 2, 30)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (188, N'Male', 26, CAST(3 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:23:54.000' AS DateTime), 2, 30)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (189, N'Male', 30, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:24:51.000' AS DateTime), 2, 32)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (190, N'Male', 60, CAST(2 AS Decimal(11, 0)), CAST(2 AS Decimal(11, 0)), CAST(6 AS Decimal(11, 0)), CAST(N'2018-04-18T16:25:50.000' AS DateTime), 14, 32)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (191, N'Male', 26, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:26:44.000' AS DateTime), 2, 30)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (192, N'Male', 26, CAST(0 AS Decimal(11, 0)), CAST(221 AS Decimal(11, 0)), CAST(22 AS Decimal(11, 0)), CAST(N'2018-04-18T16:27:21.000' AS DateTime), 8, 30)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (193, N'', 0, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:37:12.000' AS DateTime), 0, 33)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (194, N'Male', 26, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:40:05.000' AS DateTime), 2, 30)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (195, N'', 0, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:51:35.000' AS DateTime), 0, 35)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (196, N'', 0, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T16:56:03.000' AS DateTime), 0, 36)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (208, N'', 0, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T17:20:59.000' AS DateTime), 0, 38)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (209, N'', 0, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T17:21:42.000' AS DateTime), 0, 38)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (210, N'', 0, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T17:32:06.000' AS DateTime), 0, 39)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (211, N'', 0, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T17:32:26.000' AS DateTime), 0, 39)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (212, N'', 0, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T17:32:31.000' AS DateTime), 0, 39)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (213, N'', 0, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-18T19:37:34.000' AS DateTime), 0, 40)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (214, N'Male', 24, CAST(22 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-18T20:43:16.000' AS DateTime), 5, 41)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (215, N'Male', 24, CAST(22 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-18T20:44:23.000' AS DateTime), 5, 41)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (216, N'Male', 24, CAST(22 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-18T20:44:33.000' AS DateTime), 5, 41)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (217, N'Male', 24, CAST(22 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-18T20:44:51.000' AS DateTime), 5, 41)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (218, N'Male', 24, CAST(22 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-18T20:45:45.000' AS DateTime), 5, 41)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (219, N'Male', 24, CAST(22 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-18T20:46:10.000' AS DateTime), 5, 41)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (220, N'Male', 45, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-19T01:26:02.000' AS DateTime), 5, 42)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (221, N'Male', 45, CAST(123 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-19T01:28:32.000' AS DateTime), 9, 42)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (222, N'Male', 45, CAST(123 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-19T01:29:00.000' AS DateTime), 9, 42)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (223, N'Male', 45, CAST(123 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-19T01:29:10.000' AS DateTime), 9, 42)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (224, N'Male', 45, CAST(123 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-19T01:29:46.000' AS DateTime), 9, 42)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (225, N'Male', 65, CAST(123 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-19T01:30:34.000' AS DateTime), 12, 42)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (226, N'Male', 65, CAST(123 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-19T01:30:40.000' AS DateTime), 12, 42)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (227, N'Male', 65, CAST(123 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-19T01:31:48.000' AS DateTime), 12, 42)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (228, N'Male', 55, CAST(2 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(3 AS Decimal(11, 0)), CAST(N'2018-04-19T02:05:38.000' AS DateTime), 9, 44)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (229, N'', 0, CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(0 AS Decimal(11, 0)), CAST(N'2018-04-19T02:24:53.000' AS DateTime), 0, 45)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (230, N'Male', 26, CAST(0 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(6 AS Decimal(11, 0)), CAST(N'2018-04-19T04:31:44.000' AS DateTime), 8, 30)
INSERT [dbo].[riskscore] ([rasID], [gender], [age], [sgpt], [hbeag], [hbvDna], [origdagte], [ras], [patientID]) VALUES (231, N'Male', 60, CAST(30 AS Decimal(11, 0)), CAST(1 AS Decimal(11, 0)), CAST(41 AS Decimal(11, 0)), CAST(N'2018-04-19T05:21:41.000' AS DateTime), 15, 46)
GO
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (73, CAST(12.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), N'Need Check up in Hospital', CAST(N'1900-01-01' AS Date), 37)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (74, CAST(9.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'1900-01-01' AS Date), 38)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (75, CAST(9.000 AS Decimal(10, 3)), CAST(0.300 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'1900-01-01' AS Date), 39)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (76, CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'1900-01-01' AS Date), 40)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (77, CAST(9.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'2018-04-19' AS Date), 42)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (78, CAST(9.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'2018-04-19' AS Date), 44)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (79, CAST(8.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'1900-01-01' AS Date), 43)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (80, CAST(12.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Need Check up in Hospital', CAST(N'2018-04-19' AS Date), 46)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (81, CAST(9.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'2018-04-19' AS Date), 47)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (82, CAST(9.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'2018-04-19' AS Date), 45)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (83, CAST(8.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'1900-01-01' AS Date), 48)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (84, CAST(12.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Need Check up in Hospital', CAST(N'2018-04-19' AS Date), 50)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (85, CAST(9.000 AS Decimal(10, 3)), CAST(0.300 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'1900-01-01' AS Date), 51)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (86, CAST(0.000 AS Decimal(10, 3)), CAST(0.000 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'1900-01-01' AS Date), 52)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (87, CAST(9.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'2018-04-19' AS Date), 53)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (88, CAST(9.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'2018-04-19' AS Date), 54)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (89, CAST(8.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'1900-01-01' AS Date), 55)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (90, CAST(12.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Need Check up in Hospital', CAST(N'2018-04-19' AS Date), 56)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (91, CAST(9.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'2018-04-19' AS Date), 57)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (92, CAST(9.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'2018-04-19' AS Date), 58)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (93, CAST(8.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Refer back Every three Months for 1 year', CAST(N'1900-01-01' AS Date), 59)
INSERT [dbo].[screening] ([screeningID], [afp], [tumuorSize], [result], [screeningDate], [patientID]) VALUES (94, CAST(12.000 AS Decimal(10, 3)), CAST(0.200 AS Decimal(10, 3)), N'Need Check up in Hospital', CAST(N'2018-04-19' AS Date), 60)
GO
ALTER TABLE [dbo].[bloodtest]  WITH CHECK ADD  CONSTRAINT [FK_bloodtest_patients] FOREIGN KEY([patientID])
REFERENCES [dbo].[patients] ([patientID])
GO
ALTER TABLE [dbo].[bloodtest] CHECK CONSTRAINT [FK_bloodtest_patients]
GO
ALTER TABLE [dbo].[riskscore]  WITH CHECK ADD  CONSTRAINT [FK_riskscore_patients] FOREIGN KEY([patientID])
REFERENCES [dbo].[patients] ([patientID])
GO
ALTER TABLE [dbo].[riskscore] CHECK CONSTRAINT [FK_riskscore_patients]
GO
ALTER TABLE [dbo].[screening]  WITH CHECK ADD  CONSTRAINT [FK_screening_patients] FOREIGN KEY([patientID])
REFERENCES [dbo].[patients] ([patientID])
GO
ALTER TABLE [dbo].[screening] CHECK CONSTRAINT [FK_screening_patients]
GO
USE [master]
GO
ALTER DATABASE [Covid19_Community] SET  READ_WRITE 
GO

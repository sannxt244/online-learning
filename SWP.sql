create database SWP
USE [SWP]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [FK_user_Role1]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [FK_user_RegisterStatus]
GO
ALTER TABLE [dbo].[Subject_Topic] DROP CONSTRAINT [FK_Subject_Topic_course]
GO
ALTER TABLE [dbo].[Student_Answer] DROP CONSTRAINT [FK_Student_Answer_user]
GO
ALTER TABLE [dbo].[Student_Answer] DROP CONSTRAINT [FK_Student_Answer_Quiz]
GO
ALTER TABLE [dbo].[Student_Answer] DROP CONSTRAINT [FK_Student_Answer_Question]
GO
ALTER TABLE [dbo].[Role_Feature] DROP CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Role_Feature] DROP CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[ResetPassword_Log] DROP CONSTRAINT [FK_ResetPassword_Log_user]
GO
ALTER TABLE [dbo].[Quiz] DROP CONSTRAINT [FK_Quiz_Subject_Topic]
GO
ALTER TABLE [dbo].[Question] DROP CONSTRAINT [FK_Question_Subject_Topic]
GO
ALTER TABLE [dbo].[Price_Package] DROP CONSTRAINT [FK_Price_Package_Package]
GO
ALTER TABLE [dbo].[Price_Package] DROP CONSTRAINT [FK_Price_Package_course]
GO
ALTER TABLE [dbo].[Lesson] DROP CONSTRAINT [FK_Lesson_Subject_Topic]
GO
ALTER TABLE [dbo].[Course_Register] DROP CONSTRAINT [FK_Course_Register_user]
GO
ALTER TABLE [dbo].[Course_Register] DROP CONSTRAINT [FK_Course_Register_State]
GO
ALTER TABLE [dbo].[Course_Register] DROP CONSTRAINT [FK_Course_Register_Package]
GO
ALTER TABLE [dbo].[Course_Register] DROP CONSTRAINT [FK_Course_Register_course]
GO
ALTER TABLE [dbo].[Course_Dimension] DROP CONSTRAINT [FK_Course_Dimension_Dimension]
GO
ALTER TABLE [dbo].[Course_Dimension] DROP CONSTRAINT [FK_Course_Dimension_course]
GO
ALTER TABLE [dbo].[course] DROP CONSTRAINT [FK_course_user]
GO
ALTER TABLE [dbo].[course] DROP CONSTRAINT [FK_course_Category]
GO
ALTER TABLE [dbo].[Blog] DROP CONSTRAINT [FK_Blog_user]
GO
ALTER TABLE [dbo].[Blog] DROP CONSTRAINT [FK_Blog_Category]
GO
ALTER TABLE [dbo].[Answer] DROP CONSTRAINT [FK_Answer_Question]
GO
/****** Object:  Table [dbo].[user]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[Subject_Topic]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Subject_Topic]') AND type in (N'U'))
DROP TABLE [dbo].[Subject_Topic]
GO
/****** Object:  Table [dbo].[Student_Answer]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Answer]') AND type in (N'U'))
DROP TABLE [dbo].[Student_Answer]
GO
/****** Object:  Table [dbo].[State]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[State]') AND type in (N'U'))
DROP TABLE [dbo].[State]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Slider]') AND type in (N'U'))
DROP TABLE [dbo].[Slider]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role_Feature]') AND type in (N'U'))
DROP TABLE [dbo].[Role_Feature]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[ResetPassword_Log]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetPassword_Log]') AND type in (N'U'))
DROP TABLE [dbo].[ResetPassword_Log]
GO
/****** Object:  Table [dbo].[RegisterStatus]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegisterStatus]') AND type in (N'U'))
DROP TABLE [dbo].[RegisterStatus]
GO
/****** Object:  Table [dbo].[Quiz_Type]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quiz_Type]') AND type in (N'U'))
DROP TABLE [dbo].[Quiz_Type]
GO
/****** Object:  Table [dbo].[Quiz_level]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quiz_level]') AND type in (N'U'))
DROP TABLE [dbo].[Quiz_level]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quiz]') AND type in (N'U'))
DROP TABLE [dbo].[Quiz]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type in (N'U'))
DROP TABLE [dbo].[Question]
GO
/****** Object:  Table [dbo].[Price_Package]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Price_Package]') AND type in (N'U'))
DROP TABLE [dbo].[Price_Package]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Package]') AND type in (N'U'))
DROP TABLE [dbo].[Package]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lesson]') AND type in (N'U'))
DROP TABLE [dbo].[Lesson]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feature]') AND type in (N'U'))
DROP TABLE [dbo].[Feature]
GO
/****** Object:  Table [dbo].[Dimension]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dimension]') AND type in (N'U'))
DROP TABLE [dbo].[Dimension]
GO
/****** Object:  Table [dbo].[Course_Register]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_Register]') AND type in (N'U'))
DROP TABLE [dbo].[Course_Register]
GO
/****** Object:  Table [dbo].[Course_Dimension]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_Dimension]') AND type in (N'U'))
DROP TABLE [dbo].[Course_Dimension]
GO
/****** Object:  Table [dbo].[course]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[course]') AND type in (N'U'))
DROP TABLE [dbo].[course]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Blog]') AND type in (N'U'))
DROP TABLE [dbo].[Blog]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 6/22/2022 7:39:31 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Answer]') AND type in (N'U'))
DROP TABLE [dbo].[Answer]
GO
/****** Object:  FullTextCatalog [fulltext_ctl]    Script Date: 6/22/2022 7:39:31 AM ******/
GO
DROP FULLTEXT CATALOG [fulltext_ctl]
GO
USE [master]
GO
/****** Object:  Database [SWP]    Script Date: 6/22/2022 7:39:31 AM ******/
DROP DATABASE [SWP]
GO
/****** Object:  Database [SWP]    Script Date: 6/22/2022 7:39:31 AM ******/
CREATE DATABASE [SWP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\SWP1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\SWP1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP] SET COMPATIBILITY_LEVEL = 120
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
ALTER DATABASE [SWP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SWP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP] SET QUERY_STORE = OFF
GO
USE [SWP]
GO
/****** Object:  FullTextCatalog [fulltext_ctl]    Script Date: 6/22/2022 7:39:31 AM ******/
CREATE FULLTEXT CATALOG [fulltext_ctl] AS DEFAULT
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[id] [int] NOT NULL,
	[content] [nvarchar](250) NOT NULL,
	[questionId] [int] NOT NULL,
	[isSolution] [bit] NOT NULL,
	[explain] [nvarchar](max) NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[content] [nvarchar](1000) NOT NULL,
	[createdDate] [date] NOT NULL,
	[categoryId] [int] NOT NULL,
	[createdBy] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[image] [varchar](255) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[description] [nvarchar](1000) NOT NULL,
	[categoryId] [int] NOT NULL,
	[img] [nvarchar](1000) NULL,
	[createdDate] [date] NOT NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_Dimension]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Dimension](
	[courseId] [int] NOT NULL,
	[dimensionId] [int] NOT NULL,
 CONSTRAINT [PK_Course_Dimension] PRIMARY KEY CLUSTERED 
(
	[courseId] ASC,
	[dimensionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_Register]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Register](
	[username] [nvarchar](50) NOT NULL,
	[courseId] [int] NOT NULL,
	[date_register] [date] NOT NULL,
	[stateId] [int] NOT NULL,
	[packageId] [int] NOT NULL,
 CONSTRAINT [PK_Course_Register] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[courseId] ASC,
	[date_register] ASC,
	[stateId] ASC,
	[packageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dimension]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dimension](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[demension] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Dimension] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[link] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[video_link] [nvarchar](250) NULL,
	[html_content] [nvarchar](max) NULL,
	[subjectTopicId] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lesson_Video] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[package_name] [nvarchar](50) NOT NULL,
	[duration] [int] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price_Package]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price_Package](
	[courseId] [int] NOT NULL,
	[packageId] [int] NOT NULL,
	[price] [int] NULL,
	[priceSale] [int] NULL,
 CONSTRAINT [PK_Price_Package] PRIMARY KEY CLUSTERED 
(
	[courseId] ASC,
	[packageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Id] [int] NOT NULL,
	[content] [nvarchar](250) NOT NULL,
	[topicId] [int] NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[subjectTopicId] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[duration] [int] NOT NULL,
	[description] [nvarchar](250) NULL,
	[number] [int] NOT NULL,
	[type] [nvarchar](50) NULL,
	[score] [float] NULL,
 CONSTRAINT [PK_Quiz_Lesson] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz_level]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz_level](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[level] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quiz_level] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz_Type]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz_Type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quiz_Type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisterStatus]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterStatus](
	[id] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RegisterStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResetPassword_Log]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResetPassword_Log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[changed] [bit] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[from] [datetime] NOT NULL,
	[to] [datetime] NOT NULL,
 CONSTRAINT [PK_ResetPassword_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[roleId] [int] NOT NULL,
	[featureId] [int] NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC,
	[featureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[content] [nvarchar](250) NULL,
	[link] [nvarchar](250) NOT NULL,
	[image_link] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[id] [int] NOT NULL,
	[state] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Answer]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Answer](
	[username] [nvarchar](50) NOT NULL,
	[answerId] [int] NOT NULL,
	[questionId] [int] NOT NULL,
	[quizId] [int] NOT NULL,
 CONSTRAINT [PK_Student_Answer] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[answerId] ASC,
	[questionId] ASC,
	[quizId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject_Topic]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject_Topic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[courseId] [int] NOT NULL,
	[order] [int] NOT NULL,
 CONSTRAINT [PK_Subject_Topic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 6/22/2022 7:39:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[roleId] [int] NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[email] [nvarchar](250) NOT NULL,
	[mobile] [nvarchar](10) NOT NULL,
	[avatar] [nchar](10) NULL,
	[verify] [bit] NOT NULL,
	[registerDate] [date] NOT NULL,
	[registerStatus] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (1, N'Dennis Ritchie', 1, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (2, N'Ken Thompson', 1, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (3, N'Brian Kernighan', 1, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (4, N'Bjarne Stroustrup', 1, 1, N'Bjarne Stroustrup is the original creator of C++ in 1979 at AT&T Bell Labs.')
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (5, N'C++ is an object oriented programming language', 2, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (6, N'C++ is a procedural programming language', 2, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (7, N'C++ supports both procedural and object oriented programming language', 2, 1, N'C++ supports both procedural(step by step instruction) and object oriented programming (using the concept of classes and objects).')
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (8, N'C++ is a functional programming language', 2, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (9, N'#include [userdefined]', 3, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (10, N'#include “userdefined”', 3, 1, N'C++ uses double quotes to include a user-defined header file. The correct syntax of including user-defined is #include “userdefinedname”.')
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (11, N'#include <userdefined.h>', 3, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (12, N'#include <userdefined>', 3, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (13, N'/* comment */', 4, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (14, N'// comment */', 4, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (15, N'// comment', 4, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (16, N'both // comment or /* comment */', 4, 1, N'Both the ways are used for commenting in C++ programming. // is used for single line comments and /* … */ is used for multiple line comments.')
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (17, N'hg', 5, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (18, N'cpp', 5, 0, NULL)
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (19, N'h', 5, 1, N'.h extensions are used for user defined header files. To include a user defined header file one should use #include”name.h” i.e. enclosed within double quotes.')
INSERT [dbo].[Answer] ([id], [content], [questionId], [isSolution], [explain]) VALUES (20, N'hf', 5, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (8, N'Các nguồn tài nguyên hữu ích cho 1 front-end', N'alo alo', CAST(N'2022-06-03' AS Date), 2, N'dongngochieu33', 0, N'img\blog\21462402_1711126862529318_5852175099460917884_n.jpg')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (9, N'Học như thế nào là phù hợp?', N'', CAST(N'2022-06-03' AS Date), 3, N'dongngochieu33', 1, N'https://education.ec.europa.eu/sites/default/files/styles/eac_ratio_16_9_xl/public/2021-12/Planning%20your%20studies.jpg?h=140710cd&itok=EDqz50YE')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (10, N'Thời gian và Động lực', N'', CAST(N'2022-06-03' AS Date), 3, N'dongngochieu33', 1, N'https://www.studytienganh.vn/upload/2021/04/95793.png')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (11, N'unavailable', N'Fisher College', CAST(N'2021-07-02' AS Date), 1, N'dongngochieu33', 1, N'img\blog\5plearn_logo.png')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (12, N'Felis serval', N'Wah Medical College', CAST(N'2022-04-20' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (13, N'Tadorna tadorna', N'Politeknik Negeri Lhokseumawe', CAST(N'2021-07-08' AS Date), 3, N'dongngochieu33', 0, N'img\blog\5plearn_logo.png')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (14, N'Ovis orientalis', N'Taoist College Singapore', CAST(N'2021-10-05' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (15, N'Gazella granti', N'Weizmann Institute of Science', CAST(N'2022-02-05' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (16, N'Climacteris melanura', N'Tokyo University', CAST(N'2021-06-20' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (17, N'Tauraco porphyrelophus', N'Bushehr University of Medical Sciences', CAST(N'2021-07-04' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (18, N'Macropus giganteus', N'Eberhard-Karls-Universität Tübingen', CAST(N'2022-02-26' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (19, N'Bubulcus ibis', N'Catholic University of the Sacred Heart', CAST(N'2021-12-25' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (20, N'Tayassu tajacu', N'Palestine Polytechnic University', CAST(N'2021-09-19' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (21, N'Dasypus septemcincus', N'Universidad del Sinú', CAST(N'2022-05-12' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (22, N'Manouria emys', N'Universidad del Museo Social Argentino', CAST(N'2022-06-07' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (23, N'Echimys chrysurus', N'Al Ahlia University', CAST(N'2021-10-19' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (24, N'Iguana iguana', N'Universidad Nacional Experimental "Simón Rodriguez"', CAST(N'2021-09-28' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (25, N'Nucifraga columbiana', N'Yaroslavl State Medical Academy', CAST(N'2021-08-06' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (26, N'Gopherus agassizii', N'Université de Kisangani', CAST(N'2021-09-30' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (27, N'Raphicerus campestris', N'Universidad Nacional del Comahue', CAST(N'2021-06-17' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (28, N'Varanus salvator', N'West Coast University', CAST(N'2021-08-05' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (29, N'Neophoca cinerea', N'Akwa Ibom State University of Technology', CAST(N'2022-03-29' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (30, N'Conolophus subcristatus', N'Brooklyn Law School', CAST(N'2022-05-13' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (31, N'Morelia spilotes variegata', N'Ashesi University', CAST(N'2021-08-16' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (32, N'Colobus guerza', N'West Visayas State University', CAST(N'2021-11-19' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (33, N'Paradoxurus hermaphroditus', N'Universidad de León', CAST(N'2022-01-07' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (34, N'Dusicyon thous', N'Hokkaido University', CAST(N'2022-01-20' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (35, N'Alopochen aegyptiacus', N'Astrakhan State University', CAST(N'2022-01-22' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (36, N'Alopex lagopus', N'Instituts Supérieurs de Formation des Maîtres', CAST(N'2022-04-08' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (37, N'Hymenolaimus malacorhynchus', N'Sistema Universitario Ana G. Méndez', CAST(N'2021-12-31' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (39, N'Uraeginthus granatina', N'St. Francis College, Loretto', CAST(N'2022-04-28' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (40, N'Litrocranius walleri', N'Université Catholique de Lyon', CAST(N'2021-08-25' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (42, N'Nasua nasua', N'Technical University of Zielona Gora', CAST(N'2022-05-08' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (43, N'Cordylus giganteus', N'Université Catholique de Louvain', CAST(N'2021-12-10' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (44, N'Amblyrhynchus cristatus', N'Universitas Lampung', CAST(N'2022-05-02' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (45, N'Pitangus sulphuratus', N'Institut des Sciences de la Matière et du Rayonnement', CAST(N'2021-10-09' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (46, N'Axis axis', N'Universidad Iberoamericana', CAST(N'2022-02-12' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (47, N'Sula dactylatra', N'West Chester University of Pennsylvania', CAST(N'2022-02-27' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (48, N'Himantopus himantopus', N'Iwate University', CAST(N'2021-12-27' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (49, N'Dicrurus adsimilis', N'Universidad Mayor de San Simón', CAST(N'2021-06-27' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (50, N'Macropus agilis', N'Augustana College', CAST(N'2022-06-08' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (51, N'Ploceus rubiginosus', N'Veer Kunwar Singh University', CAST(N'2022-01-08' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (52, N'Carduelis uropygialis', N'Universitas Negeri Surabaya', CAST(N'2022-05-16' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (53, N'Agouti paca', N'Universidad Valle del Grijalva', CAST(N'2021-07-22' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (54, N'Rhea americana', N'Universidade de Uberaba', CAST(N'2021-07-18' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (55, N'Phalaropus lobatus', N'Seoul National University of Education', CAST(N'2021-07-11' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (56, N'Felis silvestris lybica', N'Université Catholique de Louvain', CAST(N'2021-10-27' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (57, N'Felis libyca', N'Westfield State College', CAST(N'2021-12-02' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (58, N'Turtur chalcospilos', N'Moscow P. I. Tchaikovsky Conservatory', CAST(N'2022-01-12' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (59, N'Columba palumbus', N'Academy of Fine Arts', CAST(N'2022-01-18' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (60, N'Eubalaena australis', N'University of Da Lat', CAST(N'2022-05-06' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (62, N'Actophilornis africanus', N'Dawat University', CAST(N'2021-08-22' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (63, N'Haliaeetus leucoryphus', N'Kongju National University', CAST(N'2021-09-15' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (64, N'Panthera leo persica', N'Tokyo University of Fisheries', CAST(N'2021-12-06' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (65, N'Phoca vitulina', N'National Chiao Tung University', CAST(N'2022-03-20' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (66, N'Recurvirostra avosetta', N'University of Split', CAST(N'2021-11-10' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (67, N'Eudromia elegans', N'University of Oregon', CAST(N'2021-08-26' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (68, N'Aepyceros mylampus', N'University of South Carolina - Beaufort', CAST(N'2022-01-03' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (69, N'Oreamnos americanus', N'University of Gloucestershire', CAST(N'2022-06-04' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (70, N'Spermophilus lateralis', N'Universidad Tecnológica de El Salvador', CAST(N'2022-02-26' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (71, N'Bassariscus astutus', N'Mekelle University', CAST(N'2021-09-11' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (72, N'Graspus graspus', N'Arkansas State University, Newport', CAST(N'2021-11-16' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (73, N'Kobus leche robertsisaddsdsd', N'Palawan State University', CAST(N'2022-01-05' AS Date), 3, N'dongngochieu33', 0, N'img\blog\pexels-adrien-olichon-2387793.jpg')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (74, N'Bison bison', N'Pennsylvania State University at Harrisburg - The Capital College', CAST(N'2021-10-15' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (75, N'Ovibos moschatus', N'National Sanskrit University', CAST(N'2022-04-28' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (76, N'Vulpes vulpes', N'Voronezh State Technical University', CAST(N'2021-09-05' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (77, N'Petaurus breviceps', N'University of Iceland', CAST(N'2022-02-22' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (78, N'Aegypius tracheliotus', N'China Medical University Shenyang', CAST(N'2022-03-02' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (79, N'Ourebia ourebi', N'Dalarna University College', CAST(N'2021-07-08' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (81, N'Lorythaixoides concolor', N'University of Agriculture and Veterinary Medicine Bucharest', CAST(N'2022-04-04' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (83, N'Oryx gazella', N'American University of Paris', CAST(N'2022-04-05' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (84, N'Proteles cristatus', N'Physical Education Academy "Eugeniusz Piasecki" in Poznan', CAST(N'2021-09-08' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (85, N'Haliaetus vocifer', N'Veer Kunwar Singh University', CAST(N'2021-12-03' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (86, N'Ciconia episcopus', N'Pfeiffer University', CAST(N'2021-10-12' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (88, N'Vulpes chama', N'Rider University', CAST(N'2021-08-07' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (89, N'Globicephala melas', N'Liaoning University', CAST(N'2021-06-24' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (90, N'Cyrtodactylus louisiadensis', N'Mount Allison University', CAST(N'2022-02-24' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (92, N'Ciconia ciconia', N'University of Food Technology', CAST(N'2022-01-07' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (93, N'Vanellus armatus', N'Galillee College', CAST(N'2021-08-26' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (94, N'Felis caracal', N'Fahad Bin Sultan University', CAST(N'2021-12-19' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (95, N'Meleagris gallopavo', N'University of the Southern Caribbean', CAST(N'2021-06-21' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (96, N'Myotis lucifugus', N'Vitebsk State Academy of Veterinary Medicine', CAST(N'2021-07-25' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (97, N'Podargus strigoides', N'Umea University', CAST(N'2021-06-14' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (99, N'Choloepus hoffmani', N'Illinois Valley Community College', CAST(N'2021-10-08' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (100, N'Buteo galapagoensis', N'Hampton College', CAST(N'2022-01-02' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (101, N'Cercopithecus aethiops', N'Universitas Sarjanawiyata Tamansiswa', CAST(N'2021-12-20' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (103, N'Agama sp.', N'Al Fashir University', CAST(N'2022-01-29' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (104, N'Lophoaetus occipitalis', N'Universidad Nacional de Formosa', CAST(N'2021-12-05' AS Date), 1, N'dongngochieu33', 0, N'img\blog\pexels-adrien-olichon-2387793.jpg')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (105, N'Trachyphonus vaillantii', N'Urmia University', CAST(N'2021-09-14' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (106, N'Sceloporus magister', N'Jatiya Kabi Kazi Nazrul Islam University', CAST(N'2021-07-07' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (107, N'Spheniscus magellanicus', N'Dr. Bhim Rao Abdekar University', CAST(N'2021-08-20' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (108, N'Plegadis ridgwayi', N'Jordan Academy of Music / Higher Institute of Music', CAST(N'2021-09-08' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (109, N'Coluber constrictor', N'Austin Community College', CAST(N'2022-02-21' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (111, N'Myiarchus tuberculifer', N'Daffodil International University', CAST(N'2022-06-09' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (113, N'Varanus sp.', N'St. Cloud State University', CAST(N'2021-08-09' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (114, N'Sylvilagus floridanus', N'Rasmussen College', CAST(N'2022-04-10' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (116, N'Tragelaphus strepsiceros', N'Universidad del Caribe', CAST(N'2021-11-07' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (117, N'Macaca mulatta', N'National Transport University', CAST(N'2021-11-07' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (118, N'Ara ararauna', N'Agricultural University of Norway', CAST(N'2021-12-29' AS Date), 2, N'dongngochieu33', 0, N'')
GO
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (119, N'Ictalurus furcatus', N'Mary Baldwin College', CAST(N'2022-03-10' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (120, N'Crotalus cerastes', N'Southwest Agricultural University', CAST(N'2022-04-27' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (121, N'Leptoptilos crumeniferus', N'Université du Centre, Sousse', CAST(N'2022-03-25' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (123, N'Francolinus leucoscepus', N'Universidad Nacional de Entre Ríos', CAST(N'2021-08-15' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (124, N'Theropithecus gelada', N'Western Carolina University', CAST(N'2022-04-02' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (125, N'Dasyurus viverrinus', N'AGH University of Science and Technology', CAST(N'2021-06-20' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (126, N'Mellivora capensis', N'DeVry Institute of Technology, Phoenix', CAST(N'2022-02-01' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (127, N'Zenaida galapagoensis', N'Zhengda Software College', CAST(N'2022-01-21' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (128, N'Trichoglossus haematodus moluccanus', N'Universidad del Rosario', CAST(N'2022-06-01' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (129, N'Lamprotornis sp.', N'Pyongyang University of Science and Technology', CAST(N'2021-07-27' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (130, N'Lepilemur rufescens', N'Université Kasdi Merbah Ouargla', CAST(N'2021-12-05' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (131, N'Leipoa ocellata', N'Jawzjan University', CAST(N'2021-10-06' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (132, N'Lamprotornis chalybaeus', N'Kenya Methodist University', CAST(N'2021-11-20' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (134, N'Spizaetus coronatus', N'Universidad Nacional Experimental "Rafael Maria Baralt"', CAST(N'2022-05-07' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (136, N'Marmota flaviventris', N'University of Architecture, Civil Engineering and Geodesy', CAST(N'2022-05-30' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (137, N'Tamiasciurus hudsonicus', N'Universidad Nacional San Luis Gonzaga', CAST(N'2021-09-28' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (138, N'Lamprotornis nitens', N'Westfälische Wilhelms-Universität Münster', CAST(N'2021-10-31' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (139, N'Chionis alba', N'Universität Flensburg', CAST(N'2022-01-09' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (142, N'Perameles nasuta', N'AISTEDA', CAST(N'2022-03-26' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (143, N'Falco peregrinus', N'Université Paul Valéry (Montpellier III)', CAST(N'2021-08-01' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (144, N'Sarcophilus harrisii', N'Music Academy in Cracow', CAST(N'2022-05-23' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (146, N'Marmota monax', N'Central Queensland University', CAST(N'2022-05-06' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (147, N'Charadrius tricollaris', N'Omsk State Pedagogical University', CAST(N'2021-12-05' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (148, N'Diomedea irrorata', N'Universitas Siliwangi', CAST(N'2022-02-26' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (149, N'Bucorvus leadbeateri', N'Shri Jagannath Sanskrit University', CAST(N'2021-09-10' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (150, N'Leprocaulinus vipera', N'University of Wales, Swansea', CAST(N'2022-01-26' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (151, N'Phalacrocorax niger', N'Southeastern Baptist College', CAST(N'2021-07-08' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (152, N'Passer domesticus', N'Institut des Sciences de l''Ingénieur de Montpellier', CAST(N'2021-11-28' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (153, N'Macropus parryi', N'Barkatullah University', CAST(N'2021-06-14' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (154, N'Porphyrio porphyrio', N'St.Kliment Ohridski University', CAST(N'2021-09-22' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (155, N'Certotrichas paena', N'Karadeniz Technical University', CAST(N'2021-12-25' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (156, N'Cynictis penicillata', N'University of Nairobi', CAST(N'2021-10-17' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (157, N'Castor canadensis', N'Universidad Católica de Ávila', CAST(N'2021-12-08' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (158, N'Branta canadensis', N'Red Sea University', CAST(N'2022-01-03' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (159, N'Callipepla gambelii', N'Universidad Autónoma Metropolitana', CAST(N'2022-03-07' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (160, N'Eolophus roseicapillus', N'Cihan University', CAST(N'2021-12-16' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (162, N'Larus fuliginosus', N'Perdana University', CAST(N'2022-06-01' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (163, N'Hippotragus equinus', N'Western Maryland College', CAST(N'2021-10-27' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (165, N'Cacatua tenuirostris', N'Universität Klagenfurt', CAST(N'2021-07-18' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (166, N'Capra ibex', N'Kigali Health Institute', CAST(N'2021-10-20' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (167, N'Cereopsis novaehollandiae', N'University of the Philippines Mindanao', CAST(N'2022-01-01' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (168, N'Antechinus flavipes', N'Kyrgyz National Agrarian University', CAST(N'2022-01-14' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (169, N'Choriotis kori', N'University of Texas', CAST(N'2021-12-20' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (170, N'Eudyptula minor', N'Islamic Azad University, Gorgan', CAST(N'2021-07-23' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (171, N'Cochlearius cochlearius', N'Universidade para o Desenvolvimento do Alto Vale do Itajaí', CAST(N'2021-11-05' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (172, N'Buteo regalis', N'Czech Technical University of Prague', CAST(N'2021-08-12' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (174, N'Tockus flavirostris', N'Sir Syed Institute Of Technology Islamabad', CAST(N'2021-08-16' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (175, N'Spermophilus armatus', N'Old Dominion University', CAST(N'2021-10-30' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (176, N'Semnopithecus entellus', N'Universidad de Murcia', CAST(N'2021-12-02' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (177, N'Hippotragus niger', N'Instituto Tecnológico Metropolitano', CAST(N'2022-01-18' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (178, N'Speotyte cuniculata', N'Saratov State Medical University', CAST(N'2021-07-21' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (179, N'Ninox superciliaris', N'Universidad Católica Andres Bello', CAST(N'2022-01-25' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (181, N'Genetta genetta', N'National Yunlin University of Science and Technology', CAST(N'2022-04-29' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (184, N'Alcelaphus buselaphus cokii', N'Universidad Empresarial Mateo Kuljis', CAST(N'2021-10-18' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (185, N'Varanus komodensis', N'Allahabad Agricultural Institute, Deemed University', CAST(N'2021-09-20' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (186, N'Terrapene carolina', N'East-West University', CAST(N'2022-04-14' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (188, N'Grus rubicundus', N'Godfrey Okoye University', CAST(N'2021-07-27' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (190, N'Larus dominicanus', N'Hankuk University of Foreign Studies', CAST(N'2021-11-28' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (191, N'Equus burchelli', N'Helsinki University of Technology', CAST(N'2021-12-08' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (192, N'Anastomus oscitans', N'ifs University College', CAST(N'2022-04-20' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (194, N'Canis aureus', N'Southwest University', CAST(N'2022-03-27' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (196, N'Sterna paradisaea', N'Alfred Adler Graduate School', CAST(N'2021-11-16' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (197, N'Nesomimus trifasciatus', N'Ecole Nationale Supérieure d''Electronique et de Radioelectricite de Bordeaux', CAST(N'2022-04-25' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (198, N'Ceratotherium simum', N'Logan College of Chiropractic', CAST(N'2021-09-30' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (201, N'Felis chaus', N'University of Tennessee - Martin', CAST(N'2021-12-08' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (203, N'Bubalornis niger', N'Lutheran Bible Institute of Seattle', CAST(N'2022-01-20' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (204, N'Neotoma sp.', N'East Kazakhstan State University', CAST(N'2021-12-22' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (208, N'Ovis dalli stonei', N'United Nations University', CAST(N'2021-07-19' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (209, N'Prionace glauca', N'University of Wales, Swansea', CAST(N'2021-08-09' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (210, N'Otocyon megalotis', N'Universidad Nacional de General Sarmiento', CAST(N'2021-10-04' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (211, N'Coluber constrictor foxii', N'Sinai University', CAST(N'2022-02-28' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (212, N'Taurotagus oryx', N'University of Strathclyde', CAST(N'2021-11-14' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (214, N'Bettongia penicillata', N'Trisakti Institute of Tourism ', CAST(N'2021-10-29' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (215, N'Dicrostonyx groenlandicus', N'Westwood College', CAST(N'2022-05-01' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (217, N'Macropus rufus', N'Université Paris-Sorbonne (Paris IV)', CAST(N'2022-03-30' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (219, N'Kobus vardonii vardoni', N'The McGregor School of Antioch University', CAST(N'2021-09-18' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (220, N'Castor fiber', N'Shanxi Normal University', CAST(N'2021-10-09' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (221, N'Fratercula corniculata', N'Sojourner-Douglass College', CAST(N'2022-02-03' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (223, N'Milvus migrans', N'Yangzhou University', CAST(N'2022-05-19' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (227, N'Felis concolor', N'University of Tripoli', CAST(N'2021-06-17' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (228, N'Papilio canadensis', N'Spring Hill College', CAST(N'2021-09-08' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (229, N'Oxybelis fulgidus', N'Universidad de San José', CAST(N'2021-07-16' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (230, N'Callorhinus ursinus', N'Athenaeum of Ohio', CAST(N'2021-07-18' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (231, N'Irania gutteralis', N'Thomas A. Edison State College', CAST(N'2021-11-08' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (233, N'Boselaphus tragocamelus', N'Mesa State College', CAST(N'2021-12-18' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (235, N'Bucephala clangula', N'Kagoshima University', CAST(N'2021-10-14' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (236, N'Coendou prehensilis', N'Universidad Tecnológica del Centro', CAST(N'2021-07-22' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (237, N'Macaca fuscata', N'University of North Texas', CAST(N'2022-02-09' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (238, N'Rangifer tarandus', N'Indian Institute of Technology, Roorkee', CAST(N'2022-05-13' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (240, N'Petaurus norfolcensis', N'Universidad del Norte "Santo Tomás de Aquino"', CAST(N'2021-09-28' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (241, N'Mycteria ibis', N'Papua New Guinea University of Technology', CAST(N'2021-11-04' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (242, N'Anathana ellioti', N'Shanxi Agricultural University', CAST(N'2021-11-08' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (243, N'Smithopsis crassicaudata', N'Tierärztliche Hochschule Hannover', CAST(N'2022-05-14' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (244, N'Laniarius ferrugineus', N'University of the Philippines Diliman', CAST(N'2022-02-03' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (245, N'Anthropoides paradisea', N'Dakota State University', CAST(N'2022-03-24' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (246, N'Varanus albigularis', N'Vladivostock State University of Economics', CAST(N'2021-10-27' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (248, N'Agkistrodon piscivorus', N'Institute of Teachers Education, Ilmu Khas', CAST(N'2021-12-04' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (249, N'Sylvicapra grimma', N'Vrije Universiteit Brussel', CAST(N'2022-04-19' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (251, N'Ratufa indica', N'Tzu Chi College of Medicine and Humanities', CAST(N'2022-02-11' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (252, N'Microcebus murinus', N'Université Kofi Annan', CAST(N'2021-08-23' AS Date), 2, N'dongngochieu33', 1, N'')
GO
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (255, N'Lybius torquatus', N'University of Kansas', CAST(N'2022-05-29' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (257, N'Phascogale calura', N'Bermuda College', CAST(N'2021-10-05' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (258, N'Vanellus chilensis', N'University of British Columbia', CAST(N'2021-10-28' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (261, N'Psophia viridis', N'DeVry Institute of Technology, Decatur', CAST(N'2022-05-16' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (262, N'Lama pacos', N'Eastern Michigan University', CAST(N'2021-11-21' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (263, N'Mephitis mephitis', N'Southern Arkansas University', CAST(N'2021-10-31' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (264, N'Leptoptilus dubius', N'Virginia Commonwealth University', CAST(N'2022-05-05' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (265, N'Platalea leucordia', N'Nara University of Education', CAST(N'2021-09-28' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (266, N'Cebus albifrons', N'Universidade do Estado da Bahia', CAST(N'2022-01-22' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (269, N'Lutra canadensis', N'Great Lakes University of Kisumu', CAST(N'2021-11-03' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (270, N'Crax sp.', N'Bidhan Chandra Agricultural University', CAST(N'2021-11-17' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (271, N'Cebus apella', N'University of Wollongong', CAST(N'2021-12-22' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (272, N'Tiliqua scincoides', N'Institute of Commerce and Business', CAST(N'2021-11-22' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (275, N'Phalacrocorax brasilianus', N'Agricultural University of Szczecin', CAST(N'2021-09-02' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (278, N'Geochelone elegans', N'Holy Angel University', CAST(N'2021-10-07' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (279, N'Dendrocygna viduata', N'Universidade Estadual de Santa Cruz', CAST(N'2022-02-25' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (280, N'Amphibolurus barbatus', N'College of Education Ikere', CAST(N'2022-03-31' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (281, N'Canis latrans', N'Hungarian Academy of Craft and Design', CAST(N'2022-01-05' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (282, N'Phalacrocorax albiventer', N'Centre Universitaire d''Oum El Bouaghi', CAST(N'2021-07-21' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (287, N'Delphinus delphis', N'Sam Houston State University', CAST(N'2021-09-23' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (289, N'Uraeginthus angolensis', N'South China University', CAST(N'2021-11-12' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (291, N'Colaptes campestroides', N'Osaka University of Commerce', CAST(N'2021-11-08' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (293, N'Phaethon aethereus', N'Université Hassan II - Aïn Chock', CAST(N'2021-07-15' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (296, N'Panthera leo', N'Universidad Piloto de Colombia', CAST(N'2021-10-03' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (298, N'Canis lupus', N'Central Ostrobothnia University of Applied Sciences', CAST(N'2021-07-14' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (299, N'Ovis musimon', N'Ecole Universitaire d''Ingénieurs de Lille', CAST(N'2021-06-19' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (301, N'Notechis semmiannulatus', N'Gandhara Institute of Medical Sciences', CAST(N'2022-04-06' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (303, N'Thamnolaea cinnmomeiventris', N'Fukui University of Technology', CAST(N'2021-12-19' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (304, N'Hyaena hyaena', N'October 6 university', CAST(N'2021-09-28' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (306, N'Fregata magnificans', N'University of the Sunshine Coast', CAST(N'2021-09-23' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (307, N'Macropus fuliginosus', N'Indian School of Business Management and Administration', CAST(N'2021-12-16' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (309, N'Ictonyx striatus', N'Jeonju University', CAST(N'2022-03-05' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (311, N'Spermophilus tridecemlineatus', N'Buckinghamshire New University', CAST(N'2021-07-27' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (312, N'Damaliscus dorcas', N'Kangnam University', CAST(N'2022-03-04' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (313, N'Pelecanus occidentalis', N'Universitas 17 Agustus 1945 Surabaya', CAST(N'2021-11-12' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (314, N'Neotis denhami', N'Open International University for Alternative Medicines', CAST(N'2021-11-24' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (320, N'Pavo cristatus', N'University of Kalyani', CAST(N'2022-04-03' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (321, N'Bubalus arnee', N'Northeastern State University', CAST(N'2022-01-29' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (323, N'Aonyx capensis', N'Universidad del Magdalena', CAST(N'2021-08-07' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (325, N'Galago crassicaudataus', N'Augsburg College', CAST(N'2022-05-07' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (326, N'Tursiops truncatus', N'Uttar Pradesh Technical University', CAST(N'2022-01-01' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (328, N'Procyon cancrivorus', N'Clarke College', CAST(N'2022-01-23' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (329, N'Ammospermophilus nelsoni', N'German University in Cairo', CAST(N'2021-12-27' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (330, N'Gyps bengalensis', N'University of Kurdistan', CAST(N'2021-12-11' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (331, N'Centrocercus urophasianus', N'College of St. Elizabeth', CAST(N'2021-12-08' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (332, N'Chauna torquata', N'West Virginia State College', CAST(N'2022-02-16' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (336, N'Acridotheres tristis', N'Université de Technologie de Belfort Montbéliard', CAST(N'2022-02-15' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (337, N'Taxidea taxus', N'Phillips University', CAST(N'2022-02-17' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (338, N'Sciurus niger', N'China Agricultural University', CAST(N'2021-12-07' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (339, N'Calyptorhynchus magnificus', N'Ulyanovsk State Agricultural Academy', CAST(N'2022-04-20' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (343, N'Elephas maximus bengalensis', N'School of Slavonic and East European Studies, University of London', CAST(N'2021-07-08' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (346, N'Crocodylus niloticus', N'Bahir Dar University', CAST(N'2021-11-26' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (348, N'Pelecans onocratalus', N'Jissen Women''s University', CAST(N'2022-03-07' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (350, N'Physignathus cocincinus', N'Mary Baldwin College', CAST(N'2022-02-20' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (353, N'Ploceus intermedius', N'West Pomeranian Business School in Szczecin', CAST(N'2021-07-10' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (359, N'Alligator mississippiensis', N'Tzu Chi College of Medicine and Humanities', CAST(N'2022-04-13' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (360, N'Helogale undulata', N'Universitas Katolik Widya Manadala', CAST(N'2021-11-25' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (362, N'Ara chloroptera', N'Kentucky Wesleyan College', CAST(N'2021-12-24' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (363, N'Ovis canadensis', N'City University of New York, York College', CAST(N'2022-05-12' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (364, N'Mirounga leonina', N'Ahfad University for Women', CAST(N'2022-04-24' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (366, N'Cervus elaphus', N'Universidad Nacional Experimental "Francisco de Miranda"', CAST(N'2021-06-25' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (367, N'Odocoilenaus virginianus', N'Kostroma State Technological University', CAST(N'2022-05-11' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (372, N'Bugeranus caruncalatus', N'Universitas 17 Agustus 1945 Cirebon', CAST(N'2022-03-22' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (373, N'Oryx gazella callotis', N'CCS Haryana Agricultural University', CAST(N'2021-11-10' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (375, N'Rhabdomys pumilio', N'Universidad de Los Andes', CAST(N'2022-03-21' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (377, N'Equus hemionus', N'Brickfields Asia College', CAST(N'2021-10-09' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (381, N'Milvago chimachima', N'Universidad Nacional de Chimborazo', CAST(N'2021-06-16' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (384, N'Francolinus swainsonii', N'Central State University', CAST(N'2021-06-21' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (386, N'Ephipplorhynchus senegalensis', N'Tokai University Educational System', CAST(N'2022-01-03' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (389, N'Mustela nigripes', N'Rockhurst College', CAST(N'2021-07-06' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (393, N'Gazella thompsonii', N'Universidad Mariano Gálvez', CAST(N'2021-11-08' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (400, N'Camelus dromedarius', N'Livingstone College', CAST(N'2021-08-18' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (406, N'Cebus nigrivittatus', N'Vellore Institute of Technology', CAST(N'2022-04-01' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (407, N'Haliaeetus leucocephalus', N'National Taiwan University', CAST(N'2021-12-20' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (408, N'Sarkidornis melanotos', N'University of Sioux Falls', CAST(N'2021-10-07' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (410, N'Tamandua tetradactyla', N'Universidad Fray Luca Paccioli', CAST(N'2021-11-01' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (412, N'Uraeginthus bengalus', N'Maharishi University of Management', CAST(N'2022-04-05' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (413, N'Cacatua galerita', N'University of Northern Bahr El-Ghazal', CAST(N'2022-01-27' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (415, N'Anas bahamensis', N'Université de 7 Novembre à Carthage', CAST(N'2022-06-02' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (416, N'Haematopus ater', N'Wheeling Jesuit University', CAST(N'2022-03-04' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (417, N'Melursus ursinus', N'Humboldt Universität Berlin', CAST(N'2021-09-24' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (419, N'Streptopelia senegalensis', N'University Of Hawaii - System', CAST(N'2021-08-13' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (420, N'Tragelaphus angasi', N'Raffles University', CAST(N'2021-09-17' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (421, N'Phoenicopterus ruber', N'Beijing Medical University', CAST(N'2022-01-04' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (422, N'Melophus lathami', N'Universidad Interamericana', CAST(N'2022-04-13' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (423, N'Vombatus ursinus', N'1 December University of Alba Iulia', CAST(N'2021-11-15' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (426, N'Columba livia', N'East Central University', CAST(N'2021-08-19' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (430, N'Stercorarius longicausus', N'Addis Ababa University', CAST(N'2021-11-27' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (431, N'Potorous tridactylus', N'University of Iasi', CAST(N'2021-11-07' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (433, N'Mycteria leucocephala', N'Rezekne Higher School', CAST(N'2022-03-16' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (435, N'Aquila chrysaetos', N'Nanjing Union Theological Seminary', CAST(N'2021-08-13' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (437, N'Macaca radiata', N'University of Moncton', CAST(N'2021-06-13' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (440, N'Sitta canadensis', N'Katharine Gibbs School', CAST(N'2022-02-16' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (442, N'Scolopax minor', N'Beijing Polytechnic University', CAST(N'2021-08-02' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (443, N'Paroaria gularis', N'Universidade de Passo Fundo', CAST(N'2022-04-27' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (444, N'Alcelaphus buselaphus caama', N'Kharkiv State Transport Technical University', CAST(N'2021-09-19' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (445, N'Cervus duvauceli', N'Aoyama Gakuin University', CAST(N'2022-05-30' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (449, N'Alectura lathami', N'University of Economics Varna', CAST(N'2022-02-26' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (451, N'Microcavia australis', N'University of Abuja', CAST(N'2021-12-18' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (454, N'Canis lupus baileyi', N'Massachusetts Institute of Technology', CAST(N'2022-05-25' AS Date), 3, N'dongngochieu33', 0, N'')
GO
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (456, N'Bos frontalis', N'Madawalabu University', CAST(N'2021-11-10' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (458, N'Rana sp.', N'Leyte Normal University', CAST(N'2021-09-29' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (459, N'Pseudalopex gymnocercus', N'Bauman Moscow State Technical University', CAST(N'2022-03-14' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (460, N'Agelaius phoeniceus', N'Universidad Monteávila', CAST(N'2022-05-26' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (461, N'Hyaena brunnea', N'Shanghai Medical University', CAST(N'2021-12-10' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (462, N'Bubo virginianus', N'Universidad de Ciencias y Humanidades', CAST(N'2022-04-23' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (463, N'Xerus sp.', N'Universitas Merdeka Madiun', CAST(N'2021-08-31' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (466, N'Haliaetus leucogaster', N'Tumkur University', CAST(N'2022-06-09' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (470, N'Ramphastos tucanus', N'Central Ostrobothnia University of Applied Sciences', CAST(N'2022-04-05' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (473, N'Naja nivea', N'Universidad del Noreste', CAST(N'2021-11-02' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (479, N'Grus antigone', N'Technikum Wien', CAST(N'2022-06-07' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (480, N'Funambulus pennati', N'Shimonoseki City University', CAST(N'2021-12-18' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (482, N'Corvus albicollis', N'Pädagogische Hochschule Ludwigsburg', CAST(N'2021-10-30' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (486, N'Larus novaehollandiae', N'Shiga University', CAST(N'2022-06-05' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (489, N'Alces alces', N'Logistics Engineering University of PLA', CAST(N'2021-07-06' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (490, N'Plegadis falcinellus', N'California Maritime Academy', CAST(N'2022-01-16' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (492, N'Odocoileus hemionus', N'Southwestern Assemblies of God University', CAST(N'2021-08-24' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (494, N'Catharacta skua', N'Toyo Gakuen University', CAST(N'2022-02-11' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (498, N'Phoenicopterus chilensis', N'Vlerick Leuven Gent Management School', CAST(N'2022-03-25' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (499, N'Tetracerus quadricornis', N'Yangzhou University', CAST(N'2021-08-28' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (500, N'Ceryle rudis', N'Duale Hochschule Baden-Württemberg', CAST(N'2021-10-22' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (501, N'Balearica pavonina', N'Dr. YS Parmar University of Horticulture and Forestry', CAST(N'2022-06-02' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (503, N'Heloderma horridum', N'Limkokwing University College of Creative Technology', CAST(N'2021-10-09' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (504, N'Ctenophorus ornatus', N'Universidad Francisco Gavidia', CAST(N'2021-08-06' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (505, N'Herpestes javanicus', N'Indian Institute of Technology, Delhi', CAST(N'2021-11-10' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (508, N'Eremophila alpestris', N'Latvian Academy of Culture', CAST(N'2021-08-11' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (511, N'Dasyurus maculatus', N'Humphreys College', CAST(N'2021-09-15' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (512, N'Caiman crocodilus', N'Concordia College, Seward', CAST(N'2021-10-31' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (515, N'Lemur catta', N'Rasmussen College', CAST(N'2022-05-06' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (516, N'Gerbillus sp.', N'Shenyang Institute of Chemical Technology', CAST(N'2022-05-01' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (518, N'Pseudoleistes virescens', N'Saigon University', CAST(N'2022-02-11' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (519, N'Antilope cervicapra', N'Lamphun College of Agriculture and Technology', CAST(N'2022-01-11' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (522, N'Anas punctata', N'Winthrop University', CAST(N'2021-11-30' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (524, N'Nyctereutes procyonoides', N'Southern Wesleyan University', CAST(N'2022-05-02' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (525, N'Spilogale gracilis', N'Kebbi State University of Science and Technology', CAST(N'2022-03-28' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (526, N'Boa caninus', N'Volgograd State Academy of Physical Education', CAST(N'2021-12-20' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (535, N'Vanessa indica', N'Universidad Católica del Uruguay', CAST(N'2022-06-03' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (540, N'Snycerus caffer', N'Afeka Tel Aviv Academic College of Engineering', CAST(N'2022-04-13' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (543, N'Ovis ammon', N'Susquehanna University', CAST(N'2021-09-04' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (544, N'Crotaphytus collaris', N'Universidad del Cono Sur de las Américas', CAST(N'2021-12-18' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (546, N'Gorilla gorilla', N'Penza State University', CAST(N'2022-02-25' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (548, N'Spermophilus richardsonii', N'University of Cape Town', CAST(N'2021-07-22' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (549, N'Nannopterum harrisi', N'University of Modern Sciences', CAST(N'2021-08-04' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (552, N'Sagittarius serpentarius', N'Lake Erie College', CAST(N'2022-03-24' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (554, N'Lemur fulvus', N'Universidad del Valle de Toluca', CAST(N'2022-01-10' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (555, N'Cercatetus concinnus', N'Royal Military College of Canada', CAST(N'2022-05-20' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (559, N'Tachyglossus aculeatus', N'Ecole Européenne de Chimie, Polymères et Matériaux de Strasbourg', CAST(N'2021-08-02' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (562, N'Acrobates pygmaeus', N'Institute of Teachers Education, Technical Education ', CAST(N'2022-05-14' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (565, N'Eutamias minimus', N'Universidad ORT Uruguay', CAST(N'2021-10-06' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (566, N'Dasypus novemcinctus', N'School of Management Fribourg', CAST(N'2021-10-12' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (569, N'Chloephaga melanoptera', N'Shanghai Ouhua Vocational Technical College', CAST(N'2021-11-25' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (570, N'Mazama gouazoubira', N'Iqra University', CAST(N'2021-11-01' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (571, N'Galictis vittata', N'University of Texas Pan American', CAST(N'2022-03-16' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (573, N'Butorides striatus', N'Warsaw School of Economics', CAST(N'2021-12-03' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (574, N'Deroptyus accipitrinus', N'Arab Academy for Banking and Financial Sciences', CAST(N'2021-11-01' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (575, N'Pytilia melba', N'European University of Lefke', CAST(N'2022-05-31' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (585, N'Laniaurius atrococcineus', N'China Agriculture University East', CAST(N'2022-01-09' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (591, N'Pelecanus conspicillatus', N'Institute of Science and Technology', CAST(N'2021-12-04' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (595, N'Anser caerulescens', N'University of North Alabama', CAST(N'2021-09-26' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (596, N'Buteo jamaicensis', N'Niigata College of Pharmacy', CAST(N'2021-08-01' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (604, N'Nyctea scandiaca', N'Colorado State University', CAST(N'2022-04-22' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (609, N'Potos flavus', N'Yanbu Technical Institute', CAST(N'2021-12-14' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (616, N'Gymnorhina tibicen', N'Hainan Normal University', CAST(N'2021-06-15' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (617, N'Naja haje', N'University of Auckland', CAST(N'2021-09-27' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (620, N'Eumetopias jubatus', N'Rutgers, The State University of New Jersey', CAST(N'2021-12-01' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (622, N'Grus canadensis', N'Kolej Universiti Insaniah', CAST(N'2022-01-15' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (625, N'Hippopotamus amphibius', N'Kanagawa University', CAST(N'2021-07-02' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (626, N'Papio ursinus', N'Matsusaka University', CAST(N'2022-01-18' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (628, N'Cygnus atratus', N'Pavlodar University', CAST(N'2022-04-15' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (630, N'Cracticus nigroagularis', N'Ecole Spéciale de Mécanique et d''Electricité', CAST(N'2021-11-30' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (631, N'Aegypius occipitalis', N'North University of Baia Mare', CAST(N'2021-12-21' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (632, N'Damaliscus lunatus', N'Roskilde University', CAST(N'2021-10-14' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (633, N'Oreotragus oreotragus', N'Huaqiao University Quanzhuo', CAST(N'2022-04-23' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (635, N'Orcinus orca', N'Delta University', CAST(N'2021-09-16' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (637, N'Tockus erythrorhyncus', N'Central Michigan University', CAST(N'2021-09-23' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (640, N'Macropus eugenii', N'Military University Shoumen', CAST(N'2021-11-14' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (643, N'Panthera onca', N'Estonian Academy of Security Sciences', CAST(N'2021-11-24' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (646, N'Trichosurus vulpecula', N'Barber-Scotia College', CAST(N'2022-02-25' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (647, N'Terathopius ecaudatus', N'Bauhaus Universität Weimar', CAST(N'2022-05-28' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (654, N'Phalacrocorax carbo', N'Tohoku University of Art and Design', CAST(N'2021-08-26' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (663, N'Speothos vanaticus', N'Patuakhali Science and Technology University', CAST(N'2021-10-12' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (666, N'Aonyx cinerea', N'Pädagogische Hochschule Weingarten', CAST(N'2022-01-30' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (668, N'Didelphis virginiana', N'Austin College', CAST(N'2022-03-11' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (678, N'Geococcyx californianus', N'Southern California College', CAST(N'2022-01-11' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (679, N'Creagrus furcatus', N'University of Trnava', CAST(N'2021-12-30' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (682, N'Tringa glareola', N'Bard College', CAST(N'2021-11-27' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (693, N'Paraxerus cepapi', N'All Nations University College', CAST(N'2022-04-25' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (699, N'Libellula quadrimaculata', N'School of Management', CAST(N'2021-07-06' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (701, N'Lasiorhinus latifrons', N'Université de Mahajanga', CAST(N'2022-05-18' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (715, N'Sciurus vulgaris', N'Institute of Management Sciences, Lahore (IMS)', CAST(N'2022-05-18' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (718, N'Antidorcas marsupialis', N'Fiji School of Medicine', CAST(N'2021-11-18' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (724, N'Epicrates cenchria maurus', N'Humphreys College', CAST(N'2022-05-14' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (726, N'Philetairus socius', N'Technical University of Zielona Gora', CAST(N'2022-05-25' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (732, N'Lama glama', N'Paine College', CAST(N'2021-06-12' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (740, N'Isoodon obesulus', N'North Ossetian State University', CAST(N'2021-12-06' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (742, N'Seiurus aurocapillus', N'University of Roorkee', CAST(N'2022-01-05' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (745, N'Felis wiedi or Leopardus weidi', N'St. Anselm College', CAST(N'2021-09-20' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (746, N'Hystrix indica', N'Eastern Connecticut State University', CAST(N'2021-10-30' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (747, N'Lamprotornis superbus', N'Ecole Nationale Supérieure de Biologie Appliquée à la Nutrition et à l''Alementation', CAST(N'2022-05-20' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (750, N'Marmota caligata', N'Universitas Jambi', CAST(N'2022-04-20' AS Date), 2, N'dongngochieu33', 1, N'')
GO
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (762, N'Pseudocheirus peregrinus', N'Universidad de Córdoba', CAST(N'2022-06-01' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (767, N'Loris tardigratus', N'Universidad del Centro de México', CAST(N'2021-11-20' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (771, N'Ursus americanus', N'University College London, University of London', CAST(N'2021-08-07' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (773, N'Ara macao', N'Roberts Wesleyan College', CAST(N'2021-08-23' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (775, N'Dasyprocta leporina', N'Universidad Metropolitana', CAST(N'2021-07-12' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (778, N'Junonia genoveua', N'Universitatea de Vest "Vasile Goldi&#351;" ', CAST(N'2022-06-03' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (782, N'Gabianus pacificus', N'Jadavpur University', CAST(N'2021-07-29' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (788, N'Geochelone elephantopus', N'International People''s College', CAST(N'2022-02-07' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (790, N'Connochaetus taurinus', N'Sofia University "St. Kliment Ohridski"', CAST(N'2022-03-22' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (793, N'Myrmecophaga tridactyla', N'Dravidian University', CAST(N'2021-11-04' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (804, N'Zenaida asiatica', N'North Dakota State University', CAST(N'2021-09-16' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (805, N'Loxodonta africana', N'Université de Bretagne Sud', CAST(N'2021-07-01' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (807, N'Pedetes capensis', N'Massachusetts Institute of Technology', CAST(N'2022-04-09' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (816, N'Naja sp.', N'Shaqra University', CAST(N'2022-02-23' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (818, N'Erinaceus frontalis', N'The Federal Polytechnic Offa', CAST(N'2022-03-27' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (821, N'Macropus robustus', N'Georgia Health Sciences University', CAST(N'2021-07-20' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (822, N'Thylogale stigmatica', N'Ben-Gurion University of the Negev', CAST(N'2022-01-22' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (827, N'Lycosa godeffroyi', N'Islamic Azad University, Lahijan', CAST(N'2022-03-16' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (829, N'Bos taurus', N'Mississippi State University', CAST(N'2022-06-10' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (839, N'Ardea golieth', N'National University', CAST(N'2021-09-27' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (848, N'Fulica cristata', N'West Suburban College of Nursing', CAST(N'2021-11-29' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (853, N'Propithecus verreauxi', N'Universidad Obrera de Mexico', CAST(N'2022-04-11' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (856, N'Limnocorax flavirostra', N'Qinghai University', CAST(N'2022-01-06' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (859, N'Motacilla aguimp', N'University of Catania', CAST(N'2022-02-25' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (860, N'Eurocephalus anguitimens', N'Ling Tung University', CAST(N'2022-04-27' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (863, N'Falco mexicanus', N'Yazd University', CAST(N'2021-06-21' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (870, N'Phoeniconaias minor', N'Champlain College', CAST(N'2022-02-15' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (878, N'Phalacrocorax varius', N'Barkatullah University', CAST(N'2022-05-23' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (895, N'Neophron percnopterus', N'University of Applied Sciences Basel (FHBB )', CAST(N'2021-09-21' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (898, N'Ateles paniscus', N'Mount Vernon Nazarene College', CAST(N'2022-04-23' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (899, N'Mungos mungo', N'University of Abuja', CAST(N'2022-02-22' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (900, N'Plectopterus gambensis', N'South China Construction University', CAST(N'2022-05-02' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (911, N'Pycnonotus nigricans', N'Fasa Faculty of Medical Sciences', CAST(N'2021-07-01' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (915, N'Otaria flavescens', N'Pomona College', CAST(N'2022-02-21' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (919, N'Phalaropus fulicarius', N'Matsusaka University', CAST(N'2021-08-10' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (926, N'Cervus canadensis', N'University of Aden', CAST(N'2022-06-05' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (928, N'Crocuta crocuta', N'Perdana University', CAST(N'2021-09-10' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (932, N'Pan troglodytes', N'Barat College', CAST(N'2022-01-05' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (933, N'Erethizon dorsatum', N'Universidad Nacional Abierta y a Distancia', CAST(N'2022-04-23' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (934, N'Chelodina longicollis', N'Middle East University', CAST(N'2021-12-17' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (938, N'Nectarinia chalybea', N'Nizhny Novgorod State University', CAST(N'2022-05-27' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (944, N'Spheniscus mendiculus', N'Kobe Gakuin University', CAST(N'2021-09-12' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (946, N'Dacelo novaeguineae', N'Kyoto Prefectural University of Medicine', CAST(N'2022-02-06' AS Date), 2, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (949, N'Eira barbata', N'Bangalore University', CAST(N'2021-12-02' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (963, N'Sauromalus obesus', N'Catholic University in Zimbabwe', CAST(N'2021-10-01' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (968, N'Lepus townsendii', N'Université Hassan II - Mohammadia', CAST(N'2021-09-05' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (977, N'Papio cynocephalus', N'Lynchburg College', CAST(N'2022-04-30' AS Date), 1, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (984, N'Macropus rufogriseus', N'Gifu University for Education and Languages', CAST(N'2021-11-27' AS Date), 1, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (996, N'Ardea cinerea', N'Radford University', CAST(N'2022-02-07' AS Date), 3, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (1002, N'Diceros bicornis', N'Kharkiv National University of Economics', CAST(N'2021-11-02' AS Date), 3, N'dongngochieu33', 1, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (1004, N'Egretta thula', N'Yangzhou University', CAST(N'2021-10-18' AS Date), 2, N'dongngochieu33', 0, N'')
INSERT [dbo].[Blog] ([id], [title], [content], [createdDate], [categoryId], [createdBy], [isActive], [image]) VALUES (1011, N'Day la blog test lan', N'Blogger is an American online content management system which enables multi-user blogs with time-stamped entries. Pyra Labs developed it before being acquired by Google in 2003. Google hosts the blogs, which can be accessed through a subdomain of blogspot.com', CAST(N'2022-06-14' AS Date), 2, N'dongngochieu33', 0, N'img\blog\dashboard.png')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [categoryName], [description]) VALUES (1, N'Back-End Languages', N'Coding Languages for back-end')
INSERT [dbo].[Category] ([id], [categoryName], [description]) VALUES (2, N'Font-End Languages', N'Coding Languages for Font-end')
INSERT [dbo].[Category] ([id], [categoryName], [description]) VALUES (3, N'Other', N'Something new . . .')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[course] ON 

INSERT [dbo].[course] ([id], [name], [isActive], [created_by], [description], [categoryId], [img], [createdDate]) VALUES (1, N'C++ for Beginners', 1, N'dongngochieu33', N'C++ is a powerful general-purpose programming language. ', 1, N'https://i.ytimg.com/vi/MNeX4EGtR5Y/maxresdefault.jpg', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[course] ([id], [name], [isActive], [created_by], [description], [categoryId], [img], [createdDate]) VALUES (2, N'Java for Beginners', 1, N'dongngochieu33', N'Java is a powerful general-purpose programming language.', 1, N'https://i.ytimg.com/vi/l9AzO1FMgM8/maxresdefault.jpg', CAST(N'2022-01-02' AS Date))
INSERT [dbo].[course] ([id], [name], [isActive], [created_by], [description], [categoryId], [img], [createdDate]) VALUES (3, N'HTML for Beginners', 1, N'dongngochieu33', N'The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser.', 2, N'https://i.ytimg.com/vi/ok-plXXHlWw/maxresdefault.jpg', CAST(N'2022-02-28' AS Date))
INSERT [dbo].[course] ([id], [name], [isActive], [created_by], [description], [categoryId], [img], [createdDate]) VALUES (4, N'CSS for Beginners', 1, N'dongngochieu33', N'CSS is the language we use to style an HTML document. ', 2, N'https://i.ytimg.com/vi/OEV8gMkCHXQ/mqdefault.jpg', CAST(N'2022-03-05' AS Date))
INSERT [dbo].[course] ([id], [name], [isActive], [created_by], [description], [categoryId], [img], [createdDate]) VALUES (5, N'JavaScript for Beginners', 1, N'dongngochieu33', N'JavaScript is a powerful and flexible programming language.', 2, N'https://i.ytimg.com/vi/DHjqpvDnNGE/maxresdefault.jpg', CAST(N'2022-03-06' AS Date))
INSERT [dbo].[course] ([id], [name], [isActive], [created_by], [description], [categoryId], [img], [createdDate]) VALUES (6, N'Python for Beginners', 1, N'dongngochieu33', N'Python is a powerful general-purpose programming language.', 1, N'https://i.ytimg.com/vi/x7X9w_GIm1s/maxresdefault.jpg', CAST(N'2022-05-05' AS Date))
INSERT [dbo].[course] ([id], [name], [isActive], [created_by], [description], [categoryId], [img], [createdDate]) VALUES (7, N'Rust for Beginners', 1, N'dongngochieu33', N'Rust is a multi-paradigm, general-purpose programming language.', 1, N'https://i.ytimg.com/vi/5C_HPTJg5ek/maxresdefault.jpg', CAST(N'2022-05-16' AS Date))
INSERT [dbo].[course] ([id], [name], [isActive], [created_by], [description], [categoryId], [img], [createdDate]) VALUES (8, N'React for Beginners', 1, N'dongngochieu33', N'React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library for building user interfaces based on UI components.', 2, N'https://i.ytimg.com/vi/Tn6-PIqc4UM/maxresdefault.jpg', CAST(N'2022-05-30' AS Date))
INSERT [dbo].[course] ([id], [name], [isActive], [created_by], [description], [categoryId], [img], [createdDate]) VALUES (9, N'PHP for Beginners', 1, N'dongngochieu33', N'PHP is a general-purpose scripting language geared toward web development.', 1, N'https://i.ytimg.com/vi/a7_WFUlFS94/maxresdefault.jpg', CAST(N'2022-06-01' AS Date))
SET IDENTITY_INSERT [dbo].[course] OFF
GO
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'aalflattkp', 6, CAST(N'2022-02-02' AS Date), 3, 3)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'aalflattkp', 7, CAST(N'2022-01-01' AS Date), 2, 1)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'aalflattkp', 7, CAST(N'2022-02-04' AS Date), 1, 1)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'ahurnell9l', 1, CAST(N'2022-01-15' AS Date), 1, 2)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'ahurnell9l', 2, CAST(N'2022-01-17' AS Date), 1, 3)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'ahurnell9l', 7, CAST(N'2022-01-20' AS Date), 1, 2)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'aplaskett5x', 6, CAST(N'2022-01-25' AS Date), 1, 1)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'aschurickee4', 6, CAST(N'2022-02-02' AS Date), 1, 2)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'aschurickee4', 7, CAST(N'2022-02-03' AS Date), 1, 3)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'dongngochieu33', 1, CAST(N'2022-06-03' AS Date), 1, 2)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'dongngochieu33', 2, CAST(N'2022-05-05' AS Date), 1, 1)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'dongngochieu33', 5, CAST(N'2022-05-06' AS Date), 1, 3)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'dongngochieu33', 6, CAST(N'2022-01-30' AS Date), 1, 1)
INSERT [dbo].[Course_Register] ([username], [courseId], [date_register], [stateId], [packageId]) VALUES (N'dongngochieu33', 7, CAST(N'2022-02-02' AS Date), 2, 2)
GO
SET IDENTITY_INSERT [dbo].[Lesson] ON 

INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (79, N'C++ HOME', N'', N' <p>C++ is a popular programming language.</p><p>C++ is used to create computer programs, and is one of the most used language in game development.</p>         ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (80, N'C++ Intro', N'', N'<h2>What is C++?</h2><p>C++ is a cross-platform language that can be used to create high-performance applications.</p><p>C++ was developed by Bjarne Stroustrup, as an extension to the C language.</p><p>C++ gives programmers a high level of control over system resources and memory.</p><p>The language was updated 4 major times in 2011, 2014, 2017, and 2020 to C++11, C++14, C++17, C++20.</p><hr><h2>Why Use C++</h2><p>C++ is one of the world''s most popular programming languages.</p><p>C++ can be found in today''s operating systems, Graphical User Interfaces, and embedded systems.</p><p>C++ is an object-oriented programming language which gives a clear structure to programs and allows code to be reused, lowering development costs.</p><p>C++ is portable and can be used to develop applications that can be adapted to multiple platforms.</p><p>C++ is fun and easy to learn!</p><p>As C++ is close to C# and Java, it makes it easy for programmers to switch to C++ or vice versa.</p><hr><h2>Difference between C and C++</h2><p>C++ was developed as an extension of C, and both languages have almost the same syntax.</p><p>The main difference between C and C++ is that C++ support classes and objects, while C does not.</p>   ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (81, N'C++ Get started', N'', N'<h2>C++ Get Started</h2><p>To start using C++, you need two things:</p><ul><li>A text editor, like Notepad, to write C++ code</li><li>A compiler, like GCC, to translate the C++ code into a language that the computer will understand</li></ul><p>There are many text editors and compilers to choose from. In this tutorial, we will use an IDE (see below).</p><hr><h2>C++ Install IDE</h2><p>An IDE (Integrated Development Environment) is used to edit AND compile the code.</p><p>Popular IDE''s include Code::Blocks, Eclipse, and Visual Studio. These are all free, and they can be used to both edit and debug C++ code.</p><p><strong>Note:</strong> Web-based IDE''s can work as well, but functionality is limited.</p><p>We will use <strong>Code::Blocks</strong> in our tutorial, which we believe is a good place to start.</p><p>You can find the latest version of Codeblocks at <a href="https://www.codeblocks.org/downloads/binaries/" target="_blank">http://www.codeblocks.org/</a>. Download the <code class="w3-codespan">mingw-setup.exe</code> file, which will install the text editor with a compiler. </p><hr><h2>C++ Quickstart</h2><p>Let''s create our first C++ file.</p><p>Open Codeblocks and go to <strong>File &gt; New &gt; Empty File</strong>.</p><p>Write the following C++ code and save the file as <code class="w3-codespan">myfirstprogram.cpp</code> (<strong>File &gt; Save File as</strong>):</p><div class="w3-example"><h4>myfirstprogram.cpp</h4><div class="w3-code notranslate javaHigh"><span class="javacolor" style="color:black"><span class="javanumbercolor" style="color:red"></span> #include &lt;iostream&gt;<br>using namespace std;<br><br><span class="javakeywordcolor" style="color:mediumblue">int</span> main(){<br>&nbsp; <span class="javanumbercolor" style="color:red"></span> cout &lt;&lt; <span class="javastringcolor" style="color:brown">"Hello World!"</span>;<br>&nbsp; <span class="javakeywordcolor" style="color:mediumblue">return</span> <span class="javanumbercolor" style="color:red">0</span>;<br>}</span></div></div><p>Don''t worry if you don''t understand the code above - we will discuss it in detail in later chapters. For now, focus on how to run the code.</p><p>In Codeblocks, it should look like this:</p><img src="https://www.w3schools.com/CPP/codeblocks2.png" style="width:100%;xmax-width:542px" class="w3-border"><p>Then, go to <strong>Build &gt; Build and Run</strong> to run (execute) the program. The result will look something to this:</p><div class="w3-example w3-padding-16"><div class="notranslate w3-black w3-padding"> <code> Hello World!<br>Process returned 0 (0x0) execution time : 0.011 s<br>Press any key to continue.</code></div></div><p><strong>Congratulations</strong>! You have now written and executed your first C++ program.</p><hr><h2>Learning C++ At W3Schools</h2><p>When learning C++ at W3Schools.com, you can use our "Try it Yourself" tool, which shows both the code and the result. This will make it easier for you to understand every part as we move forward:</p><div class="w3-example"><h3>myfirstprogram.cpp</h3><p>Code:</p><div class="w3-code notranslate javaHigh"><span class="javacolor" style="color:black"><span class="javanumbercolor" style="color:red"></span> #include &lt;iostream&gt;<br>using namespace std;<br><br><span class="javakeywordcolor" style="color:mediumblue">int</span> main(){<br>&nbsp; <span class="javanumbercolor" style="color:red"></span> cout &lt;&lt; <span class="javastringcolor" style="color:brown">"Hello World!"</span>;<br>&nbsp; <span class="javakeywordcolor" style="color:mediumblue">return</span> <span class="javanumbercolor" style="color:red">0</span>;<br>}</span></div><p>Result:</p><div class="notranslate w3-black w3-padding"> <code> Hello World!</code></div></div>', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (82, N'C++ Syntax', N'videos/1.mp4', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (83, N'C++ Output', N'videos/2.mp4', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (84, N'C++ Comments', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (85, N'C++ Variables', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (86, N'C++ User input', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (87, N'C++ Data types', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (88, N'C++ Operators', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (89, N'C++ Strings', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (90, N'C++ Math', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (91, N'C++ Booleans', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (92, N'C++ Conditions', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (93, N'C++ Switch', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (94, N'C++ While loop', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (95, N'C++ For loop', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (96, N'C++ Break/Continue', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (97, N'C++ Arrays', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (98, N'C++ Structures', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (99, N'C++ References', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (100, N'C++ Pointers', N'', N'          ', 1, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (101, N'C++ Functions', N'', N'          ', 2, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (102, N'C++ Function Parameters', N'', N'          ', 2, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (103, N'C++ Function Overloading', N'', N'          ', 2, N'')
INSERT [dbo].[Lesson] ([id], [name], [video_link], [html_content], [subjectTopicId], [type]) VALUES (104, N'C++ Recursion', N'', N'          ', 2, N'')
SET IDENTITY_INSERT [dbo].[Lesson] OFF
GO
SET IDENTITY_INSERT [dbo].[Package] ON 

INSERT [dbo].[Package] ([id], [package_name], [duration]) VALUES (1, N'1 Month', 1)
INSERT [dbo].[Package] ([id], [package_name], [duration]) VALUES (2, N'3 Month', 3)
INSERT [dbo].[Package] ([id], [package_name], [duration]) VALUES (3, N'Forever', 10)
SET IDENTITY_INSERT [dbo].[Package] OFF
GO
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (1, 1, 50, 45)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (1, 2, 150, 120)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (1, 3, 500, 400)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (2, 1, 55, 50)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (2, 2, 155, 125)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (2, 3, 550, 450)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (3, 1, 60, 65)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (3, 2, 160, 130)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (3, 3, 560, 460)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (4, 1, 50, 40)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (4, 2, 150, 140)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (4, 3, 650, 540)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (5, 1, 60, 50)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (5, 2, 160, 150)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (5, 3, 660, 600)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (6, 1, 70, 80)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (6, 2, 170, 160)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (6, 3, 670, 540)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (7, 1, 80, 70)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (7, 2, 180, 170)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (7, 3, 680, 640)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (8, 1, 90, 80)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (8, 2, 190, 180)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (8, 3, 690, 650)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (9, 1, 75, 70)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (9, 2, 200, 190)
INSERT [dbo].[Price_Package] ([courseId], [packageId], [price], [priceSale]) VALUES (9, 3, 700, 640)
GO
INSERT [dbo].[Question] ([Id], [content], [topicId]) VALUES (1, N'Who invented C++?', 1)
INSERT [dbo].[Question] ([Id], [content], [topicId]) VALUES (2, N'What is C++?', 1)
INSERT [dbo].[Question] ([Id], [content], [topicId]) VALUES (3, N'Which of the following is the correct syntax of including a user defined header files in C++?', 1)
INSERT [dbo].[Question] ([Id], [content], [topicId]) VALUES (4, N'Which of the following is used for comments in C++?', 1)
INSERT [dbo].[Question] ([Id], [content], [topicId]) VALUES (5, N'Which of the following user-defined header file extension used in c++?', 1)
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (73, 1, N'C++ fundamental', 420, NULL, 5, NULL, 4)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (74, 1, N'C++ Functions', -1, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (75, 1, N'C++ Functions', 10, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (76, 1, N'C++ Functions', 10, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (77, 1, N'C++ Functions', -1, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (78, 1, N'C++ Functions', 10, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (79, 1, N'C++ Functions', 10, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (80, 1, N'C++ Functions', -1, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (81, 1, N'C++ Functions', -1, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (82, 1, N'C++ Functions', -1, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (83, 1, N'C++ Functions', -1, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (84, 1, N'C++ Functions', -1, NULL, 5, NULL, NULL)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (85, 1, N'C++ Functions', 420, NULL, 5, NULL, 2)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (86, 1, N'C++ Functions', 420, NULL, 5, NULL, 2)
INSERT [dbo].[Quiz] ([id], [subjectTopicId], [name], [duration], [description], [number], [type], [score]) VALUES (87, 1, N'C++ Functions', 420, NULL, 5, NULL, 0)
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
INSERT [dbo].[RegisterStatus] ([id], [status]) VALUES (1, N'confirmed')
INSERT [dbo].[RegisterStatus] ([id], [status]) VALUES (2, N'pending')
INSERT [dbo].[RegisterStatus] ([id], [status]) VALUES (3, N'cancel')
GO
SET IDENTITY_INSERT [dbo].[ResetPassword_Log] ON 

INSERT [dbo].[ResetPassword_Log] ([id], [changed], [username], [from], [to]) VALUES (1, 1, N'dongngochieu33', CAST(N'2022-05-28T13:52:14.527' AS DateTime), CAST(N'2022-05-28T13:57:14.527' AS DateTime))
INSERT [dbo].[ResetPassword_Log] ([id], [changed], [username], [from], [to]) VALUES (2, 1, N'dongngochieu33', CAST(N'2022-05-28T13:52:24.967' AS DateTime), CAST(N'2022-05-28T13:57:24.967' AS DateTime))
INSERT [dbo].[ResetPassword_Log] ([id], [changed], [username], [from], [to]) VALUES (3, 1, N'dongngochieu33', CAST(N'2022-05-28T14:03:50.767' AS DateTime), CAST(N'2022-05-28T14:08:50.767' AS DateTime))
INSERT [dbo].[ResetPassword_Log] ([id], [changed], [username], [from], [to]) VALUES (4, 1, N'dongngochieu33', CAST(N'2022-05-28T14:05:35.497' AS DateTime), CAST(N'2022-05-28T14:10:35.497' AS DateTime))
INSERT [dbo].[ResetPassword_Log] ([id], [changed], [username], [from], [to]) VALUES (5, 1, N'dongngochieu33', CAST(N'2022-05-28T14:06:21.400' AS DateTime), CAST(N'2022-05-28T14:11:21.400' AS DateTime))
INSERT [dbo].[ResetPassword_Log] ([id], [changed], [username], [from], [to]) VALUES (6, 1, N'dongngochieu33', CAST(N'2022-05-28T14:06:30.370' AS DateTime), CAST(N'2022-05-28T14:11:30.370' AS DateTime))
SET IDENTITY_INSERT [dbo].[ResetPassword_Log] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [roleName]) VALUES (1, N'customer')
INSERT [dbo].[Role] ([id], [roleName]) VALUES (2, N'expert')
INSERT [dbo].[Role] ([id], [roleName]) VALUES (3, N'admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([id], [title], [content], [link], [image_link]) VALUES (1, N'Python for Beginners', N'Python is a powerful general-purpose programming language.', N'coursedetail?id=6', N'https://i.ytimg.com/vi/x7X9w_GIm1s/maxresdefault.jpg')
INSERT [dbo].[Slider] ([id], [title], [content], [link], [image_link]) VALUES (2, N'Rust for Beginners', N'Rust is a multi-paradigm, general-purpose programming language.', N'coursedetail?id=7', N'https://i.ytimg.com/vi/5C_HPTJg5ek/maxresdefault.jpg')
INSERT [dbo].[Slider] ([id], [title], [content], [link], [image_link]) VALUES (3, N'React for Beginners', N'React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library for building user interfaces based on UI components.', N'coursedetail?id=8', N'https://i.ytimg.com/vi/Tn6-PIqc4UM/maxresdefault.jpg')
INSERT [dbo].[Slider] ([id], [title], [content], [link], [image_link]) VALUES (4, N'PHP for Beginners', N'PHP is a general-purpose scripting language geared toward web development.', N'coursedetail?id=9', N'https://i.ytimg.com/vi/a7_WFUlFS94/maxresdefault.jpg')
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
INSERT [dbo].[State] ([id], [state]) VALUES (1, N'Success')
INSERT [dbo].[State] ([id], [state]) VALUES (2, N'Cancelled')
INSERT [dbo].[State] ([id], [state]) VALUES (3, N'Submitted')
GO
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 1, 1, 85)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 1, 1, 86)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 1, 1, 87)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 3, 1, 73)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 5, 2, 87)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 6, 2, 73)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 6, 2, 85)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 6, 2, 86)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 9, 3, 87)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 10, 3, 73)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 10, 3, 85)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 10, 3, 86)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 13, 4, 73)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 13, 4, 85)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 13, 4, 86)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 14, 4, 87)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 17, 5, 85)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 17, 5, 86)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 18, 5, 87)
INSERT [dbo].[Student_Answer] ([username], [answerId], [questionId], [quizId]) VALUES (N'admin', 19, 5, 73)
GO
SET IDENTITY_INSERT [dbo].[Subject_Topic] ON 

INSERT [dbo].[Subject_Topic] ([id], [name], [courseId], [order]) VALUES (1, N'C++ Functions', 1, 1)
INSERT [dbo].[Subject_Topic] ([id], [name], [courseId], [order]) VALUES (2, N'C++ Classes', 1, 2)
INSERT [dbo].[Subject_Topic] ([id], [name], [courseId], [order]) VALUES (3, N'C++ How To', 1, 3)
INSERT [dbo].[Subject_Topic] ([id], [name], [courseId], [order]) VALUES (4, N'C++ How To', 1, 4)
SET IDENTITY_INSERT [dbo].[Subject_Topic] OFF
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aalflattkp', N'X2NWRiXB', 1, N'Annabelle Alflatt', 1, N'aalflattkp@apache.org', N'8961522015', NULL, 1, CAST(N'2021-07-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aallibanp9', N'xVVFUvGi', 2, N'Angie Alliban', 0, N'aallibanp9@scribd.com', N'3706170461', NULL, 1, CAST(N'2021-12-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aanshellhi', N'bHitxAYjSts', 2, N'Albie Anshell', 0, N'aanshellhi@ihg.com', N'5203723459', NULL, 1, CAST(N'2021-06-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'abaggally2u', N'MvH4Ln7L5d0', 2, N'Ambrosio Baggally', 1, N'abaggally2u@wiley.com', N'8039713336', NULL, 1, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'abestwallhu', N'fURIZIJPN4fj', 2, N'Abbie Bestwall', 0, N'abestwallhu@seattletimes.com', N'4551338245', NULL, 1, CAST(N'2022-03-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'abisterro', N'HMKvHvhh7Oa4', 1, N'Aura Bister', 0, N'abisterro@globo.com', N'5739472372', NULL, 1, CAST(N'2021-08-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ablazac2', N'ik0pOfB', 2, N'Anett Blaza', 1, N'ablazac2@mit.edu', N'1012564830', NULL, 1, CAST(N'2022-01-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'abloorebu', N'fBlExqoGr', 2, N'Augustine Bloore', 1, N'abloorebu@mail.ru', N'9687225861', NULL, 1, CAST(N'2021-08-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'abourgour86', N'aRe44mWL3', 1, N'Augy Bourgour', 1, N'abourgour86@domainmarket.com', N'8383867285', NULL, 1, CAST(N'2022-01-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'abrainsbyd', N'AAmr3g', 2, N'Alena Brainsby', 0, N'abrainsbyd@answers.com', N'1197846190', NULL, 1, CAST(N'2022-01-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'abramoq4', N'gNJYVdBh', 1, N'Ardeen Bramo', 1, N'abramoq4@homestead.com', N'6365403104', NULL, 1, CAST(N'2022-01-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aburnsidesqr', N'kJeXfUbL', 1, N'Appolonia Burnsides', 0, N'aburnsidesqr@wordpress.com', N'4694991292', NULL, 1, CAST(N'2021-12-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acail1f', N'DkhQRoX7F', 2, N'Alverta Cail', 1, N'acail1f@dedecms.com', N'8147084573', NULL, 1, CAST(N'2021-11-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acapper10', N'7a70pu93UI', 1, N'Art Capper', 1, N'acapper10@ustream.tv', N'4076749216', NULL, 1, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acatherickbg', N'SUiHTS', 2, N'Alene Catherick', 0, N'acatherickbg@hibu.com', N'7171680362', NULL, 1, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acatlin5n', N'lE7boMO', 1, N'Abigael Catlin', 1, N'acatlin5n@apache.org', N'4891258948', NULL, 1, CAST(N'2022-04-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acawtheram4', N'GTln6TgPdyaz', 2, N'Andrea Cawthera', 0, N'acawtheram4@phoca.cz', N'5287325589', NULL, 1, CAST(N'2021-07-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'achieneqw', N'JJQByGkFae5t', 2, N'Amelina Chiene', 1, N'achieneqw@miitbeian.gov.cn', N'8673125658', NULL, 1, CAST(N'2021-07-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acicceralefc', N'G9UVkUMCO', 2, N'Ashia Ciccerale', 1, N'acicceralefc@surveymonkey.com', N'3546808349', NULL, 1, CAST(N'2021-06-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aciccottic3', N'zdzm9xbl', 1, N'Ansell Ciccotti', 1, N'aciccottic3@cyberchimps.com', N'9272407079', NULL, 1, CAST(N'2021-07-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aclaweod', N'YOoPq4zB2rn', 2, N'Ardine Clawe', 1, N'aclaweod@cnn.com', N'5685459472', NULL, 1, CAST(N'2021-06-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acommuccibh', N'Bki1V1D', 1, N'Alain Commucci', 0, N'acommuccibh@engadget.com', N'1188816466', NULL, 1, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acommuzzo3r', N'BDv0UIq', 2, N'August Commuzzo', 1, N'acommuzzo3r@google.co.uk', N'6186577434', NULL, 1, CAST(N'2022-04-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acouperat', N'yRuEED2Z9B1', 1, N'Alair Couper', 1, N'acouperat@google.nl', N'2332783409', NULL, 1, CAST(N'2021-10-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acowup1j', N'NbmzXnMD', 2, N'Audrie Cowup', 0, N'acowup1j@ibm.com', N'2621651638', NULL, 1, CAST(N'2022-05-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acranefieldoo', N'OpA7ur', 1, N'Allis Cranefield', 0, N'acranefieldoo@dion.ne.jp', N'5936901654', NULL, 1, CAST(N'2022-05-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'acrenshawpb', N'5PkSirk', 1, N'Annis Crenshaw', 0, N'acrenshawpb@taobao.com', N'2816026072', NULL, 1, CAST(N'2022-05-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'adamiata9f', N'JP0vgAg', 2, N'Andros Damiata', 0, N'adamiata9f@github.com', N'4532754913', NULL, 1, CAST(N'2022-02-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'adanbury55', N'2oCoFhpeQ', 2, N'Adelheid Danbury', 1, N'adanbury55@oracle.com', N'6093747968', NULL, 1, CAST(N'2022-02-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'adecayetteia', N'BSaah1657Zk', 1, N'Alida Decayette', 0, N'adecayetteia@oakley.com', N'7322836209', NULL, 1, CAST(N'2021-11-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'admin', N'admin', 1, N'Atlanta Bilham', 0, N'abilhamed@mlb.com', N'8846782129', NULL, 1, CAST(N'2022-04-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'adoneldhv', N'uKC6x2vmhFd5', 1, N'Arnie Doneld', 1, N'adoneldhv@tuttocitta.it', N'9168499076', NULL, 1, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'adrysdellkt', N'C1Lqo0L', 1, N'Ada Drysdell', 0, N'adrysdellkt@myspace.com', N'4627709348', NULL, 1, CAST(N'2022-02-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aduckitt3b', N'VX34UBs', 2, N'Asia Duckitt', 0, N'aduckitt3b@psu.edu', N'1363067236', NULL, 1, CAST(N'2022-02-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aewbanksi7', N'PBDYsPZvIE', 1, N'Angela Ewbanks', 0, N'aewbanksi7@ning.com', N'2778923746', NULL, 1, CAST(N'2022-05-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'afeast4n', N'fcuoVR6nWFk0', 1, N'Arlen Feast', 0, N'afeast4n@msu.edu', N'8128540513', NULL, 1, CAST(N'2021-11-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'afeldsteinp7', N'4jzgLlz', 2, N'Aluin Feldstein', 0, N'afeldsteinp7@usda.gov', N'5716098405', NULL, 1, CAST(N'2021-12-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'agawlerc5', N'aCq0ypQN1r', 1, N'Ariela Gawler', 0, N'agawlerc5@auda.org.au', N'6816329310', NULL, 1, CAST(N'2022-01-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'agillilandq', N'voHjQT', 1, N'Aeriell Gilliland', 1, N'agillilandq@yandex.ru', N'5105754484', NULL, 1, CAST(N'2021-11-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'agrasner54', N'9Om4OhW4u', 2, N'Agace Grasner', 0, N'agrasner54@dedecms.com', N'9532157205', NULL, 1, CAST(N'2021-11-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aguerrifi', N'mdnrjvmBz7', 2, N'Ardra Guerri', 1, N'aguerrifi@joomla.org', N'6989597204', NULL, 1, CAST(N'2022-02-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ahandlin1w', N'7AJ6a0zbW7Y', 1, N'Aldis Handlin', 0, N'ahandlin1w@drupal.org', N'9176228658', NULL, 1, CAST(N'2021-08-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aharnellbq', N'mVgd5Ck4ENx', 1, N'Arnie Harnell', 0, N'aharnellbq@google.co.uk', N'4255852867', NULL, 1, CAST(N'2021-10-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ahaslambm', N'wbxGpvg', 1, N'Auberon Haslam', 1, N'ahaslambm@pbs.org', N'8143677944', NULL, 1, CAST(N'2021-11-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aheild6d', N'Nv6E93', 1, N'Arlee Heild', 1, N'aheild6d@digg.com', N'5508570728', NULL, 1, CAST(N'2022-03-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ahellard2b', N'HAf0eSzr9', 2, N'Abbe Hellard', 0, N'ahellard2b@dyndns.org', N'2939111412', NULL, 1, CAST(N'2021-10-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ahighmano', N'PX1Fwrf', 1, N'Angie Highman', 1, N'ahighmano@deviantart.com', N'6323924091', NULL, 1, CAST(N'2022-02-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ahuetl7', N'XBwro8gM', 2, N'Anna-diana Huet', 1, N'ahuetl7@goo.gl', N'6023036701', NULL, 1, CAST(N'2021-09-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ahurnell9l', N'IJcSVNaX', 2, N'Ainslie Hurnell', 1, N'ahurnell9l@cpanel.net', N'6711671859', NULL, 1, CAST(N'2021-10-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ainfantinoj4', N'HVW6h03', 2, N'Alec Infantino', 1, N'ainfantinoj4@cnbc.com', N'2907269228', NULL, 1, CAST(N'2021-12-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ainseal38', N'D4ztNPjgBr', 1, N'Allegra Inseal', 1, N'ainseal38@jalbum.net', N'4638545155', NULL, 1, CAST(N'2021-09-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aivchenkol1', N'MfabhwL', 1, N'Arnie Ivchenko', 1, N'aivchenkol1@bravesites.com', N'8855972936', NULL, 1, CAST(N'2021-12-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ajenkisonpl', N'uFfLRnf', 1, N'Allyson Jenkison', 1, N'ajenkisonpl@cbslocal.com', N'3803066252', NULL, 1, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ajorryct', N'6fGnOsxcqoGL', 1, N'Abby Jorry', 1, N'ajorryct@wordpress.org', N'3914558028', NULL, 1, CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'akanterf3', N'FJjEKqn5Qse', 1, N'Amabelle Kanter', 1, N'akanterf3@goodreads.com', N'7461071749', NULL, 1, CAST(N'2022-02-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'akenworthye5', N'oMztKWuAucX3', 1, N'Anderson Kenworthy', 0, N'akenworthye5@dyndns.org', N'6447391731', NULL, 1, CAST(N'2022-04-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'akimbley4j', N'MQYs5i0', 1, N'Ashlan Kimbley', 0, N'akimbley4j@pbs.org', N'6827996516', NULL, 1, CAST(N'2021-07-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aklamp2q', N'jXGh3UWlH', 2, N'Andromache Klamp', 1, N'aklamp2q@123-reg.co.uk', N'8923859742', NULL, 1, CAST(N'2021-08-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aklebesog', N'EkosTpz7', 2, N'Ario Klebes', 1, N'aklebesog@washington.edu', N'7829043064', NULL, 1, CAST(N'2021-11-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'akrysztofowiczhz', N'FXXkyuvcs', 1, N'Amandie Krysztofowicz', 0, N'akrysztofowiczhz@army.mil', N'5967972562', NULL, 1, CAST(N'2021-08-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'alackemann4w', N'Qsd6sf3hj', 2, N'Arlana Lackemann', 1, N'alackemann4w@harvard.edu', N'8362231584', NULL, 1, CAST(N'2021-11-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'alampsqq', N's68Y3N3hk87Z', 1, N'Alain Lamps', 1, N'alampsqq@psu.edu', N'8324275702', NULL, 1, CAST(N'2022-01-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'alarbygy', N'bRx8ymVx1ei', 1, N'Amalita Larby', 0, N'alarbygy@ow.ly', N'7895653297', NULL, 1, CAST(N'2022-05-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ale1c', N'a2I4cfh', 1, N'Alysia Le Noir', 1, N'ale1c@comcast.net', N'7035564388', NULL, 1, CAST(N'2021-11-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aleversondx', N'xhe494iaJEfw', 2, N'Andreana Leverson', 1, N'aleversondx@eepurl.com', N'6782725879', NULL, 1, CAST(N'2021-07-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'alugtoni1', N'Na77P8lKk9', 2, N'Adrianna Lugton', 1, N'alugtoni1@quantcast.com', N'6996013902', NULL, 1, CAST(N'2021-07-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'amaccheyne6m', N'oXRkwekFR', 1, N'Amandie MacCheyne', 0, N'amaccheyne6m@cbsnews.com', N'2299035284', NULL, 1, CAST(N'2021-07-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'amaxfieldfd', N'vtApeSvAh', 1, N'Armin Maxfield', 1, N'amaxfieldfd@mit.edu', N'3734681082', NULL, 1, CAST(N'2022-02-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'amccrie5k', N'7p2Yogf27', 1, N'Alene McCrie', 0, N'amccrie5k@washington.edu', N'1077834980', NULL, 1, CAST(N'2022-04-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'amigheli64', N'A0UQfF', 1, N'Astrid Migheli', 1, N'amigheli64@bloglines.com', N'1484442871', NULL, 1, CAST(N'2021-08-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'anadinja', N'8dZfB7x0R', 1, N'Alaster Nadin', 1, N'anadinja@flavors.me', N'7705812691', NULL, 1, CAST(N'2022-03-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'anancekivell2', N'qhZqtM', 1, N'Arin Nancekivell', 0, N'anancekivell2@nifty.com', N'3309095512', NULL, 1, CAST(N'2022-03-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'anorres26', N'IvzwqxV4', 2, N'Alvinia Norres', 1, N'anorres26@bandcamp.com', N'6407379055', NULL, 1, CAST(N'2022-04-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'apaitonk2', N'gkDxH3', 2, N'Arlyn Paiton', 1, N'apaitonk2@ftc.gov', N'5489437312', NULL, 1, CAST(N'2021-07-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'apetrollonq', N'uEksMe67yvc', 2, N'Aurel Petrollo', 1, N'apetrollonq@eventbrite.com', N'3101534838', NULL, 1, CAST(N'2021-09-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'apittendreighb4', N'Q5K7rO', 1, N'Alvera Pittendreigh', 0, N'apittendreighb4@reddit.com', N'4566401968', NULL, 1, CAST(N'2021-06-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aplaskett5x', N'SyOIwP', 1, N'Ashil Plaskett', 1, N'aplaskett5x@hao123.com', N'6604559064', NULL, 1, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aprestageih', N'NtHedJ875H', 2, N'Augy Prestage', 0, N'aprestageih@networkadvertising.org', N'5142948812', NULL, 1, CAST(N'2022-01-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'arickarseyr4', N'Ub2dFlbLynh', 1, N'Addy Rickarsey', 1, N'arickarseyr4@google.com', N'9997919820', NULL, 1, CAST(N'2022-02-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'arimellii', N'ypCB2n', 1, N'Ahmad Rimell', 1, N'arimellii@gov.uk', N'5608346277', NULL, 1, CAST(N'2021-07-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'arooksbyon', N'7UJDq16dY', 1, N'Ashely Rooksby', 0, N'arooksbyon@phoca.cz', N'6432144900', NULL, 1, CAST(N'2021-10-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aroustoz', N'U9OIZel21i', 1, N'Anatola Roust', 0, N'aroustoz@clickbank.net', N'4046620087', NULL, 1, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'asalergqn', N'y3qNIQZC', 1, N'Archibaldo Salerg', 0, N'asalergqn@cloudflare.com', N'7535065896', NULL, 1, CAST(N'2021-08-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'asangar2v', N'PXHaVWGzpz0', 2, N'Ange Sangar', 1, N'asangar2v@google.com.hk', N'8558795117', NULL, 1, CAST(N'2021-09-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aschurickee4', N'hporq5Ut5kN8', 1, N'Adelind Schuricke', 0, N'aschurickee4@hibu.com', N'2928928531', NULL, 1, CAST(N'2022-04-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'asellekb3', N'iUcBioF5', 2, N'Angie Sellek', 1, N'asellekb3@paypal.com', N'2832642789', NULL, 1, CAST(N'2021-12-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ashillsf4', N'XixTqQF', 2, N'Alford Shills', 0, N'ashillsf4@japanpost.jp', N'9797161010', NULL, 1, CAST(N'2022-04-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ashoveltongp', N'qanSUMnig', 1, N'August Shovelton', 1, N'ashoveltongp@ibm.com', N'6663097265', NULL, 1, CAST(N'2022-01-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'asowerbutts3c', N'qAxxJ7UE8L', 2, N'Allianora Sowerbutts', 1, N'asowerbutts3c@cocolog-nifty.com', N'8294593823', NULL, 1, CAST(N'2021-12-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aspellaceya1', N'Lbfh4l2z', 2, N'Aimil Spellacey', 0, N'aspellaceya1@wired.com', N'5649406073', NULL, 1, CAST(N'2021-06-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'astennettlu', N'sTKwZWm', 2, N'Annadiana Stennett', 1, N'astennettlu@tmall.com', N'2016688378', NULL, 1, CAST(N'2021-12-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'astorm9j', N'Y4xMGBpU', 2, N'Amabel Storm', 1, N'astorm9j@storify.com', N'7761767193', NULL, 1, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'astuddardf0', N'CaGGAG', 2, N'Auberon Studdard', 0, N'astuddardf0@ask.com', N'2383210724', NULL, 1, CAST(N'2021-10-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aticksalliu', N'WZCorE7fMPPx', 2, N'Adria Ticksall', 1, N'aticksalliu@slate.com', N'9576742840', NULL, 1, CAST(N'2022-01-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'atipping9e', N'Ost40y', 2, N'Adaline Tipping', 0, N'atipping9e@home.pl', N'4905248305', NULL, 1, CAST(N'2022-01-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'atrodlerrm', N'NApHtl', 1, N'Augy Trodler', 1, N'atrodlerrm@vk.com', N'9929857461', NULL, 1, CAST(N'2022-01-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'atruckettf2', N'0J47OzctkgUd', 1, N'Abbott Truckett', 0, N'atruckettf2@whitehouse.gov', N'8308010030', NULL, 1, CAST(N'2022-01-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'atrusslove6h', N'EzYxP4hv', 2, N'Ali Trusslove', 0, N'atrusslove6h@g.co', N'2799271326', NULL, 1, CAST(N'2022-01-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'avarran8a', N'1k5G1aYLe2', 2, N'Adara Varran', 1, N'avarran8a@google.com', N'7949711038', NULL, 1, CAST(N'2021-07-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aventomd5', N'VlithhbRmB', 2, N'Ashia Ventom', 1, N'aventomd5@oracle.com', N'5912249782', NULL, 1, CAST(N'2021-09-02' AS Date), 1)
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'avicentm5', N'vNvsct63MyZ', 2, N'Angus Vicent', 1, N'avicentm5@amazon.co.jp', N'8502425300', NULL, 1, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'awardlowge', N's7LJ7LP', 2, N'Agnesse Wardlow', 1, N'awardlowge@gnu.org', N'1765906969', NULL, 1, CAST(N'2022-05-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'awardql', N'32ZsuyoBPLNv', 2, N'Adolph Ward', 0, N'awardql@sfgate.com', N'2672024607', NULL, 1, CAST(N'2021-10-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aworralno', N'1WOfAeCeF2', 2, N'Ange Worral', 0, N'aworralno@tinypic.com', N'2007637024', NULL, 1, CAST(N'2021-08-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'aworvillmo', N'QLcVaWd7f', 1, N'Allx Worvill', 0, N'aworvillmo@over-blog.com', N'5267829448', NULL, 1, CAST(N'2021-10-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ayurygyn1q', N'Mt31dkv', 2, N'Anthea Yurygyn', 0, N'ayurygyn1q@dell.com', N'2161005737', NULL, 1, CAST(N'2022-06-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bbartolomucci4b', N'5CitFRs', 2, N'Brittni Bartolomucci', 0, N'bbartolomucci4b@hugedomains.com', N'9533789255', NULL, 1, CAST(N'2021-09-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bbeckettp5', N'OXnG5L', 2, N'Bertrand Beckett', 0, N'bbeckettp5@vk.com', N'6499418318', NULL, 1, CAST(N'2021-07-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bbehrkw', N'zCnyVXnqS', 2, N'Bent Behr', 1, N'bbehrkw@walmart.com', N'6364540823', NULL, 1, CAST(N'2022-02-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bbevan84', N'qlsP6N', 2, N'Butch Bevan', 1, N'bbevan84@ameblo.jp', N'5189056356', NULL, 1, CAST(N'2021-09-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bbielfeld8l', N'oOtQnxC', 2, N'Berna Bielfeld', 0, N'bbielfeld8l@weather.com', N'2858036293', NULL, 1, CAST(N'2022-01-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bbowfinel', N'83LocuONC5v', 1, N'Belvia Bowfin', 0, N'bbowfinel@e-recht24.de', N'1356572518', NULL, 1, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bbraganzar8', N'a3HPImdM', 2, N'Brien Braganza', 1, N'bbraganzar8@google.com.au', N'4351629634', NULL, 1, CAST(N'2022-05-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bconnor1b', N'I6x1RU', 2, N'Brantley Connor', 0, N'bconnor1b@huffingtonpost.com', N'7229116029', NULL, 1, CAST(N'2022-03-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bcraigheidcg', N'kopNMa6NV', 2, N'Barbaraanne Craigheid', 0, N'bcraigheidcg@msn.com', N'4116899940', NULL, 1, CAST(N'2022-01-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bcroneyij', N'Bhum3H', 1, N'Bronson Croney', 1, N'bcroneyij@simplemachines.org', N'4221241646', NULL, 1, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bcumbesj', N'qsUTgnzLS6b5', 2, N'Bard Cumbes', 0, N'bcumbesj@amazon.co.jp', N'8962433611', NULL, 1, CAST(N'2022-05-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bdaglessa8', N'fPS8M6MpebS', 1, N'Bronson Dagless', 1, N'bdaglessa8@google.fr', N'3476489425', NULL, 1, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bdahlgrendv', N'V4RIdiIra', 2, N'Bevon Dahlgren', 1, N'bdahlgrendv@paypal.com', N'2981625503', NULL, 1, CAST(N'2021-08-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bdamrelcw', N'jGKbTNFl0VCc', 1, N'Brinna Damrel', 0, N'bdamrelcw@163.com', N'7772182912', NULL, 1, CAST(N'2021-09-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bdaverenlw', N'OMeTHhUH8', 2, N'Bertie Daveren', 1, N'bdaverenlw@hp.com', N'4163077925', NULL, 1, CAST(N'2021-06-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bdoerrc6', N'yKtmPA9', 1, N'Bordie Doerr', 1, N'bdoerrc6@booking.com', N'7347758827', NULL, 1, CAST(N'2022-05-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bebi7t', N'Z9ldtCP', 1, N'Belinda Ebi', 0, N'bebi7t@ocn.ne.jp', N'9885800543', NULL, 1, CAST(N'2022-02-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bfetherstanm6', N'7UlkRJG', 1, N'Barry Fetherstan', 1, N'bfetherstanm6@businessinsider.com', N'4934210720', NULL, 1, CAST(N'2021-06-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bfishleighpr', N'ku19OAput', 1, N'Briant Fishleigh', 0, N'bfishleighpr@shop-pro.jp', N'3966161533', NULL, 1, CAST(N'2021-12-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bfodenln', N'PHvRfAa', 1, N'Bernardo Foden', 1, N'bfodenln@dot.gov', N'3004905183', NULL, 1, CAST(N'2022-05-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bfroodeg', N'eiWv0Y0T', 2, N'Berget Frood', 0, N'bfroodeg@blogspot.com', N'9971297263', NULL, 1, CAST(N'2022-02-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bgaythorpe33', N'RdLEDYad', 2, N'Babb Gaythorpe', 1, N'bgaythorpe33@bigcartel.com', N'2082342158', NULL, 1, CAST(N'2022-06-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bgreenarddk', N'Rn8YCzo', 2, N'Beulah Greenard', 0, N'bgreenarddk@bluehost.com', N'5014130410', NULL, 1, CAST(N'2021-07-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bguilbertmv', N'UkeVKzkIaP', 2, N'Byran Guilbert', 0, N'bguilbertmv@wunderground.com', N'7699398798', NULL, 1, CAST(N'2022-01-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bgunneypx', N'BUSelZQEqNkH', 2, N'Brandi Gunney', 1, N'bgunneypx@oakley.com', N'7942937834', NULL, 1, CAST(N'2021-08-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bhonatschga', N'5lelkzANxD', 1, N'Brockie Honatsch', 1, N'bhonatschga@reverbnation.com', N'4651643575', NULL, 1, CAST(N'2021-07-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bhrynczykb1', N'w4ZUMGp', 2, N'Bea Hrynczyk', 1, N'bhrynczykb1@jimdo.com', N'7212469306', NULL, 1, CAST(N'2022-01-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bhuckerbekq', N'snnKLXD', 1, N'Bernetta Huckerbe', 0, N'bhuckerbekq@abc.net.au', N'6447951454', NULL, 1, CAST(N'2022-05-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bisackepa', N'A63FTW', 1, N'Belita Isacke', 1, N'bisackepa@gravatar.com', N'5393061906', NULL, 1, CAST(N'2021-11-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bjovicnk', N'QhwXAdpBbEkK', 2, N'Britney Jovic', 1, N'bjovicnk@guardian.co.uk', N'2996881556', NULL, 1, CAST(N'2022-01-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bkarlolakhe', N'Xjng422L', 1, N'Blondelle Karlolak', 0, N'bkarlolakhe@cocolog-nifty.com', N'1421867181', NULL, 1, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bkinforthl5', N'8qmm4Tg', 1, N'Brear Kinforth', 0, N'bkinforthl5@ovh.net', N'7772035622', NULL, 1, CAST(N'2022-01-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'blascelles31', N'lJEt8FIC3vC', 2, N'Bonita Lascelles', 0, N'blascelles31@oakley.com', N'3381075535', NULL, 1, CAST(N'2021-10-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'blexaiw', N'AtvBP1ZxIsK', 1, N'Bruis Lexa', 0, N'blexaiw@addtoany.com', N'8445591564', NULL, 1, CAST(N'2022-05-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bliebere0', N'ARFqxGSG', 2, N'Britney Lieber', 0, N'bliebere0@springer.com', N'4121253526', NULL, 1, CAST(N'2021-08-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'blorrie46', N'rMfpzaa5', 1, N'Brear Lorrie', 0, N'blorrie46@jugem.jp', N'4648275252', NULL, 1, CAST(N'2021-09-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bloucaor', N'l7r6J7F', 2, N'Billye Louca', 0, N'bloucaor@engadget.com', N'2934671520', NULL, 1, CAST(N'2021-12-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bloudiane7n', N'knvSinDDO', 1, N'Brandy Loudiane', 1, N'bloudiane7n@google.com.hk', N'7791997828', NULL, 1, CAST(N'2021-11-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bmaclicepj', N'UmiCtzopcb', 2, N'Bettina MacLice', 1, N'bmaclicepj@chron.com', N'2365355852', NULL, 1, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bmcpaikehx', N'9mESmyeqw', 2, N'Benton McPaike', 0, N'bmcpaikehx@loc.gov', N'7046510549', NULL, 1, CAST(N'2021-08-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bmcquarrie73', N'5tHjBU', 1, N'Bordie McQuarrie', 1, N'bmcquarrie73@devhub.com', N'9693980714', NULL, 1, CAST(N'2022-02-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bmetsonnt', N'5y3MnJ820vEp', 1, N'Bertram Metson', 1, N'bmetsonnt@ebay.com', N'3612621396', NULL, 1, CAST(N'2021-09-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bmurto5', N'iOOrLElsXsc', 2, N'Byrann Murt', 1, N'bmurto5@flickr.com', N'7997928128', NULL, 1, CAST(N'2021-10-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bneedhamoh', N'Ea1j3J', 2, N'Birgit Needham', 0, N'bneedhamoh@quantcast.com', N'5883004587', NULL, 1, CAST(N'2022-02-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bnorcliffgn', N'lJJghM', 1, N'Bronny Norcliff', 0, N'bnorcliffgn@ameblo.jp', N'3352718958', NULL, 1, CAST(N'2021-12-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'borred81', N'Av04Z1ZMLQe', 2, N'Billi Orred', 0, N'borred81@illinois.edu', N'1327665065', NULL, 1, CAST(N'2022-04-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bouldn1', N'2oj9Wfgk', 1, N'Brice Ould', 1, N'bouldn1@soup.io', N'8564783447', NULL, 1, CAST(N'2021-12-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bpainter30', N'hdTictt4GzT', 1, N'Bennie Painter', 1, N'bpainter30@theglobeandmail.com', N'2817537648', NULL, 1, CAST(N'2021-09-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bpechacek2e', N'MVP6H5u', 2, N'Beilul Pechacek', 0, N'bpechacek2e@jugem.jp', N'9012816008', NULL, 1, CAST(N'2022-02-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bpenniellg7', N'nddmWOgW0CR', 2, N'Burg Penniell', 0, N'bpenniellg7@mit.edu', N'5552320918', NULL, 1, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bpetlyuraj5', N'jSsb5mtjY', 1, N'Brear Petlyura', 1, N'bpetlyuraj5@networksolutions.com', N'1131588418', NULL, 1, CAST(N'2022-02-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bpullar8', N'05PaUO', 1, N'Berny Pullar', 1, N'bpullar8@slashdot.org', N'5984561364', NULL, 1, CAST(N'2022-05-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'braoult8p', N'BwxaK1UbgCn', 2, N'Bertrando Raoult', 0, N'braoult8p@google.com.br', N'2661683719', NULL, 1, CAST(N'2021-12-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bredmaynept', N'kBosYbxm4xF', 2, N'Bryna Redmayne', 1, N'bredmaynept@hubpages.com', N'2144417811', NULL, 1, CAST(N'2021-10-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bsapshedem', N'51wMOBw1uOT', 1, N'Bobbie Sapshed', 0, N'bsapshedem@imageshack.us', N'4456218340', NULL, 1, CAST(N'2021-07-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bschreiig', N'VHmktO18Q', 1, N'Berkley Schrei', 1, N'bschreiig@ning.com', N'9203973237', NULL, 1, CAST(N'2021-12-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bselliman6p', N'ZCVoL80lX', 2, N'Benita Selliman', 1, N'bselliman6p@seesaa.net', N'2224849808', NULL, 1, CAST(N'2022-03-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bseymarkmu', N'QdT1FnP4', 1, N'Babbie Seymark', 1, N'bseymarkmu@nationalgeographic.com', N'8041507463', NULL, 1, CAST(N'2021-07-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bstelfoxoa', N'XASCcSa', 2, N'Barny Stelfox', 0, N'bstelfoxoa@is.gd', N'5741105501', NULL, 1, CAST(N'2021-12-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bstirleyc1', N'jeuaRSk', 1, N'Burk Stirley', 0, N'bstirleyc1@amazon.com', N'1008218212', NULL, 1, CAST(N'2021-07-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bstrood8v', N'unScD3pYzT', 1, N'Brigg Strood', 1, N'bstrood8v@exblog.jp', N'6091154303', NULL, 1, CAST(N'2021-09-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bsturneypm', N'NuX0veV7EY', 1, N'Bud Sturney', 1, N'bsturneypm@ow.ly', N'6507916041', NULL, 1, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bsudlow6', N'Sgf7i7j17', 1, N'Bethanne Sudlow', 0, N'bsudlow6@bing.com', N'6733431814', NULL, 1, CAST(N'2021-11-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bthursby83', N'Cz1cKWmi2CuS', 2, N'Bonni Thursby', 0, N'bthursby83@ezinearticles.com', N'6962088829', NULL, 1, CAST(N'2021-09-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'btremmilcm', N'eRSM9ioo7F', 1, N'Brynna Tremmil', 0, N'btremmilcm@furl.net', N'2882936725', NULL, 1, CAST(N'2021-06-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'btwortmr', N'sayYIL', 2, N'Bail Twort', 1, N'btwortmr@hao123.com', N'9837319050', NULL, 1, CAST(N'2021-08-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bwicksteadld', N'fq9cbtzvikF', 1, N'Brandon Wickstead', 0, N'bwicksteadld@amazon.co.uk', N'3437677699', NULL, 1, CAST(N'2022-05-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bwillefh', N'zilrsG', 2, N'Berte Wille', 1, N'bwillefh@elpais.com', N'4486116516', NULL, 1, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'bwilsteadft', N'TGYiD8GjkyMs', 1, N'Bevon Wilstead', 1, N'bwilsteadft@umich.edu', N'6737202868', NULL, 1, CAST(N'2021-07-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'byakebowitchal', N'fyA3zcK', 2, N'Beilul Yakebowitch', 0, N'byakebowitchal@w3.org', N'3107744547', NULL, 1, CAST(N'2021-08-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cabramamovqc', N'N0GkZ79IL35', 1, N'Carl Abramamov', 0, N'cabramamovqc@homestead.com', N'1345887104', NULL, 1, CAST(N'2021-10-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'candrencq', N'xnt1ci4wy03X', 2, N'Claribel Andren', 1, N'candrencq@army.mil', N'9297390866', NULL, 1, CAST(N'2021-10-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'carnecke5s', N'3WQ03wECD', 2, N'Crissy Arnecke', 1, N'carnecke5s@paginegialle.it', N'7131041641', NULL, 1, CAST(N'2021-09-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cbeardshall3x', N'bxf3fVk44', 2, N'Cristobal Beardshall', 1, N'cbeardshall3x@ihg.com', N'8892247190', NULL, 1, CAST(N'2022-05-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cbenningtonbj', N'6vaJXb3', 1, N'Cindy Bennington', 0, N'cbenningtonbj@cornell.edu', N'9627349312', NULL, 1, CAST(N'2021-11-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cberwicknl', N'AP2NiO6Mu5', 2, N'Christy Berwick', 0, N'cberwicknl@yolasite.com', N'7743170851', NULL, 1, CAST(N'2022-05-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cbimrosehr', N'Vk2pH3g', 1, N'Cob Bimrose', 0, N'cbimrosehr@weather.com', N'2488019457', NULL, 1, CAST(N'2022-01-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cboggishrf', N'Ex9hgFfe', 2, N'Cherlyn Boggish', 0, N'cboggishrf@pcworld.com', N'4096601852', NULL, 1, CAST(N'2021-09-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cbollinmb', N'bHE1n9Pi6m', 1, N'Corbie Bollin', 0, N'cbollinmb@google.es', N'9873706682', NULL, 1, CAST(N'2021-12-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cbottoneroi', N'l86gpx', 2, N'Cyndi Bottoner', 1, N'cbottoneroi@cdc.gov', N'1985569931', NULL, 1, CAST(N'2021-12-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ccahn60', N'5S6AVHNOM', 1, N'Corenda Cahn', 1, N'ccahn60@mlb.com', N'8661916296', NULL, 1, CAST(N'2021-08-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ccammidgend', N'T2oaZaR', 2, N'Charita Cammidge', 1, N'ccammidgend@delicious.com', N'2195554257', NULL, 1, CAST(N'2021-08-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ccantillionag', N'Phv283fpAM', 1, N'Corenda Cantillion', 1, N'ccantillionag@php.net', N'8978278799', NULL, 1, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ccargondb', N'2INxhUV', 2, N'Charlene Cargon', 0, N'ccargondb@homestead.com', N'8953671252', NULL, 1, CAST(N'2022-03-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ccasadok6', N'RfPj4V4Cx3', 1, N'Constantina Casado', 1, N'ccasadok6@last.fm', N'5195459303', NULL, 1, CAST(N'2021-06-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ccaseqo', N'ewcEodw2q', 2, N'Conroy Case', 0, N'ccaseqo@accuweather.com', N'1863575946', NULL, 1, CAST(N'2022-04-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cceliz3', N'WoKDyrER', 1, N'Corrie Celiz', 1, N'cceliz3@buzzfeed.com', N'8001818512', NULL, 1, CAST(N'2022-04-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cchidleroy', N'wy4WHB', 1, N'Carr Chidler', 1, N'cchidleroy@cornell.edu', N'4577100191', NULL, 1, CAST(N'2021-10-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cclaybourne7l', N'RzPrFCh', 1, N'Chariot Claybourne', 1, N'cclaybourne7l@rambler.ru', N'2199155706', NULL, 1, CAST(N'2021-09-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ccourtoisfn', N'6P2blqJA', 2, N'Cy Courtois', 1, N'ccourtoisfn@sphinn.com', N'8296337425', NULL, 1, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ccoyte7c', N'PEFNFV', 1, N'Clarita Coyte', 0, N'ccoyte7c@umich.edu', N'9279611007', NULL, 1, CAST(N'2022-02-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ccreevydg', N'ooZwFaG', 2, N'Carlos Creevy', 1, N'ccreevydg@kickstarter.com', N'5544582856', NULL, 1, CAST(N'2021-12-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cdahlen2n', N'fK6ES0Lt', 2, N'Carmelle Dahlen', 0, N'cdahlen2n@miibeian.gov.cn', N'5678114081', NULL, 1, CAST(N'2021-07-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cdefrainp0', N'7zx1LZ', 2, N'Cordelia Defrain', 1, N'cdefrainp0@cbc.ca', N'7693182069', NULL, 1, CAST(N'2021-10-26' AS Date), 1)
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cdillicateg5', N'N9PY1w1l', 2, N'Cordelie Dillicate', 1, N'cdillicateg5@netlog.com', N'7181983603', NULL, 1, CAST(N'2021-07-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cdoy3p', N'p3Iio5A', 1, N'Carolin Doy', 1, N'cdoy3p@phpbb.com', N'2728800446', NULL, 1, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ceveringtone2', N'futCIzvxsV', 1, N'Ceciley Everington', 0, N'ceveringtone2@blogs.com', N'7238986804', NULL, 1, CAST(N'2021-09-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cfeaviourfb', N'TYe5yXMAR', 2, N'Chalmers Feaviour', 1, N'cfeaviourfb@networksolutions.com', N'2654109452', NULL, 1, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cfelminghamj1', N'0zAwxbkj', 1, N'Cirillo Felmingham', 1, N'cfelminghamj1@wikia.com', N'3171913957', NULL, 1, CAST(N'2021-09-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cfirksfp', N'lf17laEw', 1, N'Carlin Firks', 0, N'cfirksfp@geocities.jp', N'5053446291', NULL, 1, CAST(N'2021-11-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cgelly4u', N'Nd3fo9sBZ5G', 1, N'Chloe Gelly', 0, N'cgelly4u@printfriendly.com', N'9133990735', NULL, 1, CAST(N'2021-06-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cgemeau7y', N'uKXfqClV', 1, N'Coraline Gemeau', 0, N'cgemeau7y@arstechnica.com', N'1844625856', NULL, 1, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cgorner9k', N'IleSJ5', 2, N'Celia Gorner', 0, N'cgorner9k@webeden.co.uk', N'3803667550', NULL, 1, CAST(N'2021-08-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cgreevesdh', N'KF2Clz9I', 2, N'Christos Greeves', 1, N'cgreevesdh@live.com', N'6214453996', NULL, 1, CAST(N'2021-06-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cgrinter2p', N'NZkk6u73hYUd', 1, N'Cornela Grinter', 1, N'cgrinter2p@irs.gov', N'9017453417', NULL, 1, CAST(N'2021-10-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'chabornay', N'XhAAZWKx', 2, N'Chelsie Haborn', 0, N'chabornay@dropbox.com', N'6195443950', NULL, 1, CAST(N'2022-02-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'chargrove67', N'lBj7flW3R', 2, N'Christopher Hargrove', 0, N'chargrove67@github.com', N'9156833841', NULL, 1, CAST(N'2022-04-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'chendricks1x', N'tysrw5', 1, N'Corrianne Hendricks', 1, N'chendricks1x@mozilla.org', N'1582637443', NULL, 1, CAST(N'2022-03-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cisaksenis', N'QyYOYK8', 1, N'Clement Isaksen', 0, N'cisaksenis@vkontakte.ru', N'8429350497', NULL, 1, CAST(N'2021-07-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cjacqueminet49', N'CXcGg9QrA373', 1, N'Carlyn Jacqueminet', 1, N'cjacqueminet49@soundcloud.com', N'7528879531', NULL, 1, CAST(N'2021-09-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cjephcote78', N'j0xPsoF8uz', 2, N'Celesta Jephcote', 0, N'cjephcote78@angelfire.com', N'7901846196', NULL, 1, CAST(N'2021-11-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ckarlicekre', N'1XVfz8w5f', 2, N'Christie Karlicek', 1, N'ckarlicekre@answers.com', N'1585986285', NULL, 1, CAST(N'2022-03-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'clavalle6b', N'migAVxaKi', 2, N'Claudie Lavalle', 0, N'clavalle6b@meetup.com', N'9834170754', NULL, 1, CAST(N'2021-10-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'clomansey57', N'pqkS8rSOoAL', 1, N'Clarette Lomansey', 0, N'clomansey57@technorati.com', N'3043069161', NULL, 1, CAST(N'2021-07-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'clowless80', N'PiUpug', 2, N'Corinna Lowless', 0, N'clowless80@goodreads.com', N'4375938522', NULL, 1, CAST(N'2021-08-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cmallinarrd', N'7FDvWFoz', 1, N'Cordey Mallinar', 1, N'cmallinarrd@blinklist.com', N'9542827657', NULL, 1, CAST(N'2022-01-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cmanford6j', N'TTEd06eP', 2, N'Cleavland Manford', 1, N'cmanford6j@hibu.com', N'2727027513', NULL, 1, CAST(N'2021-11-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cmattholie6z', N'c0NXrbaw', 2, N'Cynthia Mattholie', 0, N'cmattholie6z@example.com', N'2748410633', NULL, 1, CAST(N'2021-07-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cmccarthy72', N'4KUxblQ', 2, N'Cece McCarthy', 1, N'cmccarthy72@usgs.gov', N'9473764361', NULL, 1, CAST(N'2021-11-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cmcconigalo6', N'VABjUee7Ngf', 1, N'Christine McConigal', 1, N'cmcconigalo6@webeden.co.uk', N'7394260758', NULL, 1, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cmcnerlinjm', N'VakYkui', 2, N'Clarine McNerlin', 0, N'cmcnerlinjm@china.com.cn', N'5766960362', NULL, 1, CAST(N'2021-10-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cmolengl', N'xplMvLlXoE0u', 2, N'Candy Molen', 1, N'cmolengl@columbia.edu', N'8515856019', NULL, 1, CAST(N'2022-03-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cmouldeney', N'4M4BKAPrh', 2, N'Carleton Moulden', 1, N'cmouldeney@bloomberg.com', N'4577586120', NULL, 1, CAST(N'2021-10-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cmullina', N'nBLj6dAvXs', 1, N'Cullen Mullin', 1, N'cmullina@sciencedaily.com', N'8349841814', NULL, 1, CAST(N'2021-10-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cnotonqe', N'QlI0L1m', 1, N'Corbet Noton', 0, N'cnotonqe@myspace.com', N'7964509786', NULL, 1, CAST(N'2021-10-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'colin2k', N'4K03NUzigq', 1, N'Cassius Olin', 0, N'colin2k@bing.com', N'6442135473', NULL, 1, CAST(N'2021-10-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'colkowiczq6', N'nXt2UU', 2, N'Carrol Olkowicz', 0, N'colkowiczq6@omniture.com', N'2565218489', NULL, 1, CAST(N'2021-11-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cowenson40', N'Gpfm0FDfb', 2, N'Chaddy Owenson', 0, N'cowenson40@earthlink.net', N'6815222464', NULL, 1, CAST(N'2021-08-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cpannettp3', N'ShUUeQ', 2, N'Carri Pannett', 0, N'cpannettp3@pagesperso-orange.fr', N'8405943470', NULL, 1, CAST(N'2022-04-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cphiller3d', N'fUzo4Q', 1, N'Clayson Philler', 0, N'cphiller3d@myspace.com', N'1666191107', NULL, 1, CAST(N'2022-03-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cpickfordma', N'h4JhIU', 2, N'Cloe Pickford', 0, N'cpickfordma@dropbox.com', N'3985381515', NULL, 1, CAST(N'2021-07-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cpimbleykh', N'5fPuqhD4f85S', 2, N'Clarinda Pimbley', 1, N'cpimbleykh@naver.com', N'5115124504', NULL, 1, CAST(N'2021-06-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cportmanbn', N'cyQ92wuhP9B', 1, N'Cariotta Portman', 0, N'cportmanbn@merriam-webster.com', N'3541547385', NULL, 1, CAST(N'2022-04-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'crigbyad', N'ZqoSnp', 1, N'Chloette Rigby', 0, N'crigbyad@bloglovin.com', N'9329250448', NULL, 1, CAST(N'2022-04-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'csamms3l', N'KqQ2vdFxK', 1, N'Cammie Samms', 1, N'csamms3l@parallels.com', N'2588009000', NULL, 1, CAST(N'2022-05-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cschachlf', N'BuH3evYboA', 2, N'Carey Schach', 1, N'cschachlf@ehow.com', N'3124360909', NULL, 1, CAST(N'2021-07-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cseabrookek1', N'KvMgHaH6', 1, N'Cyrillus Seabrooke', 0, N'cseabrookek1@ucoz.ru', N'1393048212', NULL, 1, CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cskillicornc9', N'mxrx7Nw4Y9', 1, N'Cleon Skillicorn', 1, N'cskillicornc9@sitemeter.com', N'5741253878', NULL, 1, CAST(N'2021-09-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cslaghtiv', N'UTmVsigyWO', 2, N'Charmian Slaght', 0, N'cslaghtiv@state.gov', N'9562870585', NULL, 1, CAST(N'2021-08-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'csleenyb7', N'uPZal6', 2, N'Cele Sleeny', 1, N'csleenyb7@ow.ly', N'1049645953', NULL, 1, CAST(N'2022-05-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'csmithiesee', N'fgAOOO', 1, N'Cleon Smithies', 0, N'csmithiesee@senate.gov', N'1626508965', NULL, 1, CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cspykinsce', N'rDRtPq', 2, N'Cornie Spykins', 0, N'cspykinsce@ftc.gov', N'2212859657', NULL, 1, CAST(N'2021-12-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cthowba', N'rpeMyOL', 2, N'Charla Thow', 0, N'cthowba@ox.ac.uk', N'4875297465', NULL, 1, CAST(N'2021-11-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ctolsonfo', N'4LQmacRjW5', 1, N'Clarette Tolson', 0, N'ctolsonfo@ow.ly', N'1539298589', NULL, 1, CAST(N'2022-03-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ctomankowski76', N'u99aNk3B', 1, N'Carolan Tomankowski', 1, N'ctomankowski76@amazon.co.jp', N'2389603350', NULL, 1, CAST(N'2021-09-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ctomkincn', N'Z8LOzMLlB', 1, N'Casar Tomkin', 1, N'ctomkincn@woothemes.com', N'3005657945', NULL, 1, CAST(N'2022-05-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cwealdqs', N'yldevd32E', 2, N'Collete Weald', 0, N'cwealdqs@diigo.com', N'6571557561', NULL, 1, CAST(N'2021-12-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cwondraschek5b', N'OMTLFhk6', 1, N'Carlo Wondraschek', 0, N'cwondraschek5b@berkeley.edu', N'1239839305', NULL, 1, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cyitzovitzfs', N'5U5LyqfiNen', 1, N'Cornie Yitzovitz', 0, N'cyitzovitzfs@comcast.net', N'5881141404', NULL, 1, CAST(N'2021-11-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'cyosifovqm', N'uXGxDzo6F', 1, N'Christen Yosifov', 1, N'cyosifovqm@unicef.org', N'2102671085', NULL, 1, CAST(N'2021-12-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dalesop4', N'0eu3Fue10axl', 1, N'Dita Aleso', 0, N'dalesop4@pbs.org', N'1253842602', NULL, 1, CAST(N'2022-03-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dalredb5', N'4kzgA7RGMJY', 1, N'Dom Alred', 1, N'dalredb5@tumblr.com', N'6711957263', NULL, 1, CAST(N'2021-08-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dbasirei3', N'52xDwcBYt', 1, N'Dougie Basire', 1, N'dbasirei3@pen.io', N'6652382479', NULL, 1, CAST(N'2021-08-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dbaudin95', N'hk7iTn', 2, N'Donal Baudin', 1, N'dbaudin95@webeden.co.uk', N'9436540634', NULL, 1, CAST(N'2021-11-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dbendellrg', N'ZTfzy35NpgyD', 2, N'Dacie Bendell', 1, N'dbendellrg@webs.com', N'9178386572', NULL, 1, CAST(N'2021-08-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dberks34', N'URoR8szX1x4B', 1, N'Della Berks', 0, N'dberks34@blogspot.com', N'2214026181', NULL, 1, CAST(N'2021-10-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dbramelth5', N'3HXlsJAD', 1, N'Domenic Bramelt', 1, N'dbramelth5@patch.com', N'8356303051', NULL, 1, CAST(N'2022-05-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dbreinlav', N'eIRTCka', 1, N'Dirk Breinl', 0, N'dbreinlav@myspace.com', N'9208117020', NULL, 1, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dbridalk3', N'5POqD4Q', 2, N'Drew Bridal', 0, N'dbridalk3@list-manage.com', N'7412781905', NULL, 1, CAST(N'2021-07-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dbrunt6g', N'ubuRHjQjJ', 2, N'Delilah Brunt', 1, N'dbrunt6g@51.la', N'9551563973', NULL, 1, CAST(N'2022-03-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dburrells9o', N'eFVCGoR', 2, N'Danella Burrells', 0, N'dburrells9o@biblegateway.com', N'6849445329', NULL, 1, CAST(N'2021-11-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dcavendish2o', N'IyftFtM3j', 1, N'Dodie Cavendish', 0, N'dcavendish2o@va.gov', N'2262743127', NULL, 1, CAST(N'2021-07-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dcenter8e', N'Alpofaa38Gz', 1, N'Dorthy Center', 1, N'dcenter8e@narod.ru', N'5176722360', NULL, 1, CAST(N'2022-01-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dcicullope', N'h3h4zn0EiGhx', 1, N'Dolli Cicullo', 1, N'dcicullope@prweb.com', N'9668948185', NULL, 1, CAST(N'2022-03-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dcusack22', N'PpWAN4GO', 2, N'Danika Cusack', 0, N'dcusack22@ustream.tv', N'6879158964', NULL, 1, CAST(N'2022-04-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ddamsellg', N'uObJBjOvv', 1, N'Danni Damsell', 1, N'ddamsellg@dailymotion.com', N'6469825930', NULL, 1, CAST(N'2022-04-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dde23', N'5Phwndumk', 2, N'Doe De Coursey', 1, N'dde23@fda.gov', N'4469897650', NULL, 1, CAST(N'2021-07-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ddec7', N'8XaFi0ea87v', 1, N'Delmore De La Coste', 0, N'ddec7@over-blog.com', N'5105831144', NULL, 1, CAST(N'2021-09-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ddee8x', N'zcF6ZLRPi', 2, N'Dee dee Tunnacliffe', 1, N'ddee8x@time.com', N'7657975696', NULL, 1, CAST(N'2021-07-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ddikk', N'd7DFWANMeUg', 1, N'Deana Di Giacomettino', 1, N'ddikk@rambler.ru', N'4291105255', NULL, 1, CAST(N'2021-09-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ddimmackq2', N'BhPeDqTT', 1, N'Damiano Dimmack', 1, N'ddimmackq2@nature.com', N'6467338365', NULL, 1, CAST(N'2022-04-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ddittiq', N'vYIYQ28C', 1, N'Deny Ditt', 1, N'ddittiq@bigcartel.com', N'2704997211', NULL, 1, CAST(N'2021-06-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dfowlerps', N'tSGEPLl', 1, N'Danette Fowler', 1, N'dfowlerps@istockphoto.com', N'4429615325', NULL, 1, CAST(N'2021-11-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dfullwooddd', N'flYFFI', 1, N'Diarmid Fullwood', 0, N'dfullwooddd@dailymail.co.uk', N'1837547053', NULL, 1, CAST(N'2021-06-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dghilksnw', N'ym8T6WPBSh', 2, N'Dominique Ghilks', 1, N'dghilksnw@jiathis.com', N'7387851673', NULL, 1, CAST(N'2021-10-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dgonnelydf', N'lVJU9r', 2, N'Druci Gonnely', 0, N'dgonnelydf@merriam-webster.com', N'1976598371', NULL, 1, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dgriffeo0', N'wzszfLhU', 1, N'Darby Griffe', 1, N'dgriffeo0@behance.net', N'8313087397', NULL, 1, CAST(N'2022-04-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dhaggith2l', N'wHcpYsm98UxL', 1, N'Derek Haggith', 0, N'dhaggith2l@pinterest.com', N'7327714623', NULL, 1, CAST(N'2021-10-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dheyns17', N'JxxyYMP', 1, N'Darnell Heyns', 1, N'dheyns17@meetup.com', N'6782714761', NULL, 1, CAST(N'2022-04-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dhouldey1d', N'4sAz3q8A', 2, N'Debi Houldey', 0, N'dhouldey1d@liveinternet.ru', N'7648745143', NULL, 1, CAST(N'2021-09-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'divatts66', N'1kDJ9k', 2, N'Dru Ivatts', 1, N'divatts66@barnesandnoble.com', N'2587373002', NULL, 1, CAST(N'2021-08-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dladbrook6t', N'yC5y6vR', 2, N'Dermot Ladbrook', 1, N'dladbrook6t@ow.ly', N'9695085857', NULL, 1, CAST(N'2021-06-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dleavyha', N'GmZ10fmf3l', 2, N'Darya Leavy', 0, N'dleavyha@ibm.com', N'6893171180', NULL, 1, CAST(N'2021-10-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dmackissack91', N't7dk2YejVpho', 1, N'Davita MacKissack', 1, N'dmackissack91@wordpress.com', N'3933134882', NULL, 1, CAST(N'2021-12-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dmavenr3', N'4sz4vLqR0SXq', 1, N'Dyann Maven', 0, N'dmavenr3@ft.com', N'3554477195', NULL, 1, CAST(N'2021-08-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dmogermn', N'ajKlxor1fGu', 2, N'Danice Moger', 1, N'dmogermn@ca.gov', N'7839864091', NULL, 1, CAST(N'2021-08-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dmorlon2d', N'LzARr1y', 2, N'Domini Morlon', 0, N'dmorlon2d@unc.edu', N'7099639600', NULL, 1, CAST(N'2022-03-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dmusso7b', N'tb7Qkc', 2, N'Deva Musso', 0, N'dmusso7b@163.com', N'6183083027', NULL, 1, CAST(N'2021-12-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dongngochieu33', N'hoilamgi', 1, N'Dong Ngoc Hieu', 0, N'hieuyolo@gmail', N'0359238165', NULL, 1, CAST(N'2022-01-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dorringeev', N'1TJuj3tg', 2, N'Daffie Orringe', 0, N'dorringeev@cargocollective.com', N'7962433938', NULL, 1, CAST(N'2022-05-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dpickard58', N'xfDxmv', 2, N'Darelle Pickard', 0, N'dpickard58@irs.gov', N'3654251891', NULL, 1, CAST(N'2021-11-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dpitherickck', N'TAfFjtbJr', 2, N'Danette Pitherick', 1, N'dpitherickck@umn.edu', N'7725367689', NULL, 1, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dplitz36', N'ihpX2aF', 1, N'Demetre Plitz', 0, N'dplitz36@google.com.hk', N'7411422705', NULL, 1, CAST(N'2021-10-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dpotterilqz', N'a9LBunM', 1, N'Dulcine Potteril', 1, N'dpotterilqz@examiner.com', N'8129355988', NULL, 1, CAST(N'2022-03-16' AS Date), 1)
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dpurveymx', N'hcrmNrlo3lOJ', 1, N'Damaris Purvey', 0, N'dpurveymx@dagondesign.com', N'1043883502', NULL, 1, CAST(N'2021-12-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'drosenthalan', N'MAIXVc7HXfJ7', 2, N'Dennis Rosenthal', 1, N'drosenthalan@whitehouse.gov', N'5535104339', NULL, 1, CAST(N'2022-05-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'drowly4i', N'G6ZB6xVTr0P', 1, N'Dulcea Rowly', 0, N'drowly4i@nsw.gov.au', N'3791998787', NULL, 1, CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dsentancel', N'bSsP4be9j', 1, N'Davidde Sentance', 0, N'dsentancel@cornell.edu', N'1809890626', NULL, 1, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dspeed41', N'ip1aXux', 1, N'Dorey Speed', 1, N'dspeed41@nydailynews.com', N'2126592107', NULL, 1, CAST(N'2022-05-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dsporgeonn2', N'o9rchj', 1, N'Dougie Sporgeon', 0, N'dsporgeonn2@nasa.gov', N'6416116184', NULL, 1, CAST(N'2021-11-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dtiuitou', N't2fm2xcCQpcr', 2, N'Davis Tiuit', 0, N'dtiuitou@flavors.me', N'6914369443', NULL, 1, CAST(N'2022-05-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dtwentyman8k', N'0wwkxv', 2, N'Dacy Twentyman', 0, N'dtwentyman8k@edublogs.org', N'2361270349', NULL, 1, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dubsdale2h', N'acIvB46BVZ', 2, N'Donalt Ubsdale', 0, N'dubsdale2h@wisc.edu', N'2139308312', NULL, 1, CAST(N'2021-06-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dvanap', N'gqO3q0a', 2, N'Desdemona Van Salzberger', 1, N'dvanap@mapy.cz', N'3638857141', NULL, 1, CAST(N'2022-04-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dvennartm7', N'8wEb98Cdu0d6', 2, N'Dixie Vennart', 1, N'dvennartm7@army.mil', N'2087568683', NULL, 1, CAST(N'2021-09-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dwagenen8c', N'L3WlYjUeMfoU', 1, N'Dar Wagenen', 1, N'dwagenen8c@google.fr', N'4125521067', NULL, 1, CAST(N'2021-12-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dwildbloodb8', N'oALlpU3VL', 2, N'Dannel Wildblood', 1, N'dwildbloodb8@cbslocal.com', N'7468801705', NULL, 1, CAST(N'2021-06-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'dwilsee4k', N'GMOpG6PcxNMB', 2, N'Donnie Wilsee', 1, N'dwilsee4k@issuu.com', N'3051092616', NULL, 1, CAST(N'2022-05-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eagneaunb', N'HQimhpKswvRB', 2, N'Eadmund Agneau', 0, N'eagneaunb@who.int', N'7657452390', NULL, 1, CAST(N'2021-09-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eahrensg2', N'px2qjJ44gJ', 2, N'Estelle Ahrens', 1, N'eahrensg2@dagondesign.com', N'5868648895', NULL, 1, CAST(N'2021-07-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ebetchleynn', N'iz5K1RBpOW0', 1, N'Egan Betchley', 1, N'ebetchleynn@studiopress.com', N'1867817687', NULL, 1, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ebillincl', N'1WnVdIvfH5', 1, N'Emmeline Billin', 1, N'ebillincl@google.com.au', N'1081389248', NULL, 1, CAST(N'2021-06-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ebramhallkl', N'pUmrVt6', 2, N'Emmet Bramhall', 0, N'ebramhallkl@pcworld.com', N'5706269833', NULL, 1, CAST(N'2021-11-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eburnhamow', N'YqXWawLk4j', 1, N'Ellen Burnham', 0, N'eburnhamow@unesco.org', N'6107908931', NULL, 1, CAST(N'2021-11-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ecatlowov', N'dYJv96AQhXd', 2, N'Eugenia Catlow', 0, N'ecatlowov@acquirethisname.com', N'2402959673', NULL, 1, CAST(N'2021-07-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ecervantesf1', N'oIHybjqu4tN', 1, N'Eleanore Cervantes', 1, N'ecervantesf1@zimbio.com', N'4758309572', NULL, 1, CAST(N'2021-11-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ecooneyla', N'oIGyOipJX', 2, N'Eunice Cooney', 1, N'ecooneyla@europa.eu', N'4412425654', NULL, 1, CAST(N'2022-03-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ecottier6l', N'sukXBDn1Cui', 1, N'Ellery Cottier', 1, N'ecottier6l@foxnews.com', N'2923033374', NULL, 1, CAST(N'2021-12-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ecronk6o', N'zDnvfm', 1, N'Emmerich Cronk', 0, N'ecronk6o@ocn.ne.jp', N'1654881724', NULL, 1, CAST(N'2021-07-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'edance51', N'l30670if', 1, N'Edd Dance', 0, N'edance51@discovery.com', N'3941085861', NULL, 1, CAST(N'2021-07-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'edanielczyk4h', N'3fKcy6Awk3zX', 1, N'Eliot Danielczyk', 1, N'edanielczyk4h@senate.gov', N'3019093366', NULL, 1, CAST(N'2021-08-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'edegliqj', N'aIhEnIpmxu9', 1, N'Emmerich Degli Abbati', 0, N'edegliqj@blogspot.com', N'3973556467', NULL, 1, CAST(N'2021-06-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'edibdallkg', N'jTWMoOegKKu', 1, N'Evelyn Dibdall', 0, N'edibdallkg@discuz.net', N'4703487991', NULL, 1, CAST(N'2021-10-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eduncanson9c', N'lKpNQB9', 1, N'Emmalynne Duncanson', 1, N'eduncanson9c@histats.com', N'4122767570', NULL, 1, CAST(N'2021-09-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eentwistlei', N'7krO3y', 2, N'Eliot Entwistle', 1, N'eentwistlei@samsung.com', N'6718566292', NULL, 1, CAST(N'2021-08-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'efairy8o', N'F70v2m01vh2C', 2, N'Eben Fairy', 1, N'efairy8o@europa.eu', N'3414106476', NULL, 1, CAST(N'2021-12-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eferqh', N'TKM4cTThF6', 2, N'Elisa Fer', 1, N'eferqh@uiuc.edu', N'9658148870', NULL, 1, CAST(N'2021-08-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'efreathy6i', N'wGL0EvS2em', 2, N'Esra Freathy', 0, N'efreathy6i@instagram.com', N'1823513766', NULL, 1, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'egorhamik', N'TQLFNgZ8XgFX', 2, N'Erwin Gorham', 1, N'egorhamik@ifeng.com', N'5115100787', NULL, 1, CAST(N'2022-06-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'egreaterexqi', N'V06OJVKs', 2, N'Elvis Greaterex', 0, N'egreaterexqi@woothemes.com', N'3604188959', NULL, 1, CAST(N'2022-05-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'einkpinlk', N'7ssF59KKg5r', 1, N'Edik Inkpin', 0, N'einkpinlk@bizjournals.com', N'9177661619', NULL, 1, CAST(N'2021-08-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ekilfetherl8', N'SVKJhhGmo6p', 1, N'Eugenius Kilfether', 0, N'ekilfetherl8@imdb.com', N'6051469943', NULL, 1, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ekleesgj', N'CA6GHATo', 2, N'Ester Klees', 0, N'ekleesgj@java.com', N'3908593593', NULL, 1, CAST(N'2021-12-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ekoubek5c', N'JdZEaoUO', 1, N'Eduino Koubek', 1, N'ekoubek5c@amazon.com', N'2234919873', NULL, 1, CAST(N'2021-11-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'elantiffep1', N'1KUGX5h9enCW', 1, N'Evaleen Lantiffe', 0, N'elantiffep1@dagondesign.com', N'9224286851', NULL, 1, CAST(N'2021-10-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'elowesiz', N'26NTVMZLauH', 1, N'Estella Lowes', 1, N'elowesiz@google.co.jp', N'7485433226', NULL, 1, CAST(N'2021-07-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'emcphillips9d', N'wOzOnS9p', 1, N'Ellery McPhillips', 1, N'emcphillips9d@aol.com', N'1964941207', NULL, 1, CAST(N'2021-09-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eminchindonfx', N'GAAHRbIM', 1, N'Eal Minchindon', 1, N'eminchindonfx@wikipedia.org', N'7773179621', NULL, 1, CAST(N'2022-05-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eoddie19', N'383Z12AMD', 2, N'Edsel Oddie', 0, N'eoddie19@archive.org', N'9168242713', NULL, 1, CAST(N'2022-04-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'epechtol', N'kYeZWI3HTmGr', 2, N'Elsy Pecht', 0, N'epechtol@nymag.com', N'4186162056', NULL, 1, CAST(N'2021-07-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'epetyakovfu', N'wJeJudWme9Er', 2, N'Emmi Petyakov', 0, N'epetyakovfu@harvard.edu', N'9736173526', NULL, 1, CAST(N'2022-05-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eplayler0', N'p5CCBz', 1, N'Ermin Playle', 0, N'eplayler0@whitehouse.gov', N'4546270036', NULL, 1, CAST(N'2021-11-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ereaperb', N'AY3XZJplxdXj', 1, N'Emmie Reape', 0, N'ereaperb@facebook.com', N'7129009463', NULL, 1, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'erobbepg', N'cS3fhQUJVLIM', 2, N'Elvina Robbe', 1, N'erobbepg@google.fr', N'3543532170', NULL, 1, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eromeuf68', N'PmfynfPX4B', 1, N'Engracia Romeuf', 1, N'eromeuf68@cyberchimps.com', N'9441838156', NULL, 1, CAST(N'2021-07-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'erothchild1l', N'omptTp', 1, N'Ezequiel Rothchild', 0, N'erothchild1l@virginia.edu', N'6303020571', NULL, 1, CAST(N'2021-08-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'escreachch', N'FZCie1', 2, N'Ellis Screach', 1, N'escreachch@wunderground.com', N'8358507090', NULL, 1, CAST(N'2022-05-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eshadrachd9', N'flHc8qkLO', 2, N'Ewart Shadrach', 0, N'eshadrachd9@themeforest.net', N'7392619110', NULL, 1, CAST(N'2021-08-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'esleepaa', N'NEBn2MsGGf2f', 1, N'Ev Sleep', 1, N'esleepaa@360.cn', N'7478413097', NULL, 1, CAST(N'2022-04-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'espeirs8m', N'I6xE8X4EI', 1, N'Emmett Speirs', 1, N'espeirs8m@elpais.com', N'4859614749', NULL, 1, CAST(N'2022-06-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'estichelbl', N'nLTkrb', 1, N'Eve Stichel', 1, N'estichelbl@cnbc.com', N'3676529877', NULL, 1, CAST(N'2021-12-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'esummerhayes3q', N't56WaVSA', 1, N'Ericka Summerhayes', 1, N'esummerhayes3q@webnode.com', N'6851067024', NULL, 1, CAST(N'2022-04-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eteffreyc8', N'7Vk0ON', 2, N'Egor Teffrey', 1, N'eteffreyc8@networksolutions.com', N'5995580519', NULL, 1, CAST(N'2021-09-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'etrickeypf', N'kpFAucX0Wa', 1, N'Eddi Trickey', 0, N'etrickeypf@angelfire.com', N'9864175292', NULL, 1, CAST(N'2021-09-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'etrimmelldz', N'sCW9Kgxv', 1, N'Ettie Trimmell', 0, N'etrimmelldz@dmoz.org', N'4784474956', NULL, 1, CAST(N'2022-01-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eumbert7x', N'H8lVSvgfLh7b', 1, N'Edgard Umbert', 0, N'eumbert7x@ameblo.jp', N'2064797888', NULL, 1, CAST(N'2021-06-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'evallintinedl', N'WR7OTQ3clWp', 2, N'Emiline Vallintine', 1, N'evallintinedl@networkadvertising.org', N'1246741350', NULL, 1, CAST(N'2022-05-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'evialsdp', N'9Fi3i8dePK', 2, N'Elijah Vials', 0, N'evialsdp@webnode.com', N'9986352208', NULL, 1, CAST(N'2022-03-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eweichcs', N'ZyoSOi0Yk', 1, N'Estella Weich', 0, N'eweichcs@cmu.edu', N'8348031825', NULL, 1, CAST(N'2021-10-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ewillougheymc', N'Pb0ZP8YsEAm', 1, N'Emily Willoughey', 1, N'ewillougheymc@gravatar.com', N'7646489394', NULL, 1, CAST(N'2021-10-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eyakovl47', N'Duo5i7', 1, N'Edee Yakovl', 1, N'eyakovl47@utexas.edu', N'4261288026', NULL, 1, CAST(N'2022-02-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'eyewdale8u', N'RxdEZdr', 2, N'Etienne Yewdale', 0, N'eyewdale8u@webeden.co.uk', N'9746648554', NULL, 1, CAST(N'2021-09-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fandriesse99', N'J98T6M2oLqu', 2, N'Frederico Andriesse', 0, N'fandriesse99@addtoany.com', N'2042568498', NULL, 1, CAST(N'2021-07-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fbraggeaz', N'UNB8Gd', 1, N'Filippo Bragge', 1, N'fbraggeaz@g.co', N'5567645138', NULL, 1, CAST(N'2021-06-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fburketteo', N'OIWFDTGkn', 2, N'Frank Burkett', 0, N'fburketteo@dot.gov', N'7058924599', NULL, 1, CAST(N'2021-12-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fchadwellh3', N'B0ifj348t', 2, N'Fidelity Chadwell', 1, N'fchadwellh3@desdev.cn', N'8018592462', NULL, 1, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fclaybournen8', N'qd2VAbDt5A', 2, N'Florence Claybourne', 1, N'fclaybournen8@prnewswire.com', N'9971147227', NULL, 1, CAST(N'2022-02-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fdhooghez', N'FZtfLfjUR', 1, N'Franklin D''Hooghe', 1, N'fdhooghez@independent.co.uk', N'7792902499', NULL, 1, CAST(N'2021-10-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fdiveoc', N'jPGZ9RkE5AOo', 1, N'Franky Dive', 0, N'fdiveoc@seesaa.net', N'3585865635', NULL, 1, CAST(N'2021-11-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'feastmead63', N'oT8F962DHViF', 1, N'Franky Eastmead', 0, N'feastmead63@msn.com', N'3873098446', NULL, 1, CAST(N'2021-06-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fflooks1p', N'2lI8Sn', 1, N'Fernande Flooks', 0, N'fflooks1p@woothemes.com', N'4321775802', NULL, 1, CAST(N'2021-11-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fgremainca', N'HQ3phqWis', 1, N'Fedora Gremain', 0, N'fgremainca@cornell.edu', N'9257000042', NULL, 1, CAST(N'2021-10-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fholdronhj', N'SYAQbi0i', 2, N'Florette Holdron', 0, N'fholdronhj@opera.com', N'7902610463', NULL, 1, CAST(N'2021-12-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fkilgallonjo', N'6obnb24wG', 1, N'Falito Kilgallon', 0, N'fkilgallonjo@yahoo.com', N'9641931770', NULL, 1, CAST(N'2021-07-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'flangthornkv', N'fZ4dHi9udkW', 1, N'Felecia Langthorn', 1, N'flangthornkv@amazonaws.com', N'5376474147', NULL, 1, CAST(N'2021-08-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fmacond4', N'7JNRt7jGJe4Z', 1, N'Franciska Macon', 0, N'fmacond4@google.nl', N'4234541121', NULL, 1, CAST(N'2022-03-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fogilvie4o', N'spZ8Y1kQ', 1, N'Ferris Ogilvie', 1, N'fogilvie4o@live.com', N'2494581643', NULL, 1, CAST(N'2021-09-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fogroganen9', N'mh0fiMBc', 1, N'Federica O''Grogane', 0, N'fogroganen9@discovery.com', N'7117651924', NULL, 1, CAST(N'2021-12-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fpenddrethcx', N'qqSleHxyZngB', 1, N'Felicle Penddreth', 1, N'fpenddrethcx@ehow.com', N'2847460805', NULL, 1, CAST(N'2021-08-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fperezbd', N'OgyQtjZhlsz', 2, N'Forrester Perez', 1, N'fperezbd@people.com.cn', N'1866008149', NULL, 1, CAST(N'2021-12-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'framelot1h', N'87pSyqt6gU', 1, N'Freemon Ramelot', 1, N'framelot1h@cornell.edu', N'5459057797', NULL, 1, CAST(N'2021-09-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'frubinfajncp', N'6r0Tvw4NeyM', 1, N'Fabio Rubinfajn', 1, N'frubinfajncp@admin.ch', N'1282173907', NULL, 1, CAST(N'2021-09-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fsacksdq', N'0ACcnT', 2, N'Fairleigh Sacks', 0, N'fsacksdq@aol.com', N'1324102796', NULL, 1, CAST(N'2022-02-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fsnowdingio', N'OkWVJgTn', 1, N'Ferdinanda Snowding', 1, N'fsnowdingio@howstuffworks.com', N'7495709396', NULL, 1, CAST(N'2022-06-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ftenwickpp', N'81Ih6OiRe', 2, N'Francois Tenwick', 0, N'ftenwickpp@sitemeter.com', N'5064543057', NULL, 1, CAST(N'2021-11-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ftracey48', N'vLj1WzA6', 2, N'Freedman Tracey', 0, N'ftracey48@flavors.me', N'7541730844', NULL, 1, CAST(N'2021-08-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fvedishchev9p', N'LYzuLBv1SqKU', 2, N'Fielding Vedishchev', 1, N'fvedishchev9p@zdnet.com', N'4998708487', NULL, 1, CAST(N'2021-09-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'fwilkinhf', N'4izQzaFWm', 1, N'Florie Wilkin', 0, N'fwilkinhf@japanpost.jp', N'2782234029', NULL, 1, CAST(N'2021-06-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gandreazzi1o', N'q6C74n3picj', 2, N'Gae Andreazzi', 0, N'gandreazzi1o@mac.com', N'7099912409', NULL, 1, CAST(N'2021-12-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'garpurmk', N'Bk2kC2Ha', 1, N'Giffie Arpur', 1, N'garpurmk@un.org', N'4814998569', NULL, 1, CAST(N'2022-01-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gbaldazzi5q', N'v4EEWm', 1, N'Grace Baldazzi', 1, N'gbaldazzi5q@dedecms.com', N'7086592412', NULL, 1, CAST(N'2022-04-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gbambury3n', N'4oG7syuOtY7', 1, N'Grannie Bambury', 0, N'gbambury3n@smugmug.com', N'5524057018', NULL, 1, CAST(N'2022-01-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gbecksonpn', N'PrGKCGJx9', 1, N'Gabey Beckson', 1, N'gbecksonpn@icq.com', N'2388661994', NULL, 1, CAST(N'2022-01-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gcappineerms', N'quUZbzfWHqVy', 2, N'Garek Cappineer', 0, N'gcappineerms@cam.ac.uk', N'3036703033', NULL, 1, CAST(N'2021-09-28' AS Date), 1)
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gcatonne39', N'qdcbIsJO8Lm', 1, N'Gleda Catonne', 1, N'gcatonne39@accuweather.com', N'4812292144', NULL, 1, CAST(N'2022-04-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gchadwen8d', N'MWegbEV', 2, N'Guido Chadwen', 1, N'gchadwen8d@1und1.de', N'7318098264', NULL, 1, CAST(N'2021-10-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gchernb2', N'9qX9rRUb', 2, N'Garvin Chern', 0, N'gchernb2@weebly.com', N'6088395713', NULL, 1, CAST(N'2022-04-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gcicconetti85', N'kVeFLsGtrUt', 1, N'Gillan Cicconetti', 1, N'gcicconetti85@people.com.cn', N'5161794062', NULL, 1, CAST(N'2021-12-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gcrampseyq1', N'Oxyy7J4', 2, N'Gail Crampsey', 0, N'gcrampseyq1@addtoany.com', N'7672482019', NULL, 1, CAST(N'2021-09-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gcroy94', N'e5u5gOb', 1, N'Godfree Croy', 1, N'gcroy94@squidoo.com', N'5158892347', NULL, 1, CAST(N'2021-12-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gdanick9s', N'mG3xU7cJ2ag', 2, N'Gale Danick', 1, N'gdanick9s@pagesperso-orange.fr', N'8906430621', NULL, 1, CAST(N'2021-12-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gdingatefr', N'3zWoeK2KViL', 2, N'Gale Dingate', 0, N'gdingatefr@dion.ne.jp', N'8885518179', NULL, 1, CAST(N'2021-11-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gduxbarryr9', N'8rXhLb', 2, N'Gianni Duxbarry', 1, N'gduxbarryr9@wikipedia.org', N'9595957868', NULL, 1, CAST(N'2022-01-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'geggintonl9', N'xhlCEsPK1Jz8', 1, N'Gris Egginton', 1, N'geggintonl9@elegantthemes.com', N'8967099544', NULL, 1, CAST(N'2021-06-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gfayned8', N'a7O50gxbPfu', 1, N'Gardiner Fayne', 0, N'gfayned8@uiuc.edu', N'4078923391', NULL, 1, CAST(N'2021-11-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ggatheralcz', N'V8qQHASK', 1, N'Germayne Gatheral', 1, N'ggatheralcz@nsw.gov.au', N'7538078199', NULL, 1, CAST(N'2021-08-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gghiraldine', N'01TfwqRJ', 1, N'Gertie Ghiraldi', 0, N'gghiraldine@hp.com', N'1384907169', NULL, 1, CAST(N'2022-02-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ggibbins4e', N'CCpYm3Yw', 1, N'Godwin Gibbins', 0, N'ggibbins4e@washington.edu', N'5179388098', NULL, 1, CAST(N'2021-12-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ggilderjp', N'hNpjjGiSfXRc', 1, N'Gustaf Gilder', 0, N'ggilderjp@g.co', N'8528715602', NULL, 1, CAST(N'2022-02-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ggilmore7m', N'QEJSqGIQcYx', 2, N'Gayle Gilmore', 0, N'ggilmore7m@nationalgeographic.com', N'5273192583', NULL, 1, CAST(N'2021-08-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ggrzeszczaka4', N'oT7GGWTHRyh', 2, N'Greggory Grzeszczak', 1, N'ggrzeszczaka4@nyu.edu', N'7685591098', NULL, 1, CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ggulberggo', N'6fNZ822CD', 2, N'George Gulberg', 0, N'ggulberggo@microsoft.com', N'6187328352', NULL, 1, CAST(N'2021-11-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ggushe3', N'DWv9jmKjg', 1, N'Godart Gush', 1, N'ggushe3@eepurl.com', N'9029980080', NULL, 1, CAST(N'2022-02-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ghanleyix', N'2LphwnFztog', 2, N'Gwenette Hanley', 0, N'ghanleyix@amazon.de', N'8954911884', NULL, 1, CAST(N'2021-07-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gheathjk', N'7ypQzhVvVkQg', 2, N'Gabriela Heath', 0, N'gheathjk@accuweather.com', N'7529415217', NULL, 1, CAST(N'2021-08-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ghowbrook5f', N'Gtq7twl', 2, N'Gray Howbrook', 1, N'ghowbrook5f@tamu.edu', N'8172467600', NULL, 1, CAST(N'2021-09-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ghughki', N'EualItkp3Sc8', 1, N'Gunar Hugh', 0, N'ghughki@ucsd.edu', N'4784706521', NULL, 1, CAST(N'2022-04-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'giansonke', N'w1NrVi', 1, N'Garwood I''anson', 1, N'giansonke@tmall.com', N'9605765731', NULL, 1, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gjellis89', N'YzGvLwx4i', 1, N'Gearalt Jellis', 1, N'gjellis89@hhs.gov', N'4524981594', NULL, 1, CAST(N'2022-04-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gjinkinson6a', N'RCivDEE', 2, N'Gregor Jinkinson', 1, N'gjinkinson6a@kickstarter.com', N'6849079348', NULL, 1, CAST(N'2021-06-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gkarys2c', N'wrSxpjeaaw', 1, N'Gena Karys', 1, N'gkarys2c@odnoklassniki.ru', N'4095971968', NULL, 1, CAST(N'2021-10-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gkiezlerom', N'7fssmLFGL', 2, N'Gwenora Kiezler', 0, N'gkiezlerom@bigcartel.com', N'5081995050', NULL, 1, CAST(N'2022-04-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'glucianodo', N'hxMDQkB6JCU5', 1, N'Garnette Luciano', 1, N'glucianodo@wisc.edu', N'5611172627', NULL, 1, CAST(N'2022-05-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'glyal8j', N'3k6yZyln', 1, N'Gawain Lyal', 0, N'glyal8j@gov.uk', N'1513115312', NULL, 1, CAST(N'2021-10-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gmackief8', N'n3znH1MVid2', 1, N'Gisela Mackie', 0, N'gmackief8@amazon.com', N'4129523505', NULL, 1, CAST(N'2022-05-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gmcgilvaryjn', N'UciWzQYkC', 1, N'Germaine McGilvary', 1, N'gmcgilvaryjn@omniture.com', N'7618196932', NULL, 1, CAST(N'2022-05-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gmilnthorpelh', N'4ORZ0FS', 2, N'Gery Milnthorpe', 0, N'gmilnthorpelh@mac.com', N'6307360748', NULL, 1, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'goliphantoj', N'ZQJyThBJl6', 1, N'Godfry Oliphant', 0, N'goliphantoj@icio.us', N'7614728367', NULL, 1, CAST(N'2021-12-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'golnerj9', N'w2oUvc5wgVK6', 1, N'Gasparo Olner', 1, N'golnerj9@tumblr.com', N'1343283582', NULL, 1, CAST(N'2021-10-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gpeasgood7e', N'3sIb3Csy5', 2, N'Gaye Peasgood', 0, N'gpeasgood7e@nymag.com', N'4659092849', NULL, 1, CAST(N'2022-02-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gpilek9', N'RIPYKVUJ', 1, N'Gaelan Pile', 0, N'gpilek9@mapy.cz', N'1236850542', NULL, 1, CAST(N'2022-02-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gpoletfa', N'qBg1octmwKF', 1, N'Galvan Polet', 1, N'gpoletfa@artisteer.com', N'2915429373', NULL, 1, CAST(N'2022-05-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gpridhamt', N'Iibmq83y', 1, N'Gussie Pridham', 0, N'gpridhamt@theguardian.com', N'2664573503', NULL, 1, CAST(N'2022-04-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gputterillqx', N'N68YQc', 1, N'Gorden Putterill', 1, N'gputterillqx@earthlink.net', N'9815969030', NULL, 1, CAST(N'2021-09-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gpymmjd', N'zJQgMhg', 2, N'Gill Pymm', 1, N'gpymmjd@usnews.com', N'8234083113', NULL, 1, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'grolfi3z', N'VMJjgg2', 1, N'Giralda Rolfi', 1, N'grolfi3z@zdnet.com', N'2299937132', NULL, 1, CAST(N'2022-04-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gsantus77', N'AZlQ8h9rg', 1, N'Gwyn Santus', 0, N'gsantus77@ucoz.com', N'9262156267', NULL, 1, CAST(N'2022-05-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gslowey52', N'49FBD15UJ5D0', 2, N'Gerrilee Slowey', 0, N'gslowey52@cdc.gov', N'4632087603', NULL, 1, CAST(N'2021-11-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gstarkingslp', N'RjMlvJ', 2, N'Ganny Starkings', 0, N'gstarkingslp@pagesperso-orange.fr', N'1235405192', NULL, 1, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gthurlbornqp', N'XuLBliA7Zw', 2, N'Gustie Thurlborn', 0, N'gthurlbornqp@indiatimes.com', N'7671348498', NULL, 1, CAST(N'2021-10-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gtumberqb', N'zImB7HFtXw', 1, N'Gil Tumber', 1, N'gtumberqb@mlb.com', N'9859984090', NULL, 1, CAST(N'2021-11-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gulyattkd', N'XYjnwMSHPIg', 2, N'Ginny Ulyatt', 0, N'gulyattkd@indiegogo.com', N'1973567868', NULL, 1, CAST(N'2021-09-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gverne9a', N'MMplL6S3', 1, N'Guenevere Verne', 0, N'gverne9a@hhs.gov', N'2073514422', NULL, 1, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gyaire1', N'nDVRJt', 2, N'Gayler Yair', 0, N'gyaire1@addthis.com', N'5295688701', NULL, 1, CAST(N'2021-08-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'gzannollik0', N'EvIuMyZBDea', 1, N'Gerianne Zannolli', 0, N'gzannollik0@opensource.org', N'6392066753', NULL, 1, CAST(N'2021-07-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'handrieuxmm', N'CH4RDnJ0DYz', 2, N'Heda Andrieux', 1, N'handrieuxmm@hhs.gov', N'8092366717', NULL, 1, CAST(N'2021-09-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'haspinal87', N'XHZlpRa6', 2, N'Hadrian Aspinal', 1, N'haspinal87@infoseek.co.jp', N'4079144586', NULL, 1, CAST(N'2021-06-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hbetkef6', N'TEmZ4GKnPXJ3', 1, N'Harlin Betke', 1, N'hbetkef6@nhs.uk', N'8993191945', NULL, 1, CAST(N'2022-04-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hbrando32', N'DXtRzu', 1, N'Hildagarde Brando', 1, N'hbrando32@nifty.com', N'1832027834', NULL, 1, CAST(N'2022-04-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hclare6n', N'fT7LkxXd6', 2, N'Helene Clare', 0, N'hclare6n@dailymotion.com', N'4153987296', NULL, 1, CAST(N'2022-02-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hcurtiss21', N'RQ7OIUq', 1, N'Halsy Curtiss', 0, N'hcurtiss21@php.net', N'2184813276', NULL, 1, CAST(N'2022-01-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hdemekr', N'rAKMbzYY', 2, N'Holmes Deme', 1, N'hdemekr@state.gov', N'5409309388', NULL, 1, CAST(N'2021-11-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hdomicohw', N'1YMUW1bT1', 1, N'Hope Domico', 1, N'hdomicohw@skyrock.com', N'2282627562', NULL, 1, CAST(N'2021-12-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hdudderidge7s', N'bxk3LQZImkOR', 2, N'Hillie Dudderidge', 1, N'hdudderidge7s@stanford.edu', N'8781364507', NULL, 1, CAST(N'2021-12-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'heastment8t', N'P0rO9HSU9No4', 1, N'Harcourt Eastment', 0, N'heastment8t@yolasite.com', N'1233074443', NULL, 1, CAST(N'2021-10-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hfincher9m', N'r9SLLWyyJLH', 2, N'Henrietta Fincher', 0, N'hfincher9m@mediafire.com', N'4096093606', NULL, 1, CAST(N'2022-04-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hgendersgb', N'mqTEJHCQZ', 1, N'Hasty Genders', 1, N'hgendersgb@home.pl', N'6411482565', NULL, 1, CAST(N'2021-09-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hgilbertks', N'9VtoDAldO', 1, N'Hadrian Gilbert', 0, N'hgilbertks@un.org', N'1193351082', NULL, 1, CAST(N'2022-04-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hgilhool7z', N'E1jwsRhv6e', 1, N'Henrik Gilhool', 1, N'hgilhool7z@thetimes.co.uk', N'4203528656', NULL, 1, CAST(N'2022-05-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hgraveyr', N'3zbY8M', 1, N'Hubey Gravey', 0, N'hgraveyr@example.com', N'8732451516', NULL, 1, CAST(N'2021-09-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hguyerseh', N'10W97tTZ', 1, N'Hyacinthie Guyers', 1, N'hguyerseh@squarespace.com', N'9131622440', NULL, 1, CAST(N'2022-02-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hhaygreen4t', N'T0guRDJy', 2, N'Hansiain Haygreen', 1, N'hhaygreen4t@chicagotribune.com', N'6893472393', NULL, 1, CAST(N'2021-12-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hhaylandpi', N'hlxAu6', 1, N'Hy Hayland', 1, N'hhaylandpi@cloudflare.com', N'8361879399', NULL, 1, CAST(N'2022-05-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hhiddsleyns', N'9oDPIA3NCj', 2, N'Hal Hiddsley', 1, N'hhiddsleyns@biblegateway.com', N'5413009763', NULL, 1, CAST(N'2021-10-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hhowbrookn6', N'XmS2laTv4frM', 2, N'Honoria Howbrook', 0, N'hhowbrookn6@pen.io', N'8448523357', NULL, 1, CAST(N'2021-11-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hieujoker11', N'alo12345678', 2, N'mimomo', 0, N'hieufakk@gmail.com', N'6526520101', NULL, 1, CAST(N'2022-06-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hingamellsa2', N'iacmLHpn', 2, N'Hardy Ingamells', 0, N'hingamellsa2@mysql.com', N'9609024411', NULL, 1, CAST(N'2022-01-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hlegertoneq', N'genLMCr', 2, N'Hayyim Legerton', 0, N'hlegertoneq@craigslist.org', N'3087159250', NULL, 1, CAST(N'2021-10-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hloweyjy', N'TcVv4p', 1, N'Hieronymus Lowey', 0, N'hloweyjy@google.de', N'9878309994', NULL, 1, CAST(N'2021-12-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hmacallastermz', N'oZ0zEAssaVIF', 1, N'Helyn MacAllaster', 1, N'hmacallastermz@google.com.hk', N'8239876415', NULL, 1, CAST(N'2021-10-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hmatura6w', N'2lvwRZQ', 1, N'Hillery Matura', 0, N'hmatura6w@imdb.com', N'8487779432', NULL, 1, CAST(N'2021-11-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hmchenrybt', N'Ogeb3eJWTeD', 1, N'Humberto McHenry', 0, N'hmchenrybt@w3.org', N'6309965470', NULL, 1, CAST(N'2022-01-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hmorley7j', N'sZVaJY', 1, N'Holden Morley', 1, N'hmorley7j@phpbb.com', N'3416711323', NULL, 1, CAST(N'2021-08-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hrosellinifq', N'UghRL9Hj', 1, N'Hardy Rosellini', 1, N'hrosellinifq@hud.gov', N'7274898556', NULL, 1, CAST(N'2021-09-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hspilisy98', N'GAJ5zz', 2, N'Haleigh Spilisy', 1, N'hspilisy98@google.com.br', N'3814560496', NULL, 1, CAST(N'2021-06-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hstibbs6s', N'h8C2JH', 1, N'Hill Stibbs', 1, N'hstibbs6s@cargocollective.com', N'5705608493', NULL, 1, CAST(N'2021-12-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hstirleyht', N'3bn4PMdR', 1, N'Hettie Stirley', 1, N'hstirleyht@bloomberg.com', N'9162657090', NULL, 1, CAST(N'2021-11-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hvereganm8', N'Qrv3N9p', 1, N'Hanny Veregan', 0, N'hvereganm8@reference.com', N'9039452525', NULL, 1, CAST(N'2022-05-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hwalework3h', N'1MScIEYc04w', 1, N'Hyacinthie Walework', 0, N'hwalework3h@cdc.gov', N'3941184970', NULL, 1, CAST(N'2021-07-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hyakunkinfz', N'Ut6mWW', 2, N'Henrie Yakunkin', 0, N'hyakunkinfz@shutterfly.com', N'6008612725', NULL, 1, CAST(N'2021-09-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'hyude5a', N'IUte4TA', 1, N'Hunt Yude', 0, N'hyude5a@de.vu', N'8354085113', NULL, 1, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ialcoranhb', N'FCTGHw', 2, N'Ines Alcoran', 1, N'ialcoranhb@fc2.com', N'6214261125', NULL, 1, CAST(N'2022-01-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ibadham4l', N'9gXDPxQTwN', 2, N'Isac Badham', 1, N'ibadham4l@miibeian.gov.cn', N'1853721804', NULL, 1, CAST(N'2021-07-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'iclover9z', N's9jPp603Kb', 1, N'Idalina Clover', 0, N'iclover9z@hao123.com', N'8179752095', NULL, 1, CAST(N'2022-05-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'icrangdj', N'8zSZcKm', 2, N'Isidro Crang', 1, N'icrangdj@disqus.com', N'7676175307', NULL, 1, CAST(N'2021-06-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'idanys', N'qJglC8W53', 1, N'Ivan Dany', 0, N'idanys@marketwatch.com', N'3242581076', NULL, 1, CAST(N'2021-11-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'iellesworthim', N'H0yzvqZczXk', 2, N'Isahella Ellesworth', 1, N'iellesworthim@sun.com', N'5827609400', NULL, 1, CAST(N'2021-09-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ifinkle7u', N'rSlcWQZnB', 2, N'Isidore Finkle', 0, N'ifinkle7u@hubpages.com', N'5411699806', NULL, 1, CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'iglasermand6', N'G2kyMLAJ', 2, N'Ignacius Glaserman', 1, N'iglasermand6@aol.com', N'1353590555', NULL, 1, CAST(N'2021-07-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ihanlond7', N'YMBZSasmjyf', 2, N'Isabelle Hanlon', 0, N'ihanlond7@yolasite.com', N'9616102836', NULL, 1, CAST(N'2021-12-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ihechlinju', N'q6uzt8I', 1, N'Inesita Hechlin', 0, N'ihechlinju@ftc.gov', N'9125823012', NULL, 1, CAST(N'2021-07-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ihollingsbyka', N'6c3WFqA', 2, N'Ingrid Hollingsby', 0, N'ihollingsbyka@amazonaws.com', N'2687153305', NULL, 1, CAST(N'2022-02-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ijedraszek61', N'ktwJaLb', 1, N'Isidoro Jedraszek', 1, N'ijedraszek61@google.fr', N'6255288429', NULL, 1, CAST(N'2022-05-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'iknappenbz', N'nFQGUUT', 1, N'Iggie Knappen', 0, N'iknappenbz@washington.edu', N'9007521928', NULL, 1, CAST(N'2021-12-03' AS Date), 1)
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ilawlandgr', N'3xHwyCXSNm', 2, N'Inesita Lawland', 1, N'ilawlandgr@princeton.edu', N'4119438023', NULL, 1, CAST(N'2022-05-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'imanisf', N'I8kAitm2H', 2, N'Ina Manis', 0, N'imanisf@icio.us', N'2233211403', NULL, 1, CAST(N'2021-11-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'imanninhn', N'044Y8AwQw27', 2, N'Ivor Mannin', 0, N'imanninhn@cmu.edu', N'9476516856', NULL, 1, CAST(N'2022-04-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ineachellec', N'MXzVZ3', 1, N'Ignace Neachell', 0, N'ineachellec@mtv.com', N'7705865362', NULL, 1, CAST(N'2022-05-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ipeacham8b', N'2d9R5uh9NE', 1, N'Inness Peacham', 1, N'ipeacham8b@tuttocitta.it', N'9869312491', NULL, 1, CAST(N'2021-06-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ipendlenton5h', N'1ymK9Q4GmbE', 1, N'Isa Pendlenton', 1, N'ipendlenton5h@freewebs.com', N'6128705550', NULL, 1, CAST(N'2021-08-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'iperrigo1s', N'b3nk8IET', 2, N'Idell Perrigo', 1, N'iperrigo1s@patch.com', N'7234450718', NULL, 1, CAST(N'2022-04-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'isanderson4', N'hS3eDc', 1, N'Isaiah Sanderson', 1, N'isanderson4@ox.ac.uk', N'8979617427', NULL, 1, CAST(N'2021-09-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'isandlin9q', N'CnqET3Znp82i', 1, N'Inglis Sandlin', 0, N'isandlin9q@taobao.com', N'9832550216', NULL, 1, CAST(N'2022-06-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jarmourda', N'XNTwqa2', 1, N'Josh Armour', 1, N'jarmourda@i2i.jp', N'8712051232', NULL, 1, CAST(N'2021-12-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jaslotthc', N'zGl4OD', 2, N'Jenilee Aslott', 0, N'jaslotthc@bigcartel.com', N'6106951317', NULL, 1, CAST(N'2021-08-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jbaldaccoeb', N'RFBYmtDi', 2, N'Jasen Baldacco', 1, N'jbaldaccoeb@usnews.com', N'1567310574', NULL, 1, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jbeauchopn3', N'5hSK2ETjoYK', 2, N'Julietta Beauchop', 0, N'jbeauchopn3@t-online.de', N'1464037626', NULL, 1, CAST(N'2021-10-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jbebisi0', N'wWZKzvhj', 2, N'Jerri Bebis', 1, N'jbebisi0@hostgator.com', N'6727403448', NULL, 1, CAST(N'2021-10-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jblaby2x', N'xfYChkD6', 2, N'Jodie Blaby', 1, N'jblaby2x@kickstarter.com', N'8374078521', NULL, 1, CAST(N'2021-07-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jbleakley2g', N'0kYIqkSRl2y3', 1, N'Jean Bleakley', 0, N'jbleakley2g@scribd.com', N'1433662862', NULL, 1, CAST(N'2021-11-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jbranthwaite8f', N'qtRGUYT', 2, N'Jenda Branthwaite', 0, N'jbranthwaite8f@wikispaces.com', N'2395929944', NULL, 1, CAST(N'2022-05-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jbreache8r', N'viSOMOkrtgL', 2, N'Jojo Breache', 1, N'jbreache8r@cam.ac.uk', N'7406854023', NULL, 1, CAST(N'2021-11-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jbubear3k', N'SBUEE7gfDJ', 1, N'Justen Bubear', 0, N'jbubear3k@purevolume.com', N'5802716218', NULL, 1, CAST(N'2021-06-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jbuckner70', N'6TTi2nDOGKQU', 2, N'Jewelle Buckner', 0, N'jbuckner70@netvibes.com', N'7233805512', NULL, 1, CAST(N'2021-08-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jbuyersg8', N'JXhzBH', 2, N'Jsandye Buyers', 1, N'jbuyersg8@icio.us', N'5344492522', NULL, 1, CAST(N'2021-08-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jcanteraj7', N'9D5zUE6IQmGs', 1, N'Joell Cantera', 1, N'jcanteraj7@opera.com', N'1469708651', NULL, 1, CAST(N'2022-05-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jcreightonnf', N'TnZlDy30XuI', 1, N'June Creighton', 0, N'jcreightonnf@hostgator.com', N'7976076752', NULL, 1, CAST(N'2021-09-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jcumberlandlg', N'SuE8GFxocgGV', 1, N'Johannah Cumberland', 0, N'jcumberlandlg@guardian.co.uk', N'5608283230', NULL, 1, CAST(N'2022-05-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jcurtonho', N'du0YaAI', 2, N'Jamima Curton', 0, N'jcurtonho@yelp.com', N'8447494736', NULL, 1, CAST(N'2021-07-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jdeshon8h', N'P8PxbgXgA3tA', 1, N'Jammal Deshon', 1, N'jdeshon8h@cloudflare.com', N'7694214275', NULL, 1, CAST(N'2021-07-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jdooganfm', N'mt2dlYUd', 1, N'Jemmie Doogan', 1, N'jdooganfm@hugedomains.com', N'6633504966', NULL, 1, CAST(N'2021-09-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jduer5i', N'YGhFGUgq2Ab', 1, N'Jerri Duer', 0, N'jduer5i@geocities.jp', N'8432404919', NULL, 1, CAST(N'2022-04-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jedlestone3f', N'nVBtin7', 1, N'Julianna Edlestone', 0, N'jedlestone3f@acquirethisname.com', N'2388580321', NULL, 1, CAST(N'2021-12-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jfreeburnlb', N'EzDwZyIB', 2, N'Juana Freeburn', 1, N'jfreeburnlb@addthis.com', N'4091263121', NULL, 1, CAST(N'2021-08-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jhackinge2j', N'3WIZXWK', 1, N'Jocelin Hackinge', 0, N'jhackinge2j@hexun.com', N'1126255155', NULL, 1, CAST(N'2022-06-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jhallmark5v', N'WxrFD99e', 1, N'Jacinta Hallmark', 0, N'jhallmark5v@linkedin.com', N'5907582144', NULL, 1, CAST(N'2021-06-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jhatchettjs', N'f6Zc7gyz', 2, N'Jackquelin Hatchett', 1, N'jhatchettjs@wp.com', N'7433711285', NULL, 1, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jhayi9', N'rfn7oEnsB', 2, N'Jeddy Hay', 0, N'jhayi9@whitehouse.gov', N'2273976501', NULL, 1, CAST(N'2022-04-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jhearseny', N'P4zOZKXlXA6b', 1, N'Jeffy Hearse', 0, N'jhearseny@hud.gov', N'7106916322', NULL, 1, CAST(N'2022-02-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jhuginmp', N'RSD6k1', 1, N'Johannah Hugin', 1, N'jhuginmp@hud.gov', N'7837505188', NULL, 1, CAST(N'2022-05-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jjanssenspy', N'FxUj4k92OwN', 2, N'Justine Janssens', 0, N'jjanssenspy@wordpress.com', N'8626402172', NULL, 1, CAST(N'2021-09-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jkeatonn4', N'hR207bqmXSTZ', 2, N'Jaquelin Keaton', 1, N'jkeatonn4@sourceforge.net', N'9397008939', NULL, 1, CAST(N'2021-09-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jkinahano4', N'hpD6YwYKiZ8j', 2, N'Johnathon Kinahan', 1, N'jkinahano4@deviantart.com', N'5532814429', NULL, 1, CAST(N'2021-07-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jkobierra2z', N'dfmCvlactY', 1, N'Jamil Kobierra', 0, N'jkobierra2z@google.pl', N'6001265046', NULL, 1, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jmanklow4d', N'r3Tjv8QcZEN', 2, N'Jillana Manklow', 0, N'jmanklow4d@hubpages.com', N'3047377792', NULL, 1, CAST(N'2021-10-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jmcgaheyi2', N'TSDnyRIq4LI', 2, N'Jorie McGahey', 0, N'jmcgaheyi2@a8.net', N'9184490783', NULL, 1, CAST(N'2021-09-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jmilf5', N'LFjM3tE', 1, N'Janos Mil', 1, N'jmilf5@google.com', N'3226898376', NULL, 1, CAST(N'2021-12-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jpaddieff', N'QFRsKNvMrP01', 1, N'Jeddy Paddie', 0, N'jpaddieff@biblegateway.com', N'1965894445', NULL, 1, CAST(N'2021-12-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jpattingtoncu', N'lt3XuTI', 1, N'Jobie Pattington', 1, N'jpattingtoncu@i2i.jp', N'3329969242', NULL, 1, CAST(N'2022-04-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jpoynter6r', N'SAnk0TsCIyT', 2, N'Jobey Poynter', 0, N'jpoynter6r@live.com', N'3374351501', NULL, 1, CAST(N'2021-07-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jrembrandtf7', N'Q3Re70e', 2, N'Jilleen Rembrandt', 1, N'jrembrandtf7@businessweek.com', N'5209783790', NULL, 1, CAST(N'2022-02-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jseekingsrp', N'UGVby63R', 1, N'Jemmy Seekings', 0, N'jseekingsrp@rediff.com', N'2213563826', NULL, 1, CAST(N'2021-10-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jshowell29', N'Oxgh47Sjy0F', 1, N'Jen Showell', 0, N'jshowell29@hatena.ne.jp', N'9125682485', NULL, 1, CAST(N'2022-02-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jtaythh', N'PUMLwOkAQuNm', 2, N'Judon Tayt', 1, N'jtaythh@geocities.jp', N'6084823133', NULL, 1, CAST(N'2021-10-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jtodhunter1k', N'DbcnQRMUuWbW', 2, N'Jermaine Todhunter', 1, N'jtodhunter1k@bandcamp.com', N'3662012097', NULL, 1, CAST(N'2022-04-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jtrevillionit', N'0knhd7', 2, N'Jewelle Trevillion', 0, N'jtrevillionit@livejournal.com', N'9947858995', NULL, 1, CAST(N'2021-07-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'junthanky', N'0zjzmTKZGb', 1, N'Jethro Unthank', 0, N'junthanky@plala.or.jp', N'6002914281', NULL, 1, CAST(N'2021-10-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jwinstone50', N'X6gxeOy', 1, N'Juli Winstone', 1, N'jwinstone50@list-manage.com', N'5367077819', NULL, 1, CAST(N'2021-09-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jwoollendsl2', N'aj3nTjs3BH', 2, N'Juliette Woollends', 0, N'jwoollendsl2@illinois.edu', N'7885515161', NULL, 1, CAST(N'2022-03-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'jworledgeea', N'n0pM9N5A', 1, N'Junie Worledge', 0, N'jworledgeea@altervista.org', N'7589859372', NULL, 1, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kargent5r', N'VtTFldty', 2, N'Kean Argent', 0, N'kargent5r@surveymonkey.com', N'1776361198', NULL, 1, CAST(N'2021-11-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kastieky', N'2ry5w9o', 2, N'Kirbee Astie', 1, N'kastieky@cpanel.net', N'1133115083', NULL, 1, CAST(N'2022-04-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kbartigh', N'cA5f23o5v1', 1, N'Klaus Barti', 1, N'kbartigh@soundcloud.com', N'4341730608', NULL, 1, CAST(N'2021-07-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kbessonkx', N'YvRxawASrr', 1, N'Kaleb Besson', 0, N'kbessonkx@springer.com', N'4246216126', NULL, 1, CAST(N'2021-07-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kbrumfieldu', N'pQvZHidO', 2, N'Kellby Brumfield', 0, N'kbrumfieldu@4shared.com', N'3496025190', NULL, 1, CAST(N'2021-10-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kbrumkz', N'iGta9n', 2, N'Ky Brum', 0, N'kbrumkz@toplist.cz', N'5078196843', NULL, 1, CAST(N'2022-04-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kcaldeiroi8', N'W8qdFDSTFP0', 2, N'Konrad Caldeiro', 1, N'kcaldeiroi8@apple.com', N'6379438774', NULL, 1, CAST(N'2022-01-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kcondict9x', N'shqtu3n7U7', 1, N'Kristopher Condict', 1, N'kcondict9x@opera.com', N'4441162129', NULL, 1, CAST(N'2021-08-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kdeo2', N'2jrFYejw2', 2, N'Kipp De Michetti', 1, N'kdeo2@princeton.edu', N'7381208811', NULL, 1, CAST(N'2021-09-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kdevote7p', N'gejRGggn', 2, N'Kain Devote', 0, N'kdevote7p@rediff.com', N'2328982788', NULL, 1, CAST(N'2021-08-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kdinneeng6', N'E3Oc6P', 1, N'Kaitlin Dinneen', 1, N'kdinneeng6@csmonitor.com', N'3588129607', NULL, 1, CAST(N'2021-07-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kdundredgegw', N'C4zNeJ5RK8y', 2, N'Konstantin Dundredge', 1, N'kdundredgegw@macromedia.com', N'2699226748', NULL, 1, CAST(N'2021-10-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kdymoke18', N'5dtRli9vp1mt', 1, N'Kin Dymoke', 1, N'kdymoke18@state.tx.us', N'1036302907', NULL, 1, CAST(N'2021-11-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kfaldoie', N'V4p0izuj62vn', 1, N'Kalli Faldo', 0, N'kfaldoie@clickbank.net', N'4406476392', NULL, 1, CAST(N'2021-10-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kfarrensof', N'apHXWsa5g8', 2, N'Kordula Farrens', 0, N'kfarrensof@elegantthemes.com', N'8879034753', NULL, 1, CAST(N'2021-12-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kfoston12', N'js9g7WFFDtt', 1, N'Kimberlyn Foston', 0, N'kfoston12@yolasite.com', N'1014210023', NULL, 1, CAST(N'2022-05-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kgaythorpe7h', N'WyCBRngn', 1, N'Kata Gaythorpe', 1, N'kgaythorpe7h@1688.com', N'9468410096', NULL, 1, CAST(N'2021-07-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kgeorge7', N'CKaErJAz0r', 1, N'Kacey Georg', 0, N'kgeorge7@wunderground.com', N'4564887079', NULL, 1, CAST(N'2022-05-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kgrisedale3a', N'hNBGbh7qM', 1, N'Kandace Grisedale', 1, N'kgrisedale3a@cam.ac.uk', N'5487863658', NULL, 1, CAST(N'2022-02-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'khalworth1g', N'cXWP6opI', 2, N'Katlin Halworth', 0, N'khalworth1g@canalblog.com', N'2341233827', NULL, 1, CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'khartellm', N'ld6SzWN', 1, N'Keir Hartell', 0, N'khartellm@upenn.edu', N'3763625509', NULL, 1, CAST(N'2022-05-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'khatherleighf9', N'Y42SnzlgH', 2, N'Kenneth Hatherleigh', 1, N'khatherleighf9@theglobeandmail.com', N'7678686458', NULL, 1, CAST(N'2022-04-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'khemmsp8', N'u3mMQmogAizs', 1, N'Kate Hemms', 1, N'khemmsp8@youtube.com', N'6398884735', NULL, 1, CAST(N'2021-09-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kinfantebx', N'etUb4af', 1, N'Kalvin Infante', 0, N'kinfantebx@mac.com', N'9758247455', NULL, 1, CAST(N'2021-06-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kipplettm9', N'Ok7g5GyEg', 1, N'Kelci Ipplett', 0, N'kipplettm9@blinklist.com', N'5541154160', NULL, 1, CAST(N'2021-08-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kisoldibs', N't6bnyP1ZR', 2, N'Kristi Isoldi', 1, N'kisoldibs@mac.com', N'2973098613', NULL, 1, CAST(N'2021-11-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kkeedwelldn', N'9IPSOO7KekO', 2, N'Korie Keedwell', 1, N'kkeedwelldn@omniture.com', N'2546932697', NULL, 1, CAST(N'2021-12-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'klawteyl4', N'nFyZ2R', 2, N'Kirk Lawtey', 0, N'klawteyl4@diigo.com', N'7326731527', NULL, 1, CAST(N'2022-05-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'klebk', N'nZfe991', 1, N'Kellby Le Count', 1, N'klebk@typepad.com', N'8351219094', NULL, 1, CAST(N'2022-06-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'klloydwilliamsq8', N'jnLlQCxYvc', 2, N'Keefe Lloyd-Williams', 0, N'klloydwilliamsq8@kickstarter.com', N'2589069462', NULL, 1, CAST(N'2021-06-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kmcgreayhy', N'0VVnF6', 1, N'Kort McGreay', 1, N'kmcgreayhy@yahoo.com', N'5471210349', NULL, 1, CAST(N'2022-05-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kmeynellqf', N'RRLSG3nx8R', 2, N'Kaycee Meynell', 0, N'kmeynellqf@buzzfeed.com', N'1988133947', NULL, 1, CAST(N'2022-04-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kmouldingkj', N'3fNafOl', 2, N'Kristina Moulding', 1, N'kmouldingkj@google.ru', N'4069777885', NULL, 1, CAST(N'2022-02-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'knarduccihs', N'DSqVl8HRdwNi', 2, N'Kylie Narducci', 0, N'knarduccihs@blinklist.com', N'9667228540', NULL, 1, CAST(N'2021-11-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kocriganern', N'DphtMO6Hyx', 1, N'Kitty O''Crigane', 1, N'kocriganern@trellian.com', N'7197652054', NULL, 1, CAST(N'2022-03-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kpatshullby', N'Yjm3xAWHgw', 1, N'Knox Patshull', 1, N'kpatshullby@i2i.jp', N'4726928308', NULL, 1, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'krzehorop', N'AMQAN0UQyVHI', 1, N'Kristine Rzehor', 1, N'krzehorop@mashable.com', N'4584802350', NULL, 1, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ksivills1u', N'G0fyNCui1pN', 2, N'Karla Sivills', 0, N'ksivills1u@123-reg.co.uk', N'2246890736', NULL, 1, CAST(N'2021-08-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ksleightholmelt', N'X4SPxtgV', 1, N'Karry Sleightholme', 0, N'ksleightholmelt@over-blog.com', N'2267916544', NULL, 1, CAST(N'2021-08-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kspilletthk', N'h5f7y9w', 2, N'Kasey Spillett', 0, N'kspilletthk@answers.com', N'7413015760', NULL, 1, CAST(N'2021-08-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ktithecottg9', N'ugCCNGF', 2, N'Kellen Tithecott', 1, N'ktithecottg9@gov.uk', N'8753413870', NULL, 1, CAST(N'2021-12-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ktown4c', N'0SoIb7Z14c', 2, N'Kalinda Town', 1, N'ktown4c@boston.com', N'3538723340', NULL, 1, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kurquhartr5', N'3Y7cv3Ybt', 2, N'Kristien Urquhart', 0, N'kurquhartr5@jimdo.com', N'1137817228', NULL, 1, CAST(N'2022-04-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'kwydok', N'AmOILVr', 1, N'Kanya Wyd', 1, N'kwydok@cornell.edu', N'8578578686', NULL, 1, CAST(N'2022-03-26' AS Date), 1)
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lableyj2', N'gVEE9EeAj3hu', 1, N'Lesya Abley', 1, N'lableyj2@hugedomains.com', N'4058059935', NULL, 1, CAST(N'2022-04-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lavrahmnc', N'mGUS0EFp', 2, N'Linzy Avrahm', 1, N'lavrahmnc@cam.ac.uk', N'9988648663', NULL, 1, CAST(N'2021-11-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lbryceson11', N'3NPH83P26j', 2, N'Leticia Bryceson', 1, N'lbryceson11@youtu.be', N'5688846779', NULL, 1, CAST(N'2021-08-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lbuicko8', N'nOd6F3TUmN8x', 1, N'Lynnett Buick', 0, N'lbuicko8@wp.com', N'5102189806', NULL, 1, CAST(N'2021-12-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lbunyardjg', N'9nTi6aIzZ', 1, N'Ludovika Bunyard', 1, N'lbunyardjg@indiatimes.com', N'1493065161', NULL, 1, CAST(N'2021-07-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lburgesh8', N'DWzgRPHERX', 2, N'Lishe Burges', 1, N'lburgesh8@friendfeed.com', N'4521591865', NULL, 1, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lcolhoungz', N'pcDx3hxLqsMF', 2, N'Lesley Colhoun', 0, N'lcolhoungz@nbcnews.com', N'7012384567', NULL, 1, CAST(N'2022-04-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lcootes1y', N'qH0y7W1ILU', 2, N'Lyle Cootes', 1, N'lcootes1y@1und1.de', N'5095956088', NULL, 1, CAST(N'2022-03-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lcromlyjl', N'80S0AdaBLkVz', 2, N'Lyndsey Cromly', 0, N'lcromlyjl@bigcartel.com', N'6681719750', NULL, 1, CAST(N'2021-09-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ldavereni5', N'Eq4Z6x', 2, N'Lucy Daveren', 0, N'ldavereni5@upenn.edu', N'8894072773', NULL, 1, CAST(N'2021-10-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ldelanyg0', N'NXoxJ7CV8', 2, N'Lorette Delany', 1, N'ldelanyg0@wikipedia.org', N'7088451640', NULL, 1, CAST(N'2022-02-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ldemongee9', N'JYdd8PuD', 2, N'Leese Demonge', 1, N'ldemongee9@mediafire.com', N'8651673809', NULL, 1, CAST(N'2021-10-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ldymockeh1', N'qr6VECL', 2, N'Luise Dymocke', 1, N'ldymockeh1@dropbox.com', N'9964333460', NULL, 1, CAST(N'2021-07-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ledgesonkn', N'eF7VF2loUG', 2, N'Linet Edgeson', 0, N'ledgesonkn@cisco.com', N'8958169428', NULL, 1, CAST(N'2021-06-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ledyqd', N'Z4KEgt3C', 1, N'Lorrin Edy', 1, N'ledyqd@adobe.com', N'1238211531', NULL, 1, CAST(N'2021-12-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lelfesnz', N'jH169OpWoWN', 2, N'Leeann Elfes', 1, N'lelfesnz@microsoft.com', N'5635477507', NULL, 1, CAST(N'2021-10-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lfaircleyfv', N'x41fKFZoxlVw', 2, N'Laure Faircley', 0, N'lfaircleyfv@pen.io', N'8289826301', NULL, 1, CAST(N'2021-06-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lfarmloe1', N'WpoFJF335Kp', 1, N'Leda Farmloe', 0, N'lfarmloe1@arizona.edu', N'2119116569', NULL, 1, CAST(N'2021-12-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lfrankesmq', N'B8WTJW', 1, N'Lyell Frankes', 1, N'lfrankesmq@blogs.com', N'4515915198', NULL, 1, CAST(N'2021-09-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lhillenmd', N'duQaQYO', 2, N'Lethia Hillen', 0, N'lhillenmd@plala.or.jp', N'4503006284', NULL, 1, CAST(N'2021-10-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lhockingcy', N'OWyWjH', 1, N'Leesa Hocking', 1, N'lhockingcy@mayoclinic.com', N'3462494127', NULL, 1, CAST(N'2022-05-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lhurdissc4', N'7reUq0', 1, N'Launce Hurdiss', 0, N'lhurdissc4@desdev.cn', N'5487920032', NULL, 1, CAST(N'2021-11-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ljonk5l', N'4NKJ4qWZkti', 1, N'Leisha Jonk', 1, N'ljonk5l@dedecms.com', N'3141465565', NULL, 1, CAST(N'2021-10-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lkeirlerc', N'L3aPtB3XHx', 1, N'Louella Keirle', 1, N'lkeirlerc@cbc.ca', N'6231388498', NULL, 1, CAST(N'2021-07-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lloblecf', N'NNeJWI371R', 1, N'Logan Loble', 0, N'lloblecf@oaic.gov.au', N'2224641137', NULL, 1, CAST(N'2021-10-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lmacgilpatrickmw', N'b76GdfBEa', 1, N'Lorelei MacGilpatrick', 0, N'lmacgilpatrickmw@angelfire.com', N'6745807158', NULL, 1, CAST(N'2021-10-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lmagowanau', N'PtiAYTtwO', 1, N'Louisette Magowan', 1, N'lmagowanau@vistaprint.com', N'7446644378', NULL, 1, CAST(N'2022-03-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lmannionn7', N'RMa62LxBJ', 2, N'Lolly Mannion', 1, N'lmannionn7@pbs.org', N'2265545718', NULL, 1, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lmarranei', N'ujwYAs6x', 1, N'Linnie Marran', 0, N'lmarranei@google.de', N'7951000559', NULL, 1, CAST(N'2021-11-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lmorsleymt', N'kYdML2', 2, N'Leonardo Morsley', 1, N'lmorsleymt@woothemes.com', N'8694153648', NULL, 1, CAST(N'2022-01-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lmulqueeny7i', N'b03LbxZ3eZ5', 2, N'Lacie Mulqueeny', 1, N'lmulqueeny7i@youtube.com', N'2057385835', NULL, 1, CAST(N'2021-10-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lmuncasterep', N'OgD82W', 1, N'Lesya Muncaster', 0, N'lmuncasterep@mayoclinic.com', N'2328669404', NULL, 1, CAST(N'2021-09-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lnewardls', N'OGyx7EPaoQAH', 2, N'Lorelei Neward', 1, N'lnewardls@discovery.com', N'7371775882', NULL, 1, CAST(N'2022-04-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lobrollachainc0', N'HwvNbmEiE', 2, N'Lisle O''Brollachain', 1, N'lobrollachainc0@auda.org.au', N'7017260951', NULL, 1, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lpakenham5t', N'KFtG1OefGg', 1, N'Lorry Pakenham', 0, N'lpakenham5t@state.tx.us', N'6295616665', NULL, 1, CAST(N'2022-05-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lparkenoe', N'Ri3RQkHXG', 2, N'Lonnie Parken', 1, N'lparkenoe@psu.edu', N'5677783036', NULL, 1, CAST(N'2022-02-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lperoccim2', N'2run0hg', 2, N'Lester Perocci', 1, N'lperoccim2@indiegogo.com', N'4583460335', NULL, 1, CAST(N'2021-11-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lpetchelld2', N'Y9epij', 1, N'Lefty Petchell', 0, N'lpetchelld2@usa.gov', N'6742818080', NULL, 1, CAST(N'2021-12-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lphilpault28', N'qr1JTl4mQH7', 2, N'Linn Philpault', 1, N'lphilpault28@pbs.org', N'9266568665', NULL, 1, CAST(N'2022-05-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lpockett69', N'RD5IKq', 2, N'Lazarus Pockett', 1, N'lpockett69@fda.gov', N'8699871808', NULL, 1, CAST(N'2022-04-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lrusseos', N'VkAukUyXAD', 2, N'Laura Russe', 0, N'lrusseos@berkeley.edu', N'5738737313', NULL, 1, CAST(N'2022-05-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lsappell25', N'6l6YBqDkYtyH', 1, N'L;urette Sappell', 0, N'lsappell25@seattletimes.com', N'9725985704', NULL, 1, CAST(N'2022-01-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lshowerset', N'JoQ6Up', 1, N'Lu Showers', 0, N'lshowerset@pen.io', N'4232742440', NULL, 1, CAST(N'2022-04-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lswanwickh4', N'y7oIqOf5Cx5', 2, N'Lilllie Swanwick', 1, N'lswanwickh4@prlog.org', N'4188338306', NULL, 1, CAST(N'2022-03-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ltaylorsonhg', N'DbBNvm', 2, N'Lyda Taylorson', 0, N'ltaylorsonhg@google.com', N'2976678224', NULL, 1, CAST(N'2021-07-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lticksalla7', N'582eeOPuO', 2, N'Lamont Ticksall', 0, N'lticksalla7@cargocollective.com', N'3662897830', NULL, 1, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ltrewmanoq', N'9lpRUVwRJYYt', 2, N'Lorinda Trewman', 1, N'ltrewmanoq@theglobeandmail.com', N'7159581007', NULL, 1, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ltruwert74', N'begKfWafKXw', 2, N'Leland Truwert', 0, N'ltruwert74@sbwire.com', N'8712610765', NULL, 1, CAST(N'2022-03-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'luphilljh', N'wLXfMK', 1, N'Lesley Uphill', 1, N'luphilljh@tuttocitta.it', N'9063698704', NULL, 1, CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lvan1n', N'ApBuVAk', 2, N'Liv Van der Son', 0, N'lvan1n@slashdot.org', N'4069026030', NULL, 1, CAST(N'2022-05-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lvilesnr', N'Sfb7mghVJ', 1, N'Loria Viles', 1, N'lvilesnr@sourceforge.net', N'5313731499', NULL, 1, CAST(N'2022-05-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lvreibergkf', N'T6NK3U1L', 1, N'Lanny Vreiberg', 0, N'lvreibergkf@mediafire.com', N'3102711149', NULL, 1, CAST(N'2022-04-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lwerrilow37', N'XKedex', 2, N'Lynett Werrilow', 0, N'lwerrilow37@foxnews.com', N'9224342854', NULL, 1, CAST(N'2022-03-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'lwillinghamjq', N'jopF0eR0n8hW', 2, N'Lynna Willingham', 0, N'lwillinghamjq@tumblr.com', N'4321205981', NULL, 1, CAST(N'2022-01-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'maiskriggjf', N'xOYNtL', 2, N'Moss Aiskrigg', 1, N'maiskriggjf@chronoengine.com', N'5895795488', NULL, 1, CAST(N'2022-05-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'massonaf', N'VH8TYBx6H', 1, N'Melisandra Asson', 1, N'massonaf@lycos.com', N'7515817169', NULL, 1, CAST(N'2021-07-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mbasnettfe', N'TBq5eN', 1, N'Murdoch Basnett', 1, N'mbasnettfe@ovh.net', N'7575569118', NULL, 1, CAST(N'2021-12-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mbaynamiy', N'pp8BNW9QCCDo', 2, N'Morganne Baynam', 0, N'mbaynamiy@studiopress.com', N'5704930202', NULL, 1, CAST(N'2022-02-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mbeaglehole4y', N'qy0iX40YP', 2, N'Maureen Beaglehole', 0, N'mbeaglehole4y@mozilla.org', N'2668068802', NULL, 1, CAST(N'2022-04-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mbeetlestoneek', N'6np1XZDz', 2, N'Michaela Beetlestone', 0, N'mbeetlestoneek@hubpages.com', N'5447175641', NULL, 1, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mbertsonak', N'AZQ7OF', 2, N'Mace Bertson', 1, N'mbertsonak@altervista.org', N'5739985113', NULL, 1, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mbestonin', N'aZGoihfC6Us2', 1, N'Mag Beston', 1, N'mbestonin@opera.com', N'4871510648', NULL, 1, CAST(N'2022-06-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mbrandham9t', N'jVR2dmmhocE', 2, N'Mara Brandham', 0, N'mbrandham9t@buzzfeed.com', N'3778182771', NULL, 1, CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mbusch5m', N'tIBDc9B7m5O6', 2, N'Magda Busch', 0, N'mbusch5m@yahoo.com', N'8174736654', NULL, 1, CAST(N'2022-02-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mcaddyds', N'rPo8811', 1, N'Martha Caddy', 0, N'mcaddyds@istockphoto.com', N'6516883571', NULL, 1, CAST(N'2022-02-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mcastellaaj', N'slJRtiS3', 1, N'Martie Castella', 1, N'mcastellaaj@printfriendly.com', N'9006994968', NULL, 1, CAST(N'2021-09-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mcominello2i', N'mOOtexV4XU', 2, N'Meryl Cominello', 0, N'mcominello2i@columbia.edu', N'7624040885', NULL, 1, CAST(N'2021-08-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mcortin5w', N'af6cUis', 1, N'Marylin Cortin', 1, N'mcortin5w@pinterest.com', N'6208828349', NULL, 1, CAST(N'2022-04-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mcrichten3v', N'iH7BicmV', 1, N'Marlee Crichten', 0, N'mcrichten3v@huffingtonpost.com', N'6283270792', NULL, 1, CAST(N'2021-09-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mdavorenjw', N'r8aqus6UKcAc', 1, N'Madelin Davoren', 1, N'mdavorenjw@t-online.de', N'7689720044', NULL, 1, CAST(N'2021-09-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mdenisovoax', N'uAZUeRn', 1, N'Meredith Denisovo', 1, N'mdenisovoax@un.org', N'1274048730', NULL, 1, CAST(N'2021-06-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mdimblebee1r', N'GLTB1A', 1, N'Moll Dimblebee', 0, N'mdimblebee1r@dot.gov', N'1473415386', NULL, 1, CAST(N'2022-03-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mdockery82', N'MlKyQTWn', 2, N'Melodee Dockery', 0, N'mdockery82@ocn.ne.jp', N'5465213172', NULL, 1, CAST(N'2022-01-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mdorriangu', N'pl489tA5m', 2, N'Merill Dorrian', 0, N'mdorriangu@desdev.cn', N'7587881798', NULL, 1, CAST(N'2021-07-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mduffan8i', N'xSpyBYw', 2, N'Mac Duffan', 1, N'mduffan8i@naver.com', N'6302023894', NULL, 1, CAST(N'2022-05-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mdurringtonl6', N'msLk2dPL8n', 1, N'Mickie Durrington', 0, N'mdurringtonl6@umich.edu', N'4859916503', NULL, 1, CAST(N'2021-07-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mfeatenbyl0', N'RzMSPQ', 1, N'Modestine Featenby', 1, N'mfeatenbyl0@chicagotribune.com', N'7185232210', NULL, 1, CAST(N'2022-01-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mgagerp2', N'R9RKBON1d', 2, N'Morganica Gager', 1, N'mgagerp2@ucsd.edu', N'1279808701', NULL, 1, CAST(N'2022-06-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mgymblettam', N'7o3luafoN', 2, N'Mathe Gymblett', 0, N'mgymblettam@facebook.com', N'9105087762', NULL, 1, CAST(N'2021-10-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mhindmoor9w', N'NHtsz4IDH8Z', 1, N'Melamie Hindmoor', 1, N'mhindmoor9w@bing.com', N'5685123721', NULL, 1, CAST(N'2021-09-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'minhlee123456', N'12345678', 1, N'le cong minh', 1, N'minhhhhlee@gmail.com', N'0961373408', NULL, 1, CAST(N'2022-06-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mkeary53', N'HJjbPX', 1, N'Maddy Keary', 0, N'mkeary53@naver.com', N'2131644173', NULL, 1, CAST(N'2021-12-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mkeitleyhl', N'tXSBNRBad9x3', 2, N'Michaeline Keitley', 0, N'mkeitleyhl@cbc.ca', N'8653106027', NULL, 1, CAST(N'2021-10-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mkeysen5', N'AA5l09kbL', 1, N'Minnaminnie Keyse', 1, N'mkeysen5@eepurl.com', N'1269805188', NULL, 1, CAST(N'2021-12-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mkurton5d', N'0ohubKScm', 2, N'Maxwell Kurton', 0, N'mkurton5d@google.pl', N'6974049305', NULL, 1, CAST(N'2021-08-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mlabastida79', N'qZdBcdcEf', 2, N'Moises LaBastida', 0, N'mlabastida79@hostgator.com', N'6043820382', NULL, 1, CAST(N'2022-05-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mlehrian6v', N'pc0a8xKJ7iA', 1, N'Merrill Lehrian', 1, N'mlehrian6v@goodreads.com', N'4283060066', NULL, 1, CAST(N'2021-09-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mleonida3w', N'5hB0uWaIk', 1, N'Marlee Leonida', 0, N'mleonida3w@pbs.org', N'6334190709', NULL, 1, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mloadwickjc', N'zEyTCK', 1, N'Maddy Loadwick', 0, N'mloadwickjc@hexun.com', N'8068489675', NULL, 1, CAST(N'2022-05-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mlongmeadex', N'xU2rgDdPd1', 1, N'Morgan Longmead', 1, N'mlongmeadex@ihg.com', N'2333878014', NULL, 1, CAST(N'2021-10-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mmanion6q', N'9CSuL3g4dAC', 1, N'Mandy Manion', 0, N'mmanion6q@archive.org', N'5508040959', NULL, 1, CAST(N'2022-02-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mmccloidrq', N'eLR36TERVg5', 1, N'Moises McCloid', 1, N'mmccloidrq@lulu.com', N'2554743585', NULL, 1, CAST(N'2022-05-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mmckinnon5u', N'mEkpBxjzVMpY', 1, N'Margarethe McKinnon', 0, N'mmckinnon5u@t.co', N'9616334929', NULL, 1, CAST(N'2021-11-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mmcphelimy8w', N'XiSu8fiKfvA', 2, N'Mordecai McPhelimy', 0, N'mmcphelimy8w@wix.com', N'3623912974', NULL, 1, CAST(N'2021-10-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mmeneregt', N'Zhc3ngC7iCt', 2, N'Melony Menere', 1, N'mmeneregt@mediafire.com', N'4059763155', NULL, 1, CAST(N'2021-06-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mmiddlemasso9', N'jYpF5uN8', 1, N'Mindy Middlemass', 1, N'mmiddlemasso9@stumbleupon.com', N'3878675821', NULL, 1, CAST(N'2022-05-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mmorgans27', N'pzcZ6TT', 1, N'Mile Morgans', 0, N'mmorgans27@eventbrite.com', N'3689225370', NULL, 1, CAST(N'2021-09-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mphillerco', N'C4LLnmL', 1, N'Maryellen Philler', 1, N'mphillerco@tiny.cc', N'9327301329', NULL, 1, CAST(N'2022-03-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mpittham3o', N'iXowsO', 1, N'Mindy Pittham', 1, N'mpittham3o@hhs.gov', N'8326191200', NULL, 1, CAST(N'2022-06-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mpresslandlq', N'OGMf9A', 2, N'Mersey Pressland', 0, N'mpresslandlq@xinhuanet.com', N'5861991677', NULL, 1, CAST(N'2021-12-10' AS Date), 1)
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mpudsallk4', N'nHdAyNn', 1, N'Mela Pudsall', 1, N'mpudsallk4@free.fr', N'6664235609', NULL, 1, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mregorzn', N'i8Fv2uVagQ', 2, N'Mela Regorz', 1, N'mregorzn@amazon.com', N'1578906851', NULL, 1, CAST(N'2022-01-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mribey5g', N'NL4l7YlQa6oH', 2, N'Melinde Ribey', 1, N'mribey5g@cafepress.com', N'9342086547', NULL, 1, CAST(N'2021-12-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mringelr', N'4s556gLo', 2, N'Malachi Ringe', 1, N'mringelr@prlog.org', N'9284762426', NULL, 1, CAST(N'2021-12-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mruger14', N'YYJwOCtH', 2, N'Marcela Ruger', 0, N'mruger14@tinyurl.com', N'8822346553', NULL, 1, CAST(N'2022-05-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'msavind3', N'SSLt7uK', 1, N'Mead Savin', 1, N'msavind3@zdnet.com', N'8808529232', NULL, 1, CAST(N'2021-10-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'msawfoot4s', N'vUUgAS', 2, N'Monty Sawfoot', 1, N'msawfoot4s@vk.com', N'9174395766', NULL, 1, CAST(N'2022-01-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'msellickpw', N'WPU6WIG7Uqg', 2, N'Mame Sellick', 1, N'msellickpw@shinystat.com', N'9196343203', NULL, 1, CAST(N'2021-07-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'msevernx', N'Rh1Amoz1', 2, N'Mirelle Sever', 1, N'msevernx@blogger.com', N'7417254982', NULL, 1, CAST(N'2021-07-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mshewery5o', N'xaZXX0k', 1, N'Mikael Shewery', 1, N'mshewery5o@issuu.com', N'2717550399', NULL, 1, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'msiggsnu', N'HN5kmoLoyt', 2, N'Masha Siggs', 0, N'msiggsnu@hao123.com', N'1881764902', NULL, 1, CAST(N'2021-07-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'msimoniniq5', N'IX2Fg3z5', 1, N'Marv Simonini', 0, N'msimoniniq5@creativecommons.org', N'2838235560', NULL, 1, CAST(N'2021-06-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mskipperbottom9b', N'uXU2wbPFpv', 2, N'Monte Skipperbottom', 1, N'mskipperbottom9b@ameblo.jp', N'1211176238', NULL, 1, CAST(N'2022-01-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mslesserox', N'OgldKGaVd', 1, N'Mallory Slesser', 0, N'mslesserox@newsvine.com', N'5632165035', NULL, 1, CAST(N'2021-09-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mstoffler8y', N'SQpaT1MV', 2, N'Michaelina Stoffler', 1, N'mstoffler8y@technorati.com', N'2821197378', NULL, 1, CAST(N'2022-01-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mteglerdc', N'QiaeFaD3Mhd1', 2, N'Maxy Tegler', 1, N'mteglerdc@census.gov', N'5116494697', NULL, 1, CAST(N'2022-04-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mtesche90', N'p3pMbHyeR', 1, N'Micheal Tesche', 0, N'mtesche90@globo.com', N'7128520235', NULL, 1, CAST(N'2022-01-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mthrussellcb', N'kWpeEbM', 2, N'Michel Thrussell', 0, N'mthrussellcb@geocities.com', N'6023082890', NULL, 1, CAST(N'2021-09-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mverrillsif', N'3rw2UxrW', 1, N'Mendy Verrills', 0, N'mverrillsif@xinhuanet.com', N'5088396209', NULL, 1, CAST(N'2021-10-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'mwhorton35', N'GRWLhsNLOf', 1, N'Mureil Whorton', 0, N'mwhorton35@google.co.uk', N'3302443202', NULL, 1, CAST(N'2021-12-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nbatroprj', N'T4oHBS', 1, N'Noell Batrop', 0, N'nbatroprj@blogger.com', N'5662886204', NULL, 1, CAST(N'2022-02-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nboweryd0', N'6DWbEAy4AXx1', 1, N'Neile Bowery', 0, N'nboweryd0@miitbeian.gov.cn', N'9255001933', NULL, 1, CAST(N'2021-06-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nbute1a', N'3QJTdwxqJ4H', 2, N'Normand Bute', 0, N'nbute1a@gov.uk', N'3788833580', NULL, 1, CAST(N'2022-04-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ncastagneto97', N'Pnbpp2d6pbF', 2, N'Niki Castagneto', 0, N'ncastagneto97@bbb.org', N'3451486685', NULL, 1, CAST(N'2021-08-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ncaudelierfw', N'R5LHHSIWH', 2, N'Nydia Caudelier', 0, N'ncaudelierfw@telegraph.co.uk', N'6284041478', NULL, 1, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ncoleirobc', N'pbeiJLAsElRI', 2, N'Netti Coleiro', 1, N'ncoleirobc@last.fm', N'4272614318', NULL, 1, CAST(N'2022-01-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ncovottobr', N'7vnwOb', 2, N'Nelly Covotto', 0, N'ncovottobr@wired.com', N'1561855510', NULL, 1, CAST(N'2022-04-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ndallanq0', N'qaAWzMnMoKD', 1, N'Nikita Dallan', 1, N'ndallanq0@jimdo.com', N'5203002534', NULL, 1, CAST(N'2021-12-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ngritsaevaq', N'gm4S6zk', 1, N'Nikoletta Gritsaev', 1, N'ngritsaevaq@mediafire.com', N'8346071736', NULL, 1, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nhanscomnm', N'beN1hIjKobN', 2, N'Nanice Hanscom', 0, N'nhanscomnm@upenn.edu', N'5501008443', NULL, 1, CAST(N'2021-06-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nkinningleylj', N'qoypmspr', 1, N'Nicolais Kinningley', 1, N'nkinningleylj@sphinn.com', N'8498752817', NULL, 1, CAST(N'2022-01-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nkirsopply', N'b26h1nnd8aY', 1, N'Nicolina Kirsopp', 1, N'nkirsopply@eventbrite.com', N'5007352764', NULL, 1, CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nkobieraao', N'q4jSQhpl3hxL', 2, N'Norby Kobiera', 0, N'nkobieraao@unesco.org', N'7476124452', NULL, 1, CAST(N'2021-11-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nlanghorjr', N'EulimOV', 1, N'Nanny Langhor', 0, N'nlanghorjr@istockphoto.com', N'9053617761', NULL, 1, CAST(N'2021-09-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nlinckeai', N'Rriv9psVawA', 2, N'Nixie Lincke', 1, N'nlinckeai@cafepress.com', N'4237818360', NULL, 1, CAST(N'2021-12-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nlotte7r', N'6Cb1Ykci', 1, N'Norry Lotte', 0, N'nlotte7r@unicef.org', N'2709115907', NULL, 1, CAST(N'2021-12-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nmarfieldj3', N'Uub238', 1, N'Nolana Marfield', 1, N'nmarfieldj3@telegraph.co.uk', N'8002504462', NULL, 1, CAST(N'2022-01-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nmcaveypk', N'ty7W3IsKp7V7', 2, N'Nickie McAvey', 0, N'nmcaveypk@blogger.com', N'8096588542', NULL, 1, CAST(N'2022-05-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nrisleym3', N'x1TYV0Pp0T', 1, N'Nadia Risley', 1, N'nrisleym3@census.gov', N'4811398810', NULL, 1, CAST(N'2021-10-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nritmeierx', N'wWaZBPPZGXiW', 2, N'Nelly Ritmeier', 1, N'nritmeierx@360.cn', N'6172177149', NULL, 1, CAST(N'2021-08-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nryderi4', N'egY1go3q', 1, N'Niall Ryder', 0, N'nryderi4@godaddy.com', N'5786553983', NULL, 1, CAST(N'2021-11-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nsarllb0', N'mP8HFKR', 1, N'Nefen Sarll', 0, N'nsarllb0@opera.com', N'4906409429', NULL, 1, CAST(N'2021-07-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nshakesby62', N'R0I73V', 1, N'Nancie Shakesby', 0, N'nshakesby62@ycombinator.com', N'7617086951', NULL, 1, CAST(N'2021-11-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nstiverspd', N'QeOI3YX07Uqt', 1, N'Ninette Stivers', 0, N'nstiverspd@weebly.com', N'6907345624', NULL, 1, CAST(N'2021-09-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nstovellb6', N'ZueaULPjI', 2, N'Nerte Stovell', 1, N'nstovellb6@zimbio.com', N'6333940129', NULL, 1, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nvicareyhm', N'laJhV9sWV8H', 2, N'Nealson Vicarey', 1, N'nvicareyhm@sogou.com', N'5058904049', NULL, 1, CAST(N'2021-12-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'nyushkinez', N'5BMr7oUyY1vA', 1, N'Neille Yushkin', 0, N'nyushkinez@auda.org.au', N'4475753756', NULL, 1, CAST(N'2021-10-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'oacklandslo', N'W4efnn9xe', 1, N'Ossie Acklands', 1, N'oacklandslo@fotki.com', N'8585005679', NULL, 1, CAST(N'2021-06-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ocammacke9h', N'Ni6ktlxx7Kh', 2, N'Olimpia Cammacke', 0, N'ocammacke9h@springer.com', N'3559575077', NULL, 1, CAST(N'2021-11-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ochittendenmj', N'rVaSMdQMm', 2, N'Ofelia Chittenden', 0, N'ochittendenmj@godaddy.com', N'8632964019', NULL, 1, CAST(N'2021-09-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ocrossonqg', N'V5Abmc', 2, N'Olimpia Crosson', 1, N'ocrossonqg@nymag.com', N'8321496087', NULL, 1, CAST(N'2021-07-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'odunkleeh7', N'OVVI34', 1, N'Olimpia Dunklee', 0, N'odunkleeh7@hc360.com', N'3191854669', NULL, 1, CAST(N'2021-08-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'oduplanh', N'oRSlwJDfV', 1, N'Olenka Duplan', 0, N'oduplanh@1688.com', N'9305429462', NULL, 1, CAST(N'2021-08-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'olillm1', N'nO4npRhWMr', 1, N'Osbourn Lill', 1, N'olillm1@va.gov', N'6103343588', NULL, 1, CAST(N'2021-07-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'omaffetti1i', N'CO4cqJyq', 2, N'Olympie Maffetti', 0, N'omaffetti1i@istockphoto.com', N'9126971967', NULL, 1, CAST(N'2022-01-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'opollacknj', N'bJOJpHOiN', 1, N'Oby Pollack', 0, N'opollacknj@wunderground.com', N'4773984018', NULL, 1, CAST(N'2021-06-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'orubinovitscha0', N'8lI5M3Q', 2, N'Othella Rubinovitsch', 1, N'orubinovitscha0@tamu.edu', N'1213352459', NULL, 1, CAST(N'2021-12-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'oschubertkb', N'VjWvsNq', 1, N'Olin Schubert', 0, N'oschubertkb@webmd.com', N'5165836003', NULL, 1, CAST(N'2021-12-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'oshellibeere6', N'aqUx1d28', 1, N'Orelia Shellibeer', 0, N'oshellibeere6@google.cn', N'4834321974', NULL, 1, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'osketchleygf', N'fY7RUpivVi5v', 1, N'Orelee Sketchley', 1, N'osketchleygf@opensource.org', N'8443228294', NULL, 1, CAST(N'2022-05-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ospellerli', N'b24D73svkpA', 1, N'Orelle Speller', 1, N'ospellerli@ycombinator.com', N'1825790768', NULL, 1, CAST(N'2021-09-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'otwentymanfg', N'dVvmkhc4IC3T', 2, N'Odey Twentyman', 1, N'otwentymanfg@vk.com', N'7789473420', NULL, 1, CAST(N'2021-08-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pbrabenderje', N'zJzttIsTM', 2, N'Philippa Brabender', 1, N'pbrabenderje@deliciousdays.com', N'9438460261', NULL, 1, CAST(N'2021-09-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pcaseri5j', N'X5N93TLUjnTg', 2, N'Patton Caseri', 0, N'pcaseri5j@opera.com', N'1155325352', NULL, 1, CAST(N'2021-09-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pfiggefj', N'roNJAMpd', 2, N'Priscilla Figge', 0, N'pfiggefj@phpbb.com', N'3146322670', NULL, 1, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pfossitth2', N'tasZa9v6tfp7', 2, N'Prudi Fossitt', 1, N'pfossitth2@wikipedia.org', N'8191041208', NULL, 1, CAST(N'2022-03-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pgiroldo8z', N'EyzdTM', 1, N'Phyllida Giroldo', 0, N'pgiroldo8z@issuu.com', N'2617145863', NULL, 1, CAST(N'2021-11-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'phallen7k', N'okZyjmyDlYI', 2, N'Payton Hallen', 1, N'phallen7k@mozilla.com', N'7718852998', NULL, 1, CAST(N'2021-08-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'phennemannrl', N'IWPzZtZ66', 2, N'Paquito Hennemann', 1, N'phennemannrl@ed.gov', N'3067327862', NULL, 1, CAST(N'2022-05-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pkern3y', N'YjmtYAx', 1, N'Phyllida Kern', 1, N'pkern3y@comsenz.com', N'7654273950', NULL, 1, CAST(N'2022-01-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pkimmings9v', N'rJLbBXF', 2, N'Phil Kimmings', 0, N'pkimmings9v@wp.com', N'7663735284', NULL, 1, CAST(N'2022-04-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pmaceur1e', N'LEbwqLxtW', 1, N'Pauline Maceur', 1, N'pmaceur1e@ca.gov', N'9226643610', NULL, 1, CAST(N'2021-08-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pmateg1', N'yIpfNJuNuW', 1, N'Piggy Mate', 0, N'pmateg1@cam.ac.uk', N'2856097172', NULL, 1, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pmcteerrh', N'Mupq89A5N', 1, N'Page McTeer', 1, N'pmcteerrh@admin.ch', N'3315543052', NULL, 1, CAST(N'2022-05-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pmedway8s', N'aEdiVXKMW', 1, N'Patten Medway', 1, N'pmedway8s@fc2.com', N'8725428982', NULL, 1, CAST(N'2021-06-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pmicheli59', N'NE25pp4IdZK', 2, N'Perri Micheli', 0, N'pmicheli59@issuu.com', N'7434728372', NULL, 1, CAST(N'2021-09-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pmowsonhq', N'wZng81vaPnCb', 1, N'Padriac Mowson', 0, N'pmowsonhq@ebay.co.uk', N'9533254255', NULL, 1, CAST(N'2022-03-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pmurtongv', N'QiO6iUB', 1, N'Persis Murton', 1, N'pmurtongv@sohu.com', N'3708409617', NULL, 1, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'proccagc', N'EKBeU81', 1, N'Peggi Rocca', 0, N'proccagc@forbes.com', N'3134795122', NULL, 1, CAST(N'2022-05-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pspratlingl3', N'tDrE1AtYH', 1, N'Peirce Spratling', 1, N'pspratlingl3@auda.org.au', N'3945838845', NULL, 1, CAST(N'2022-05-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ptatteshalldw', N'UhsQWdM4q6j', 1, N'Pattin Tatteshall', 0, N'ptatteshalldw@mayoclinic.com', N'3049915437', NULL, 1, CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pteckn0', N'vzfWR4wa', 2, N'Peter Teck', 1, N'pteckn0@amazon.de', N'3433401100', NULL, 1, CAST(N'2021-07-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pthynnear', N'2IJWUOkurYI', 2, N'Phillis Thynne', 1, N'pthynnear@cnbc.com', N'1126766922', NULL, 1, CAST(N'2021-08-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ptramel4q', N'eeMQXpFo9w', 1, N'Pavel Tramel', 0, N'ptramel4q@bbc.co.uk', N'4339355394', NULL, 1, CAST(N'2021-10-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pvaisey3m', N'fqNBVAC6', 2, N'Patrice Vaisey', 1, N'pvaisey3m@ovh.net', N'8322989976', NULL, 1, CAST(N'2021-10-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'pyurygynes', N'9ZuXOZbj', 1, N'Portia Yurygyn', 0, N'pyurygynes@tuttocitta.it', N'7974100340', NULL, 1, CAST(N'2022-05-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'qcolatoni6', N'zDfupCagL0', 2, N'Quinton Colaton', 1, N'qcolatoni6@etsy.com', N'4897887948', NULL, 1, CAST(N'2021-09-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'qwordsworthg4', N'2bK1QWCpOe', 1, N'Quinn Wordsworth', 1, N'qwordsworthg4@prweb.com', N'2791259659', NULL, 1, CAST(N'2021-12-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rarmalpq', N'u1qtnX4I1', 1, N'Rodrick Armal', 1, N'rarmalpq@drupal.org', N'6628382002', NULL, 1, CAST(N'2021-07-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rbaber13', N'yd4A43iZ', 1, N'Ryon Baber', 0, N'rbaber13@foxnews.com', N'4865070768', NULL, 1, CAST(N'2021-06-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rbalazs9g', N'Se7seiq', 2, N'Reyna Balazs', 1, N'rbalazs9g@loc.gov', N'7729872860', NULL, 1, CAST(N'2021-08-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rbinne5p', N'gqcViJq', 2, N'Riki Binne', 0, N'rbinne5p@berkeley.edu', N'6185866192', NULL, 1, CAST(N'2021-10-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rbovingdonah', N'owbKBY', 2, N'Ryann Bovingdon', 0, N'rbovingdonah@lycos.com', N'7127596675', NULL, 1, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rbramogs', N'Nicv0cGTpmc', 1, N'Regan Bramo', 1, N'rbramogs@tinyurl.com', N'8953040117', NULL, 1, CAST(N'2022-04-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rbudibent7d', N'YNwc8fsvP', 2, N'Reyna Budibent', 0, N'rbudibent7d@istockphoto.com', N'7607628848', NULL, 1, CAST(N'2022-01-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rcalender9u', N'SP6u4cDGOoq', 1, N'Ruthann Calender', 1, N'rcalender9u@pcworld.com', N'2272208873', NULL, 1, CAST(N'2022-01-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rcanellasq3', N'dqMVZ7TOpkW', 1, N'Robinet Canellas', 0, N'rcanellasq3@google.fr', N'4971788821', NULL, 1, CAST(N'2021-12-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rcooganqv', N'uaNRSq', 1, N'Rand Coogan', 1, N'rcooganqv@shutterfly.com', N'3688232908', NULL, 1, CAST(N'2021-08-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rcopellojb', N'GSdWvITtxR', 2, N'Ray Copello', 1, N'rcopellojb@nps.gov', N'9666668400', NULL, 1, CAST(N'2021-10-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rcornforthcc', N'VElAb0Pgk', 1, N'Roanne Cornforth', 1, N'rcornforthcc@wikipedia.org', N'2829145104', NULL, 1, CAST(N'2021-08-08' AS Date), 1)
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rcousans4p', N'MJhpplfP', 2, N'Robbie Cousans', 1, N'rcousans4p@aboutads.info', N'4315603689', NULL, 1, CAST(N'2022-01-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rdanat6c', N'xxP4txt', 2, N'Robenia Danat', 1, N'rdanat6c@com.com', N'2179029435', NULL, 1, CAST(N'2021-07-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rdaveyku', N'sEgxQyU', 1, N'Roslyn Davey', 1, N'rdaveyku@yandex.ru', N'1644319431', NULL, 1, CAST(N'2021-06-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rdavidypu', N'4DG7Np', 1, N'Rourke Davidy', 0, N'rdavidypu@globo.com', N'2879469128', NULL, 1, CAST(N'2022-04-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rdinjesr2', N'hsPQ4w', 2, N'Robinia Dinjes', 0, N'rdinjesr2@google.co.jp', N'5287337211', NULL, 1, CAST(N'2022-04-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rdossantosrk', N'VX10nu3cnfQU', 2, N'Rafaelita Dossantos', 0, N'rdossantosrk@buzzfeed.com', N'1572604116', NULL, 1, CAST(N'2021-06-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rduchatelqk', N'eCaImXtvrr', 2, N'Rani Duchatel', 0, N'rduchatelqk@google.ca', N'3758593790', NULL, 1, CAST(N'2021-09-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rdunton93', N'xwtW39', 1, N'Robinet Dunton', 1, N'rdunton93@blogtalkradio.com', N'9427504461', NULL, 1, CAST(N'2021-06-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rescrittfl', N'iyFYT7', 1, N'Rolph Escritt', 1, N'rescrittfl@soup.io', N'4208876008', NULL, 1, CAST(N'2021-09-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rfantingx', N'9HrCLzUGhNm4', 1, N'Randall Fantin', 0, N'rfantingx@de.vu', N'8967859590', NULL, 1, CAST(N'2021-06-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rfarey42', N'nlA9TC1sX', 1, N'Rheta Farey', 0, N'rfarey42@canalblog.com', N'5177616313', NULL, 1, CAST(N'2022-05-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rfarrinmi', N'mJcqtl', 2, N'Regan Farrin', 1, N'rfarrinmi@booking.com', N'1058527474', NULL, 1, CAST(N'2021-08-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rfranciscoqt', N'uMfHFTZPR1v1', 1, N'Randy Francisco', 0, N'rfranciscoqt@goo.gl', N'8104775841', NULL, 1, CAST(N'2022-01-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rgallihaulkmy', N'gjuIz3P', 2, N'Reginauld Gallihaulk', 0, N'rgallihaulkmy@yahoo.com', N'5618080193', NULL, 1, CAST(N'2021-12-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rgliddono1', N'pIcTnAu1g', 1, N'Roby Gliddon', 1, N'rgliddono1@constantcontact.com', N'8335196596', NULL, 1, CAST(N'2021-08-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rhaggis3s', N'1fyLDUTq', 2, N'Reynard Haggis', 1, N'rhaggis3s@google.com.hk', N'5935383511', NULL, 1, CAST(N'2021-08-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rhollerin0', N'kHAwrfaRRnZ', 1, N'Roze Hollerin', 1, N'rhollerin0@storify.com', N'4644726846', NULL, 1, CAST(N'2022-04-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rjecockjj', N'H33DxDDF4mo', 1, N'Rodina Jecock', 0, N'rjecockjj@uiuc.edu', N'1264969301', NULL, 1, CAST(N'2021-10-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rjonas7v', N'IbIXCFmeRSbf', 2, N'Randi Jonas', 1, N'rjonas7v@earthlink.net', N'2143081803', NULL, 1, CAST(N'2021-07-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rkubes6y', N'EECn46Nj', 2, N'Rolfe Kubes', 1, N'rkubes6y@phpbb.com', N'5706775482', NULL, 1, CAST(N'2022-04-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rkulask8', N'd4HhVBHNTot', 1, N'Reg Kulas', 0, N'rkulask8@bloglovin.com', N'2844362910', NULL, 1, CAST(N'2021-07-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rmacnameemh', N'ZgZH88d6l7MD', 1, N'Raynor MacNamee', 1, N'rmacnameemh@shinystat.com', N'8168366414', NULL, 1, CAST(N'2022-04-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rmacredmonddu', N'25DtVV3S', 1, N'Romona MacRedmond', 0, N'rmacredmonddu@ycombinator.com', N'2314914415', NULL, 1, CAST(N'2021-06-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rmellsopj8', N'VhjAIWdAh9wA', 1, N'Rachelle Mellsop', 1, N'rmellsopj8@odnoklassniki.ru', N'3778128308', NULL, 1, CAST(N'2022-06-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rormistonlx', N'YstpqJCX', 1, N'Raphael Ormiston', 1, N'rormistonlx@foxnews.com', N'5526583978', NULL, 1, CAST(N'2021-09-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rorris9n', N'j8Ba1Ou', 1, N'Ruddie Orris', 1, N'rorris9n@flickr.com', N'3303290353', NULL, 1, CAST(N'2021-07-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'roshieldsrr', N'Zw7r0okpV2', 2, N'Reynolds O''Shields', 1, N'roshieldsrr@ning.com', N'7982304877', NULL, 1, CAST(N'2021-12-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rpayekc', N'LRqSJid', 1, N'Robin Paye', 1, N'rpayekc@nbcnews.com', N'2474822374', NULL, 1, CAST(N'2021-12-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rpotteridge6u', N'0WD2nPX0b0', 2, N'Riccardo Potteridge', 0, N'rpotteridge6u@buzzfeed.com', N'6671106796', NULL, 1, CAST(N'2022-05-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rpretorius8q', N'3JSyyo', 1, N'Regine Pretorius', 0, N'rpretorius8q@chronoengine.com', N'8836634129', NULL, 1, CAST(N'2021-09-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rrappoport1v', N'bvdgf8qKS1', 1, N'Rosella Rappoport', 0, N'rrappoport1v@dot.gov', N'9022174888', NULL, 1, CAST(N'2022-05-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rriquet3t', N'o7GSl6L9', 2, N'Richmond Riquet', 0, N'rriquet3t@goo.gl', N'9344899898', NULL, 1, CAST(N'2021-07-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rrizzonee', N'M6yBdTNF1BAC', 2, N'Rowen Rizzone', 0, N'rrizzonee@cargocollective.com', N'6456400192', NULL, 1, CAST(N'2022-05-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rrostronh0', N'5Sb18fLtr', 2, N'Rriocard Rostron', 0, N'rrostronh0@reference.com', N'2693325873', NULL, 1, CAST(N'2021-09-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rschonfeld9r', N'8QrqFV', 1, N'Roseann Schonfeld', 1, N'rschonfeld9r@cornell.edu', N'8721172197', NULL, 1, CAST(N'2022-01-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rsheptonbb', N'D35y5mdDout', 2, N'Rennie Shepton', 1, N'rsheptonbb@com.com', N'3115672871', NULL, 1, CAST(N'2022-06-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rshoorbrookeqy', N'qf6HP9PSqCsQ', 2, N'Rick Shoorbrooke', 1, N'rshoorbrookeqy@1688.com', N'4031321144', NULL, 1, CAST(N'2021-11-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rshrimplinjv', N'zE9cc28', 2, N'Roselia Shrimplin', 0, N'rshrimplinjv@dailymail.co.uk', N'5212615704', NULL, 1, CAST(N'2021-12-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rsiberryni', N'2vHhCuMorhk', 1, N'Rollie Siberry', 0, N'rsiberryni@mysql.com', N'2684860149', NULL, 1, CAST(N'2021-08-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rsichardt65', N'vHGVkQB', 1, N'Rockwell Sichardt', 1, N'rsichardt65@usda.gov', N'2362268752', NULL, 1, CAST(N'2021-09-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rsidnellid', N'Xye0gHg4rBp', 1, N'Rosamond Sidnell', 0, N'rsidnellid@ftc.gov', N'5709814407', NULL, 1, CAST(N'2022-05-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rskoofqa', N'7Zw7WEXdmr', 2, N'Roosevelt Skoof', 0, N'rskoofqa@narod.ru', N'3361311301', NULL, 1, CAST(N'2022-05-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rtipleren', N'L6CApdx0', 2, N'Renie Tipler', 1, N'rtipleren@hhs.gov', N'8392098917', NULL, 1, CAST(N'2022-05-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rtrobelv', N'G0MHPs8rf9I', 1, N'Reine Trobe', 0, N'rtrobelv@alexa.com', N'6477334406', NULL, 1, CAST(N'2022-03-11' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ruttersonjx', N'2z7aj6lRoI', 2, N'Rustie Utterson', 1, N'ruttersonjx@creativecommons.org', N'8726812353', NULL, 1, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rwitardng', N'jbBftLnCrzp', 2, N'Roi Witard', 1, N'rwitardng@tripod.com', N'5669373705', NULL, 1, CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rwolffersa5', N'nmZdPdt0P4vp', 2, N'Randie Wolffers', 1, N'rwolffersa5@exblog.jp', N'2404440070', NULL, 1, CAST(N'2022-01-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rwooddisseew', N'do0qSM5p7M5', 1, N'Ruthie Wooddisse', 1, N'rwooddisseew@goo.ne.jp', N'9139845936', NULL, 1, CAST(N'2021-08-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'rzinckebp', N'XS6766Guy', 1, N'Renate Zincke', 1, N'rzinckebp@tripod.com', N'4914228311', NULL, 1, CAST(N'2021-08-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sblackborough9i', N'1gIkP4ZCPUI8', 2, N'Sancho Blackborough', 1, N'sblackborough9i@odnoklassniki.ru', N'6441216476', NULL, 1, CAST(N'2022-04-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sblackmanv', N'eQ0y8jJX', 2, N'Stacy Blackman', 1, N'sblackmanv@forbes.com', N'9244979366', NULL, 1, CAST(N'2022-02-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sblaylock4v', N'FlQnlLi7ofB', 2, N'Susan Blaylock', 1, N'sblaylock4v@nytimes.com', N'9599442116', NULL, 1, CAST(N'2021-12-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'scanaan3g', N'FfjHb2zhmB', 2, N'Shanon Canaan', 1, N'scanaan3g@netvibes.com', N'8021392177', NULL, 1, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'scantle2s', N'E3WCmA', 1, N'Shell Cantle', 1, N'scantle2s@phoca.cz', N'8807033888', NULL, 1, CAST(N'2022-03-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'scarmeld1', N'zjtFmJvqRcO0', 2, N'Sella Carmel', 0, N'scarmeld1@deliciousdays.com', N'9946697521', NULL, 1, CAST(N'2021-08-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'scatling7', N'1PCr9Axxs', 1, N'Seline Catling', 0, N'scatling7@loc.gov', N'4372896413', NULL, 1, CAST(N'2022-01-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'schalloner9', N'cR5Irw', 2, N'Stefania Challoner', 1, N'schalloner9@ed.gov', N'7481840158', NULL, 1, CAST(N'2021-08-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'schapmankm', N'vdJRqW', 1, N'Sid Chapman', 1, N'schapmankm@photobucket.com', N'5334100945', NULL, 1, CAST(N'2022-03-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sclaveringr1', N'Yjuw8CyhM', 1, N'Sarah Clavering', 1, N'sclaveringr1@squarespace.com', N'5213366394', NULL, 1, CAST(N'2021-08-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'scoolbear3e', N'uXeYbcCaGzJ5', 1, N'Sampson Coolbear', 1, N'scoolbear3e@java.com', N'9791290435', NULL, 1, CAST(N'2021-12-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'scorderoy8g', N'rEvHJvZqFKEO', 2, N'Sheena Corderoy', 0, N'scorderoy8g@infoseek.co.jp', N'2925044064', NULL, 1, CAST(N'2021-10-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'scrannyh9', N'DyGMpeTPjk', 2, N'Sergeant Cranny', 1, N'scrannyh9@wordpress.org', N'9232700172', NULL, 1, CAST(N'2021-09-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'scroleydt', N'jTM82kqjbd4W', 2, N'Saunder Croley', 0, N'scroleydt@deviantart.com', N'6219738969', NULL, 1, CAST(N'2022-03-31' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sdearloveib', N'mJAQOA', 2, N'Stephen Dearlove', 1, N'sdearloveib@ning.com', N'5618055291', NULL, 1, CAST(N'2022-04-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sdudeniede', N'kKSkWINB', 1, N'Shelly Dudenie', 0, N'sdudeniede@chron.com', N'1368089068', NULL, 1, CAST(N'2021-10-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'segan2w', N'Zb5S1wAVr', 2, N'Shelley Egan', 0, N'segan2w@posterous.com', N'9228720154', NULL, 1, CAST(N'2021-12-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'semonsab', N'6hLkWW2', 1, N'Shellie Emons', 1, N'semonsab@soup.io', N'7316922194', NULL, 1, CAST(N'2021-08-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sffrench71', N'9TJjmhW', 2, N'Susanne ffrench Beytagh', 1, N'sffrench71@bandcamp.com', N'9269868398', NULL, 1, CAST(N'2021-06-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sgooderridgebi', N'zui6l0r', 2, N'Simmonds Gooderridge', 1, N'sgooderridgebi@auda.org.au', N'5118313442', NULL, 1, CAST(N'2022-04-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sgornal56', N'IDXjGG', 2, N'Shaughn Gornal', 1, N'sgornal56@uol.com.br', N'3741343662', NULL, 1, CAST(N'2021-10-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sgreenhama6', N'5cBTBh1', 1, N'Sosanna Greenham', 1, N'sgreenhama6@flickr.com', N'1684464773', NULL, 1, CAST(N'2022-02-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'shabeshawr6', N'mJcZqeSjL', 2, N'Sam Habeshaw', 1, N'shabeshawr6@netscape.com', N'5777878042', NULL, 1, CAST(N'2021-06-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'shaddowic', N'6htCUl6', 1, N'Shane Haddow', 1, N'shaddowic@creativecommons.org', N'8653954544', NULL, 1, CAST(N'2022-03-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'shorseyg3', N'VMth0s', 2, N'Saundra Horsey', 1, N'shorseyg3@deliciousdays.com', N'9781066284', NULL, 1, CAST(N'2021-12-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'showford1t', N'4iMkqB5GOX', 2, N'Sharline Howford', 0, N'showford1t@creativecommons.org', N'4098430984', NULL, 1, CAST(N'2021-09-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'shulsegd', N'eJMspxRTea', 2, N'Shela Hulse', 0, N'shulsegd@sciencedaily.com', N'5373771462', NULL, 1, CAST(N'2021-07-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sidlelm', N'5UhM0z2lUw', 2, N'Selle Idle', 1, N'sidlelm@yahoo.com', N'5793780439', NULL, 1, CAST(N'2022-04-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sjoostci', N'zcelwC0zu', 1, N'Samantha Joost', 1, N'sjoostci@japanpost.jp', N'1074160244', NULL, 1, CAST(N'2022-01-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sjozwikmf', N'cz0eXLYUXFt', 2, N'Sheryl Jozwik', 0, N'sjozwikmf@admin.ch', N'2985323188', NULL, 1, CAST(N'2021-07-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'skeilty4x', N'cmUbX8KNG51', 2, N'Shirlene Keilty', 1, N'skeilty4x@fastcompany.com', N'7606366780', NULL, 1, CAST(N'2021-07-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'skillcrossdr', N'fHrpv3', 1, N'Simonne Killcross', 1, N'skillcrossdr@va.gov', N'2455372012', NULL, 1, CAST(N'2022-05-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'skreutzerlc', N'CKfzCvmO', 2, N'Sascha Kreutzer', 0, N'skreutzerlc@illinois.edu', N'3793859150', NULL, 1, CAST(N'2022-01-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sliefb', N'JSwiXep', 2, N'Shae Lief', 1, N'sliefb@studiopress.com', N'7637593330', NULL, 1, CAST(N'2022-01-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sludlammegm', N'd9ytYi', 1, N'Scot Ludlamme', 1, N'sludlammegm@google.co.jp', N'3332764615', NULL, 1, CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'smacgiollapc', N'aG6o9EEAh', 2, N'Sheilah MacGiolla', 1, N'smacgiollapc@liveinternet.ru', N'2116528965', NULL, 1, CAST(N'2021-12-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'smallindine1m', N'TUWxD5pUKK', 2, N'Stern Mallindine', 1, N'smallindine1m@prweb.com', N'8022373737', NULL, 1, CAST(N'2022-05-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'smassingberd15', N'ZWfUb4uLo', 1, N'Simon Massingberd', 0, N'smassingberd15@narod.ru', N'3674680476', NULL, 1, CAST(N'2022-03-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'smatschukpz', N'Xr6lFDDzFI2', 1, N'Selby Matschuk', 1, N'smatschukpz@ox.ac.uk', N'5373778239', NULL, 1, CAST(N'2021-12-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'smengueji', N'0o6mNG', 2, N'Saree Mengue', 1, N'smengueji@last.fm', N'2959028640', NULL, 1, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'spassoa9', N'J6h8CmRH', 1, N'Silvio Passo', 1, N'spassoa9@is.gd', N'5111822247', NULL, 1, CAST(N'2022-05-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'spawnsford4f', N'CsaOnkp0pK00', 1, N'Stevie Pawnsford', 0, N'spawnsford4f@wordpress.com', N'1136133666', NULL, 1, CAST(N'2021-06-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sphayregi', N'aUVX2Vs9HCs', 1, N'Shannon Phayre', 0, N'sphayregi@ucla.edu', N'6273439692', NULL, 1, CAST(N'2022-05-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'splumbley1z', N'mWpZ120', 2, N'Sax Plumbley', 0, N'splumbley1z@wiley.com', N'2095121939', NULL, 1, CAST(N'2021-09-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'srubinszteinbf', N'ObI4rF9qTC1', 1, N'Sander Rubinsztein', 0, N'srubinszteinbf@alibaba.com', N'1446671175', NULL, 1, CAST(N'2021-12-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ssandry2t', N'xhk1BobBpJ', 2, N'Sisely Sandry', 0, N'ssandry2t@marketwatch.com', N'6801432375', NULL, 1, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sscanlangk', N'yTNtt3jmeivq', 1, N'Sileas Scanlan', 0, N'sscanlangk@miibeian.gov.cn', N'2176312056', NULL, 1, CAST(N'2022-04-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sshutlercj', N'nQz5QmA5', 2, N'Sonny Shutler', 1, N'sshutlercj@dagondesign.com', N'8145268219', NULL, 1, CAST(N'2021-11-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ssolomonides43', N'IarFrt', 2, N'Shana Solomonides', 0, N'ssolomonides43@shutterfly.com', N'4972866402', NULL, 1, CAST(N'2022-06-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'sstazikerac', N'Kayn7sJqlw', 2, N'Silvano Staziker', 0, N'sstazikerac@google.com.br', N'4948232090', NULL, 1, CAST(N'2021-11-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'stossellra', N'aqGftdoX877', 2, N'Scarlett Tossell', 0, N'stossellra@diigo.com', N'7352803660', NULL, 1, CAST(N'2021-08-06' AS Date), 1)
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'streleven3u', N'bYapHr', 1, N'Simona Treleven', 1, N'streleven3u@epa.gov', N'6374042778', NULL, 1, CAST(N'2022-05-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'svallentinek5', N'GBVhlFELhZvn', 2, N'Simon Vallentine', 1, N'svallentinek5@unesco.org', N'6652249065', NULL, 1, CAST(N'2021-09-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tacors6f', N'j5yzCAG2W', 2, N'Thor Acors', 1, N'tacors6f@cmu.edu', N'7653948376', NULL, 1, CAST(N'2021-10-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tahearne92', N'UMdWNdYAaF2N', 1, N'Taylor Ahearne', 0, N'tahearne92@wix.com', N'2942621497', NULL, 1, CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tallkinsgq', N'RxZXjYuc', 1, N'Thain Allkins', 0, N'tallkinsgq@feedburner.com', N'3043248018', NULL, 1, CAST(N'2022-05-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tardynp', N'ZYzQeM73g99', 1, N'Trent Ardy', 1, N'tardynp@trellian.com', N'7103365943', NULL, 1, CAST(N'2022-05-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tbywaterfy', N'JZd0IFnsOp', 2, N'Tish Bywater', 1, N'tbywaterfy@hubpages.com', N'6998899609', NULL, 1, CAST(N'2022-04-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tclink20', N'8kxAqi', 1, N'Thedric Clink', 0, N'tclink20@posterous.com', N'1754810042', NULL, 1, CAST(N'2022-05-04' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tclowsgg', N'ijI616GxhkM', 2, N'Teddi Clows', 1, N'tclowsgg@youtube.com', N'3567788247', NULL, 1, CAST(N'2021-12-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tdobrowolnyej', N'gFqmNj6OPu', 1, N'Tiler Dobrowolny', 1, N'tdobrowolnyej@about.com', N'2435931241', NULL, 1, CAST(N'2021-07-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tdrummondpo', N'awvJRLjyn', 1, N'Trev Drummond', 0, N'tdrummondpo@printfriendly.com', N'1607476499', NULL, 1, CAST(N'2021-07-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tdyettdi', N'6NwrCU7mBvoo', 1, N'Tann Dyett', 0, N'tdyettdi@wikimedia.org', N'9857139232', NULL, 1, CAST(N'2022-01-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tedgsonko', N'rxf9OBbRugFW', 2, N'Terrel Edgson', 0, N'tedgsonko@hc360.com', N'4538858284', NULL, 1, CAST(N'2022-05-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'telven7w', N'CYG5zS', 1, N'Trace Elven', 0, N'telven7w@twitter.com', N'3934154581', NULL, 1, CAST(N'2022-01-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tfraczek5e', N'ne0FFZM5xIqn', 2, N'Toddy Fraczek', 0, N'tfraczek5e@berkeley.edu', N'8436008539', NULL, 1, CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tghilardiot', N'uwlJp2J', 2, N'Tobiah Ghilardi', 0, N'tghilardiot@ucsd.edu', N'3375409853', NULL, 1, CAST(N'2022-05-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tgitsham3i', N'0lo75KtDGFSt', 1, N'Torrie Gitsham', 1, N'tgitsham3i@abc.net.au', N'9742608681', NULL, 1, CAST(N'2021-08-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tgrigoridy', N'sRG3eyUC2', 2, N'Taffy Grigori', 1, N'tgrigoridy@google.es', N'5063662926', NULL, 1, CAST(N'2022-02-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tkachbw', N'wTzmwyhgr2Df', 1, N'Thaddeus Kach', 0, N'tkachbw@tripod.com', N'2221556265', NULL, 1, CAST(N'2021-09-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tklyn3j', N'k2iYor', 1, N'Thomasin Klyn', 1, N'tklyn3j@statcounter.com', N'6607927692', NULL, 1, CAST(N'2021-09-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tkorda7f', N'jo24M9t', 1, N'Timotheus Korda', 0, N'tkorda7f@cpanel.net', N'1633913913', NULL, 1, CAST(N'2022-01-24' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tlafford7g', N'0gh5t2i2', 2, N'Tamma Lafford', 0, N'tlafford7g@phpbb.com', N'6669412950', NULL, 1, CAST(N'2022-05-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tmacmeekingbe', N'sf9mJSl7jp', 1, N'Theda MacMeeking', 0, N'tmacmeekingbe@howstuffworks.com', N'5937754013', NULL, 1, CAST(N'2021-07-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tmajorri', N'uj3k1TsbvQ', 2, N'Tami Major', 1, N'tmajorri@macromedia.com', N'7488825141', NULL, 1, CAST(N'2021-07-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tmcaughtrienh', N'6SAB1OZSFZ', 2, N'Tamera McAughtrie', 0, N'tmcaughtrienh@storify.com', N'2114355096', NULL, 1, CAST(N'2022-03-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tmorbymg', N'igQL4Np0lzO', 1, N'Twyla Morby', 0, N'tmorbymg@skyrock.com', N'8368036604', NULL, 1, CAST(N'2021-08-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tockendenq7', N'UN5IldkmxlWL', 2, N'Trixie Ockenden', 1, N'tockendenq7@reverbnation.com', N'2403908315', NULL, 1, CAST(N'2021-11-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tosiaghailq9', N'6HjvJzfNt9dE', 2, N'Tris O''Siaghail', 0, N'tosiaghailq9@opera.com', N'2116358650', NULL, 1, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tpendletonob', N'3qAJ15ZeZuSD', 1, N'Tabitha Pendleton', 0, N'tpendletonob@ed.gov', N'5859957959', NULL, 1, CAST(N'2021-12-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tpingstonk', N'Zef1nx9vKnyN', 1, N'Torin Pingston', 1, N'tpingstonk@kickstarter.com', N'9495445202', NULL, 1, CAST(N'2021-06-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'trasmusfk', N'fOxlKiYB', 2, N'Tyne Rasmus', 0, N'trasmusfk@printfriendly.com', N'8628327344', NULL, 1, CAST(N'2021-12-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'treganj6', N'UPoQxO7c', 1, N'Tad Regan', 1, N'treganj6@redcross.org', N'1887963292', NULL, 1, CAST(N'2021-12-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tscrammageas', N'1vqkPXD8oK43', 1, N'Torrin Scrammage', 0, N'tscrammageas@washington.edu', N'8612567734', NULL, 1, CAST(N'2022-04-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tshailer4g', N'vSzgZNJw', 2, N'Thom Shailer', 0, N'tshailer4g@4shared.com', N'9369469933', NULL, 1, CAST(N'2021-07-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tsigartcd', N'6rPSgK', 2, N'Tammi Sigart', 0, N'tsigartcd@buzzfeed.com', N'6348702632', NULL, 1, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tslingsby4z', N'JVmFjb4eJ8', 1, N'Trisha Slingsby', 0, N'tslingsby4z@reuters.com', N'8276815561', NULL, 1, CAST(N'2021-09-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ttschirschkyj0', N'SPCbkMXKh8jy', 2, N'Tadio Tschirschky', 1, N'ttschirschkyj0@ovh.net', N'5041225129', NULL, 1, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'twannop6k', N'2NzU59QvMW', 1, N'Tull Wannop', 1, N'twannop6k@cdbaby.com', N'5572026387', NULL, 1, CAST(N'2021-06-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'twitz44', N'eKzXkZb', 1, N'Tanney Witz', 1, N'twitz44@statcounter.com', N'7713782022', NULL, 1, CAST(N'2022-01-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'twyeldme', N'hGRUOeN', 2, N'Tatiania Wyeld', 1, N'twyeldme@slideshare.net', N'2187161762', NULL, 1, CAST(N'2022-02-02' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'tyeomansdm', N'MFYzZqMB4B', 2, N'Trish Yeomans', 0, N'tyeomansdm@surveymonkey.com', N'8934928363', NULL, 1, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ubaselliil', N'C7GJhjocLH5', 2, N'Ursulina Baselli', 1, N'ubaselliil@ft.com', N'3107178547', NULL, 1, CAST(N'2021-12-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ubaskwell7q', N'3IgtUY', 1, N'Udell Baskwell', 0, N'ubaskwell7q@blogtalkradio.com', N'6368854085', NULL, 1, CAST(N'2022-01-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'udulanty2m', N'GeNYMLE', 1, N'Ulrica Dulanty', 1, N'udulanty2m@google.com.br', N'7967422133', NULL, 1, CAST(N'2021-12-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'uhayballip', N'xzWHIx0y', 1, N'Uta Hayball', 0, N'uhayballip@answers.com', N'3146494705', NULL, 1, CAST(N'2021-09-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'uluppitthp', N'FA8jD2D', 1, N'Ulises Luppitt', 0, N'uluppitthp@redcross.org', N'4947667505', NULL, 1, CAST(N'2022-05-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vbenasika3', N'kdlwKwgWw', 2, N'Violante Benasik', 0, N'vbenasika3@bluehost.com', N'9004840307', NULL, 1, CAST(N'2022-02-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vburrass8n', N'YNFE2SsNTyuB', 2, N'Vasily Burrass', 0, N'vburrass8n@examiner.com', N'7069332454', NULL, 1, CAST(N'2021-12-07' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vcampaigneo7', N'kiXAszIq', 2, N'Valentia Campaigne', 0, N'vcampaigneo7@house.gov', N'8602841571', NULL, 1, CAST(N'2021-08-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vcantuqu', N'3VA5mQ3f', 2, N'Venita Cantu', 0, N'vcantuqu@hostgator.com', N'3801837695', NULL, 1, CAST(N'2022-04-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vcapinettipv', N'H84MLwihWg', 1, N'Vally Capinetti', 0, N'vcapinettipv@tripadvisor.com', N'6927696561', NULL, 1, CAST(N'2021-07-27' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vcasseldine4a', N'LsRBgIC4WVgP', 2, N'Vivian Casseldine', 1, N'vcasseldine4a@tamu.edu', N'3714255972', NULL, 1, CAST(N'2021-08-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vfeavyour2r', N'SSUmKGlb12w', 2, N'Valle Feavyour', 0, N'vfeavyour2r@weather.com', N'5354019036', NULL, 1, CAST(N'2021-10-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vguiraud6e', N'C16uLzGGseqi', 2, N'Vince Guiraud', 1, N'vguiraud6e@cbslocal.com', N'6994462085', NULL, 1, CAST(N'2021-07-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vhaversum2a', N'I4ZrdvVgnji8', 2, N'Vivia Haversum', 1, N'vhaversum2a@blogs.com', N'9657057504', NULL, 1, CAST(N'2022-04-20' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vhowsdenb9', N'8enxEh1cjqA0', 2, N'Vasily Howsden', 0, N'vhowsdenb9@who.int', N'3883166685', NULL, 1, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vkilford9y', N'1nYc7cJ', 2, N'Vivyan Kilford', 1, N'vkilford9y@google.de', N'1262250176', NULL, 1, CAST(N'2022-04-28' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vmahodyh6', N'houeBIuH', 2, N'Valina Mahody', 0, N'vmahodyh6@yolasite.com', N'7666952485', NULL, 1, CAST(N'2022-04-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vmayow24', N'J1f8SwVaX', 2, N'Vernen Mayow', 0, N'vmayow24@lycos.com', N'5721374448', NULL, 1, CAST(N'2021-09-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vmorebye8', N'rQxn2Bg5M8', 1, N'Valli Moreby', 1, N'vmorebye8@google.co.jp', N'3844164650', NULL, 1, CAST(N'2021-08-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'voppy6x', N'ChfNaDPDkhJa', 2, N'Vanni Oppy', 1, N'voppy6x@skyrock.com', N'4578183491', NULL, 1, CAST(N'2022-01-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vpinnerae', N'lpUNpDpka5x0', 2, N'Vivyanne Pinner', 0, N'vpinnerae@economist.com', N'9602231328', NULL, 1, CAST(N'2022-02-19' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vproppers45', N'15MLThdP', 1, N'Verne Proppers', 0, N'vproppers45@surveymonkey.com', N'7346063763', NULL, 1, CAST(N'2021-08-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vrojelcr', N'kMtL8TaUuI', 1, N'Vallie Rojel', 1, N'vrojelcr@ox.ac.uk', N'5439171440', NULL, 1, CAST(N'2021-12-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'vtilliardr7', N'74o7IMiE4LTs', 2, N'Valle Tilliard', 1, N'vtilliardr7@printfriendly.com', N'1545668780', NULL, 1, CAST(N'2021-10-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wadranle', N'Yfq77i', 2, N'Wang Adran', 1, N'wadranle@comcast.net', N'6874061608', NULL, 1, CAST(N'2021-11-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'warnaultbo', N'z7APUi', 1, N'Wakefield Arnault', 1, N'warnaultbo@tamu.edu', N'7733702850', NULL, 1, CAST(N'2021-10-23' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wbernardeschijz', N'iuYEsh', 2, N'Wilmer Bernardeschi', 1, N'wbernardeschijz@edublogs.org', N'3238801171', NULL, 1, CAST(N'2021-12-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wcappel7a', N'Le1Yct4JS', 2, N'Walt Cappel', 0, N'wcappel7a@webeden.co.uk', N'9142154290', NULL, 1, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wchallenoreu', N'T19ZP8r', 2, N'Wyn Challenor', 1, N'wchallenoreu@shutterfly.com', N'8047351790', NULL, 1, CAST(N'2021-12-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wcockley7o', N'cKydSkv6pyTH', 2, N'Weidar Cockley', 1, N'wcockley7o@cmu.edu', N'3195607546', NULL, 1, CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wcolegrovell', N'NdDZk1A8', 2, N'Wyn Colegrove', 0, N'wcolegrovell@imageshack.us', N'3636336182', NULL, 1, CAST(N'2021-10-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wcoopmanbv', N'7O8D5v4Qy1', 2, N'Waylon Coopman', 0, N'wcoopmanbv@feedburner.com', N'6874795996', NULL, 1, CAST(N'2021-07-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wfriend2f', N'TgU8T9', 1, N'Winni Friend', 0, N'wfriend2f@bravesites.com', N'3083290895', NULL, 1, CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wganningp', N'HRKo2tXoE0VV', 2, N'Wren Ganning', 1, N'wganningp@123-reg.co.uk', N'2628987858', NULL, 1, CAST(N'2021-08-10' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wgantzer5y', N'j8GQrjy9DA', 1, N'Willem Gantzer', 0, N'wgantzer5y@theguardian.com', N'1548064117', NULL, 1, CAST(N'2022-03-22' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wglander5z', N'xHEjLQWVjG', 1, N'Wilburt Glander', 1, N'wglander5z@about.me', N'6051527941', NULL, 1, CAST(N'2021-07-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wionnidisml', N'VE86j9rka', 1, N'Wyatt Ionnidis', 0, N'wionnidisml@walmart.com', N'8502501792', NULL, 1, CAST(N'2021-10-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wmarjanski96', N'4f0dqouI3v8a', 2, N'Willey Marjanski', 1, N'wmarjanski96@pcworld.com', N'7644142926', NULL, 1, CAST(N'2021-10-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wmountjoy16', N'aiAkeZfz3Z6c', 1, N'Wally Mountjoy', 1, N'wmountjoy16@amazonaws.com', N'3412609238', NULL, 1, CAST(N'2021-12-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'worgan75', N'pRf8DWdEmRUE', 1, N'Worth Organ', 0, N'worgan75@ibm.com', N'6725742347', NULL, 1, CAST(N'2021-11-08' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wrobertson4m', N'1Nc1MBmFCwk', 1, N'Wat Robertson', 0, N'wrobertson4m@xrea.com', N'4715964633', NULL, 1, CAST(N'2021-10-29' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wrudolph4r', N'2b59ljXmQNf9', 1, N'Wilburt Rudolph', 1, N'wrudolph4r@businessweek.com', N'7392787471', NULL, 1, CAST(N'2021-12-12' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wscoughef', N'6cmb1Kxkg', 2, N'Way Scough', 0, N'wscoughef@hao123.com', N'5184549440', NULL, 1, CAST(N'2022-02-01' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wspiers88', N'4J6ar31c', 2, N'Wolf Spiers', 0, N'wspiers88@mac.com', N'4688648048', NULL, 1, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wtondeurk7', N'4rant300d6', 1, N'Wiatt Tondeur', 0, N'wtondeurk7@accuweather.com', N'1737065473', NULL, 1, CAST(N'2021-10-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wtripneyjt', N'yjkJe5', 2, N'Willy Tripney', 0, N'wtripneyjt@angelfire.com', N'5449744171', NULL, 1, CAST(N'2021-11-18' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'wwarhursto3', N'vxShPQV', 2, N'Wood Warhurst', 0, N'wwarhursto3@theglobeandmail.com', N'5393296452', NULL, 1, CAST(N'2021-06-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'xfreschini2y', N'k3aU48V6Y', 1, N'Xever Freschini', 1, N'xfreschini2y@cbslocal.com', N'2057554862', NULL, 1, CAST(N'2021-11-15' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ydevorillaw', N'vv9cwBiJ', 1, N'Yvette Devorill', 0, N'ydevorillaw@zdnet.com', N'7081060342', NULL, 1, CAST(N'2022-04-16' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ymeehanm0', N'sCGUjnhxp2', 1, N'Yoko Meehan', 0, N'ymeehanm0@noaa.gov', N'2463539126', NULL, 1, CAST(N'2021-07-25' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ymularkeyc', N'AwhonYd', 1, N'Yorgos Mularkey', 0, N'ymularkeyc@vinaora.com', N'3609561225', NULL, 1, CAST(N'2021-10-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ystainlz', N'9B1ppUI25', 2, N'Yelena Stain', 1, N'ystainlz@cloudflare.com', N'5029901193', NULL, 1, CAST(N'2021-08-17' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'ywithamsna', N'C2qotr', 2, N'Yvonne Withams', 1, N'ywithamsna@who.int', N'8501980128', NULL, 1, CAST(N'2021-09-13' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'zburseller', N'v5kWGofDrr1o', 1, N'Zaccaria Bursell', 0, N'zburseller@hhs.gov', N'8133428064', NULL, 1, CAST(N'2022-06-06' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'zhendinp6', N'H2eoch', 2, N'Zerk Hendin', 1, N'zhendinp6@umich.edu', N'4504817634', NULL, 1, CAST(N'2021-10-21' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'zhugonneau5', N'FvHjsp', 1, N'Zelda Hugonneau', 0, N'zhugonneau5@digg.com', N'7656566428', NULL, 1, CAST(N'2021-09-03' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'zmaasshd', N'vjAf5vsVnh', 2, N'Zorana Maass', 0, N'zmaasshd@storify.com', N'7139817196', NULL, 1, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'zmarshlandcv', N'SH5OphEa', 2, N'Zahara Marshland', 1, N'zmarshlandcv@bloglines.com', N'6695862494', NULL, 1, CAST(N'2022-04-09' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'zmaudittph', N'YKzb0Y', 2, N'Zolly Mauditt', 1, N'zmaudittph@nba.com', N'4173279380', NULL, 1, CAST(N'2021-11-16' AS Date), 1)
GO
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'zoscanlannv', N'FIqyr8Ye65', 1, N'Zaria O''Scanlan', 1, N'zoscanlannv@feedburner.com', N'9614094870', NULL, 1, CAST(N'2021-09-30' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'zsarreir', N'KvygeP', 1, N'Zilvia Sarre', 0, N'zsarreir@ifeng.com', N'3752384040', NULL, 1, CAST(N'2021-06-26' AS Date), 1)
INSERT [dbo].[user] ([username], [password], [roleId], [fullname], [gender], [email], [mobile], [avatar], [verify], [registerDate], [registerStatus]) VALUES (N'zsillw', N'Z6X5RBzgo', 2, N'Zea Sill', 1, N'zsillw@symantec.com', N'3515470709', NULL, 1, CAST(N'2022-03-20' AS Date), 1)
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([questionId])
REFERENCES [dbo].[Question] ([Id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Category]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_user] FOREIGN KEY([createdBy])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_user]
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD  CONSTRAINT [FK_course_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[course] CHECK CONSTRAINT [FK_course_Category]
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD  CONSTRAINT [FK_course_user] FOREIGN KEY([created_by])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[course] CHECK CONSTRAINT [FK_course_user]
GO
ALTER TABLE [dbo].[Course_Dimension]  WITH CHECK ADD  CONSTRAINT [FK_Course_Dimension_course] FOREIGN KEY([courseId])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[Course_Dimension] CHECK CONSTRAINT [FK_Course_Dimension_course]
GO
ALTER TABLE [dbo].[Course_Dimension]  WITH CHECK ADD  CONSTRAINT [FK_Course_Dimension_Dimension] FOREIGN KEY([dimensionId])
REFERENCES [dbo].[Dimension] ([id])
GO
ALTER TABLE [dbo].[Course_Dimension] CHECK CONSTRAINT [FK_Course_Dimension_Dimension]
GO
ALTER TABLE [dbo].[Course_Register]  WITH CHECK ADD  CONSTRAINT [FK_Course_Register_course] FOREIGN KEY([courseId])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[Course_Register] CHECK CONSTRAINT [FK_Course_Register_course]
GO
ALTER TABLE [dbo].[Course_Register]  WITH CHECK ADD  CONSTRAINT [FK_Course_Register_Package] FOREIGN KEY([packageId])
REFERENCES [dbo].[Package] ([id])
GO
ALTER TABLE [dbo].[Course_Register] CHECK CONSTRAINT [FK_Course_Register_Package]
GO
ALTER TABLE [dbo].[Course_Register]  WITH CHECK ADD  CONSTRAINT [FK_Course_Register_State] FOREIGN KEY([stateId])
REFERENCES [dbo].[State] ([id])
GO
ALTER TABLE [dbo].[Course_Register] CHECK CONSTRAINT [FK_Course_Register_State]
GO
ALTER TABLE [dbo].[Course_Register]  WITH CHECK ADD  CONSTRAINT [FK_Course_Register_user] FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[Course_Register] CHECK CONSTRAINT [FK_Course_Register_user]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Subject_Topic] FOREIGN KEY([subjectTopicId])
REFERENCES [dbo].[Subject_Topic] ([id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Subject_Topic]
GO
ALTER TABLE [dbo].[Price_Package]  WITH CHECK ADD  CONSTRAINT [FK_Price_Package_course] FOREIGN KEY([courseId])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[Price_Package] CHECK CONSTRAINT [FK_Price_Package_course]
GO
ALTER TABLE [dbo].[Price_Package]  WITH CHECK ADD  CONSTRAINT [FK_Price_Package_Package] FOREIGN KEY([packageId])
REFERENCES [dbo].[Package] ([id])
GO
ALTER TABLE [dbo].[Price_Package] CHECK CONSTRAINT [FK_Price_Package_Package]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Subject_Topic] FOREIGN KEY([topicId])
REFERENCES [dbo].[Subject_Topic] ([id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Subject_Topic]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Subject_Topic] FOREIGN KEY([subjectTopicId])
REFERENCES [dbo].[Subject_Topic] ([id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Subject_Topic]
GO
ALTER TABLE [dbo].[ResetPassword_Log]  WITH CHECK ADD  CONSTRAINT [FK_ResetPassword_Log_user] FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[ResetPassword_Log] CHECK CONSTRAINT [FK_ResetPassword_Log_user]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([featureId])
REFERENCES [dbo].[Feature] ([id])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Student_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Student_Answer_Question] FOREIGN KEY([questionId])
REFERENCES [dbo].[Question] ([Id])
GO
ALTER TABLE [dbo].[Student_Answer] CHECK CONSTRAINT [FK_Student_Answer_Question]
GO
ALTER TABLE [dbo].[Student_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Student_Answer_Quiz] FOREIGN KEY([quizId])
REFERENCES [dbo].[Quiz] ([id])
GO
ALTER TABLE [dbo].[Student_Answer] CHECK CONSTRAINT [FK_Student_Answer_Quiz]
GO
ALTER TABLE [dbo].[Student_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Student_Answer_user] FOREIGN KEY([username])
REFERENCES [dbo].[user] ([username])
GO
ALTER TABLE [dbo].[Student_Answer] CHECK CONSTRAINT [FK_Student_Answer_user]
GO
ALTER TABLE [dbo].[Subject_Topic]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Topic_course] FOREIGN KEY([courseId])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[Subject_Topic] CHECK CONSTRAINT [FK_Subject_Topic_course]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_RegisterStatus] FOREIGN KEY([registerStatus])
REFERENCES [dbo].[RegisterStatus] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_RegisterStatus]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_Role1] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_Role1]
GO
USE [master]
GO
ALTER DATABASE [SWP] SET  READ_WRITE 
GO

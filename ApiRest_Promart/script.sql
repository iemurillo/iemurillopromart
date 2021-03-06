USE [master]
GO
/****** Object:  Database [ApiPromart]    Script Date: 31/12/2020 17:23:41 ******/
CREATE DATABASE [ApiPromart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ApiPromart', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ApiPromart.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ApiPromart_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ApiPromart_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ApiPromart] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ApiPromart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ApiPromart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ApiPromart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ApiPromart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ApiPromart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ApiPromart] SET ARITHABORT OFF 
GO
ALTER DATABASE [ApiPromart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ApiPromart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ApiPromart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ApiPromart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ApiPromart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ApiPromart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ApiPromart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ApiPromart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ApiPromart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ApiPromart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ApiPromart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ApiPromart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ApiPromart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ApiPromart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ApiPromart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ApiPromart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ApiPromart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ApiPromart] SET RECOVERY FULL 
GO
ALTER DATABASE [ApiPromart] SET  MULTI_USER 
GO
ALTER DATABASE [ApiPromart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ApiPromart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ApiPromart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ApiPromart] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ApiPromart] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ApiPromart', N'ON'
GO
ALTER DATABASE [ApiPromart] SET QUERY_STORE = OFF
GO
USE [ApiPromart]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ApiPromart]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 31/12/2020 17:23:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](max) NULL,
	[salario] [int] NULL,
	[edad] [int] NULL,
	[foto] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_consultaempleados]    Script Date: 31/12/2020 17:23:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_consultaempleados]
as
select * from empleados
GO
USE [master]
GO
ALTER DATABASE [ApiPromart] SET  READ_WRITE 
GO

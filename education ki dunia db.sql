USE [master]
GO

/****** Object:  Database [EducationKiDunya]    Script Date: 12/13/2022 6:51:00 PM ******/
CREATE DATABASE [EducationKiDunya]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EducationKiDunya', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EducationKiDunya.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EducationKiDunya_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EducationKiDunya_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EducationKiDunya].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [EducationKiDunya] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [EducationKiDunya] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [EducationKiDunya] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [EducationKiDunya] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [EducationKiDunya] SET ARITHABORT OFF 
GO

ALTER DATABASE [EducationKiDunya] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [EducationKiDunya] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [EducationKiDunya] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [EducationKiDunya] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [EducationKiDunya] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [EducationKiDunya] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [EducationKiDunya] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [EducationKiDunya] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [EducationKiDunya] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [EducationKiDunya] SET  ENABLE_BROKER 
GO

ALTER DATABASE [EducationKiDunya] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [EducationKiDunya] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [EducationKiDunya] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [EducationKiDunya] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [EducationKiDunya] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [EducationKiDunya] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [EducationKiDunya] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [EducationKiDunya] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [EducationKiDunya] SET  MULTI_USER 
GO

ALTER DATABASE [EducationKiDunya] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [EducationKiDunya] SET DB_CHAINING OFF 
GO

ALTER DATABASE [EducationKiDunya] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [EducationKiDunya] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [EducationKiDunya] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [EducationKiDunya] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [EducationKiDunya] SET QUERY_STORE = OFF
GO

ALTER DATABASE [EducationKiDunya] SET  READ_WRITE 
GO


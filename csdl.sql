USE [master]
GO
/****** Object:  Database [AspNet_EmployeeLeave]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE DATABASE [AspNet_EmployeeLeave]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AspNet_EmployeeLeave', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AspNet_EmployeeLeave.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AspNet_EmployeeLeave_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AspNet_EmployeeLeave_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AspNet_EmployeeLeave].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET ARITHABORT OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET  MULTI_USER 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AspNet_EmployeeLeave]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/23/2021 4:45:01 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/23/2021 4:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/23/2021 4:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/23/2021 4:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/23/2021 4:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/23/2021 4:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/23/2021 4:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[DateJoined] [datetime2](7) NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[TaxId] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL DEFAULT (N''),
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/23/2021 4:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveAllocations]    Script Date: 1/23/2021 4:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveAllocations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfDays] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[EmployeeId] [nvarchar](450) NULL,
	[LeaveTypeId] [int] NOT NULL,
	[Period] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_LeaveAllocations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveRequests]    Script Date: 1/23/2021 4:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RequestingEmployeeId] [nvarchar](450) NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[LeaveTypeId] [int] NOT NULL,
	[DateRequested] [datetime2](7) NOT NULL,
	[DateActioned] [datetime2](7) NOT NULL,
	[Approved] [bit] NULL,
	[ApprovedById] [nvarchar](450) NULL,
 CONSTRAINT [PK_LeaveRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveTypes]    Script Date: 1/23/2021 4:45:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DefaultDays] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_LeaveTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210120033916_AddedEmployeeDataPoints', N'3.1.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210120042344_AddedLeaveDetailsTables', N'3.1.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210122090420_AddedDefaultDaysAndPeriod', N'3.1.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210123071707_ChangeLeaveHistoriesToLeaveRequests', N'3.1.11')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'05d506b2-ad77-4d94-a343-4312f8dcd250', N'Employee', N'EMPLOYEE', N'e1f45ae5-d9eb-4b4f-81a3-954b8551c710')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'07e81b28-120a-44ed-8384-b81d9d77561f', N'Administrator', N'ADMINISTRATOR', N'a7e4aacd-eab4-47cf-8933-c3891b30a979')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9ab5f905-f482-415b-a606-85aba4de70e9', N'05d506b2-ad77-4d94-a343-4312f8dcd250')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'beb65867-ddd3-4330-ad0e-4dcf7a77da9e', N'05d506b2-ad77-4d94-a343-4312f8dcd250')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b9e9c9c5-4197-4b02-84d9-dd658f06fb43', N'07e81b28-120a-44ed-8384-b81d9d77561f')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [DateJoined], [DateOfBirth], [FirstName], [LastName], [TaxId], [Discriminator]) VALUES (N'9ab5f905-f482-415b-a606-85aba4de70e9', N'test1@gmail.com', N'TEST1@GMAIL.COM', N'test1@gmail.com', N'TEST1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPXJ0mSdnHx5elZkvJ5rgyFMZodIrgmcB00hU78sHnAKH81RXx9CB3xE1Bir0aPIfw==', N'YRGAI6X6BSJBTAWYEDI45MHZD7EZ53JN', N'80a9ff80-1000-48e2-9d4d-e8b33057bce1', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'test', N'user1', NULL, N'Employee')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [DateJoined], [DateOfBirth], [FirstName], [LastName], [TaxId], [Discriminator]) VALUES (N'b9e9c9c5-4197-4b02-84d9-dd658f06fb43', N'admin@localhost.com', N'ADMIN@LOCALHOST.COM', N'admin@localhost.com', N'ADMIN@LOCALHOST.COM', 0, N'AQAAAAEAACcQAAAAEPklGRirBrPCuoSWvqgeASQNwiTQMpmttGw1UcJ4v84pEXOZAhCvtZAKcimUJFTYZw==', N'UPOYMKL3N3UB5TUGIYPXWUE7WRBCHGTT', N'2c89e636-cab3-4f8b-bb6f-98d129ed0de6', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, N'Employee')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [DateJoined], [DateOfBirth], [FirstName], [LastName], [TaxId], [Discriminator]) VALUES (N'beb65867-ddd3-4330-ad0e-4dcf7a77da9e', N'test2@gmail.com', N'TEST2@GMAIL.COM', N'test2@gmail.com', N'TEST2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENNkQtSn/SGbX6zkvHXDZF0cnzb2RNJIVIa2+1AVH7l/NsbP46QxVH+h77yVQYd3IQ==', N'YW3HIYPP66VAACR5O5OQ4JD2F6ZPUUTT', N'834572ab-ad6d-4be8-81f6-388c0a5b9855', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'test', N'user2', NULL, N'Employee')
SET IDENTITY_INSERT [dbo].[LeaveAllocations] ON 

INSERT [dbo].[LeaveAllocations] ([Id], [NumberOfDays], [DateCreated], [EmployeeId], [LeaveTypeId], [Period]) VALUES (1, 18, CAST(N'2021-01-23 11:30:25.7324264' AS DateTime2), N'9ab5f905-f482-415b-a606-85aba4de70e9', 3, 2021)
INSERT [dbo].[LeaveAllocations] ([Id], [NumberOfDays], [DateCreated], [EmployeeId], [LeaveTypeId], [Period]) VALUES (2, 20, CAST(N'2021-01-23 11:30:25.8794796' AS DateTime2), N'beb65867-ddd3-4330-ad0e-4dcf7a77da9e', 3, 2021)
INSERT [dbo].[LeaveAllocations] ([Id], [NumberOfDays], [DateCreated], [EmployeeId], [LeaveTypeId], [Period]) VALUES (3, 10, CAST(N'2021-01-23 11:30:27.0069462' AS DateTime2), N'9ab5f905-f482-415b-a606-85aba4de70e9', 2, 2021)
INSERT [dbo].[LeaveAllocations] ([Id], [NumberOfDays], [DateCreated], [EmployeeId], [LeaveTypeId], [Period]) VALUES (4, 10, CAST(N'2021-01-23 11:30:27.0099888' AS DateTime2), N'beb65867-ddd3-4330-ad0e-4dcf7a77da9e', 2, 2021)
INSERT [dbo].[LeaveAllocations] ([Id], [NumberOfDays], [DateCreated], [EmployeeId], [LeaveTypeId], [Period]) VALUES (5, 15, CAST(N'2021-01-23 11:30:28.5368284' AS DateTime2), N'9ab5f905-f482-415b-a606-85aba4de70e9', 1, 2021)
INSERT [dbo].[LeaveAllocations] ([Id], [NumberOfDays], [DateCreated], [EmployeeId], [LeaveTypeId], [Period]) VALUES (6, 15, CAST(N'2021-01-23 11:30:28.5421881' AS DateTime2), N'beb65867-ddd3-4330-ad0e-4dcf7a77da9e', 1, 2021)
SET IDENTITY_INSERT [dbo].[LeaveAllocations] OFF
SET IDENTITY_INSERT [dbo].[LeaveRequests] ON 

INSERT [dbo].[LeaveRequests] ([Id], [RequestingEmployeeId], [StartDate], [EndDate], [LeaveTypeId], [DateRequested], [DateActioned], [Approved], [ApprovedById]) VALUES (2, N'9ab5f905-f482-415b-a606-85aba4de70e9', CAST(N'2021-01-23 00:00:00.0000000' AS DateTime2), CAST(N'2021-01-25 00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-26 00:00:00.0000000' AS DateTime2), CAST(N'2021-01-27 00:00:00.0000000' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[LeaveRequests] OFF
SET IDENTITY_INSERT [dbo].[LeaveTypes] ON 

INSERT [dbo].[LeaveTypes] ([Id], [Name], [DateCreated], [DefaultDays]) VALUES (1, N'Vacation', CAST(N'2021-01-23 10:34:38.1317791' AS DateTime2), 15)
INSERT [dbo].[LeaveTypes] ([Id], [Name], [DateCreated], [DefaultDays]) VALUES (2, N'Sick', CAST(N'2021-01-23 10:34:42.8298861' AS DateTime2), 10)
INSERT [dbo].[LeaveTypes] ([Id], [Name], [DateCreated], [DefaultDays]) VALUES (3, N'Romance', CAST(N'2021-01-23 10:34:48.0529680' AS DateTime2), 20)
SET IDENTITY_INSERT [dbo].[LeaveTypes] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LeaveAllocations_EmployeeId]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveAllocations_EmployeeId] ON [dbo].[LeaveAllocations]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeaveAllocations_LeaveTypeId]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveAllocations_LeaveTypeId] ON [dbo].[LeaveAllocations]
(
	[LeaveTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LeaveRequests_ApprovedById]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveRequests_ApprovedById] ON [dbo].[LeaveRequests]
(
	[ApprovedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LeaveRequests_LeaveTypeId]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveRequests_LeaveTypeId] ON [dbo].[LeaveRequests]
(
	[LeaveTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LeaveRequests_RequestingEmployeeId]    Script Date: 1/23/2021 4:45:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_LeaveRequests_RequestingEmployeeId] ON [dbo].[LeaveRequests]
(
	[RequestingEmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[LeaveAllocations]  WITH CHECK ADD  CONSTRAINT [FK_LeaveAllocations_AspNetUsers_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[LeaveAllocations] CHECK CONSTRAINT [FK_LeaveAllocations_AspNetUsers_EmployeeId]
GO
ALTER TABLE [dbo].[LeaveAllocations]  WITH CHECK ADD  CONSTRAINT [FK_LeaveAllocations_LeaveTypes_LeaveTypeId] FOREIGN KEY([LeaveTypeId])
REFERENCES [dbo].[LeaveTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeaveAllocations] CHECK CONSTRAINT [FK_LeaveAllocations_LeaveTypes_LeaveTypeId]
GO
ALTER TABLE [dbo].[LeaveRequests]  WITH CHECK ADD  CONSTRAINT [FK_LeaveRequests_AspNetUsers_ApprovedById] FOREIGN KEY([ApprovedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[LeaveRequests] CHECK CONSTRAINT [FK_LeaveRequests_AspNetUsers_ApprovedById]
GO
ALTER TABLE [dbo].[LeaveRequests]  WITH CHECK ADD  CONSTRAINT [FK_LeaveRequests_AspNetUsers_RequestingEmployeeId] FOREIGN KEY([RequestingEmployeeId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[LeaveRequests] CHECK CONSTRAINT [FK_LeaveRequests_AspNetUsers_RequestingEmployeeId]
GO
ALTER TABLE [dbo].[LeaveRequests]  WITH CHECK ADD  CONSTRAINT [FK_LeaveRequests_LeaveTypes_LeaveTypeId] FOREIGN KEY([LeaveTypeId])
REFERENCES [dbo].[LeaveTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeaveRequests] CHECK CONSTRAINT [FK_LeaveRequests_LeaveTypes_LeaveTypeId]
GO
USE [master]
GO
ALTER DATABASE [AspNet_EmployeeLeave] SET  READ_WRITE 
GO

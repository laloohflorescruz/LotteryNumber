USE [LotteryDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/11/2017 10:12:24 p. m. ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 25/11/2017 10:12:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25/11/2017 10:12:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IPAddress] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25/11/2017 10:12:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25/11/2017 10:12:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25/11/2017 10:12:24 p. m. ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25/11/2017 10:12:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 25/11/2017 10:12:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Numbers]    Script Date: 25/11/2017 10:12:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Numbers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[FirstPrize] [nvarchar](max) NOT NULL,
	[IPAddress] [nvarchar](max) NULL,
	[LotteryDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[SecondPrize] [nvarchar](max) NOT NULL,
	[ThirdPrize] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Numbers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171121034148_okk', N'1.1.1')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [CreatedDate], [Description], [IPAddress], [Name], [NormalizedName]) VALUES (N'0238f205-6078-40c3-b162-ecfc5f818956', N'8d72108d-8683-4aac-aa38-7616c805e3fb', CAST(N'2017-11-21T04:22:03.6500086' AS DateTime2), N'Super Usuario...', N'::1', N'Userk', N'USERK')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [CreatedDate], [Description], [IPAddress], [Name], [NormalizedName]) VALUES (N'8312078c-61e9-468d-bb7e-9621a23c6c02', N'44c131eb-34cc-4739-953d-5573b3a1d5ae', CAST(N'2017-11-21T04:19:45.8992933' AS DateTime2), N'Usuario 3222', N'::1', N'User', N'USER')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [CreatedDate], [Description], [IPAddress], [Name], [NormalizedName]) VALUES (N'903420bb-3a72-4e33-85e5-98c2f8e8c74b', N'35685031-10aa-4182-a3e5-c0f5bc0bd742', CAST(N'2017-11-21T04:19:58.9231980' AS DateTime2), N'Super Usuario', N'::1', N'SuperUser', N'SUPERUSER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'194428fa-d96c-44fb-8c0a-b176124f9535', N'8312078c-61e9-468d-bb7e-9621a23c6c02')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a1526fb-faa3-4037-a90c-11e2e3080150', N'903420bb-3a72-4e33-85e5-98c2f8e8c74b')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'194428fa-d96c-44fb-8c0a-b176124f9535', 0, N'6a0d4e7d-43a9-4475-ab98-ef5f972eb378', N'pp@gmail.com', 0, 1, NULL, N'Pedro', N'PP@GMAIL.COM', N'PPIEDRAS', N'AQAAAAEAACcQAAAAECwGoRPSbOxAFmgbdYeLYmgA995/wkqm/8TvaxK59srXFnKcXEkU9Ah7BVJn7hbG5Q==', NULL, 0, N'29f01e4c-dc1f-4844-97ae-280f3d52f38d', 0, N'ppiedras')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [Name], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'3a1526fb-faa3-4037-a90c-11e2e3080150', 0, N'0397fd2f-bafd-45cf-ac06-9a72c3a9836c', N'rtretre@maul.com', 0, 1, NULL, N'Pepito', N'RTRETRE@MAUL.COM', N'PPITO', N'AQAAAAEAACcQAAAAEFJCbDC/2GogLXYanvmyK7jYM+Z2FvNMFgnygxrx2kPJA/fkUlBGnKkmv2orEmpbWg==', NULL, 0, N'73cb3a1e-ceb2-4ead-8d96-aad966657e1a', 0, N'ppito')
SET IDENTITY_INSERT [dbo].[Numbers] ON 

INSERT [dbo].[Numbers] ([Id], [AddedDate], [FirstPrize], [IPAddress], [LotteryDate], [ModifiedDate], [SecondPrize], [ThirdPrize]) VALUES (1, CAST(N'2017-11-21T04:08:31.4118147' AS DateTime2), N'1', N'::1', CAST(N'2017-11-21T00:00:00.0000000' AS DateTime2), CAST(N'2017-11-26T01:03:39.1223005' AS DateTime2), N'2', N'3888')
INSERT [dbo].[Numbers] ([Id], [AddedDate], [FirstPrize], [IPAddress], [LotteryDate], [ModifiedDate], [SecondPrize], [ThirdPrize]) VALUES (2, CAST(N'2017-11-21T04:24:42.9869298' AS DateTime2), N'88', N'::1', CAST(N'2017-11-22T00:00:00.0000000' AS DateTime2), CAST(N'2017-11-26T01:03:47.8306385' AS DateTime2), N'65', N'6555')
INSERT [dbo].[Numbers] ([Id], [AddedDate], [FirstPrize], [IPAddress], [LotteryDate], [ModifiedDate], [SecondPrize], [ThirdPrize]) VALUES (3, CAST(N'2017-11-26T01:04:00.2165482' AS DateTime2), N'9', N'::1', CAST(N'2017-11-25T00:00:00.0000000' AS DateTime2), CAST(N'2017-11-26T01:04:00.2165482' AS DateTime2), N'554', N'24')
SET IDENTITY_INSERT [dbo].[Numbers] OFF
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

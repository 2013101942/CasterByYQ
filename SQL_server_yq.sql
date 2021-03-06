/****** Object:  Table [dbo].[DishInfo]    Script Date: 05/02/2020 17:20:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DishInfo]') AND type in (N'U'))
DROP TABLE [dbo].[DishInfo]
GO
/****** Object:  Table [dbo].[DishTypeInfo]    Script Date: 05/02/2020 17:20:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DishTypeInfo]') AND type in (N'U'))
DROP TABLE [dbo].[DishTypeInfo]
GO
/****** Object:  Table [dbo].[HallInfo]    Script Date: 05/02/2020 17:20:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HallInfo]') AND type in (N'U'))
DROP TABLE [dbo].[HallInfo]
GO
/****** Object:  Table [dbo].[ManagerInfo]    Script Date: 05/02/2020 17:20:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ManagerInfo]') AND type in (N'U'))
DROP TABLE [dbo].[ManagerInfo]
GO
/****** Object:  Table [dbo].[MemberInfo]    Script Date: 05/02/2020 17:20:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberInfo]') AND type in (N'U'))
DROP TABLE [dbo].[MemberInfo]
GO
/****** Object:  Table [dbo].[MemberTypeInfo]    Script Date: 05/02/2020 17:20:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberTypeInfo]') AND type in (N'U'))
DROP TABLE [dbo].[MemberTypeInfo]
GO
/****** Object:  Table [dbo].[OrderInfo]    Script Date: 05/02/2020 17:20:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderInfo]') AND type in (N'U'))
DROP TABLE [dbo].[OrderInfo]
GO
/****** Object:  Table [dbo].[T_user]    Script Date: 05/02/2020 17:20:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[T_user]') AND type in (N'U'))
DROP TABLE [dbo].[T_user]
GO
/****** Object:  Table [dbo].[TableInfo]    Script Date: 05/02/2020 17:20:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TableInfo]') AND type in (N'U'))
DROP TABLE [dbo].[TableInfo]
GO
/****** Object:  Table [dbo].[TableInfo]    Script Date: 05/02/2020 17:20:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TableInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TableInfo](
	[Id] [int] IDENTITY(28,1) NOT NULL,
	[TTitle] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[HId] [int] NULL,
	[TIsFree] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_TableInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[TableInfo] ON
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (1, N'九江一号', 1, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (2, N'九江二号', 1, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (3, N'南昌一号', 2, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (4, N'南昌二号', 2, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (5, N'合肥一号', 3, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (6, N'合肥二号', 3, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (7, N'北京一号', 4, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (8, N'北京二号', 4, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (9, N'北京三号', 4, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (10, N'扬州一号', 5, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (11, N'扬州二号', 5, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (12, N'南京一号', 6, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (13, N'南京二号', 6, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (14, N'泉州一号', 7, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (15, N'泉州二号', 7, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (16, N'汕头一号', 8, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (17, N'汕头二号', 8, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (18, N'福州一号', 9, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (19, N'福州二号', 9, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (20, N'长沙一号', 10, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (21, N'长沙二号', 10, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (22, N'青岛一号', 11, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (23, N'青岛二号', 11, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (24, N'武汉一号', 12, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (25, N'武汉二号', 12, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (26, N'石家庄一号', 13, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (27, N'石家庄二号', 13, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (28, N'上海一号', 14, 1, 0)
INSERT [dbo].[TableInfo] ([Id], [TTitle], [HId], [TIsFree], [IsDelete]) VALUES (29, N'重庆一号', 15, 0, 0)
SET IDENTITY_INSERT [dbo].[TableInfo] OFF
/****** Object:  Table [dbo].[T_user]    Script Date: 05/02/2020 17:20:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[T_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[T_user](
	[user_id] [int] NOT NULL,
	[userName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[password] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[kind] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_T_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[T_user] ([user_id], [userName], [password], [kind]) VALUES (1, N'陈超', N'123456', N'1')
/****** Object:  Table [dbo].[OrderInfo]    Script Date: 05/02/2020 17:20:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MId] [int] NULL,
	[TId] [int] NULL,
	[ODate] [date] NULL,
	[OMoney] [decimal](7, 2) NULL,
	[OIsPay] [bit] NULL,
	[Did] [int] NULL,
	[ODiscount] [decimal](18, 0) NULL,
	[Oamount] [int] NULL,
 CONSTRAINT [PK_OrderInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[OrderInfo] ON
INSERT [dbo].[OrderInfo] ([id], [MId], [TId], [ODate], [OMoney], [OIsPay], [Did], [ODiscount], [Oamount]) VALUES (48, 1, 2, CAST(0xAC400B00 AS Date), CAST(15.00 AS Decimal(7, 2)), 1, 6, CAST(14 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderInfo] ([id], [MId], [TId], [ODate], [OMoney], [OIsPay], [Did], [ODiscount], [Oamount]) VALUES (49, 1, 2, CAST(0xAC400B00 AS Date), CAST(25.00 AS Decimal(7, 2)), 1, 7, CAST(24 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderInfo] ([id], [MId], [TId], [ODate], [OMoney], [OIsPay], [Did], [ODiscount], [Oamount]) VALUES (51, 1, 2, CAST(0xAC400B00 AS Date), CAST(5.00 AS Decimal(7, 2)), 1, 12, CAST(5 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderInfo] ([id], [MId], [TId], [ODate], [OMoney], [OIsPay], [Did], [ODiscount], [Oamount]) VALUES (52, 2, 2, CAST(0xAC400B00 AS Date), CAST(75.00 AS Decimal(7, 2)), 0, 6, CAST(68 AS Decimal(18, 0)), 5)
INSERT [dbo].[OrderInfo] ([id], [MId], [TId], [ODate], [OMoney], [OIsPay], [Did], [ODiscount], [Oamount]) VALUES (53, 2, 2, CAST(0xAC400B00 AS Date), CAST(5.00 AS Decimal(7, 2)), 0, 12, CAST(5 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderInfo] ([id], [MId], [TId], [ODate], [OMoney], [OIsPay], [Did], [ODiscount], [Oamount]) VALUES (54, 2, 2, CAST(0xAD400B00 AS Date), CAST(20.00 AS Decimal(7, 2)), 0, 4, CAST(18 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[OrderInfo] OFF
/****** Object:  Table [dbo].[MemberTypeInfo]    Script Date: 05/02/2020 17:20:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberTypeInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MemberTypeInfo](
	[Id] [int] IDENTITY(4,1) NOT NULL,
	[MTypeTitle] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[MTypeDiscount] [decimal](3, 2) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_MemberTypeInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[MemberTypeInfo] ON
INSERT [dbo].[MemberTypeInfo] ([Id], [MTypeTitle], [MTypeDiscount], [IsDelete]) VALUES (1, N'钻石', CAST(0.90 AS Decimal(3, 2)), 0)
INSERT [dbo].[MemberTypeInfo] ([Id], [MTypeTitle], [MTypeDiscount], [IsDelete]) VALUES (2, N'白金', CAST(0.95 AS Decimal(3, 2)), 0)
INSERT [dbo].[MemberTypeInfo] ([Id], [MTypeTitle], [MTypeDiscount], [IsDelete]) VALUES (3, N'黄金', CAST(0.98 AS Decimal(3, 2)), 0)
SET IDENTITY_INSERT [dbo].[MemberTypeInfo] OFF
/****** Object:  Table [dbo].[MemberInfo]    Script Date: 05/02/2020 17:20:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MemberInfo](
	[Id] [int] IDENTITY(5,1) NOT NULL,
	[MName] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[MPwd] [varchar](32) COLLATE Chinese_PRC_CI_AS NULL,
	[MPhone] [varchar](11) COLLATE Chinese_PRC_CI_AS NULL,
	[MMoney] [decimal](6, 2) NULL,
	[MTypeId] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_MemberInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[MemberInfo] ON
INSERT [dbo].[MemberInfo] ([Id], [MName], [MPwd], [MPhone], [MMoney], [MTypeId], [IsDelete]) VALUES (1, N'张三', N'123456', N'18846597455', CAST(1000.00 AS Decimal(6, 2)), 2, 0)
INSERT [dbo].[MemberInfo] ([Id], [MName], [MPwd], [MPhone], [MMoney], [MTypeId], [IsDelete]) VALUES (2, N'李四', N'123456', N'18648592233', CAST(1200.00 AS Decimal(6, 2)), 1, 0)
INSERT [dbo].[MemberInfo] ([Id], [MName], [MPwd], [MPhone], [MMoney], [MTypeId], [IsDelete]) VALUES (3, N'王二', N'123456', N'18956847799', CAST(800.00 AS Decimal(6, 2)), 3, 0)
INSERT [dbo].[MemberInfo] ([Id], [MName], [MPwd], [MPhone], [MMoney], [MTypeId], [IsDelete]) VALUES (4, N'麻子', N'123456', N'15546879548', CAST(1233.00 AS Decimal(6, 2)), 1, 1)
INSERT [dbo].[MemberInfo] ([Id], [MName], [MPwd], [MPhone], [MMoney], [MTypeId], [IsDelete]) VALUES (6, N'赵六', N'123456', N'14859765184', CAST(1450.00 AS Decimal(6, 2)), 3, 0)
INSERT [dbo].[MemberInfo] ([Id], [MName], [MPwd], [MPhone], [MMoney], [MTypeId], [IsDelete]) VALUES (8, N'谭池', N'123456', N'12584597859', CAST(0.00 AS Decimal(6, 2)), 1, 0)
SET IDENTITY_INSERT [dbo].[MemberInfo] OFF
/****** Object:  Table [dbo].[ManagerInfo]    Script Date: 05/02/2020 17:20:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ManagerInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ManagerInfo](
	[Id] [int] IDENTITY(3,1) NOT NULL,
	[MName] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[MPwd] [varchar](32) COLLATE Chinese_PRC_CI_AS NULL,
	[MType] [int] NULL,
 CONSTRAINT [PK_ManagerInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ManagerInfo] ON
INSERT [dbo].[ManagerInfo] ([Id], [MName], [MPwd], [MType]) VALUES (1, N'YQ', N'2013101942', 1)
INSERT [dbo].[ManagerInfo] ([Id], [MName], [MPwd], [MType]) VALUES (2, N'陈超', N'123456', 0)
INSERT [dbo].[ManagerInfo] ([Id], [MName], [MPwd], [MType]) VALUES (4, N'小王', N'e10adc3949ba59abbe56e057f20f883e', 0)
INSERT [dbo].[ManagerInfo] ([Id], [MName], [MPwd], [MType]) VALUES (5, N'小刘', N'123456', 0)
SET IDENTITY_INSERT [dbo].[ManagerInfo] OFF
/****** Object:  Table [dbo].[HallInfo]    Script Date: 05/02/2020 17:20:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HallInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HallInfo](
	[Id] [int] IDENTITY(14,1) NOT NULL,
	[HTitle] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_HallInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[HallInfo] ON
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (1, N'九江厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (2, N'南昌厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (3, N'合肥厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (4, N'北京厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (5, N'扬州厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (6, N'南京厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (7, N'泉州厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (8, N'汕头厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (9, N'福州厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (10, N'长沙厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (11, N'青岛厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (12, N'武汉厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (13, N'石家庄厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (14, N'上海厅', 0)
INSERT [dbo].[HallInfo] ([Id], [HTitle], [IsDelete]) VALUES (15, N'重庆厅', 0)
SET IDENTITY_INSERT [dbo].[HallInfo] OFF
/****** Object:  Table [dbo].[DishTypeInfo]    Script Date: 05/02/2020 17:20:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DishTypeInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DishTypeInfo](
	[Id] [int] IDENTITY(12,1) NOT NULL,
	[DTypeTitle] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_DishTypeInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[DishTypeInfo] ON
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (1, N'酒水', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (2, N'米饭', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (3, N'面条', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (4, N'赣菜', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (5, N'粤菜', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (6, N'川菜', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (7, N'湘菜', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (8, N'徽菜', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (9, N'鲁菜', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (10, N'北方菜', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (11, N'淮扬菜', 0)
INSERT [dbo].[DishTypeInfo] ([Id], [DTypeTitle], [IsDelete]) VALUES (12, N'清真', 0)
SET IDENTITY_INSERT [dbo].[DishTypeInfo] OFF
/****** Object:  Table [dbo].[DishInfo]    Script Date: 05/02/2020 17:20:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DishInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DishInfo](
	[Id] [int] IDENTITY(12,1) NOT NULL,
	[DTitle] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[DPrice] [decimal](5, 2) NULL,
	[DChar] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[DTypeId] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_DishInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[DishInfo] ON
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (1, N'老郎酒', CAST(120.00 AS Decimal(5, 2)), N'LLJ', 1, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (2, N'驴肉火烧', CAST(20.00 AS Decimal(5, 2)), N'LRHS', 10, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (3, N'红烧狮子头', CAST(30.00 AS Decimal(5, 2)), N'HSSZT', 11, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (4, N'北京烤鸭', CAST(20.00 AS Decimal(5, 2)), N'BJKY', 10, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (5, N'辣子鸡', CAST(20.00 AS Decimal(5, 2)), N'LZJ', 6, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (6, N'藜蒿炒腊肉', CAST(15.00 AS Decimal(5, 2)), N'LHCLR', 4, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (7, N'豆参煮鱼', CAST(25.00 AS Decimal(5, 2)), N'DSZY', 4, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (8, N'剁椒鱼头', CAST(20.00 AS Decimal(5, 2)), N'DJYT', 7, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (9, N'小鸡炖蘑菇', CAST(40.00 AS Decimal(5, 2)), N'XJDMG', 4, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (10, N'大螃蟹', CAST(50.00 AS Decimal(5, 2)), N'DPX', 11, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (11, N'麻辣小龙虾', CAST(50.00 AS Decimal(5, 2)), N'MLXLX', 7, 0)
INSERT [dbo].[DishInfo] ([Id], [DTitle], [DPrice], [DChar], [DTypeId], [IsDelete]) VALUES (12, N'兰州拉面', CAST(5.00 AS Decimal(5, 2)), N'LZLM', 12, 0)
SET IDENTITY_INSERT [dbo].[DishInfo] OFF

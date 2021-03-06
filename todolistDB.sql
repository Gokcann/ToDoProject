USE [todolistDB]
GO
/****** Object:  Table [dbo].[tododaily]    Script Date: 20.06.2020 13:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tododaily](
	[tododaily_id] [int] IDENTITY(1,1) NOT NULL,
	[tododaily_text] [nvarchar](50) NULL,
	[flag_id] [int] NULL,
 CONSTRAINT [PK_tododaily] PRIMARY KEY CLUSTERED 
(
	[tododaily_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[todoflag]    Script Date: 20.06.2020 13:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[todoflag](
	[flag_id] [int] IDENTITY(1,1) NOT NULL,
	[flag_text] [nvarchar](50) NULL,
 CONSTRAINT [PK_todoflag] PRIMARY KEY CLUSTERED 
(
	[flag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[todomonthly]    Script Date: 20.06.2020 13:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[todomonthly](
	[todomonthly_id] [int] IDENTITY(1,1) NOT NULL,
	[todomonthly_text] [nvarchar](50) NULL,
	[flag_id] [int] NULL,
 CONSTRAINT [PK_todomonthly] PRIMARY KEY CLUSTERED 
(
	[todomonthly_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[todoweekly]    Script Date: 20.06.2020 13:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[todoweekly](
	[todoweekly_id] [int] IDENTITY(1,1) NOT NULL,
	[todoweekly_text] [nvarchar](50) NULL,
	[flag_id] [int] NULL,
 CONSTRAINT [PK_todoweekly] PRIMARY KEY CLUSTERED 
(
	[todoweekly_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tododaily] ON 

INSERT [dbo].[tododaily] ([tododaily_id], [tododaily_text], [flag_id]) VALUES (10, N'Rapor Yazımı 4', 3)
INSERT [dbo].[tododaily] ([tododaily_id], [tododaily_text], [flag_id]) VALUES (12, N'Raporların mail gönderilmesi', 2)
INSERT [dbo].[tododaily] ([tododaily_id], [tododaily_text], [flag_id]) VALUES (13, N'deneme', 6)
SET IDENTITY_INSERT [dbo].[tododaily] OFF
GO
SET IDENTITY_INSERT [dbo].[todoflag] ON 

INSERT [dbo].[todoflag] ([flag_id], [flag_text]) VALUES (2, N'Evde Yapilacak')
INSERT [dbo].[todoflag] ([flag_id], [flag_text]) VALUES (3, N'Acil!++')
INSERT [dbo].[todoflag] ([flag_id], [flag_text]) VALUES (5, N'İşte Yapılacak')
SET IDENTITY_INSERT [dbo].[todoflag] OFF
GO
SET IDENTITY_INSERT [dbo].[todomonthly] ON 

INSERT [dbo].[todomonthly] ([todomonthly_id], [todomonthly_text], [flag_id]) VALUES (1, N'deneme', 5)
INSERT [dbo].[todomonthly] ([todomonthly_id], [todomonthly_text], [flag_id]) VALUES (2, N'deneme2', 6)
SET IDENTITY_INSERT [dbo].[todomonthly] OFF
GO
SET IDENTITY_INSERT [dbo].[todoweekly] ON 

INSERT [dbo].[todoweekly] ([todoweekly_id], [todoweekly_text], [flag_id]) VALUES (3, N'deneme', 3)
INSERT [dbo].[todoweekly] ([todoweekly_id], [todoweekly_text], [flag_id]) VALUES (5, N'deneme3', 6)
SET IDENTITY_INSERT [dbo].[todoweekly] OFF
GO

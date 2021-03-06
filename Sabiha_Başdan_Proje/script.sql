USE [db_net_degerlendirme_projesi]
GO
/****** Object:  Table [dbo].[tbl_stok_Hareket]    Script Date: 13.03.2020 20:12:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_stok_Hareket](
	[stok_Hareket_ID] [int] IDENTITY(1,1) NOT NULL,
	[stok_Kart_ID] [int] NULL,
	[miktar] [nvarchar](50) NULL,
	[giris_Tarihi] [datetime] NULL,
	[cikis_Tarihi] [datetime] NULL,
 CONSTRAINT [PK_tbl_stok_Hareket] PRIMARY KEY CLUSTERED 
(
	[stok_Hareket_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_stok_Karti]    Script Date: 13.03.2020 20:12:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_stok_Karti](
	[stok_Kart_ID] [int] IDENTITY(1,1) NOT NULL,
	[urun_Adi] [nvarchar](50) NULL,
	[barkod] [nvarchar](50) NULL,
	[birim_Fiyati] [nvarchar](50) NULL,
	[kdv_Orani] [nvarchar](50) NULL,
	[alis_Iskontosu] [nvarchar](50) NULL,
	[satis_Iskontosu] [nvarchar](50) NULL,
	[aciklama] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_stok_Karti] PRIMARY KEY CLUSTERED 
(
	[stok_Kart_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_stok_Hareket] ON 

INSERT [dbo].[tbl_stok_Hareket] ([stok_Hareket_ID], [stok_Kart_ID], [miktar], [giris_Tarihi], [cikis_Tarihi]) VALUES (2, 1, N'100', CAST(0x0000AB5E00000000 AS DateTime), CAST(0x0000AB6500000000 AS DateTime))
INSERT [dbo].[tbl_stok_Hareket] ([stok_Hareket_ID], [stok_Kart_ID], [miktar], [giris_Tarihi], [cikis_Tarihi]) VALUES (4, 2, N'120', CAST(0x000091BF00000000 AS DateTime), CAST(0x00011D9100000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_stok_Hareket] OFF
SET IDENTITY_INSERT [dbo].[tbl_stok_Karti] ON 

INSERT [dbo].[tbl_stok_Karti] ([stok_Kart_ID], [urun_Adi], [barkod], [birim_Fiyati], [kdv_Orani], [alis_Iskontosu], [satis_Iskontosu], [aciklama]) VALUES (1, N'Kalem', N'111111111', N'10', N'18', N'2', N'1', NULL)
INSERT [dbo].[tbl_stok_Karti] ([stok_Kart_ID], [urun_Adi], [barkod], [birim_Fiyati], [kdv_Orani], [alis_Iskontosu], [satis_Iskontosu], [aciklama]) VALUES (2, N'Silgi', N'111111112', N'5', N'18', N'2', N'1', NULL)
SET IDENTITY_INSERT [dbo].[tbl_stok_Karti] OFF
ALTER TABLE [dbo].[tbl_stok_Hareket]  WITH CHECK ADD  CONSTRAINT [FK_tbl_stok_Hareket_tbl_stok_Karti] FOREIGN KEY([stok_Kart_ID])
REFERENCES [dbo].[tbl_stok_Karti] ([stok_Kart_ID])
GO
ALTER TABLE [dbo].[tbl_stok_Hareket] CHECK CONSTRAINT [FK_tbl_stok_Hareket_tbl_stok_Karti]
GO

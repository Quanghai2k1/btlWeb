USE [laptop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/19/2022 4:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user] [nvarchar](max) NULL,
	[pass] [nvarchar](max) NULL,
	[isAdmin] [int] NULL,
	[sdt] [nvarchar](50) NULL,
	[diachi] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorylap]    Script Date: 6/19/2022 4:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorylap](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kindOfProduct]    Script Date: 6/19/2022 4:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kindOfProduct](
	[id] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laptop_Details]    Script Date: 6/19/2022 4:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laptop_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[manhinh] [nvarchar](max) NULL,
	[cpu] [nvarchar](max) NULL,
	[ram] [nvarchar](max) NULL,
	[ocung] [nvarchar](max) NULL,
	[dohoa] [nvarchar](max) NULL,
	[khoiluong] [nvarchar](max) NULL,
	[kichthuoc] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 6/19/2022 4:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/19/2022 4:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[aid] [int] NULL,
	[totalmoney] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/19/2022 4:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
	[soluong] [int] NULL,
	[kind] [int] NULL,
 CONSTRAINT [PK_lap] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (1, N'adm', N'adm', 1, N'03692952', N'Mỗ Lao - Hà Đông - Hà Nội')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (2, N'admin', N'admin', 1, N'03692952', N'Mỗ Lao - Hà Đông - Hà Nội')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (3, N'quanghai', N'123456', 1, N'03692952', N'Mỗ Lao - Hà Đông - Hà Nội')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (4, N'anhyeuem', N'123456', 0, N'022525425', N'Sơn Đà - Ba Vì')
INSERT [dbo].[Account] ([id], [user], [pass], [isAdmin], [sdt], [diachi]) VALUES (5, N'nqhai', N'123456', 0, N'09866476', N'SÆ¡n ÄÃ  - Ba VÃ¬ - HÃ  Ná»i')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (1, N'Dell')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (2, N'Apple')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (3, N'Asus')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (4, N'Lenovo')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (5, N'Chuột')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (6, N'Bàn phím')
INSERT [dbo].[Categorylap] ([cid], [cname]) VALUES (7, N'Tai nghe')
GO
INSERT [dbo].[kindOfProduct] ([id], [name]) VALUES (1, N'Laptop')
INSERT [dbo].[kindOfProduct] ([id], [name]) VALUES (2, N'Phụ kiện')
GO
SET IDENTITY_INSERT [dbo].[Laptop_Details] ON 

INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (1, 1, N'15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Anti-glare LED-backlit', N'detail.cpu', N'8 GB, DDR4, 3200 MHz', N'SSD 512 GB', N'NVIDIA GeForce GTX 1650 4GB; AMD Radeon Graphics', N'2.2 kg', N'363.4 x 255 x 23.9 mm')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (2, 2, N'15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Anti-glare LED-backlit', N'detail.cpu', N'8 GB, DDR4, 3200 MHz', N'SSD 512 GB', N'NVIDIA GeForce GTX 1650 4GB; AMD Radeon Graphics', N'2.2 kg', N'363.4 x 255 x 23.9 mm')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (3, 3, N'15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Acer ComfyView Anti-glare LED-backlit
', N'AMD, Ryzen 5, 5500U
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'NVIDIA GeForce GTX 1650 4GB; AMD Radeon Graphics
', N'2.1 kg
', N'363.4 x 254.5 x 22.9 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (4, 4, N'14.0 inch, 1920 x 1080 Pixels, TN, 250 nits, Anti-glare LED-backlit
', N'Intel, Core i3, 1115G4
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'Intel UHD Graphics
', N'1.41 kg
', N'324.2 x 215.6 x 19.89 ~ 19.90 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (5, 5, N'15.6 inch, 2560 x 1440 Pixels, WVA, 240 Hz, 400 nits, Wide-Viewing Angle (WVA)
', N'Intel, Core i7, 11800H
', N'NULL32 GB (2 thanh 16 GB), DDR4, 3200 MHz
', N'SSD 1 TB
', N'NVIDIA GeForce RTX 3070 8GB; Intel UHD Graphics
', N'2.7 kg', N'356 x 272 x 19 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (6, 6, N'16.2 inch, 3456 x 2234 Pixels
', N'Apple, M1 Pro
', N'32 GB
', N'SSD 512 GB
', N'Apple M1
', N'2.129 kg
', N'15.6 x 358.5 x 235 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (7, 7, N'15.6 inch, 1920 x 1080 Pixels, WVA, 120 Hz, 250 nits, WVA Anti-glare LED Backlit Narrow Border
', N'Intel, Core i7, 11800H
', N'16 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'Intel UHD Graphics
', N'2.81 kg
', N'25 x 357.2 x 272 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (8, 8, N'15.6 inch, 1920 x 1080 Pixels, WVA, 120 Hz, 250 nits, WVA Anti-glare LED Backlit Narrow Border
', N'Intel, Core i7, 11800H
', N'16 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'Intel UHD Graphics
', N'2.81 kg
', N'25 x 357.2 x 272 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (9, 9, N'11.6 inch, 1366 x 768 Pixels, TN, 60 Hz, 250 nits, LED Backlit
', N'Intel, Celeron, N4020
', N'4 GB, LPDDR4, 2400 MHz
', N'eMMC 64 GB
', N'Intel UHD Graphics 600
', N'1.21 kg
', N'290 x 204.7 x 19.9 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (10, 10, N'14.2 inch, 3024 x 1964 Pixels

', N'Apple, M1 Pro

', N'32 GB

', N'SSD 512 GB

', N'Apple M1

', N'1.604 kg
', N'324.2 x 215.6 x 19.89 ~ 19.90 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (11, 11, N'13.3 inch, 2560 x 1600 Pixels, IPS, IPS LCD LED Backlit, True Tone
', N'Apple, M1
', N'16 GB, LPDDR4
', N'SSD 512 GB
', N'Apple M1 GPU 8 nhân
', N'1.4 kg
', N'304.1 x 212.4 x 15.6 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (12, 12, N'15.6 inch, 1920 x 1080 Pixels, IPS, 60 Hz, 250 nits, LED Backlit
', N'AMD, Ryzen 5, 5500U
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'AMD Radeon Graphics
', N'1.6 kg
', N'324.2 x 215.6 x 19.89 ~ 19.90 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (13, 17, N'11.6 inch, 1366 x 768 Pixels, TN, 60 Hz, 250 nits, LED Backlit
', N'AMD, Ryzen 5, 5500U
', N'8 GB, DDR4, 3200 MHz
', N'SSD 512 GB
', N'AMD Radeon Graphics
', N'1.6 kg
', N'324.2 x 215.6 x 19.89 ~ 19.90 mm
')
INSERT [dbo].[Laptop_Details] ([id], [pid], [manhinh], [cpu], [ram], [ocung], [dohoa], [khoiluong], [kichthuoc]) VALUES (14, 18, N'11.6 inch, 1366 x 768 Pixels, TN, 60 Hz, 250 nits, LED Backlit
', N'Intel, Celeron, N4020
', N'4 GB, LPDDR4, 2400 MHz
', N'eMMC 64 GB
', N'Intel UHD Graphics 600
', N'1.21 kg
', N'290 x 204.7 x 19.9 mm
')
SET IDENTITY_INSERT [dbo].[Laptop_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [quantity]) VALUES (2, 1, 2, 120, 2)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [quantity]) VALUES (3, 1, 3, 130, 1)
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [date], [aid], [totalmoney]) VALUES (1, CAST(N'2022-06-03' AS Date), 3, 370)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (1, N'Asus Nitro Gaming', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/12/15/637751569796016673_acer-nitro-gaming-an515-45-den-dd.jpg', 200.0000, N'laptop', N'Acer TravelMate B3 được chế tác từ chất liệu nhựa cứng cáp, trọng lượng 1.4 kg và độ dày 20.99 mm, lúc cầm mình cảm thấy chiếc máy sẽ hơi nặng một xíu nhưng bù lại rất chắc tay, cứng cáp và không quá cồng kềnh.

', 3, 1, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (2, N'Asus TUF Gaming', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/21/637678404165582920_asus-zenbook-duo-ux482-xanh-dd.jpg', 200.0000, N'laptop', N'Winter Men''s Snow Boots Plus Velvet Cotton Shoes Men''s Shoes Martin Cotton Boots Warm Shoes
', 3, 6, 5, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (3, N'Dell Gaming Alienware', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/3/7/637822697106524805_dell-gaming-alienware-m15-r6-den-dd.jpg', 130.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 7, 9, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (4, N'Lenovo 100e Gen 2', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/11/30/637738603461090929_lenovo-100e-gen-2-n4020-win-10-pro-dd.jpg', 140.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 4, 1, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (5, N'MacBook Pro 14', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/20/637703173013037856_macbook-pro-14-2021-xam-dd.jpg', 150.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 2, 6, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (6, N'Laptop Dell XPS 13', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/3/22/637520284988683886_dell-xps-13-9310-bac-dd-evo.jpg', 160.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 7, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (7, N'Asus Zenbook Duo', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/21/637678404165582920_asus-zenbook-duo-ux482-xanh-dd.jpg', 170.0000, N'laptop', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 3, 14, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (8, N'Laptop Asus Aspire', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/11/18/637728596076020587_acer-aspire-gaming-a715-42g-r1sb-r5-5500u-den-dd.jpg', 150.0000, N'laptop', N'New Men''s Running Shoes Comfortable Sports Shoes Men Athletic Outdoor Cushioning Sneakers for Walking&Jogging (EUR Size 39-48)', 3, 15, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (9, N'Lenovo Ideapad Slim 3', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/4/21/637861584460182816_lenovo-ideapad-3-14itl6-vang-dd-1.jpg', 180.0000, N'laptop', N'Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-47 3 Colors
', 4, 14, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (10, N'Dell Inspiron N3510', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/21/637704096245522041_dell-inspiron-n3510-black-dd.jpg', 180.0000, N'laptop', N'Winter Men''s Snow Boots Plus Velvet Cotton Shoes Men''s Shoes Martin Cotton Boots Warm Shoes
', 1, 15, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (11, N'MacBook Pro 16', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/10/20/637703174146015116_macbook-pro-16-2021-xam-dd.jpg', 150.0000, N'laptop', N'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48
', 2, 17, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (12, N'Laptop Dell Gaming G15', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/12/2/637740490696341842_dell-gaming-g15-5511-xam-dd.jpg', 165.0000, N'laptop', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers
', 1, 19, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (13, N'Tai nghe HyperX Cloud Stinger', N'https://images.fpt.shop/unsafe/fit-in/200x200/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2021/11/10/637721638521972942_anhdaidien-00779689.jpg', 200.0000, N'tai nghe', N'Với mức giá rất đáng cân nhắc khi đong đếm về chất lượng/giá cả so với các dòng tai nghe khác, HyperX Cloud Stinger chắc chắn sẽ là một trong những tai nghe gaming nổi bật trong phân khúc Mid-end.', 7, 18, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (14, N' tai có mic JBL QUANTUM50BLKAS', N'https://images.fpt.shop/unsafe/fit-in/200x200/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2021/10/29/637711178012905930_55687_tai_nghe_gaming_jbl_quantum_50_trang_0002_3.jpg', 200.0000, N'tai nghe', N'Được đảm bảo bởi thương hiệu sản xuất thiết bị âm thanh lừng danh trên thị trường - JBL, mẫu tai nghe Quantum 50 ghi điểm nhờ thiết kế đầy vẻ năng động trẻ trung, đồng thời sở hữu chất âm ấn tượng với driver 8.6mm. Sự hỗ trợ của sản phẩm sẽ giúp cho mọi tác vụ từ giải trí đến học tập và làm việc trở nên trọn vẹn hơn nhiều.', 7, 1, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (15, N'Chuột không dây Logitech M221', N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2020/11/25/637418984502900576_M221.jpg', 100.0000, N'chuot', N'Nhằm để giảm thiểu những sự phiền toái và giới hạn khoảng cách do chuột máy tính có dây thì chuột không dây Logitech M221 được ra đời. Với công nghệ không dây 2.4GHz, chuột Logitech M221 cho phép người dùng kết nối xa lên đến 10m.', 5, 6, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (16, N'Chuột có dây Rapoo N200 ', N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/https://fptshop.com.vn/Uploads/Originals/2018/11/7/636772096317963039_chuot-co-day-rapoo-n200-1o.png', 120.0000, N'chuot', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', 5, 7, 10, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (17, N'Modern 15 A5M ', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/3/18/637832262308845531_masstel-e140-celeron-n4120-xam-dd.jpg', 100.0000, N'laptop', N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords
', 3, 1, 10, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [soluong], [kind]) VALUES (18, N'MacBook Pro 13', N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/11/13/637408530311831907_mbp-2020-m1-gray-dd-1.png', 120.0000, N'laptop', N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)
', 2, 7, 10, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
ALTER TABLE [dbo].[Laptop_Details]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([aid])
REFERENCES [dbo].[Account] ([id])
GO

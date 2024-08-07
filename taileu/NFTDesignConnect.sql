USE [NFTDesignConnect]
GO
/****** Object:  Table [dbo].[category]    Script Date: 10/07/2024 3:57:03 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[favorites]    Script Date: 10/07/2024 3:57:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favorites](
	[favorite_id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime2](6) NULL,
	[nft_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[favorite_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nfts]    Script Date: 10/07/2024 3:57:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nfts](
	[nft_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[created_at] [date] NULL,
	[designer_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[price] [numeric](38, 2) NULL,
	[specifications_id] [int] NOT NULL,
	[style_id] [int] NOT NULL,
	[images] [varchar](255) NULL,
	[description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[nft_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 10/07/2024 3:57:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [varchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[nft_id] [int] NOT NULL,
	[rating] [int] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specifications]    Script Date: 10/07/2024 3:57:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specifications](
	[specifications_id] [int] IDENTITY(1,1) NOT NULL,
	[area] [float] NULL,
	[floors] [int] NOT NULL,
	[frontage] [float] NULL,
	[length] [float] NULL,
	[bedrooms] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[specifications_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[style]    Script Date: 10/07/2024 3:57:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[style](
	[style_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[style_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transactions]    Script Date: 10/07/2024 3:57:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transactions](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[nft_id] [int] NOT NULL,
	[price] [numeric](38, 2) NULL,
	[transaction_date] [datetime2](6) NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 10/07/2024 3:57:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[avatar] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[facebook] [varchar](255) NULL,
	[fullname] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[role] [varchar](255) NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wallet]    Script Date: 10/07/2024 3:57:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wallet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[public_key] [varchar](255) NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [name]) VALUES (1, N'Nhà ? ph?')
INSERT [dbo].[category] ([category_id], [name]) VALUES (2, N'Nhà ? ngo?i thành')
INSERT [dbo].[category] ([category_id], [name]) VALUES (3, N'Bi?t th?')
INSERT [dbo].[category] ([category_id], [name]) VALUES (4, N'Khách s?n')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[nfts] ON 

INSERT [dbo].[nfts] ([nft_id], [category_id], [created_at], [designer_id], [name], [price], [specifications_id], [style_id], [images], [description]) VALUES (7, 3, CAST(N'2024-07-07' AS Date), 2, N'Bi?t th? 2 t?ng 11x8m 2 phòng ng?', CAST(6000000.00 AS Numeric(38, 2)), 4, 2, N'nb2.jpg', N'Ti?n')
INSERT [dbo].[nfts] ([nft_id], [category_id], [created_at], [designer_id], [name], [price], [specifications_id], [style_id], [images], [description]) VALUES (10, 1, CAST(N'2024-07-09' AS Date), 2, N'M?u nhà ph? 2 t?ng 7x23m 3 phòng ng?', CAST(5000000.00 AS Numeric(38, 2)), 5, 2, N'shop3.png', N'M?u nhà ph? 3 phòng ng? phong cách hi?n d?i')
SET IDENTITY_INSERT [dbo].[nfts] OFF
GO
SET IDENTITY_INSERT [dbo].[specifications] ON 

INSERT [dbo].[specifications] ([specifications_id], [area], [floors], [frontage], [length], [bedrooms]) VALUES (4, 16, 2, 6, 10, 3)
INSERT [dbo].[specifications] ([specifications_id], [area], [floors], [frontage], [length], [bedrooms]) VALUES (5, 203, 2, 7, 23, 3)
SET IDENTITY_INSERT [dbo].[specifications] OFF
GO
SET IDENTITY_INSERT [dbo].[style] ON 

INSERT [dbo].[style] ([style_id], [name]) VALUES (1, N'C? di?n')
INSERT [dbo].[style] ([style_id], [name]) VALUES (2, N'Hi?n d?i')
INSERT [dbo].[style] ([style_id], [name]) VALUES (3, N'Pháp')
INSERT [dbo].[style] ([style_id], [name]) VALUES (4, N'Anh')
INSERT [dbo].[style] ([style_id], [name]) VALUES (5, N'Nh?t B?n')
SET IDENTITY_INSERT [dbo].[style] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [avatar], [description], [email], [facebook], [fullname], [password], [phone], [role], [username]) VALUES (1, NULL, NULL, NULL, NULL, N'User', N'123', N'0976745901', N'USER', N'user')
INSERT [dbo].[users] ([user_id], [avatar], [description], [email], [facebook], [fullname], [password], [phone], [role], [username]) VALUES (2, N'portrait-young-redhead-bearded-male-wears-white-t-shirt-keeps-his-eyes-closed-smiling-feels-happy-yellow.jpg', N'Chào', N'thainhattien3011@gmail.com', N'https://www.facebook.com/thainhattien3011', N'Thái Nh?t Ti?n', N'3011', N'0976645901', N'DESIGN', N'tien')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET IDENTITY_INSERT [dbo].[wallet] ON 

INSERT [dbo].[wallet] ([id], [public_key], [user_id]) VALUES (8, N'B3bCCovDVva3eqg2hg75aNwwkwhgQV3E2ehWcjxBtxAG', 2)
INSERT [dbo].[wallet] ([id], [public_key], [user_id]) VALUES (10, N'B3bCCovDVva3eqg2hg75aNwwkwhgQV3E2ehWcjxBtxAG', 2)
SET IDENTITY_INSERT [dbo].[wallet] OFF
GO
ALTER TABLE [dbo].[favorites]  WITH CHECK ADD  CONSTRAINT [FK7kkkux1k4c7prvs2hf0f00umc] FOREIGN KEY([nft_id])
REFERENCES [dbo].[nfts] ([nft_id])
GO
ALTER TABLE [dbo].[favorites] CHECK CONSTRAINT [FK7kkkux1k4c7prvs2hf0f00umc]
GO
ALTER TABLE [dbo].[favorites]  WITH CHECK ADD  CONSTRAINT [FKk7du8b8ewipawnnpg76d55fus] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[favorites] CHECK CONSTRAINT [FKk7du8b8ewipawnnpg76d55fus]
GO
ALTER TABLE [dbo].[nfts]  WITH CHECK ADD  CONSTRAINT [FKfbjuyl0jq94m8aspjf4ep5bt0] FOREIGN KEY([designer_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[nfts] CHECK CONSTRAINT [FKfbjuyl0jq94m8aspjf4ep5bt0]
GO
ALTER TABLE [dbo].[nfts]  WITH CHECK ADD  CONSTRAINT [FKfex5cfhf3nck6aio7bliuana8] FOREIGN KEY([style_id])
REFERENCES [dbo].[style] ([style_id])
GO
ALTER TABLE [dbo].[nfts] CHECK CONSTRAINT [FKfex5cfhf3nck6aio7bliuana8]
GO
ALTER TABLE [dbo].[nfts]  WITH CHECK ADD  CONSTRAINT [FKh3xwr2xk1u0vh9e3jcm44eu2x] FOREIGN KEY([specifications_id])
REFERENCES [dbo].[specifications] ([specifications_id])
GO
ALTER TABLE [dbo].[nfts] CHECK CONSTRAINT [FKh3xwr2xk1u0vh9e3jcm44eu2x]
GO
ALTER TABLE [dbo].[nfts]  WITH CHECK ADD  CONSTRAINT [FKnp6mxx87py9l9em4yu01xtror] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[nfts] CHECK CONSTRAINT [FKnp6mxx87py9l9em4yu01xtror]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FKcgy7qjc1r99dp117y9en6lxye] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FKcgy7qjc1r99dp117y9en6lxye]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FKfde532g6b07wmgo3gtlp3mi32] FOREIGN KEY([nft_id])
REFERENCES [dbo].[nfts] ([nft_id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FKfde532g6b07wmgo3gtlp3mi32]
GO
ALTER TABLE [dbo].[transactions]  WITH CHECK ADD  CONSTRAINT [FKfwsndjoxobti2a03okcbxcgqt] FOREIGN KEY([nft_id])
REFERENCES [dbo].[nfts] ([nft_id])
GO
ALTER TABLE [dbo].[transactions] CHECK CONSTRAINT [FKfwsndjoxobti2a03okcbxcgqt]
GO
ALTER TABLE [dbo].[transactions]  WITH CHECK ADD  CONSTRAINT [FKqwv7rmvc8va8rep7piikrojds] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[transactions] CHECK CONSTRAINT [FKqwv7rmvc8va8rep7piikrojds]
GO
ALTER TABLE [dbo].[wallet]  WITH CHECK ADD  CONSTRAINT [FKgbusavqq0bdaodex4ee6v0811] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[wallet] CHECK CONSTRAINT [FKgbusavqq0bdaodex4ee6v0811]
GO

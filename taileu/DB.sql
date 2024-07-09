USE [NFTDesignConnect]
GO
/****** Object:  Table [dbo].[category]    Script Date: 07/07/2024 7:03:54 CH ******/
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
/****** Object:  Table [dbo].[favorites]    Script Date: 07/07/2024 7:03:54 CH ******/
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
/****** Object:  Table [dbo].[nfts]    Script Date: 07/07/2024 7:03:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nfts](
	[nft_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[created_at] [datetime2](6) NULL,
	[designer_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[price] [numeric](38, 2) NULL,
	[specifications_id] [int] NOT NULL,
	[style_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nft_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 07/07/2024 7:03:54 CH ******/
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
/****** Object:  Table [dbo].[specifications]    Script Date: 07/07/2024 7:03:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specifications](
	[specifications_id] [int] IDENTITY(1,1) NOT NULL,
	[area] [numeric](38, 2) NULL,
	[floors] [int] NOT NULL,
	[frontage] [numeric](38, 2) NULL,
	[length] [numeric](38, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[specifications_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[style]    Script Date: 07/07/2024 7:03:54 CH ******/
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
/****** Object:  Table [dbo].[transactions]    Script Date: 07/07/2024 7:03:54 CH ******/
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
/****** Object:  Table [dbo].[users]    Script Date: 07/07/2024 7:03:54 CH ******/
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
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [avatar], [description], [email], [facebook], [fullname], [password], [phone], [role], [username]) VALUES (1, NULL, NULL, NULL, NULL, N'User', N'123', N'0976745901', N'USER', N'user')
INSERT [dbo].[users] ([user_id], [avatar], [description], [email], [facebook], [fullname], [password], [phone], [role], [username]) VALUES (2, N'portrait-young-redhead-bearded-male-wears-white-t-shirt-keeps-his-eyes-closed-smiling-feels-happy-yellow.jpg', N'Chào', N'thainhattien3011@gmail.com', N'https://www.facebook.com/thainhattien3011', N'Thái Nh?t Ti?n', N'3011', N'0976645901', N'DESIGN', N'tien')
SET IDENTITY_INSERT [dbo].[users] OFF
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

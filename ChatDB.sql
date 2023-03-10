USE [Chat_db1]
GO
/****** Object:  Table [dbo].[ChatMessage]    Script Date: 10.03.2023 18:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatMessage](
	[Id_ChatMessage] [int] NOT NULL,
	[Id_Employee] [int] NOT NULL,
	[Id_Chatroom] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Message] [text] NULL,
 CONSTRAINT [PK_ChatMessage] PRIMARY KEY CLUSTERED 
(
	[Id_ChatMessage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chatroom]    Script Date: 10.03.2023 18:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chatroom](
	[Id_Chatroom] [int] NOT NULL,
	[Topic] [varchar](50) NULL,
 CONSTRAINT [PK_Chatroom] PRIMARY KEY CLUSTERED 
(
	[Id_Chatroom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10.03.2023 18:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id_Department] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id_Department] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10.03.2023 18:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id_Employee] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Id_Department] [int] NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id_Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupChat]    Script Date: 10.03.2023 18:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupChat](
	[Id_GroupChat] [int] NOT NULL,
	[Id_Employee] [int] NULL,
	[Id_Chatroom] [int] NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_GroupChat] PRIMARY KEY CLUSTERED 
(
	[Id_GroupChat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (1, 1, 1, CAST(N'2003-04-20T00:00:00.000' AS DateTime), N'Привет')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (2, 2, 1, CAST(N'2003-04-20T00:00:01.000' AS DateTime), N'Привет друг!')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (3, 1, 1, CAST(N'2003-04-20T00:00:02.000' AS DateTime), N'Как дела?')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (4, 2, 1, CAST(N'2003-04-20T00:00:03.000' AS DateTime), N'Нормально, а как у тебя')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (5, 1, 1, CAST(N'2003-04-20T00:00:04.000' AS DateTime), N'У меня хорошо, жду зарплату')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (6, 2, 1, CAST(N'2003-04-20T00:00:05.000' AS DateTime), N'Ого, надеюсь у тебя она будет большая')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (7, 3, 2, CAST(N'2003-04-20T00:00:00.000' AS DateTime), N'Кис кис, я котик ты котик')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (8, 4, 2, CAST(N'2003-04-20T00:00:01.000' AS DateTime), N'А твои поцелуи Почти как легкий н*ркотик')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (9, 3, 2, CAST(N'2003-04-20T00:00:02.000' AS DateTime), N'Кис кис, кис кис Сегодня не приеду')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (10, 4, 2, CAST(N'2003-04-20T00:00:03.000' AS DateTime), N'Я сильно обижусь Но остыну к обеду')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (11, 3, 2, CAST(N'2003-04-20T00:00:04.000' AS DateTime), N'Ты хейтер котиков Но зовешь меня кошкой')
INSERT [dbo].[ChatMessage] ([Id_ChatMessage], [Id_Employee], [Id_Chatroom], [Date], [Message]) VALUES (12, 4, 2, CAST(N'2003-04-20T00:00:05.000' AS DateTime), N'Ты сильно против н*ркотиков Я с подвернутой ножкой')
GO
INSERT [dbo].[Chatroom] ([Id_Chatroom], [Topic]) VALUES (1, N'Математическое обсуждение')
INSERT [dbo].[Chatroom] ([Id_Chatroom], [Topic]) VALUES (2, N'Классическая литература')
INSERT [dbo].[Chatroom] ([Id_Chatroom], [Topic]) VALUES (3, N'Бизнес')
INSERT [dbo].[Chatroom] ([Id_Chatroom], [Topic]) VALUES (4, N'Маркетинг')
INSERT [dbo].[Chatroom] ([Id_Chatroom], [Topic]) VALUES (5, N'Игра в города')
INSERT [dbo].[Chatroom] ([Id_Chatroom], [Topic]) VALUES (6, N'Кружок программистов')
GO
INSERT [dbo].[Department] ([Id_Department], [Name]) VALUES (1, N'Математическое')
INSERT [dbo].[Department] ([Id_Department], [Name]) VALUES (2, N'Литературное')
INSERT [dbo].[Department] ([Id_Department], [Name]) VALUES (3, N'Устное')
INSERT [dbo].[Department] ([Id_Department], [Name]) VALUES (4, N'Письменное')
GO
INSERT [dbo].[Employee] ([Id_Employee], [Name], [Id_Department], [UserName], [Password]) VALUES (1, N'Петр', 1, N'111', N'111')
INSERT [dbo].[Employee] ([Id_Employee], [Name], [Id_Department], [UserName], [Password]) VALUES (2, N'Иван', 2, N'222', N'222')
INSERT [dbo].[Employee] ([Id_Employee], [Name], [Id_Department], [UserName], [Password]) VALUES (3, N'Вася', 3, N'333', N'333')
INSERT [dbo].[Employee] ([Id_Employee], [Name], [Id_Department], [UserName], [Password]) VALUES (4, N'Галина', 4, N'444', N'444')
INSERT [dbo].[Employee] ([Id_Employee], [Name], [Id_Department], [UserName], [Password]) VALUES (5, N'Василиса', 4, N'zxc', N'zxc')
GO
INSERT [dbo].[GroupChat] ([Id_GroupChat], [Id_Employee], [Id_Chatroom], [Count]) VALUES (1, 1, 1, 2)
INSERT [dbo].[GroupChat] ([Id_GroupChat], [Id_Employee], [Id_Chatroom], [Count]) VALUES (2, 1, 2, 3)
INSERT [dbo].[GroupChat] ([Id_GroupChat], [Id_Employee], [Id_Chatroom], [Count]) VALUES (3, 2, 3, 4)
GO
ALTER TABLE [dbo].[ChatMessage]  WITH CHECK ADD  CONSTRAINT [FK_ChatMessage_Chatroom] FOREIGN KEY([Id_Chatroom])
REFERENCES [dbo].[Chatroom] ([Id_Chatroom])
GO
ALTER TABLE [dbo].[ChatMessage] CHECK CONSTRAINT [FK_ChatMessage_Chatroom]
GO
ALTER TABLE [dbo].[ChatMessage]  WITH CHECK ADD  CONSTRAINT [FK_ChatMessage_Employee] FOREIGN KEY([Id_Employee])
REFERENCES [dbo].[Employee] ([Id_Employee])
GO
ALTER TABLE [dbo].[ChatMessage] CHECK CONSTRAINT [FK_ChatMessage_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([Id_Department])
REFERENCES [dbo].[Department] ([Id_Department])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[GroupChat]  WITH CHECK ADD  CONSTRAINT [FK_GroupChat_Chatroom] FOREIGN KEY([Id_Chatroom])
REFERENCES [dbo].[Chatroom] ([Id_Chatroom])
GO
ALTER TABLE [dbo].[GroupChat] CHECK CONSTRAINT [FK_GroupChat_Chatroom]
GO
ALTER TABLE [dbo].[GroupChat]  WITH CHECK ADD  CONSTRAINT [FK_GroupChat_Employee] FOREIGN KEY([Id_Employee])
REFERENCES [dbo].[Employee] ([Id_Employee])
GO
ALTER TABLE [dbo].[GroupChat] CHECK CONSTRAINT [FK_GroupChat_Employee]
GO

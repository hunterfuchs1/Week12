CREATE DATABASE SchoolOfColleges
GO

USE [SchoolOfColleges]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 3/30/2022 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[courseID] [varchar](10) NOT NULL,
	[courseName] [varchar](30) NOT NULL,
	[courseStartDate] [date] NULL,
	[courseEndDate] [date] NULL,
	[instructorID] [varchar](10) NULL,
	[creditID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[credits]    Script Date: 3/30/2022 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[credits](
	[creditID] [varchar](10) NOT NULL,
	[creditValue] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[creditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instructors]    Script Date: 3/30/2022 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructors](
	[instructorID] [varchar](10) NOT NULL,
	[instructorFirstName] [varchar](20) NULL,
	[instructorLastName] [varchar](20) NULL,
	[instructorEmail] [varchar](30) NULL,
	[instructorSalary] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[instructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instructorsCourses]    Script Date: 3/30/2022 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instructorsCourses](
	[instructorID] [varchar](10) NOT NULL,
	[courseID] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 3/30/2022 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[studentID] [varchar](10) NOT NULL,
	[studentFirstName] [varchar](20) NULL,
	[studentLastName] [varchar](20) NULL,
	[studentEmail] [varchar](30) NULL,
	[studentPhoneNumber] [varchar](14) NULL,
 CONSTRAINT [PK__students__4D11D65CBAB96A2A] PRIMARY KEY CLUSTERED 
(
	[studentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studentsCourses]    Script Date: 3/30/2022 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studentsCourses](
	[studentID] [varchar](10) NOT NULL,
	[courseID] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[courses] ([courseID], [courseName], [courseStartDate], [courseEndDate], [instructorID], [creditID]) VALUES (N'1228', N'C# Programming', CAST(N'2023-01-10' AS Date), CAST(N'2023-05-13' AS Date), N'3', N'C003')
INSERT [dbo].[courses] ([courseID], [courseName], [courseStartDate], [courseEndDate], [instructorID], [creditID]) VALUES (N'1236
', N'Java Programming', CAST(N'2023-01-10' AS Date), CAST(N'2023-05-13' AS Date), N'5', N'C004')
INSERT [dbo].[courses] ([courseID], [courseName], [courseStartDate], [courseEndDate], [instructorID], [creditID]) VALUES (N'1300', N'College Algebra', CAST(N'2023-08-23' AS Date), CAST(N'2023-12-23' AS Date), N'1', N'C003')
INSERT [dbo].[courses] ([courseID], [courseName], [courseStartDate], [courseEndDate], [instructorID], [creditID]) VALUES (N'1351', N'Intro Statistics', CAST(N'2023-01-10' AS Date), CAST(N'2023-05-13' AS Date), N'2', N'C003')
INSERT [dbo].[courses] ([courseID], [courseName], [courseStartDate], [courseEndDate], [instructorID], [creditID]) VALUES (N'2204
', N'HTML/CSS Programming', CAST(N'2023-08-22' AS Date), CAST(N'2023-12-22' AS Date), N'4', N'C004')
GO
INSERT [dbo].[credits] ([creditID], [creditValue]) VALUES (N'C001', 1)
INSERT [dbo].[credits] ([creditID], [creditValue]) VALUES (N'C002', 2)
INSERT [dbo].[credits] ([creditID], [creditValue]) VALUES (N'C003', 3)
INSERT [dbo].[credits] ([creditID], [creditValue]) VALUES (N'C004', 4)
GO
INSERT [dbo].[instructors] ([instructorID], [instructorFirstName], [instructorLastName], [instructorEmail], [instructorSalary]) VALUES (N'1', N'John', N'Jackson', N'johnjackson@gmail.com', CAST(58000 AS Decimal(18, 0)))
INSERT [dbo].[instructors] ([instructorID], [instructorFirstName], [instructorLastName], [instructorEmail], [instructorSalary]) VALUES (N'2', N'David', N'Johnson', N'davidjohnson@gmail.com', CAST(61000 AS Decimal(18, 0)))
INSERT [dbo].[instructors] ([instructorID], [instructorFirstName], [instructorLastName], [instructorEmail], [instructorSalary]) VALUES (N'3', N'Chris', N'Harper', N'chrisharper@gmail.com', CAST(66000 AS Decimal(18, 0)))
INSERT [dbo].[instructors] ([instructorID], [instructorFirstName], [instructorLastName], [instructorEmail], [instructorSalary]) VALUES (N'4', N'James', N'Hoff', N'jameshoff@gmail.com', CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[instructors] ([instructorID], [instructorFirstName], [instructorLastName], [instructorEmail], [instructorSalary]) VALUES (N'5', N'Tony', N'Warner', N'tonywarner@gmail.com', CAST(62000 AS Decimal(18, 0)))
GO
INSERT [dbo].[instructorsCourses] ([instructorID], [courseID]) VALUES (N'1', N'1300')
INSERT [dbo].[instructorsCourses] ([instructorID], [courseID]) VALUES (N'2', N'1351')
INSERT [dbo].[instructorsCourses] ([instructorID], [courseID]) VALUES (N'3', N'1228')
INSERT [dbo].[instructorsCourses] ([instructorID], [courseID]) VALUES (N'4', N'2204
')
INSERT [dbo].[instructorsCourses] ([instructorID], [courseID]) VALUES (N'5', N'1236
')
GO
INSERT [dbo].[students] ([studentID], [studentFirstName], [studentLastName], [studentEmail], [studentPhoneNumber]) VALUES (N'S001', N'Ricky', N'Bobson', N'rickybobson@gmail.com', N'320-123-4567')
INSERT [dbo].[students] ([studentID], [studentFirstName], [studentLastName], [studentEmail], [studentPhoneNumber]) VALUES (N'S002', N'Bethony', N'Hill', N'bethonyhill@gmail.com', N'320-765-4321')
INSERT [dbo].[students] ([studentID], [studentFirstName], [studentLastName], [studentEmail], [studentPhoneNumber]) VALUES (N'S003', N'Jose', N'Garcia', N'josegarcia@gmail.com', N'320-123-1234')
INSERT [dbo].[students] ([studentID], [studentFirstName], [studentLastName], [studentEmail], [studentPhoneNumber]) VALUES (N'S004', N'Roy', N'Stiles', N'roystiles@gmail.com', N'320-989-9898')
INSERT [dbo].[students] ([studentID], [studentFirstName], [studentLastName], [studentEmail], [studentPhoneNumber]) VALUES (N'S005', N'Brett', N'Thomas', N'brettthomas@gmail.com', N'320-543-1935')
INSERT [dbo].[students] ([studentID], [studentFirstName], [studentLastName], [studentEmail], [studentPhoneNumber]) VALUES (N'S006', N'Robert', N'Tyson', N'roberttyson@gmail.com', N'320-234-2345')
INSERT [dbo].[students] ([studentID], [studentFirstName], [studentLastName], [studentEmail], [studentPhoneNumber]) VALUES (N'S007', N'Missy', N'Johnes', N'missyjones@gmail.com', N'320-623-9284')
GO
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S001', N'1228')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S001', N'1236
')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S002', N'1300')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S002', N'2204
')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S003', N'1351')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S003', N'1236
')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S003', N'1228')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S004', N'1300')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S004', N'2204
')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S005', N'1236
')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S005', N'1351')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S006', N'1228')
INSERT [dbo].[studentsCourses] ([studentID], [courseID]) VALUES (N'S006', N'1351')
GO

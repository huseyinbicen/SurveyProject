USE [SurveyDB]
GO

/****** Object:  Table [dbo].[User]    Script Date: 05/01/2019 02:21:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[eMail] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[NameSurname] [nvarchar](100) NOT NULL,
	[Gender] [bit] NULL,
	[DateOfJoin] [datetime] NOT NULL,
	[LastLogin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



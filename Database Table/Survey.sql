USE [SurveyDB]
GO

/****** Object:  Table [dbo].[Survey]    Script Date: 05/01/2019 02:21:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Survey](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Op1] [nvarchar](50) NOT NULL,
	[Op2] [nvarchar](50) NOT NULL,
	[DateOFCreat] [datetime] NULL,
	[LifeTime] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[KeyOfSurvey] [nvarchar](10) NOT NULL,
	[User_Id] [int] NOT NULL,
 CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO



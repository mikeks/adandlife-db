CREATE TABLE [dbo].[SiteBanner] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [Name]             NVARCHAR (100) NOT NULL,
    [ImageFilename]    VARCHAR (80)   NOT NULL,
    [PositionRight]    TINYINT        CONSTRAINT [DF_SiteBanner_PositionRight] DEFAULT ((0)) NOT NULL,
    [PositionHomepage] TINYINT        CONSTRAINT [DF_SiteBanner_PositionHomepage] DEFAULT ((0)) NOT NULL,
    [Price]            MONEY          NOT NULL,
    [EndDate]          DATE           NOT NULL,
    [Created]          DATETIME       CONSTRAINT [DF_SiteBanner_Created] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_SiteBanner] PRIMARY KEY CLUSTERED ([Id] ASC)
);


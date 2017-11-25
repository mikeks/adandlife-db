CREATE TABLE [dbo].[WebsiteArticle] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (500) NOT NULL,
    [Txt]  NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_WebsiteArticle] PRIMARY KEY CLUSTERED ([Id] ASC)
);


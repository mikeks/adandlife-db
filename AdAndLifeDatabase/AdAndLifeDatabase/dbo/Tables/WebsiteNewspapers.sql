CREATE TABLE [dbo].[WebsiteNewspapers] (
    [NewspaperType] TINYINT       NOT NULL,
    [Year]          INT           NOT NULL,
    [Number]        TINYINT       NOT NULL,
    [Url]           VARCHAR (500) NOT NULL,
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_WebsiteNewspapers] PRIMARY KEY CLUSTERED ([NewspaperType] ASC, [Year] ASC, [Number] ASC)
);


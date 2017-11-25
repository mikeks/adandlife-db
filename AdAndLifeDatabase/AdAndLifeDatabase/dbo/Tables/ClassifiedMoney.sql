CREATE TABLE [dbo].[ClassifiedMoney] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [PhilaId]          INT            NULL,
    [BaltimoreId]      INT            NULL,
    [AdText]           NVARCHAR (MAX) NOT NULL,
    [Price]            MONEY          NOT NULL,
    [AdCreated]        DATETIME       NOT NULL,
    [AdExpirationDate] DATE           NULL,
    CONSTRAINT [PK_ClassifiedMoney] PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [dbo].[MikeMoney] (
    [Id]      INT   IDENTITY (1, 1) NOT NULL,
    [Created] DATE  NOT NULL,
    [Amount]  MONEY NOT NULL,
    CONSTRAINT [PK_MikeMoney] PRIMARY KEY CLUSTERED ([Id] ASC)
);


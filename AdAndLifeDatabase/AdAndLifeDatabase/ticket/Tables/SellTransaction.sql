CREATE TABLE [ticket].[SellTransaction] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [EventId]         INT            NOT NULL,
    [Name]            NVARCHAR (100) NOT NULL,
    [Email]           VARCHAR (250)  NOT NULL,
    [UserRefferer]    VARCHAR (70)   NULL,
    [TransactionCode] VARCHAR (50)   NULL,
    [RedeemCode]      VARCHAR (10)   NULL,
    [PurchaseDate]    SMALLDATETIME  NULL,
    [RedeemDateTime]  SMALLDATETIME  NULL,
    [Created]         SMALLDATETIME  CONSTRAINT [DF_SellTransaction_Created] DEFAULT (getdate()) NULL,
    [Subscribe]       BIT            CONSTRAINT [DF_SellTransaction_Subscribe] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Buyer] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SellTransaction_SaleEvent] FOREIGN KEY ([EventId]) REFERENCES [ticket].[SaleEvent] ([Id])
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_SellTransaction]
    ON [ticket].[SellTransaction]([EventId] ASC, [RedeemCode] ASC) WHERE ([RedeemCode] IS NOT NULL);


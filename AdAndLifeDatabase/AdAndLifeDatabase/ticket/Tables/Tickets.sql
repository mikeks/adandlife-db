CREATE TABLE [ticket].[Tickets] (
    [id]            INT           IDENTITY (1, 1) NOT NULL,
    [EventId]       INT           NOT NULL,
    [TicketTypeId]  INT           NOT NULL,
    [Seat]          VARCHAR (7)   NOT NULL,
    [LockedUntil]   SMALLDATETIME NULL,
    [PurchaseDate]  SMALLDATETIME NULL,
    [TransactionId] INT           NULL,
    CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Tickets_ButtonCode] FOREIGN KEY ([TicketTypeId]) REFERENCES [ticket].[TicketType] ([Id]),
    CONSTRAINT [FK_Tickets_Buyer] FOREIGN KEY ([TransactionId]) REFERENCES [ticket].[SellTransaction] ([Id]),
    CONSTRAINT [FK_Tickets_SaleEvent] FOREIGN KEY ([EventId]) REFERENCES [ticket].[SaleEvent] ([Id]) ON DELETE CASCADE
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Tickets]
    ON [ticket].[Tickets]([EventId] ASC, [Seat] ASC);


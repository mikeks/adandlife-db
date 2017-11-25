CREATE TABLE [ticket].[TicketType] (
    [Id]      INT   IDENTITY (1, 1) NOT NULL,
    [EventId] INT   NOT NULL,
    [Price]   MONEY NOT NULL,
    CONSTRAINT [PK_ButtonCode] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ButtonCode_SaleEvent] FOREIGN KEY ([EventId]) REFERENCES [ticket].[SaleEvent] ([Id]) ON DELETE CASCADE
);


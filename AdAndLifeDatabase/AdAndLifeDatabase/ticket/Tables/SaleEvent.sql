CREATE TABLE [ticket].[SaleEvent] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [LocationId]       INT            NULL,
    [Created]          DATETIME       CONSTRAINT [DF_SaleEvent_Created] DEFAULT (getdate()) NOT NULL,
    [EventName]        NVARCHAR (250) NOT NULL,
    [EventDescription] NVARCHAR (MAX) NOT NULL,
    [IsAvaliable]      BIT            CONSTRAINT [DF_SaleEvent_IsAvaliable] DEFAULT ((1)) NOT NULL,
    [UrlName]          VARCHAR (100)  NOT NULL,
    [EventNameEng]     VARCHAR (100)  NOT NULL,
    [EventImage]       VARCHAR (100)  NOT NULL,
    [EventDate]        SMALLDATETIME  NOT NULL,
    [OurShare]         TINYINT        CONSTRAINT [DF_SaleEvent_OurShare] DEFAULT ((10)) NOT NULL,
    CONSTRAINT [PK_SaleEvent] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SaleEvent_EventLocation] FOREIGN KEY ([LocationId]) REFERENCES [ticket].[EventLocation] ([Id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_SaleEvent_UrlName]
    ON [ticket].[SaleEvent]([UrlName] ASC) WHERE ([IsAvaliable]=(1));


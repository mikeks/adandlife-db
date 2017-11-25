CREATE TABLE [ticket].[EventLocation] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [LocationCode] VARCHAR (10)  NOT NULL,
    [Name]         VARCHAR (500) NOT NULL,
    [Address]      VARCHAR (500) NOT NULL,
    CONSTRAINT [PK_EventLocation] PRIMARY KEY CLUSTERED ([Id] ASC)
);


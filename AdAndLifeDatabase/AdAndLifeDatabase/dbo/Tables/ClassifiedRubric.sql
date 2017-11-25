CREATE TABLE [dbo].[ClassifiedRubric] (
    [Id]            INT            NOT NULL,
    [Name]          NVARCHAR (255) NOT NULL,
    [ImageFilename] NVARCHAR (255) NOT NULL,
    [Sort]          TINYINT        NOT NULL,
    CONSTRAINT [PK_ClassifiedRubric] PRIMARY KEY CLUSTERED ([Id] ASC)
);


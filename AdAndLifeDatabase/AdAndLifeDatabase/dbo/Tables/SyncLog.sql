CREATE TABLE [dbo].[SyncLog] (
    [Created] DATETIME CONSTRAINT [DF_SyncLog_Created] DEFAULT (getdate()) NOT NULL
);


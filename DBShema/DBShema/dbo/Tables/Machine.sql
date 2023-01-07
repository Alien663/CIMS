CREATE TABLE [dbo].[Machine] (
    [MID]         INT            IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (32)   NULL,
    [Description] NVARCHAR (512) NULL,
    CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED ([MID] ASC)
);


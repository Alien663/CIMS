CREATE TABLE [dbo].[Member] (
    [MID]         INT             IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (32)    NOT NULL,
    [Domain]      VARCHAR (32)    NOT NULL,
    [isActive]    BIT             NOT NULL,
    [Description] NVARCHAR (1024) NULL,
    CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED ([MID] ASC)
);


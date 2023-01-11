CREATE TABLE [dbo].[RAWData] (
    [RID]          INT            IDENTITY (1, 1) NOT NULL,
    [Domain]       VARCHAR (16)   NULL,
    [BIOSVersion]  VARCHAR (64)   NULL,
    [Manufacturer] VARCHAR (64)   NULL,
    [SystemFamily] VARCHAR (64)   NULL,
    [IPAddress]    VARCHAR (512)  NULL,
    [BIOSName]     VARCHAR (64)   NULL,
    [MachineName]  VARCHAR (64)   NULL,
    [OSType]       VARCHAR (64)   NULL,
    [Users]        NVARCHAR (MAX) NULL,
    [Volume]       NVARCHAR (MAX) NULL,
    [Since]        DATETIME       DEFAULT (getdate()) NULL,
    [UPDDate]      DATETIME       DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_RAWData] PRIMARY KEY CLUSTERED ([RID] ASC)
);




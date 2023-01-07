CREATE TABLE [dbo].[MachineMember] (
    [MID1] INT NOT NULL,
    [MID2] INT NOT NULL,
    CONSTRAINT [PK_MachineMember] PRIMARY KEY CLUSTERED ([MID1] ASC, [MID2] ASC),
    CONSTRAINT [FK_MachineMember_MID1] FOREIGN KEY ([MID1]) REFERENCES [dbo].[Machine] ([MID]),
    CONSTRAINT [FK_MachineMember_MID2] FOREIGN KEY ([MID2]) REFERENCES [dbo].[Member] ([MID])
);


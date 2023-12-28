USE [realestate]
GO

/****** Object: Table [dbo].[Customers] Script Date: 9/30/2023 6:35:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers] (
    [CustomerId]   INT            IDENTITY (1, 1) NOT NULL,
    [CustomerName] NVARCHAR (MAX) NOT NULL,
    [Phone]        NVARCHAR (MAX) NOT NULL,
    [Email]        NVARCHAR (100) NOT NULL,
    [MoveInDate]   DATE           NOT NULL,
    [PropertyId]   INT            NOT NULL
);
INSERT INTO [dbo].[Customers] ([CustomerName], [Phone], [Email], [MoveInDate], [PropertyId])
VALUES
    ('John Doe', '555-123-4567', 'johndoe@example.com', '2023-10-01', 1),
    ('Jane Smith', '555-987-6543', 'janesmith@example.com', '2023-10-02', 2),
    ('Robert Johnson', '555-555-5555', 'robert@example.com', '2023-10-03', 3),
    ('Mary White', '555-888-7777', 'marywhite@example.com', '2023-10-04', 4),
    ('Michael Brown', '555-111-2222', 'michael@example.com', '2023-10-05', 5),
    ('Susan Davis', '555-777-8888', 'susan@example.com', '2023-10-06', 6),
    ('David Lee', '555-444-3333', 'david@example.com', '2023-10-07', 7),
    ('Lisa Miller', '555-999-3333', 'lisa@example.com', '2023-10-08', 8),
    ('William Taylor', '555-666-9999', 'william@example.com', '2023-10-09', 9),
    ('Karen Wilson', '555-222-7777', 'karen@example.com', '2023-10-10', 10);

GO
CREATE NONCLUSTERED INDEX [IX_Customers_PropertyId]
    ON [dbo].[Customers]([PropertyId] ASC);


GO
ALTER TABLE [dbo].[Customers]
    ADD CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerId] ASC);


GO
ALTER TABLE [dbo].[Customers]
    ADD CONSTRAINT [FK_Customers_Properties_PropertyId] FOREIGN KEY ([PropertyId]) REFERENCES [dbo].[Properties] ([PropertyId]) ON DELETE CASCADE;



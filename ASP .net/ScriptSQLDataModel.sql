CREATE TABLE [dbo].[Impiegati]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Cognome] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Livello] INT NOT NULL DEFAULT 5
)
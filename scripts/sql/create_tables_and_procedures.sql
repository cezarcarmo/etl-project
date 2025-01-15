CREATE TABLE SourceTable (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Value INT
);
GO

CREATE TABLE DestinationTable (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50),
    TransformedValue INT
);
GO

CREATE PROCEDURE TransformData
AS
BEGIN
    INSERT INTO DestinationTable (ID, Name, TransformedValue)
    SELECT ID, Name, Value * 10
    FROM SourceTable;
END;
GO


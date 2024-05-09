USE Schedule;

IF OBJECT_ID('contacts', 'U') IS NOT NULL
BEGIN
    DROP TABLE contacts;
END;

CREATE TABLE contacts (
    id INT PRIMARY KEY,
    name NVARCHAR(100),
    phone NVARCHAR(16),
    blocked BIT,
    date DATETIME,
    observations NVARCHAR(MAX)
);
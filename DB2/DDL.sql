CREATE TABLE Customers (
    CustomerID CHAR(10) PRIMARY KEY,
    CustomerName VARCHAR(30),
    Balance DECIMAL(10,2)
);
INSERT INTO Customers VALUES ('C001', 'Juan Perez', 1500.00);
INSERT INTO Customers VALUES ('C002', 'Maria Lopez', 3000.50);
INSERT INTO Customers VALUES ('C003', 'Carlos Ramirez', 2000.75);
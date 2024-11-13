create database banking1;
use banking1;
CREATE TABLE bank (
    Name VARCHAR(50),
    UserName VARCHAR(50) PRIMARY KEY,
    Password VARCHAR(50),
    DateOfBirth DATE,
    Address VARCHAR(100),
    Mobile_Number VARCHAR(15),
    Aadhar_no VARCHAR(12),
    Balance DECIMAL(10, 2)
);
CREATE TABLE transaction (
    Credited DECIMAL(10, 2),
    Debited DECIMAL(10, 2),
    UserName1 VARCHAR(50),
    Date TIMESTAMP,
    FOREIGN KEY (UserName1) REFERENCES bank(UserName) ON DELETE CASCADE
);
show tables;
select * from bank;
select * from transaction;
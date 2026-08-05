-- Create Database
CREATE DATABASE BankManagement;

USE BankManagement;

-- Customer Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50)
);

-- Account Table
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(10,2),
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);

-- Transactions Table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(10,2),
    transaction_date DATE,
    FOREIGN KEY(account_id)
    REFERENCES Accounts(account_id)
);

-- Insert Customers
INSERT INTO Customers(customer_name,email,phone,city)
VALUES
('Balasai','balasai@gmail.com','9876543210','Ongole'),
('Rahul','rahul@gmail.com','9988776655','Hyderabad'),
('Priya','priya@gmail.com','9123456789','Chennai');

-- Insert Accounts
INSERT INTO Accounts(customer_id,account_type,balance)
VALUES
(1,'Savings',50000),
(2,'Current',80000),
(3,'Savings',25000);

-- Insert Transactions
INSERT INTO Transactions(account_id,transaction_type,amount,transaction_date)
VALUES
(1,'Deposit',10000,'2026-08-05'),
(1,'Withdraw',3000,'2026-08-06'),
(2,'Deposit',15000,'2026-08-05'),
(3,'Withdraw',5000,'2026-08-07');
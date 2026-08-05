-- View Customers
SELECT  FROM Customers;

-- View Accounts
SELECT  FROM Accounts;

-- View Transactions
SELECT  FROM Transactions;

-- Find Customer Balance
SELECT
Customers.customer_name,
Accounts.account_type,
Accounts.balance
FROM Customers
JOIN Accounts
ON Customers.customer_id=Accounts.customer_id;

-- Total Balance
SELECT SUM(balance) AS TotalBankBalance
FROM Accounts;

-- Highest Balance
SELECT 
FROM Accounts
ORDER BY balance DESC
LIMIT 1;

-- Count Customers
SELECT COUNT() AS TotalCustomers
FROM Customers;

-- Update Balance
UPDATE Accounts
SET balance=60000
WHERE account_id=1;

-- Delete Transaction
DELETE FROM Transactions
WHERE transaction_id=4;
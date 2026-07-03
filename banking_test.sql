-- 1. INSERT A NEW DEPOSIT TRANSACTION FOR PREETI (ACCOUNT 1001)
INSERT INTO Transactions (transaction_id, account_no, tx_type, amount, tx_date)
VALUES (seq_tx_id.NEXTVAL, 1001, 'DEPOSIT', 5000.00, CURRENT_TIMESTAMP);

-- 2. PERMANENTLY SAVE THE TRANSACTION
COMMIT;

-- 3. FORMAT THE OUTPUT FOR SQL*PLUS
SET PAGESIZE 50;
SET LINESIZE 150;
COLUMN first_name FORMAT A15;
COLUMN account_type FORMAT A15;
COLUMN status FORMAT A10;

-- 4. VERIFY IF THE BALANCE AUTOMATICALLY UPDATED BY JOINING TABLES
SELECT c.first_name, a.account_no, a.account_type, a.balance, a.status
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.account_no = 1001;

/
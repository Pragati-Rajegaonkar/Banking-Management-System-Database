-- ====================================================================
-- MASTER EXECUTION FILE FOR BANKING MANAGEMENT SYSTEM
-- ====================================================================

-- 1. RESET AND CREATE DATABASE STRUCTURE (TABLES & SEQUENCES)
PROMPT >>> Creating Database Structure...
@C:\Users\Pragati\Desktop\banking\banking_ddl.sql

-- 2. CREATE AUTOMATION LOGIC (TRIGGERS)
PROMPT >>> Compiling Automation Triggers...
@C:\Users\Pragati\Desktop\banking\banking_triggers.sql

-- 3. INSERT MOCK DATA FOR CUSTOMERS AND ACCOUNTS
PROMPT >>> Inserting Customer and Account Data...
@C:\Users\Pragati\Desktop\banking\BANKING_DML.SQL

-- 4. INSERT INITIAL TRANSACTIONS (WHICH WILL AUTO-UPDATE BALANCES VIA TRIGGER)
PROMPT >>> Executing Initial Transactions...
@C:\Users\Pragati\Desktop\banking\banking_tx_dml.sql

-- 5. FORMAT AND DISPLAY FINAL REPORT
PROMPT >>> Generating Final Project Report...
SET PAGESIZE 60;
SET LINESIZE 160;
COLUMN first_name FORMAT A12;
COLUMN last_name FORMAT A12;
COLUMN account_type FORMAT A12;
COLUMN status FORMAT A10;
COLUMN tx_type FORMAT A12;

PROMPT ================================================================
PROMPT                   CUSTOMER ACCOUNTS SUMMARY
PROMPT ================================================================
SELECT c.customer_id, c.first_name, c.last_name, a.account_no, a.account_type, a.balance, a.status
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
ORDER BY c.customer_id;

PROMPT ================================================================
PROMPT                     TRANSACTIONS LOG
PROMPT ================================================================
SELECT transaction_id, account_no, tx_type, amount, tx_date
FROM Transactions
ORDER BY transaction_id;

PROMPT >>> Project Executed Successfully! All Components Connected.

/
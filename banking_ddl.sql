-- 1. पुरानी टेबल्स और सीक्वेंसेस को हटाना
DROP TABLE Transactions CASCADE CONSTRAINTS;
DROP TABLE Accounts CASCADE CONSTRAINTS;
DROP TABLE Customers CASCADE CONSTRAINTS;
DROP SEQUENCE seq_cust_id;
DROP SEQUENCE seq_acc_no;
DROP SEQUENCE seq_tx_id;

-- 2. सीक्वेंसेस को बिल्कुल शुरुआत से बनाना
CREATE SEQUENCE seq_cust_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_acc_no START WITH 1001 INCREMENT BY 1;
CREATE SEQUENCE seq_tx_id START WITH 5001 INCREMENT BY 1;

-- 3. Customers Table बनाना
CREATE TABLE Customers (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    phone VARCHAR2(10) UNIQUE,
    email VARCHAR2(100) UNIQUE
);

-- 4. Accounts Table बनाना
CREATE TABLE Accounts (
    account_no NUMBER PRIMARY KEY,
    customer_id NUMBER,
    account_type VARCHAR2(20) CHECK (account_type IN ('SAVING', 'CURRENT')),
    balance NUMBER(12,2) DEFAULT 0.00,
    status VARCHAR2(10) DEFAULT 'ACTIVE' CHECK (status IN ('ACTIVE', 'SUSPENDED')),
    CONSTRAINT fk_cust_id FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- 5. Transactions Table बनाना
CREATE TABLE Transactions (
    transaction_id NUMBER PRIMARY KEY,
    account_no NUMBER,
    tx_type VARCHAR2(20) CHECK (tx_type IN ('DEPOSIT', 'WITHDRAWAL', 'TRANSFER')),
    amount NUMBER(12,2) NOT NULL,
    tx_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_acc_no FOREIGN KEY (account_no) REFERENCES Accounts(account_no)
);
-- 1. ग्राहकों (Customers) का डेटा डालना
INSERT INTO Customers (customer_id, first_name, last_name, phone, email) 
VALUES (seq_cust_id.NEXTVAL, 'preeti', 'rathod', '9889877876', 'preeti@gmail.com');

INSERT INTO Customers (customer_id, first_name, last_name, phone, email) 
VALUES (seq_cust_id.NEXTVAL, 'raju', 'bhosle', '9845347687', 'raju@gmail.com');

INSERT INTO Customers (customer_id, first_name, last_name, phone, email) 
VALUES (seq_cust_id.NEXTVAL, 'sujata', 'mane', '9856435423', 'sujata@gmail.com');

INSERT INTO Customers (customer_id, first_name, last_name, phone, email) 
VALUES (seq_cust_id.NEXTVAL, 'akash', 'lombte', '9087896787', 'akash@gmail.com');


INSERT INTO Accounts (account_no, customer_id, account_type, balance, status)
VALUES (seq_acc_no.NEXTVAL, 1, 'CURRENT', 2000.00, 'ACTIVE');

INSERT INTO Accounts (account_no, customer_id, account_type, balance, status)
VALUES (seq_acc_no.NEXTVAL, 2, 'SAVING', 7000.00, 'ACTIVE');

INSERT INTO Accounts (account_no, customer_id, account_type, balance, status)
VALUES (seq_acc_no.NEXTVAL, 3, 'SAVING', 6000.00, 'ACTIVE');

INSERT INTO Accounts (account_no, customer_id, account_type, balance, status)
VALUES (seq_acc_no.NEXTVAL, 4, 'CURRENT', 700.00, 'SUSPENDED');


COMMIT;

SET PAGESIZE 50;
SET LINESIZE 150;

SELECT * FROM Customers;
SELECT * FROM Accounts;

INSERT INTO Transactions (transaction_id, account_no, tx_type, amount, tx_date)
VALUES (seq_tx_id.NEXTVAL, 1001, 'DEPOSIT', 5000.00, CURRENT_TIMESTAMP);


INSERT INTO Transactions (transaction_id, account_no, tx_type, amount, tx_date)
VALUES (seq_tx_id.NEXTVAL, 1002, 'WITHDRAWAL', 1500.00, CURRENT_TIMESTAMP);


INSERT INTO Transactions (transaction_id, account_no, tx_type, amount, tx_date)
VALUES (seq_tx_id.NEXTVAL, 1003, 'TRANSFER', 3000.00, CURRENT_TIMESTAMP);


INSERT INTO Transactions (transaction_id, account_no, tx_type, amount, tx_date)
VALUES (seq_tx_id.NEXTVAL, 1004, 'DEPOSIT', 200.00, CURRENT_TIMESTAMP);


COMMIT;


SET PAGESIZE 50;
SET LINESIZE 150;
COLUMN tx_type FORMAT A15;

SELECT * FROM Transactions;
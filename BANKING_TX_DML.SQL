-- 1. ट्रांजैक्शन टेबल में डेटा डालना
-- प्रीति (अकाउंट 1001) ने 5000 रुपये डिपॉजिट किए
INSERT INTO Transactions (transaction_id, account_no, tx_type, amount, tx_date)
VALUES (seq_tx_id.NEXTVAL, 1001, 'DEPOSIT', 5000.00, CURRENT_TIMESTAMP);

-- राजू (अकाउंट 1002) ने 1500 रुपये विथड्रॉ किए
INSERT INTO Transactions (transaction_id, account_no, tx_type, amount, tx_date)
VALUES (seq_tx_id.NEXTVAL, 1002, 'WITHDRAWAL', 1500.00, CURRENT_TIMESTAMP);

-- सुजाता (अकाउंट 1003) ने 3000 रुपये ट्रांसफर किए
INSERT INTO Transactions (transaction_id, account_no, tx_type, amount, tx_date)
VALUES (seq_tx_id.NEXTVAL, 1003, 'TRANSFER', 3000.00, CURRENT_TIMESTAMP);

-- आकाश (अकाउंट 1004) ने 200 रुपये डिपॉजिट किए
INSERT INTO Transactions (transaction_id, account_no, tx_type, amount, tx_date)
VALUES (seq_tx_id.NEXTVAL, 1004, 'DEPOSIT', 200.00, CURRENT_TIMESTAMP);

-- 2. डेटा को परमानेंटली सेव करना
COMMIT;

-- 3. डेटा देखने के लिए फॉर्मेटिंग और क्वैरी
SET PAGESIZE 50;
SET LINESIZE 150;
COLUMN tx_type FORMAT A15;

SELECT * FROM Transactions;
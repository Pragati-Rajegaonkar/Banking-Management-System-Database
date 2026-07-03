# Banking Management System Database 🏦

An automated Banking Management System backend database architecture designed using Oracle SQL and PL/SQL Triggers.

---

### 📊 Database ER Diagram (Table Relationships)

```mermaid
erDiagram
    BANKING_DML ||--o{ BANKING_TX_DML : "has transactions"
    
    BANKING_DML {
        number account_no PK
        string customer_name
        string account_type
        number balance
    }
    
    BANKING_TX_DML {
        number transaction_id PK
        number account_no FK
        string tx_type
        number amount
        date tx_date
    }

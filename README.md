# Banking Management System Database 🏦

An automated Banking Management System backend database architecture designed using Oracle SQL and PL/SQL Triggers.

---

### 📊 Database ER Diagram (Table Relationships)

```mermaid
erDiagram
    Customers ||--o{ Accounts : "opens"
    Accounts ||--o{ Transactions : "has"
    
    Customers {
        number customer_id PK
        string first_name
        string last_name
        string phone UNIQUE
        string email UNIQUE
    }
    
    Accounts {
        number account_no PK
        number customer_id FK
        string account_type "CHECK (SAVING, CURRENT)"
        number balance "DEFAULT 0.00"
        string status "DEFAULT ACTIVE"
    }
    
    Transactions {
        number transaction_id PK
        number account_no FK
        string tx_type "CHECK (DEPOSIT, WITHDRAWAL, TRANSFER)"
        number amount
        timestamp tx_date "DEFAULT CURRENT_TIMESTAMP"
    }

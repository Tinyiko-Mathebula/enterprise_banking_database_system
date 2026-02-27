# Enterprise Banking Database System

## 📌 Project Overview
This project simulates an enterprise-level core banking database system.  
It is designed using relational database principles to model customer accounts, financial transactions, payments, and audit tracking in a secure and structured environment.

The goal of this project is to demonstrate database design, transaction control, indexing, and fraud monitoring concepts aligned with real-world banking systems.

---

## 🏗 Database Architecture

### Core Entities
- customers
- accounts
- transactions
- payments
- audit_logs

### Relationships
- One customer can own multiple accounts.
- Each account can have multiple transactions.
- Payments are processed between accounts.
- All data modifications are tracked in audit_logs.

The schema is designed in Third Normal Form (3NF) to eliminate redundancy and maintain data integrity.

---

## 🔐 Database Features

- Primary and Foreign Key enforcement
- ACID-compliant transaction handling (COMMIT / ROLLBACK)
- Fraud detection logic
- Audit logging for data changes
- Performance indexing for optimized query execution
- Reporting views for monthly summaries

---

## 📊 DBA Concepts Demonstrated

- Schema normalization (3NF)
- Referential integrity
- Index optimization
- Stored procedures
- Views for reporting abstraction
- Transaction safety mechanisms
- Audit trail implementation

---

## 🛠 Technologies Used

- MySQL
- SQL

---
## 📈 Purpose of the Project

This project demonstrates practical database administration and design skills, including performance optimization, security tracking, and structured relational modeling suitable for enterprise environments.

---

## 🧠 Key Design Decisions

## 🧠 Key Design Decisions

- The schema was normalized to Third Normal Form (3NF) to eliminate redundancy and maintain data integrity.
- Foreign key constraints were enforced to ensure referential integrity between customers, accounts, and transactions.
- Customer information was separated from account data to prevent redundancy and update anomalies, ensuring that customer
  details are stored once and referenced through foreign keys.
- Indexes were added to frequently queried columns such as foreign keys and transaction dates to improve performance.
- Stored procedures were used to encapsulate transaction logic and maintain ACID-compliant transaction handling.
- An audit_logs table was implemented to track data modifications and simulate enterprise-level monitoring.
- Fraud detection logic was added to flag suspicious transaction patterns.
---

## 📂 Project Structure

01_create_database.sql – Creates the banking database.
02_create_tables.sql – Defines all core tables including customers, accounts, transactions, payments, and audit logs.
03_indexes.sql – Adds indexes to optimize query performance on frequently accessed columns.
04_sample_data.sql – Inserts sample records to simulate real banking activity.
05_stored_procedures.sql – Contains stored procedures for transaction handling and business logic.
06_views.sql – Creates reporting views for monthly summaries and operational insights.
07_fraud_system.sql – Implements basic fraud detection logic to flag suspicious transaction patterns.

---

## ▶ How to Run This Project

1. Run `01_create_database.sql`
2. Run `02_create_tables.sql`
3. Run `03_indexes.sql`
4. Run `04_sample_data.sql`
5. Run `05_stored_procedures.sql`
6. Run `06_views.sql`
7. Run `07_fraud_system.sql`

The scripts are structured in execution order to simulate a production-style deployment workflow.


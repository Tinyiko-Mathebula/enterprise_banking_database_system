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

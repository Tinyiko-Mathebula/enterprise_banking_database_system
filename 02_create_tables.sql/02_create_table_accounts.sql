CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    account_type VARCHAR(20) CHECK (account_type IN ('SAVINGS', 'CHEQUE')),
    balance DECIMAL(12,2) DEFAULT 0 CHECK (balance >= 0),
    opened_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) CHECK (status IN ('OPEN', 'CLOSED')),
    
    CONSTRAINT fk_accounts_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    from_account_id INT NOT NULL,
    to_account_number VARCHAR(30) NOT NULL,
    amount DECIMAL(12,2) NOT NULL CHECK (amount > 0),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) CHECK (status IN ('PENDING', 'COMPLETED', 'FAILED')),

    CONSTRAINT fk_payments_account
        FOREIGN KEY (from_account_id)
        REFERENCES accounts(account_id)
);
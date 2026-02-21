CREATE TABLE fraud_flags (
    flag_id INT PRIMARY KEY,
    transaction_id INT,
    reason VARCHAR(100),
    flagged_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_fraud_transaction
        FOREIGN KEY (transaction_id)
        REFERENCES transactions(transaction_id)
);
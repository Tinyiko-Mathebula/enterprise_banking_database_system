CREATE INDEX idx_accounts_customer ON accounts(customer_id);

CREATE INDEX idx_transactions_account ON transactions(account_id);

CREATE INDEX idx_transactions_date ON transactions(transaction_date);

CREATE INDEX idx_payments_account ON payments(from_account_id);
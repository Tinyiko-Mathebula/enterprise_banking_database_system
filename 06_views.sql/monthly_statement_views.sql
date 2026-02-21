CREATE VIEW monthly_statement AS
SELECT 
    a.account_id,
    c.full_name,
    t.transaction_id,
    t.transaction_type,
    t.amount,
    t.transaction_date
FROM accounts a
JOIN customers c ON a.customer_id = c.customer_id
JOIN transactions t ON a.account_id = t.account_id;
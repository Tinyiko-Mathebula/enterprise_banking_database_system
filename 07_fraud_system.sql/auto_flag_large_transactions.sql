INSERT INTO fraud_flags (flag_id, transaction_id, reason)
SELECT 
    1,
    transaction_id,
    'High value transaction'
FROM transactions
WHERE amount > 10000;
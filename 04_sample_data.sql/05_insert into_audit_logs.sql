INSERT INTO audit_logs (audit_id, table_name, action, record_id, changed_by)
VALUES
(9001, 'customers', 'INSERT', 1, 'system'),
(9002, 'accounts', 'INSERT', 101, 'system'),
(9003, 'transactions', 'INSERT', 1001, 'system'),
(9004, 'payments', 'INSERT', 5001, 'system');

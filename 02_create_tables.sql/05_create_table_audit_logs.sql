CREATE TABLE audit_logs (
    audit_id INT PRIMARY KEY,
    table_name VARCHAR(50) NOT NULL,
    action VARCHAR(10) CHECK (action IN ('INSERT', 'UPDATE', 'DELETE')),
    record_id INT NOT NULL,
    changed_by VARCHAR(50),
    change_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
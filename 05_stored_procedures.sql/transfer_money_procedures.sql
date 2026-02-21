DELIMITER $$

CREATE PROCEDURE transfer_money(
    IN from_acc INT,
    IN to_acc INT,
    IN transfer_amount DECIMAL(12,2)
)
BEGIN

    DECLARE current_balance DECIMAL(12,2);

    START TRANSACTION;

    SELECT balance INTO current_balance
    FROM accounts
    WHERE account_id = from_acc;

    IF current_balance < transfer_amount THEN
        ROLLBACK;
    ELSE

        UPDATE accounts
        SET balance = balance - transfer_amount
        WHERE account_id = from_acc;

        UPDATE accounts
        SET balance = balance + transfer_amount
        WHERE account_id = to_acc;

        INSERT INTO transactions (transaction_id, account_id, amount, transaction_type, reference)
        VALUES 
        (2001, from_acc, transfer_amount, 'TRANSFER', 'Transfer out'),
        (2002, to_acc, transfer_amount, 'TRANSFER', 'Transfer in');

        COMMIT;

    END IF;

END $$

DELIMITER ;

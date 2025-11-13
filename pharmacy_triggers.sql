DELIMITER //
CREATE TRIGGER check_reorder_level
AFTER UPDATE ON Medicines
FOR EACH ROW
BEGIN
    IF NEW.quantity < NEW.reorder_level THEN
        INSERT INTO Reorder_Alerts (medicine_id, alert_message)
        VALUES (NEW.medicine_id, CONCAT('Reorder needed for ', NEW.name));
    END IF;
END;
//
DELIMITER ;
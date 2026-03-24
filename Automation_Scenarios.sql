/* DAY 13: SQL AUTOMATION (PROCEDURES, FUNCTIONS, TRIGGERS)
   Author: Sanjusha Iddum
   How to Run: Execute the definition first, then use the CALL/SELECT commands.
*/

---------------------------------------------------------
-- 1. STORED PROCEDURE: Monthly Salary Update
---------------------------------------------------------

-- STEP A: Definition (Run this once to save in DB)
DELIMITER //
CREATE PROCEDURE GiveAppraisal(IN dept_name VARCHAR(20))
BEGIN
    UPDATE Employee_Data 
    SET Salary = Salary * 1.10 
    WHERE Department = dept_name;
END //
DELIMITER ;

-- STEP B: Usage (Run this whenever you need to execute the logic)
-- Scenario: Give 10% hike to 'Sales' department.
CALL GiveAppraisal('Sales');

-- To verify:
SELECT * FROM Employee_Data WHERE Department = 'Sales';

---------------------------------------------------------
-- 2. FUNCTION: Discount Calculator
---------------------------------------------------------

-- STEP A: Definition (Run this once)
DELIMITER //
CREATE FUNCTION GetDiscountPrice(price DECIMAL(10,2)) 
RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
    RETURN price * 0.85; -- 15% Discount Logic
END //
DELIMITER ;

-- STEP B: Usage (Use it inside a SELECT query like a built-in function)
-- Scenario: Show original price vs discounted price for all products.
SELECT 
    ProductName, 
    Price AS Original_Price, 
    GetDiscountPrice(Price) AS Final_Price
FROM Products;

---------------------------------------------------------
-- 3. TRIGGER: Safety Audit
---------------------------------------------------------

-- STEP A: Setup Audit Table
CREATE TABLE Audit_Log (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    Old_GPA DECIMAL(3,2),
    New_GPA DECIMAL(3,2),
    Changed_At DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- STEP B: Definition (Run this once)
-- Scenario: Automatically capture GPA changes.
DELIMITER //
CREATE TRIGGER Log_GPA_Update
AFTER UPDATE ON Student_Data
FOR EACH ROW
BEGIN
    IF OLD.GPA <> NEW.GPA THEN
        INSERT INTO Audit_Log(StudentID, Old_GPA, New_GPA)
        VALUES (OLD.StudentID, OLD.GPA, NEW.GPA);
    END IF;
END //
DELIMITER ;

-- STEP C: Usage (You don't "run" a trigger; it runs itself!)
-- Scenario: Simply update a GPA, and the Trigger will automatically log it.
UPDATE Student_Data SET GPA = 9.8 WHERE StudentID = 101;

-- To verify if trigger worked:
SELECT * FROM Audit_Log;

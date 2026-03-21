/* CTEs, VIEWS, and CONSTRAINTS
   Goal: Organizing code and enforcing data rules.
*/

---------------------------------------------------------
-- 1. CONSTRAINTS: Building a Secure Table
---------------------------------------------------------
CREATE TABLE Employee_Records (
    EmpID INT PRIMARY KEY,               -- Unique & Not Null
    EmpName VARCHAR(50) NOT NULL,        -- Cannot be empty
    Email VARCHAR(100) UNIQUE,           -- No duplicates
    Age INT CHECK (Age >= 18),           -- Minimum age rule
    Department VARCHAR(20) DEFAULT 'General' -- Default value
);

---------------------------------------------------------
-- 2. CTE: Simplifying Complex Logic
---------------------------------------------------------
-- Problem: Identify students with GPA above average using a CTE.

WITH AverageGPA AS (
    SELECT AVG(GPA) AS GlobalAvg FROM Student_Data
)
SELECT s.StudentName, s.GPA, a.GlobalAvg
FROM Student_Data s, AverageGPA a
WHERE s.GPA > a.GlobalAvg;

---------------------------------------------------------
-- 3. VIEWS: Creating a Reusable "Report"
---------------------------------------------------------
-- Problem: Create a view for the "Placement Cell" that hides 
-- sensitive student details but shows their Branch and GPA.

CREATE VIEW V_Placement_Eligible AS
SELECT StudentName, Branch, GPA
FROM Student_Data
WHERE GPA >= 7.5;

-- To use the view later:
-- SELECT * FROM V_Placement_Eligible;

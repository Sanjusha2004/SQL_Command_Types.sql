/* DAY 12: SUBQUERIES AND RECURSIVE CTEs
   Scenario: Advanced Data Retrieval and Hierarchical Mapping
*/

---------------------------------------------------------
-- 1. SCALAR SUBQUERY: Filtering by Aggregate
---------------------------------------------------------
-- Problem: Find students who have a GPA higher than the overall average.

SELECT StudentName, GPA
FROM Student_Data
WHERE GPA > (SELECT AVG(GPA) FROM Student_Data);

---------------------------------------------------------
-- 2. CORRELATED SUBQUERY: Row-by-Row Comparison
---------------------------------------------------------
-- Problem: Find students whose GPA is higher than their own Branch average.

SELECT s.StudentName, s.Branch, s.GPA
FROM Student_Data s
WHERE s.GPA > (
    SELECT AVG(GPA) 
    FROM Student_Data 
    WHERE Branch = s.Branch
);

---------------------------------------------------------
-- 3. RECURSIVE CTE: Hierarchical Data
---------------------------------------------------------
-- Problem: Generate a sequence of numbers from 1 to 10 (Simple Recursion).

WITH RECURSIVE NumberSeries AS (
    -- Anchor Member
    SELECT 1 AS Num
    UNION ALL
    -- Recursive Member
    SELECT Num + 1
    FROM NumberSeries
    WHERE Num < 10
)
SELECT * FROM NumberSeries;

---------------------------------------------------------
-- 4. RECURSIVE CTE: Organization Structure
---------------------------------------------------------
-- Problem: Find the management chain for a specific Employee.

WITH RECURSIVE EmpHierarchy AS (
    -- Start with the specific employee
    SELECT EmpID, EmpName, ManagerID, 1 AS Level
    FROM Employees WHERE EmpName = 'Sanjusha'
    UNION ALL
    -- Join back to find the manager
    SELECT e.EmpID, e.EmpName, e.ManagerID, h.Level + 1
    FROM Employees e
    INNER JOIN EmpHierarchy h ON e.EmpID = h.ManagerID
)
SELECT * FROM EmpHierarchy;

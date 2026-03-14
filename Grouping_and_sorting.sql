/* DAY 7: GROUP BY, HAVING, ORDER BY, and LIMIT
   Scenario: Analyzing Student Performance by Department
*/

---------------------------------------------------------
-- 1. GROUP BY & HAVING: Analyzing Groups
---------------------------------------------------------
-- Problem: Find the average GPA for each Branch, 
-- but only show branches where the average is > 8.0.

SELECT 
    Branch, 
    ROUND(AVG(GPA), 2) AS Avg_GPA
FROM Student_Data
GROUP BY Branch
HAVING AVG(GPA) > 8.0;

---------------------------------------------------------
-- 2. ORDER BY: Sorting results
---------------------------------------------------------
-- Problem: List all students from highest GPA to lowest.

SELECT StudentName, GPA 
FROM Student_Data 
ORDER BY GPA DESC;

---------------------------------------------------------
-- 3. LIMIT & OFFSET: Pagination
---------------------------------------------------------
-- Problem: Get the 2nd and 3rd highest scorers (Skip the 1st).

SELECT StudentName, GPA
FROM Student_Data
ORDER BY GPA DESC
LIMIT 2 OFFSET 1;

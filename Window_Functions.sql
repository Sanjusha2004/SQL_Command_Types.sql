/* DAY 8: WINDOW FUNCTIONS
   Scenario: Ranking Students within their respective Branches
*/

---------------------------------------------------------
-- 1. ROW_NUMBER: Unique identifiers for each row
---------------------------------------------------------
-- Problem: Assign a unique sequence to students in each branch based on JoinDate.

SELECT 
    Branch,
    StudentName,
    JoinDate,
    ROW_NUMBER() OVER(PARTITION BY Branch ORDER BY JoinDate) AS Enrollment_Sequence
FROM Student_Data;

---------------------------------------------------------
-- 2. RANK vs DENSE_RANK: Handling Ties
---------------------------------------------------------
-- Problem: Rank students based on GPA within their branch.
-- Notice how RANK skips a number after a tie, while DENSE_RANK does not.

SELECT 
    Branch,
    StudentName,
    GPA,
    RANK() OVER(PARTITION BY Branch ORDER BY GPA DESC) AS Standard_Rank,
    DENSE_RANK() OVER(PARTITION BY Branch ORDER BY GPA DESC) AS Continuous_Rank
FROM Student_Data;

---------------------------------------------------------
-- 3. AGGREGATES as Window Functions
---------------------------------------------------------
-- Problem: Show each student's GPA alongside their Branch's Average GPA.

SELECT 
    StudentName,
    Branch,
    GPA,
    ROUND(AVG(GPA) OVER(PARTITION BY Branch), 2) AS Branch_Avg_GPA
FROM Student_Data;

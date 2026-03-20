/* ADVANCED WINDOW FUNCTIONS
   Topics: LAG, LEAD, NTILE, PERCENT_RANK, and Value Functions
   Scenario: Analyzing Student GPA Trends and Distributions
*/

---------------------------------------------------------
-- 1. LAG & LEAD: Comparing with Neighbors
---------------------------------------------------------
-- Problem: Compare a student's GPA with the student 
-- who enrolled just before them.

SELECT 
    StudentName,
    GPA,
    LAG(GPA) OVER(ORDER BY JoinDate) AS Previous_Student_GPA,
    GPA - LAG(GPA) OVER(ORDER BY JoinDate) AS GPA_Difference
FROM Student_Data;

---------------------------------------------------------
-- 2. NTILE: Creating Buckets (Quartiles)
---------------------------------------------------------
-- Problem: Divide students into 4 groups (Quartiles) based on GPA.
-- Group 1 = Top 25%, Group 4 = Bottom 25%.

SELECT 
    StudentName,
    GPA,
    NTILE(4) OVER(ORDER BY GPA DESC) AS GPA_Quartile
FROM Student_Data;

---------------------------------------------------------
-- 3. PERCENT_RANK: Relative Standing
---------------------------------------------------------
-- Problem: What is the percentile rank of each student?

SELECT 
    StudentName,
    GPA,
    ROUND(PERCENT_RANK() OVER(ORDER BY GPA), 2) AS Percentile_Rank
FROM Student_Data;

---------------------------------------------------------
-- 4. FIRST_VALUE & NTH_VALUE: Identifying Specific Targets
---------------------------------------------------------
-- Problem: For every student, show the Branch Topper's GPA 
-- and the 2nd highest GPA in that branch.

SELECT 
    StudentName,
    Branch,
    GPA,
    FIRST_VALUE(GPA) OVER(PARTITION BY Branch ORDER BY GPA DESC) AS Branch_Topper,
    NTH_VALUE(GPA, 2) OVER(PARTITION BY Branch ORDER BY GPA DESC 
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Second_Best_GPA
FROM Student_Data;

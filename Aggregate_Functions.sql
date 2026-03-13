/* DAY 6: AGGREGATE FUNCTIONS
   Topic: Summarizing Data for Business Insights
   Author: Sanjusha Iddum
*/

-- Setup: Using a sample dataset for context
-- Let's assume we have a 'Sales' or 'Student_Grades' table

---------------------------------------------------------
-- 1. COUNT: Counting total entries
---------------------------------------------------------
-- Problem: Find the total number of students enrolled.
SELECT COUNT(StudentID) AS Total_Enrolled_Students 
FROM Student_Data;

---------------------------------------------------------
-- 2. MIN & MAX: Finding Boundary Values
---------------------------------------------------------
-- Problem: Identify the highest and lowest GPA in the batch.
SELECT 
    MAX(GPA) AS Topper_Score, 
    MIN(GPA) AS Minimum_Score 
FROM Student_Data;

---------------------------------------------------------
-- 3. SUM: Calculating Totals
---------------------------------------------------------
-- Problem: Calculate the total scholarships granted (assuming a 'Scholarship' column).
-- Note: Aggregate functions ignore NULL values.
SELECT SUM(Scholarship_Amount) AS Total_Fund_Distributed 
FROM Student_Finances;

---------------------------------------------------------
-- 4. AVG: Finding the Mean
---------------------------------------------------------
-- Problem: What is the average performance of the class?
SELECT ROUND(AVG(GPA), 2) AS Average_Class_GPA 
FROM Student_Data;

---------------------------------------------------------
-- 5. COMBINED VIEW: Summary Dashboard
---------------------------------------------------------
-- Problem: Get a full summary of the Student_Data table in one query.
SELECT 
    COUNT(*) AS Total_Students,
    MAX(GPA) AS Max_GPA,
    MIN(GPA) AS Min_GPA,
    ROUND(AVG(GPA), 2) AS Avg_GPA
FROM Student_Data;

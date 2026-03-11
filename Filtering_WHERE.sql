-- Filtering Data using WHERE and Operators

-- 1. Using Comparison Operators
SELECT * FROM Student_Data 
WHERE GPA > 9.0;

-- 2. Using Logical Operators (AND/OR)
SELECT StudentName, GPA 
FROM Student_Data 
WHERE GPA > 8.0 AND JoinDate > '2025-01-01';

-- 3. Using BETWEEN and IN
SELECT * FROM Student_Data 
WHERE StudentID BETWEEN 100 AND 110;

SELECT * FROM Student_Data 
WHERE StudentName IN ('Sanju Sha', 'Arjun');

-- 4. Pattern Matching with LIKE (Names starting with S)
SELECT * FROM Student_Data 
WHERE StudentName LIKE 'S%';

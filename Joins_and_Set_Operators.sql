/* DAY 11: JOINS AND SET OPERATORS
   Scenario: Managing Students, Departments, and Library Records
*/

---------------------------------------------------------
-- 1. INNER JOIN: Common Data
---------------------------------------------------------
-- Problem: List students along with their Department names.
SELECT 
    s.StudentName, 
    d.DeptName
FROM Students s
INNER JOIN Departments d ON s.DeptID = d.DeptID;

---------------------------------------------------------
-- 2. LEFT JOIN: Identifying Missing Links
---------------------------------------------------------
-- Problem: List all students and the books they borrowed. 
-- Include students who haven't borrowed any books.
SELECT 
    s.StudentName, 
    l.BookName
FROM Students s
LEFT JOIN Library_Records l ON s.StudentID = l.StudentID;

---------------------------------------------------------
-- 3. UNION vs UNION ALL: Combining Lists
---------------------------------------------------------
-- Problem: Create a master list of all email addresses from 
-- both 'Students' and 'Faculty' tables.

-- Removes duplicates
SELECT Email FROM Students
UNION
SELECT Email FROM Faculty;

---------------------------------------------------------
-- 4. INTERSECT: Finding Common Entries
---------------------------------------------------------
-- Problem: Find students who are members of both 'Sports Club' and 'Coding Club'.
SELECT StudentID FROM Sports_Club
INTERSECT
SELECT StudentID FROM Coding_Club;

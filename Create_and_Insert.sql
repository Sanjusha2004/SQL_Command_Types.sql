-- Data Types, CREATE and INSERT Commands

-- 1. Creating a Table (Defining Schema)
CREATE TABLE Student_Data (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    GPA DECIMAL(3, 2),
    JoinDate DATE
);

-- 2. Inserting Records (Adding Tuples)
INSERT INTO Student_Data (StudentID, StudentName, GPA, JoinDate)
VALUES (101, 'Sanju Sha', 9.5, '2026-03-09');

INSERT INTO Student_Data (StudentID, StudentName, GPA, JoinDate)
VALUES (102, 'Teja', 8.8, '2026-03-09');

-- 3. Viewing the Data
SELECT * FROM Student_Data;

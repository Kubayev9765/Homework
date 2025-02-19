--create database ADV

--CREATE TABLE Students (
--    StudentID INT PRIMARY KEY,
--    FirstName NVARCHAR(50),
--    LastName NVARCHAR(50),
--    EnrollmentDate DATE
--);

--INSERT INTO Students (StudentID, FirstName, LastName, EnrollmentDate) VALUES
--(1, 'John', 'Doe', '2023-01-15'),
--(2, 'Jane', 'Smith', '2023-02-10'),
--(3, 'Emily', 'Johnson', '2023-01-20'),
--(4, 'Michael', 'Brown', '2023-03-05'),
--(5, 'Sarah', 'Davis', '2023-02-25');


--CREATE TABLE Courses (
--    CourseID INT PRIMARY KEY,
--    CourseName NVARCHAR(100),
--    Credits INT
--);

--INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
--(101, 'Mathematics', 3),
--(102, 'Physics', 4),
--(103, 'Chemistry', 3),
--(104, 'Biology', 2),
--(105, 'Computer Science', 5);

--CREATE TABLE Enrollments (
--    EnrollmentID INT PRIMARY KEY,
--    StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
--    CourseID INT FOREIGN KEY REFERENCES Courses(CourseID),
--    Grade numeric(10,2)
--);

--INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Grade) VALUES
--(1, 1, 101, 85.50),
--(2, 1, 102, 78.00),
--(3, 2, 103, 92.00),
--(4, 3, 104, 88.75),
--(5, 3, 105, 90.50),
--(6, 4, 101, 75.25),
--(7, 5, 102, 82.00),
--(8, 5, 103, 88.00);


--CREATE TABLE Departments (
--    DepartmentID INT PRIMARY KEY,
--    DepartmentName NVARCHAR(100)
--);

--INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
--(1, 'Science'),
--(2, 'Arts'),
--(3, 'Technology');


CREATE TABLE CourseDepartments (
    CourseID INT FOREIGN KEY REFERENCES Courses(CourseID),
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID)
);

--INSERT INTO CourseDepartments (CourseID, DepartmentID) VALUES
--(101, 1),
--(102, 1),
--(103, 1),
--(104, 1),
--(105, 3);


select * from Students
select *from Courses
select *from Enrollments
select *from Departments
select *from CourseDepartments

---FulName, CourseNAme, Grade, DeportmentMane


select CONCAT_WS(' ',s.FirstName, s.LastName ) as FullNAme, 
c.CourseName, 
c.Credits, 
d.DepartmentName  
from Students s 
join Enrollments e on s.StudentID=e.StudentID
join Courses c on e.CourseID=c.CourseID 
join CourseDepartments cd on cd.CourseID= c.CourseID 
join Departments d on d.DepartmentID=cd.DepartmentID
																		   
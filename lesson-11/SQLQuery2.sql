--create database Class_11
--JOINS
--cross
--select c.country_id, c.country_name, r.region_name from countries c cross join regions r 
--where c.region_id=r.region_id
--SELECT *FROM employees

--select *from employees
--select *from countries
--select *from regions
--select *from jobs
--select *from job_grade
--select *from job_history

--inner JOIN=JOIN
SELECT c.country_id,c.country_name,c.region_id, r.region_id, r.region_name  FROM  countries c inner join regions r on c.region_id=r.region_id

--select e.employee_id , CONCAT_WS(' ', e.first_name, e.last_name),
--e.salary, j.job_title, j.job_id
--from employees e inner join jobs j on e.job_id= j.job_id 

--select *from jobs


--create table students (id int identity, name varchar(20))
--create table courses (course_id int identity(10, 10), course_title varchar(20))
--create table student_courses (student_id int, course_id int)

--insert into students values ('Ali'),('Brian'), ('John'),('Bob')
--insert into courses values ('Python'), ('SQL'),('PBI')
--insert into student_courses values (1, 10),(1, 20),(1,30),(2,20),(3,20),(3, 30)


--select s.name, isnull(c.course_title, 'no course')as c_title 
--	from students s left join student_courses sc on s.id=sc.student_id
--						left join courses c on c.course_id=sc.course_id

						
--select s.name, isnull(sc.course_id , 0)as c_title 
--	from students s full join student_courses sc on s.id=sc.student_id

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    EnrollmentDate DATE
);

INSERT INTO Students (StudentID, FirstName, LastName, EnrollmentDate) VALUES
(1, 'John', 'Doe', '2023-01-15'),
(2, 'Jane', 'Smith', '2023-02-10'),
(3, 'Emily', 'Johnson', '2023-01-20'),
(4, 'Michael', 'Brown', '2023-03-05'),
(5, 'Sarah', 'Davis', '2023-02-25');


CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName NVARCHAR(100),
    Credits INT
);

INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
(101, 'Mathematics', 3),
(102, 'Physics', 4),
(103, 'Chemistry', 3),
(104, 'Biology', 2),
(105, 'Computer Science', 5);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
    CourseID INT FOREIGN KEY REFERENCES Courses(CourseID),
    Grade numeric(10,2)
);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Grade) VALUES
(1, 1, 101, 85.50),
(2, 1, 102, 78.00),
(3, 2, 103, 92.00),
(4, 3, 104, 88.75),
(5, 3, 105, 90.50),
(6, 4, 101, 75.25),
(7, 5, 102, 82.00),
(8, 5, 103, 88.00);


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Science'),
(2, 'Arts'),
(3, 'Technology');


CREATE TABLE CourseDepartments (
    CourseID INT FOREIGN KEY REFERENCES Courses(CourseID),
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID)
);

INSERT INTO CourseDepartments (CourseID, DepartmentID) VALUES
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 3);



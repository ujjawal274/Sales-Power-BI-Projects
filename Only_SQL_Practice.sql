use sys;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmpID, EmpName, Department, Salary)
VALUES
(101, 'Ritik', 'Sales', 15000),
(102, 'Suraj', 'Finance', 20000),
(103, 'Vikash', 'HR', 25000),
(104, 'Raj', 'IT', 18000),
(105, 'Kunal', 'Marketing', 23000);

SELECT * FROM employees;

ALTER table employees 
ADD COLUMN Age INT ;
ALTER table employees
ADD COLUMN City VARCHAR(50);
ALTER table employees
ADD COLUMN JoiningDate DATE ;
ALTER table employees
ADD COLUMN Email VARCHAR(100);
ALTER table Employees
ADD COLUMN Experience DECIMAL(3,1)  DEFAULT 0.0;

-- MODIFY --
ALTER table Employees
MODIFY COLUMN EmpName VARCHAR(100) ;
-- my query --
ALTER TABLE Employees
MODIFY COLUMN Email INT;
ALTER TABLE Employees
MODIFY COLUMN Department VARCHAR(100) ;
ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL(12,2);
ALTER TABLE Employees
MODIFY COLUMN EmpID BIGINT;
ALTER TABLE Employees
MODIFY COLUMN EmpName VARCHAR(100) NOT NULL ;

-- RENAME COLUMN --

ALTER TABLE Employees
RENAME COLUMN EmpName TO EmployeeName ;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Course VARCHAR(50),
    Marks INT,
    City VARCHAR(50)
);

INSERT INTO Students (StudentID, StudentName, Course, Marks, City)
VALUES
(1, 'Amit', 'Python', 85, 'Ranchi'),
(2, 'Rahul', 'SQL', 78, 'Bokaro'),
(3, 'Priya', 'Excel', 92, 'Dhanbad'),
(4, 'Neha', 'Power BI', 88, 'Jamshedpur'),
(5, 'Vikas', 'Python', 75, 'Ranchi');

SELECT * FROM Students ;

ALTER TABLE students
RENAME COLUMN StudentName TO Name ;
ALTER TABLE Students
RENAME COLUMN Course TO CourseName;
ALTER TABLE students
RENAME COLUMN Marks TO Score;
ALTER TABLE Students
RENAME column StudentID TO ID ;
ALTER TABLE students
RENAME 	column City TO StudentCity ;

-- DROP COLUMN --

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    Supplier VARCHAR(50),
    Discount INT
);

INSERT INTO Products
(ProductID, ProductName, Category, Price, Stock, Supplier, Discount)
VALUES
(101, 'Laptop', 'Electronics', 55000, 10, 'Dell', 5),
(102, 'Mouse', 'Accessories', 800, 25, 'Logitech', 10),
(103, 'Keyboard', 'Accessories', 1500, 18, 'HP', 8),
(104, 'Monitor', 'Electronics', 12000, 12, 'Samsung', 7),
(105, 'Printer', 'Electronics', 15000, 6, 'Canon', 12);

SELECT * FROM Products ;

ALTER TABLE products 
DROP COLUMN Discount ;
ALTER TABLE Products
DROP COLUMN Supplier ;
ALTER TABLE products
DROP COLUMN Stock ;
ALTER TABLE products
DROP COLUMN Category ;
ALTER TABLE products
DROP COLUMN price ;

-- RENAME TABLE --

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookName VARCHAR(50),
    Author VARCHAR(50),
    Price INT
);

INSERT INTO Books VALUES
(1, 'Atomic Habits', 'James Clear', 500),
(2, 'Ikigai', 'Hector Garcia', 350),
(3, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 450);    

SELECT * FROM LibraryBooks;


CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    MovieName VARCHAR(50),
    Genre VARCHAR(30),
    Rating DECIMAL(2,1)
);

INSERT INTO Movies VALUES
(101, 'Inception', 'Sci-Fi', 8.8),
(102, '3 Idiots', 'Drama', 8.4),
(103, 'Dangal', 'Sports', 8.3);

SELECT * FROM FilmCollection ;

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Duration INT,
    Fees INT
);

INSERT INTO Courses VALUES
(1, 'Python', 6, 5000),
(2, 'SQL', 4, 3500),
(3, 'Power BI', 3, 4000);

SELECT * FROM TrainingCourses ;

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    Airline VARCHAR(50),
    Destination VARCHAR(50),
    TicketPrice INT
);

INSERT INTO Flights VALUES
(501, 'IndiGo', 'Delhi', 4500),
(502, 'Air India', 'Mumbai', 5200),
(503, 'Vistara', 'Bangalore', 6100);

SELECT * FROM FlightSchedule ;

CREATE TABLE Hospitals (
    HospitalID INT PRIMARY KEY,
    HospitalName VARCHAR(50),
    City VARCHAR(50),
    Beds INT
);

INSERT INTO Hospitals VALUES
(1, 'City Hospital', 'Ranchi', 100),
(2, 'Life Care', 'Bokaro', 75),
(3, 'Medicare', 'Dhanbad', 120);

SELECT * FROM MedicalCenters ;

RENAME TABLE Books TO LibraryBooks ;
RENAME TABLE Movies TO FilmCollection ;
RENAME TABLE Courses TO TrainingCourses ;
RENAME TABLE Flights TO FlightSchedule ;
RENAME TABLE Hospitals TO MedicalCenters ;

-- CHANGE COLUMN --

CREATE TABLE AdventureTrips (
    TripID INT PRIMARY KEY,
    TripName VARCHAR(50),
    Location VARCHAR(50),
    Participants INT,
    Price INT,
    GuideName VARCHAR(50)
);

INSERT INTO AdventureTrips
(TripID, TripName, Location, Participants, Price, GuideName)
VALUES
(101, 'Mountain Trek', 'Manali', 12, 8500, 'Arjun'),
(102, 'River Rafting', 'Rishikesh', 8, 4500, 'Rohan'),
(103, 'Desert Safari', 'Jaisalmer', 15, 6000, 'Kabir'),
(104, 'Forest Camping', 'Jim Corbett', 10, 5500, 'Aditya'),
(105, 'Scuba Diving', 'Goa', 6, 9000, 'Varun');

SELECT * FROM AdventureTrips ;

ALTER TABLE adventuretrips
CHANGE COLUMN TripName AdventureName VARCHAR(100);
ALTER TABLE adventuretrips
CHANGE COLUMN Location Destination VARCHAR(100);
ALTER TABLE adventuretrips
CHANGE COLUMN Participants TotalParticipants SMALLINT ;
ALTER TABLE adventuretrips
CHANGE COLUMN Price TripPrice DECIMAL(10,2);
ALTER TABLE adventuretrips
CHANGE COLUMN GuideName TripGuide VARCHAR(100) NOT NULL ;






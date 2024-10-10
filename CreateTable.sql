-- CREATE TABLE QUEUE

-- Table for Users
CREATE TABLE User1 (
    userID NVARCHAR(50) PRIMARY KEY,
    firstName NVARCHAR(50),
    lastName NVARCHAR(50),
    email NVARCHAR(100),
    phoneNumber NVARCHAR(20),
    role NVARCHAR(50)
);
GO

-- Table for Students
CREATE TABLE Student (
    studentID NVARCHAR(50) PRIMARY KEY,
    enrollmentDate DATE,
    userID NVARCHAR(50),
    FOREIGN KEY (userID) REFERENCES User1(userID)
);
GO

-- Table for Teachers
CREATE TABLE Teacher (
    teacherID NVARCHAR(50) PRIMARY KEY,
    courseID NVARCHAR(50),
    userID NVARCHAR(50),
    FOREIGN KEY (userID) REFERENCES User1(userID)
);
GO

-- Table for Courses
CREATE TABLE Course (
    courseID NVARCHAR(50) PRIMARY KEY,
    courseName NVARCHAR(50),
    description NVARCHAR(255),
    units INT
);
GO

CREATE TABLE Grades (
    gradeID INT PRIMARY KEY IDENTITY(1,1),  -- Auto-incrementing ID
    studentID NVARCHAR(50),                 -- Foreign key to Student table
    courseID NVARCHAR(50),                  -- Foreign key to Course table
    grade DECIMAL(5, 2),                    -- Grade value, e.g., 90.50
    FOREIGN KEY (studentID) REFERENCES Student(studentID),  -- Ensure relationship to Student
    FOREIGN KEY (courseID) REFERENCES Course(courseID)      -- Ensure relationship to Course
);
GO

ALTER TABLE Grades
ADD grades DECIMAL(5, 2);  -- Assuming grades are decimal values like 85.50
GO

CREATE TABLE Attendance (
    attendanceID INT PRIMARY KEY IDENTITY(1,1),  -- Auto-incrementing ID
    studentID NVARCHAR(50),                      -- Foreign key to Student table
    courseID NVARCHAR(50),                       -- Foreign key to Course table
    attendanceDate DATE,                         -- Date of attendance
    status NVARCHAR(10),                        -- Status: Present/Absent/Late
    FOREIGN KEY (studentID) REFERENCES Student(studentID),  -- Ensure relationship to Student
    FOREIGN KEY (courseID) REFERENCES Course(courseID)      -- Ensure relationship to Course
);
GO

EXEC sp_help 'Attendance';
GO

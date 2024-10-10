-- PROCEDURAL QUEUE

CREATE PROCEDURE AddUser
    @userID NVARCHAR(50),
    @firstName NVARCHAR(50),
    @lastName NVARCHAR(50),
    @email NVARCHAR(100),
    @phoneNumber NVARCHAR(20),
    @role NVARCHAR(50)
AS
BEGIN
    INSERT INTO User1 (userID, firstName, lastName, email, phoneNumber, role)
    VALUES (@userID, @firstName, @lastName, @email, @phoneNumber, @role);
END
GO

CREATE PROCEDURE AddStudent
    @studentID NVARCHAR(50),
    @enrollmentDate DATE,
    @userID NVARCHAR(50)
AS
BEGIN
    INSERT INTO Student (studentID, enrollmentDate, userID)
    VALUES (@studentID, @enrollmentDate, @userID);
END
GO

CREATE PROCEDURE AddTeacher
    @teacherID NVARCHAR(50),
    @courseID NVARCHAR(50),
    @userID NVARCHAR(50)
AS
BEGIN
    INSERT INTO Teacher (teacherID, courseID, userID)
    VALUES (@teacherID, @courseID, @userID);
END
GO

CREATE PROCEDURE UpdateUser
    @userID NVARCHAR(50),
    @newFirstName NVARCHAR(50),
    @newLastName NVARCHAR(50),
    @newEmail NVARCHAR(100)
AS
BEGIN
    UPDATE User1
    SET firstName = @newFirstName, 
        lastName = @newLastName, 
        email = @newEmail
    WHERE userID = @userID;
END
GO

CREATE PROCEDURE StudentAttendance
    @studentID NVARCHAR(50)
AS
BEGIN
    SELECT courseID, attendanceDate, status
    FROM Attendance
    WHERE studentID = @studentID;  -- Use the passed parameter
END
GO

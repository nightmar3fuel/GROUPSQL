-- VIEW FILES

CREATE VIEW StudentGrades
AS
SELECT courseID, grades
FROM Grades
WHERE studentID = 'studentID';  -- Replace 'studentID' with dynamic value as needed
GO

CREATE VIEW StudentAttendance
AS
SELECT courseID, attendanceDate, status
FROM Attendance
WHERE studentID = 'studentID';  -- Replace 'studentID' with dynamic value as needed
GO

CREATE VIEW TeacherInfo
AS
SELECT firstName, lastName, email, phoneNumber 
FROM User1
WHERE userID = 'teacherUserID';  -- Replace 'teacherUserID' with dynamic value as needed
GO

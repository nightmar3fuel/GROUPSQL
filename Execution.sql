EXEC AddUser @userID = 'studentUserID', @firstName = 'John', @lastName = 'Doe', @email = 'john.doe@example.com', @phoneNumber = '1234567890', @role = 'student';
GO

SELECT * FROM StudentGrades;
GO

SELECT * FROM TeacherInfo;
GO

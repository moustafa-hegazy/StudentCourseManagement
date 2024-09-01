--Automate the process of adding a new student to the database, ensuring consistency and reducing manual input.
CREATE PROCEDURE AddStudent
@FirstName VARCHAR(50),
@LastName VARCHAR(50),
@Email VARCHAR(100),
@DateOfBirth DATE
AS
BEGIN
    INSERT INTO dbo.Students (first_name, last_name, email, date_of_birth)
    VALUES (@FirstName, @LastName, @Email, @DateOfBirth);
END;

-- Calculate the current age of a student, which can be used in various reports or decision-making processes.
CREATE FUNCTION CalculateAge (@DateOfBirth DATE)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(year, @DateOfBirth, GETDATE());
END;

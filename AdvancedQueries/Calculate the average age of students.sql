-- Determine the average age of students, possibly for demographic analysis.
SELECT 
    AVG(DATEDIFF(year, date_of_birth, GETDATE())) AS average_age 
FROM 
    dbo.Students;

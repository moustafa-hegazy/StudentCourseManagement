-- Categorize students into different age groups, which can be useful for targeted marketing or educational programs.
SELECT 
    first_name, 
    last_name,
    CASE 
        WHEN DATEDIFF(year, date_of_birth, GETDATE()) < 18 THEN 'Under 18'
        WHEN DATEDIFF(year, date_of_birth, GETDATE()) BETWEEN 18 AND 25 THEN '18-25'
        ELSE '26 and older'
    END AS age_group
FROM 
    dbo.Students;

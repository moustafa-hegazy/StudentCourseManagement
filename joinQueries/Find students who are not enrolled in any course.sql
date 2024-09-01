--Identify students who have not yet enrolled in any courses, possibly for targeted enrollment campaigns.
SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name 
FROM 
    dbo.Students s
WHERE 
    s.student_id NOT IN (SELECT DISTINCT student_id FROM dbo.Enrollments);

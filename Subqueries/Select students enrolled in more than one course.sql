--Identify students who are enrolled in multiple courses, useful for analyzing course load or advising.
SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name 
FROM 
    dbo.Students s
WHERE 
    (SELECT COUNT(*) FROM dbo.Enrollments e WHERE e.student_id = s.student_id) > 1;

--Identify the top 3 students with the highest course load, possibly for recognition or advising.
SELECT TOP 3 
    s.student_id, 
    s.first_name, 
    s.last_name, 
    COUNT(e.course_id) AS enrollment_count 
FROM 
    dbo.Students s
    JOIN dbo.Enrollments e ON s.student_id = e.student_id
GROUP BY 
    s.student_id, s.first_name, s.last_name
ORDER BY 
    enrollment_count DESC;

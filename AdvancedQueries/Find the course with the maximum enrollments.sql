--Identify the most popular course, which might require additional resources or sections.
SELECT TOP 1 
    c.course_name, 
    COUNT(e.student_id) AS enrollment_count
FROM 
    dbo.Courses c
    JOIN dbo.Enrollments e ON c.course_id = e.course_id
GROUP BY 
    c.course_name
ORDER BY 
    enrollment_count DESC;

--Generate a report showing how many students are enrolled in each course, useful for capacity planning.
SELECT 
    c.course_name, 
    COUNT(e.student_id) AS student_count 
FROM 
    dbo.Courses c
    LEFT JOIN dbo.Enrollments e ON c.course_id = e.course_id
GROUP BY 
    c.course_name;

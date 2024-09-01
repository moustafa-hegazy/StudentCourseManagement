--Identify popular courses with high enrollment, possibly to allocate additional resources or instructors.
SELECT 
    c.course_name, 
    COUNT(e.student_id) AS student_count 
FROM 
    dbo.Courses c
    JOIN dbo.Enrollments e ON c.course_id = e.course_id
GROUP BY 
    c.course_name
HAVING 
    COUNT(e.student_id) > 5;

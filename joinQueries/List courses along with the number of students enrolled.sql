--Create a list that shows all students and the courses they are enrolled in, useful for generating student transcripts.
SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name, 
    c.course_name 
FROM 
    dbo.Students s
    LEFT JOIN dbo.Enrollments e ON s.student_id = e.student_id
    LEFT JOIN dbo.Courses c ON e.course_id = c.course_id;

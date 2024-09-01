-- Generate a detailed report showing which students are enrolled in which courses.
SELECT 
    e.enrollment_id, 
    s.first_name + ' ' + s.last_name AS student_name, 
    c.course_name 
FROM 
    dbo.Enrollments e
    JOIN dbo.Students s ON e.student_id = s.student_id
    JOIN dbo.Courses c ON e.course_id = c.course_id;

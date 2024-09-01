--Identify all students who have enrolled in a particular course, for example, to notify them of updates.
SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name 
FROM 
    dbo.Students s
    JOIN dbo.Enrollments e ON s.student_id = e.student_id
WHERE 
    e.course_id = (SELECT course_id FROM dbo.Courses WHERE course_name = 'Biology');
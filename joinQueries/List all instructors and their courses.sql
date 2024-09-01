--Generate a report showing which instructors are teaching which courses, useful for scheduling.
SELECT 
    i.instructor_id, 
    i.first_name, 
    i.last_name, 
    c.course_name 
FROM 
    dbo.Instructors i
    JOIN dbo.Courses c ON i.instructor_id = c.instructor_id;

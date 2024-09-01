-- List all courses taught by a specific instructor, useful for planning and workload balancing.
SELECT 
    c.course_name 
FROM 
    dbo.Courses c
WHERE 
    c.instructor_id = (SELECT instructor_id FROM dbo.Instructors WHERE last_name = 'Ezab');

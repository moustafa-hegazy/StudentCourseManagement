--Ensure that courses are only listed if they have active enrollments, useful for determining active course offerings.
SELECT 
    course_name 
FROM 
    dbo.Courses c
WHERE 
    EXISTS (SELECT 1 FROM dbo.Enrollments e WHERE e.course_id = c.course_id);

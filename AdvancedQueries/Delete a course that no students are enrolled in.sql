--Clean up the course catalog by removing courses that have no active enrollments.
DELETE FROM dbo.Courses
WHERE course_id NOT IN (SELECT DISTINCT course_id FROM dbo.Enrollments);

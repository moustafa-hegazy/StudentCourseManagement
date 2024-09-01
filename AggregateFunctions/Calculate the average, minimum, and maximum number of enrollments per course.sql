-- Analyze the enrollment patterns across courses to determine course popularity and inform scheduling decisions.
SELECT 
    AVG(student_count) AS average_enrollments,
    MIN(student_count) AS min_enrollments,
    MAX(student_count) AS max_enrollments
FROM 
(
    SELECT COUNT(e.student_id) AS student_count 
    FROM dbo.Courses c
    LEFT JOIN dbo.Enrollments e ON c.course_id = e.course_id
    GROUP BY c.course_id
) AS enrollment_stats;

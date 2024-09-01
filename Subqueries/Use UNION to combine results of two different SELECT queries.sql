-- Combine and display results from different queries, such as listing all students and instructors in one result set.
SELECT first_name, last_name, 'Student' AS role FROM dbo.Students
UNION
SELECT first_name, last_name, 'Instructor' AS role FROM dbo.Instructors;

--Update a student's email address, typically after receiving a request for a correction or update.
UPDATE dbo.Students
SET email = 'Ahmed.moustafa@example.com'
WHERE student_id = 1;

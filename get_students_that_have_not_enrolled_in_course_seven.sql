SELECT students.id, students.name
FROM students
LEFT JOIN student_courses ON students.id = student_courses.student_id AND student_courses.course_id = 7
WHERE student_courses.course_id IS NULL;

SELECT
  *
FROM students
WHERE NOT EXISTS (SELECT
  1
FROM student_courses
WHERE course_id = 7
AND student_id = students.id);
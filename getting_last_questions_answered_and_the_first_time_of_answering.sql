SELECT q.id AS question_id, 
       TIMESTAMPDIFF(SECOND, q.creation_date, MIN(a.creation_date)) as time_to_answer
FROM questions q 
JOIN answers a ON q.id = a.question_id
GROUP BY q.id
ORDER BY time_to_answer DESC, question_id
LIMIT 500;

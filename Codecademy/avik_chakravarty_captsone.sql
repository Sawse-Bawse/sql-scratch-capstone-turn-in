-- Question 1
SELECT * 
FROM survey
LIMIT 10;

-- Question 2
SELECT question AS 'Question', COUNT(DISTINCT user_id) AS 'Count'
FROM survey
GROUP BY 1
ORDER BY 1;

-- Question 4
SELECT *
FROM quiz
LIMIT 5; 

SELECT *
FROM home_try_on
LIMIT 5; 

SELECT *
FROM purchase
LIMIT 5; 

-- Question 5
SELECT q.user_id AS 'user_id', 
   h.user_id IS NOT NULL AS 'is_home_try_on',
   h.number_of_pairs,
   p.user_id IS NOT NULL AS 'is_purchase'
FROM quiz AS 'q'
LEFT JOIN home_try_on AS 'h'
ON q.user_id = h.user_id
LEFT JOIN purchase as 'p'
ON q.user_id = p.user_id
LIMIT 10;


# Write your MySQL query statement below
(SELECT u.name AS results
FROM MovieRating mr
INNER JOIN Users u ON u.user_id=mr.user_id
GROUP BY u.user_id, u.name
ORDER BY COUNT(*) DESC, u.name
LIMIT 1)
UNION ALL
(SELECT m.title
FROM MovieRating mr
INNER JOIN Movies m ON m.movie_id=mr.movie_id
WHERE mr.created_at>='2020-02-01' AND mr.created_at<'2020-03-01'
GROUP BY m.movie_id, m.title
ORDER BY AVG(mr.rating) DESC, m.title
LIMIT 1)
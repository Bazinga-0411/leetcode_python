# Write your MySQL query statement below
SELECT W1.id
FROM Weather W1 JOIN WEATHER W2 ON DATEDIFF(W1.recordDATE, W2.recordDATE) = 1
WHERE W1.temperature > W2.temperature;
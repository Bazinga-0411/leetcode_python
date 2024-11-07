/* Write your T-SQL query statement below */
WITH tb AS (
    SELECT stock_name
    , operation
    , CASE WHEN operation = 'Buy' THEN  price * (-1)  ELSE price END AS price
    FROM Stocks
)

SELECT stock_name
       , SUM(price) AS capital_gain_loss
FROM tb
GROUP BY stock_name;
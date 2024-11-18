# Write your MySQL query statement below
WITH 
    A AS(SELECT DISTINCT product_id FROM Products),
    B AS(SELECT product_id,
                new_price AS price
        FROM Products
        WHERE (product_id, change_date) IN(
            SELECT product_id, MAX(change_date) AS change_date
            FROM Products
            WHERE change_date <= '2019-08-16'
            GROUP BY product_id
        )
       
)

SELECT A.product_id,
       IFNULL(B.price, 10) AS price
FROM A LEFT JOIN B ON A.product_id = B.product_id;

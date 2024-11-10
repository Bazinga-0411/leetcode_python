# Write your MySQL query statement below
SELECT name
FROM SalesPerson
WHERE name NOT IN (
    select sp.name
    from salesperson sp
    join orders o on sp.sales_id=o.sales_id
    join company c on o.com_id=c.com_id
    where c.name='Red'
);
# quality = avg(rating/position)
# poor query percentage = rating < 3
# rating range BETWEEN 1 AND 5
SELECT 
query_name, 
ROUND (avg (rating/position),2) AS quality, 
ROUND(SUM( rating < 3) / count(*) * 100 ,2) AS  poor_query_percentage
FROM Queries
GROUP BY query_name;


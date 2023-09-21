SELECT v.customer_id, count(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE v.visit_id NOT IN (SELECT visit_id FROM transactions)
GROUP BY customer_id;

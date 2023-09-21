SELECT e1.name
FROM Employee e
INNER JOIN Employee e1
ON e.managerid = e1.id
GROUP BY e.managerId
HAVING count(e.id) >=5
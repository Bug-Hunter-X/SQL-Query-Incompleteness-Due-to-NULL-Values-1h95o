```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
--Alternative solution using COALESCE to handle NULLs
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000; 
```
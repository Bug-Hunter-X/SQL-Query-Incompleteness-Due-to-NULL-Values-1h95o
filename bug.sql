```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might cause issues if the `salary` column allows NULL values.  Rows where the `salary` is NULL will be excluded from the result set, even if they are in the 'Sales' department.  This may lead to incomplete results if you expect to include employees with unknown salaries.
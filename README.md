# SQL Query Incompleteness Due to NULL Values
This repository demonstrates a common SQL error where NULL values in a comparison can lead to incomplete result sets.

The `bug.sql` file contains a query that unintentionally excludes employees with NULL salaries.  The correct approach, shown in `bugSolution.sql`, handles NULL values explicitly.

## Bug Description
The original query uses `salary > 100000` which will exclude any rows where `salary` is NULL, resulting in incomplete data. This might be unexpected behavior if you intended to include employees with unspecified salaries. 

## Solution
The solution uses the `IS NOT NULL` condition to explicitly check for non-NULL salaries. This ensures that all employees in the Sales department, regardless of whether their salary is specified, are considered.
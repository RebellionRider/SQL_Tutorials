# Interview Question: Identifying Employees with Frequent Absences on the Last Day of the Month

## Scenario:

As an HR manager, you are concerned about a potential pattern of absenteeism among your employees. You suspect that some employees might be consistently absent on the last day of each month. To investigate this further, you need to identify those who exhibit this behavior.

## Database:

You have access to a database table named `emp_attendance` with the following columns:

- `employee_id`: Unique identifier for each employee
- `date`: Date of attendance
- `status`: Att (Possible values: 'Present', 'Absent', 'Excused')

Write a SQL query that identifies employees who have been absent on the last day of at least two different months.

## Bonus:

Modify the query to also consider employees who have been absent on two consecutive last days of months.

## Explain the logic and reasoning behind your query.

**Note:**

This question assesses your understanding of SQL functions, filtering techniques, and subqueries. It also tests your ability to analyze data and identify patterns.


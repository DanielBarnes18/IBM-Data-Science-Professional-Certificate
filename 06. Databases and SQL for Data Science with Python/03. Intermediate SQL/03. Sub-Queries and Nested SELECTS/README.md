# Sub-Queries and Nested SELECTS
Sub-queries or sub selects are like regular queries but placed within parentheses and nested inside another query. This allows you to form more powerful queries than would have been otherwise possible. An example of a nested query is shown. In this example, the sub-query is inside the where clause of another query.  

	SELECT COLUMN from TABLE
	    WHERE COLUMN2 = SELECT( MAX(COLUMN2) from TABLE) ;
	    
## Sub-Select Expressions
Sub-queries are often necessary because aggregate functions like `AVG()` cannot be evaluated within a `WHERE` clause. E.g. tje following query will result in an error:

	SELECT * from EMPLOYEES
	    WHERE SALARY > AVG(SALARY) ;
	    
But using a **sub-select expression** will solve the issue, as shown below.

	SELECT * FROM EMPLOYEES
	   WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES) ;

## Column Expressions
The sub-select doesn't just have to go in the `WHERE` clause. It can also go in other parts of the query, such as in the list of columns to be selected. Such sub-queries are called **column expressions**. 

Say we wanted to compare the salary of each employee with the average salary. The following expression would result in an error:

	SELECT EMPLOYEE_ID, SALARY, AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES ;
	
We can circumvent this error by using the average function in a sub-query placed in the list of the columns. For example, 

	SELECT EMPLOYEE_ID, SALARY, 
	    (SELECT AVG(SALARY) from EMPLOYEES ) 
	    	AS AVG_SALARY 
	    from EMPLOYEES ;
	    
## Derived Tables or Table Expressions
Another option is to make the sub-query be part of the `FROM` clause. Sub-queries like these are sometimes called **derived tables** or **table expressions**, because the outer query uses the results of the sub-query as a data source, i.e. we substitute the TABLE name with a sub-query.
For example, 

	SELECT * FROM 
	    (SELECT EMPLOYEE_ID, F_NAME, L_NAME, DEP_ID FROM EMPLOYEES) AS EMP4ALL ; 
	    
The derived table in a sub-query does not include sensitive fields like date of birth or salary. This example is a trivial one, and we could just as easily have included the columns in the outer query. However, such derived tables can prove to be powerful in more complex situations such as when working with multiple tables and doing joins. 


## Nested `SELECT` Statements
A Typical Nested `SELECT` Statement looks like:

	SELECT column_name [, column_name ] FROM table1 [, table2 ]
		WHERE column_name OPERATOR
			(SELECT column_name [, column_name ] FROM table1 [, table2 ]
				WHERE condition);


# Advanced SQL for Data Engineering

## Views, Stored Procedures, and Transactions

### Views
A view is an alternative way of representing data that exists in one or more tables or views. A view can include all or some of the columns from one or more base tables or existing views. Creating a view creates a named specification of a results table, which can be queried in the same way as a table. Only the definition of the view is stored, not the data.

Views can:
- Show a selection of data for a given table
- Combine two or more tables in meaningful ways
- Simplify access to data
- Show only portions of daa in the table

An example of why to use a view would be to display only non-sensitive data from an Employees table. 


##### View Syntax
The syntax of a `CREATE VIEW` statement is as follows:

        CREATE VIEW view_name AS
        SELECT column1, column2, ...
        FROM table_name
        WHERE condition ; 
        
        
The syntax of a `REPLACE VIEW` statement is as follows:
        
        CREATE OR REPLACE VIEW view_name AS
        SELECT column_1, column_2, ...
        FROM table_name
        WHERE condition ;
        
        
The syntax of a `DROP VIEW` statement is as follows:

        DROP VIEW view_name ;
        
        
### Stored Procedures
A stored procedure is a set of SQL statements stored and executed on the database server. It can be written in many different languages, accept information in the form of parameters, and return results to the client.

Some benefits include:
- Reduction in network traffic because only one call is needed to execute multiple statements. 
- Improvement in performance because the processing happens on the server where the data is stored, with just the final result being passed back to the client. 
- Reuse of code because multiple applications can use the same stored procedure for the same job. Increase in security because:
    - You do not need to expose all your table and column information to client-side develop-ers
    - You can use server-side logic to validate data before accepting it into the system.
- They can reduce network traffic, improve performance, reuse code, and increase security 
Stored procedures can be called from external applications and dynamic SQL statements.

#### Stored Procedure Syntax
The syntax of a stored procedure is as follows:

<p align="center">
  <img src="Images/StoredProcedureSyntax.png" width="600">
</p>

And to call the stored procedure, run the following:

      CALL RETRIEVE_ALL ; 
      
where `RETRIEVE_ALL` was the stored procedure defined previously. 



### ACID Transactions

A **transaction** is an indivisible unit of work. 
It can consist of one or more SQL statements, but to be considered successful, either all of those SQL statements must complete successfully, leaving the database in a new stable state, or none must complete, leaving the database as it was before the transaction began.

ACID stands for:
- **Atomic** – all changes must be performed successfully, or not at all
- **Consistent** – data must be in a consistent state before and after the transaction
- **Isolated** – no other process can change the data while the transaction is running
- **Durable** – the changes made by the transaction must persist

SQL commands `BEGIN`, `COMMIT`, and `ROLLBACK` are used to manage ACID transactions. SQL commands can be called from languages like C, R and Python.

#### Example
A classic example transaction is an item purchase from a shop. Consider the 2 tables below, `BankAccounts` and `ShoeShop`.

<p align="center">
  <img src="Images/Tables.png" width="600">
</p>

If Rose buys a pair of Boots for £200, the following ACID commands must all be followed:

<p align="center">
  <img src="Images/Transaction.png" width="600">
</p>

Rose's balance, and the ShoeShop balance must be updated in the BankAccounts table. The Boots stock must also be updated in the ShoeShop table. 


## `JOIN` Statements
A `JOIN` combines the rows from two or more tables based on a relationship between certain columns in these tables. 
The column/s in each table to be used as a link between the tables must first be identified, and to do this, a join is usually created between a **primary key** in one table and a **foreign key** in another.

<p align="center">
  <img src="Images/PrimaryForeignKeys.png" width="600">
</p>

The syntax for all types of `JOIN` are shown below, and the following sections go into more detail, with examples. 

<p align="center">
  <img src="Images/JOIN_SYNTAX.png" width="600">
</p>



### `INNER JOIN`
An `INNER JOIN` displays only the rows from two tables that have matching value in a common column, usually the primary key of one table that exists as a foreign key in the second table.

For example, to retrieve a list of all people who are borrowing books, and the date of the loan, data is needed from the `borrower` table and the `loan` table. 
- In the `FROM` clause, specify the join between the `borrower` table and the `loan` table as `BORROWER INNER JOIN LOAN`. 
- Identify the `borrower` table as `B`, and the `loan` table as `L` (and use these aliases). 
- The table specified on the left of the `JOIN` clause is known as the left table – in this case, the `borrower` table is the left table. 
- For this join, select borrower ID, last name, and country from the `borrower` table, and the borrower ID and the loan date from the `loan` table. 
- In the `ON` clause, specify the `JOIN` predicate, in this case the condition that the borrower ID in the borrower table is equal to the borrower ID in the loan table. 

<p align="center">
  <img src="Images/InnerJoin.png" width="600">
</p>

The result set shows only the rows from both tables that have the same borrower ID. The rows are displayed if they `Borrower_Id` matches. Rows with `Borrower_IDs` that do not match are not displayed.

<p align="center">
  <img src="Images/InnerJoinResult.png" width="600">
</p>
``
``The `Borrower_Id`, `Lastname`, and Country columns are taken from the `Borrower` table and joined to the `Borrower_Id` and `Loan_Date` columns from the Loan table to make the result set.



### `OUTER JOIN`
Outer joins, like inner joins, return the rows from each table that have matching values in the join columns. Unlike inner joins, outer joins also return the rows that do not have a match between the tables. 

SQL offers three types of outer joins: 
- `LEFT OUTER JOIN`
- `RIGHT OUTER JOIN`
- `FULL OUTER JOIN`

<p align="center">
  <img src="Images/OuterJoin.png" width="600">
</p>


#### `LEFT JOIN` Operator
A left outer join returns all the rows from the left table, and any matching rows from the right table. An example is shown below:

<p align="center">
  
  <img src="Images/LeftJoin.png" width="600">
</p>

- The Borrower table is the first table specified in the `FROM` clause of the `SELECT` statement, so the `Borrower` table is the `LEFT` table, and the `Loan` table is the `RIGHT` table.
- In the `FROM` clause, `Borrower` is listed on the left side of the join operator, therefore all rows from the `Borrower` table will be selected and combined with the contents of the `Loan` table based on the criteria specified in the query. 
- In this example, the criteria is the `BORROWER ID` column. For a `LEFT OUTER JOIN`, simply called a `LEFT JOIN`, the following columns from the `Borrower` table will be selected: `BorrowerID`, `LastName`, and `Country`, and the following columns will also be selected from the `Loan` table: `BorrowerID`, and `LoanDate`. 
- The `LEFT JOIN` selects each `BORROWER ID` in the Borrower table and displays the `LoanDate` from the `Loan` table. The result set shows each Borrower ID from the borrower table, and the loan date for that borrower. For example, there is no loan date for the last three rows, so the borrower ID and loan date show null values.



#### `RIGHT JOIN` Operator
A right outer join returns all the rows from the right table, and any matching rows from the left table. An example is shown below:

<p align="center">
  <img src="Images/RightJoin.png" width="600">
</p>

- In the `FROM` clause, the `Loan` table is listed on the right side of the join operator, therefore all rows from the Loan table will be selected and combined with the contents of the `Borrower` table based on the criteria specified in the query. 
- The criteria is the `BORROWER_ID` column. For a `RIGHT JOIN`, the following columns will be selected from the `Loan` table: `Borrower_ID`, and `LoanDate`, and the following columns will also be selected from the `Borrower` table: `Borrower_ID`, `LastName`, and `Country` where the `Borrower_ID` in the `Loan` table matches the `Borrower_ID` in the `Borrower` table. 
- The result set shows each `Borrower_ID` from the `Loan` table and the `LoanDate` for that `Borrower`, where the `Borrower_ID` in the `Loan` table also exists in the `Borrower` table. 
- For the last row, there is no matching row in the `Borrower` table, so the `Borrower_ID`, `Lastname`, and `Country` show null values. This could indicate a problem for the library; it indicates there is a book on loan to an unknown person.



#### `FULL JOIN` Operator
A full outer join, or full join, returns all rows from both tables. An example is shown below:

<p align="center">
  <img src="Images/FullJoin.png" width="600">
</p>

- For a `FULL JOIN`, all rows are selected from the `Borrower` table and all rows from the `Loan` table are also selected. 
- The result set shows all eight records from the `Borrower` table listed with the corresponding data from the `Loan` table. 

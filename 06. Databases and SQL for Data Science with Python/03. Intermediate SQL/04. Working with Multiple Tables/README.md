# Working with Multiple Tables
There are 3 main ways of accessing multiple tables in the same query:
1. Sub-queries
2. Implicit `JOIN`
3. `JOIN` operators (`INNER JOIN`, `OUTER JOIN`, etc.)

A `JOIN` combines the rows from two or more tables based on a relationship between certain columns in these tables. 
The column/s in each table to be used as a link between the tables must first be identified, and to do this, a join is usually created between a **primary key** in one table and a **foreign key** in another.

<p align="center">
  <img src="../Images/PrimaryForeignKeys.png" width="600">
</p>


## `INNER JOIN`
An `INNER JOIN` displays only the rows from two tables that have matching value in a common column, usually the primary key of one table that exists as a foreign key in the second table.

For example, to retrieve a list of all people who are borrowing books, and the date of the loan, data is needed from the borrower table and the loan table. 
- In the `FROM` clause, specify the join between the borrower table and the loan table as `BORROWER INNER JOIN LOAN`. 
- Identify the borrower table as `B`, and the loan table as `L` (and use these aliases). 
- The table specified on the left of the `JOIN` clause is known as the left table – in this case, the borrower table is the left table. 
- For this join, select borrower ID, last name, and country from the borrower table, and the borrower ID and the loan date from the loan table. 
- In the `ON` clause, specify the `JOIN` predicate, in this case the condition that the borrower ID in the borrower table is equal to the borrower ID in the loan table. 

<p align="center">
  <img src="../Images/InnerJoin.png" width="600">
</p>

The result set shows only the rows from both tables that have the same borrower ID. The rows are displayed if they Borrower_Id matches. Rows with Borrower_IDs that do not match are not displayed.
<p align="center">
  <img src="../Images/InnerJoinResult.png" width="600">
</p>
The Borrower_Id, Lastname, and Country columns are taken from the Borrower table and joined to the Borrower_Id and Loan_Date columns from the Loan table to make the result set



## `OUTER JOIN`
An `OUTER JOIN` returns matching rows, and even the rows from one or the other table that don’t match. 

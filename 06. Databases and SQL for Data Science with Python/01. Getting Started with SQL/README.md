# Getting Started with SQL


## Introduction to Databases

### What is SQL?
SQL (Structured English Query Language) is a language used for relational databases to query or get data out of a database.

### What is a Database?
A database is a repository of data, or a program that stores data. A database also provides the functionality for adding, modifying, and querying that data. 
### Relational Databases
Relational databases have their data stored in tabular form, in columns and rows, where the columns contain properties about the item, such as last name, first name, email address, city, etc. 
A table is a collection of related things like a list of employees or a list of book authors. In a relational database, you can form relationships between tables, hence the term “relational”.

### DBMS
A set of software tools for the data in the database is called a database management system (DBMS). The terms database, database server, database system, data server, and database management systems are often used interchangeably. 

### RDBMS
For relational databases, it's called a relational database management system or RDBMS. RDBMS is a set of software tools that controls the data such as access, organization, and storage. And RDBMS serves as the backbone of applications in many industries including banking, transportation, health, and so on. Examples of relational database management systems are MySQL, Oracle Database, DB2 Warehouse, and DB2 on Cloud. 

### Basic SQL Commands
For most people using a database, there are five simple commands:
1.	Create a table:
2.	Insert data to populate the table
3.	Select data from the table
4.	Update data in the table
5.	Delete data from the table

### Note
Some database systems require a semicolon at the end of each SQL statement for execution. It is a standard way to separate one SQL statement from another which allows more than one SQL statement to be executed in the same call to the server. So, it is good practice to use a semicolon at the end of each SQL statement.

Note also that SQL is case-insensitive, so `select` is the same as `SELECT`.

## `SELECT` Statements
The `SELECT` statement is a data manipulation language statement. Data Manipulation Language statements or DML statements are used to read and modify data. The `SELECT` statement is called a query, and the output we get from executing this query is called a result set or a result table. 

### Using the `SELECT` Statement
The general syntax of `SELECT` statements is:

` SELECT COLUMN1, COLUMN2, ... from TABLE1 ;`

This will retrieve a subset of the columns (in this case `COLUMN1, COLUMN2`, and the order of the columns displayed always matches the order in the `SELECT` statement.

### Select All
To retrieve all columns from the COUNTRY table we could use `*` instead of specifying individual column names:
`SELECT * from COUNTRY ;`


### Filtering Results
The `WHERE` clause can be added to your query to filter results or get specific rows of data. To retrieve data for all rows in the `COUNTRY` table where the `ID` is less than 5:

`SELECT * from COUNTRY WHERE ID < 5 ;`

In case of character based columns the values of the predicates in the where clause need to be enclosed in single quotes. To retrieve the data for the country with country code `CA` we would issue:

`SELECT * from COUNTRY WHERE CCODE = 'CA' ;`

Any comparison operator from the following list can be used in the `WHERE` clause:
- Equal to (`=`)
- Not equal to (`<>`)
- Greater than (`>`)
- Less than (`<`)
- Greater than or equal to (`>=`)
- Less than or equal to (`<=`)

#### Combining WHERE Clauses
To comine `WHERE` clauses, use the `AND` operator between 2 bracketed logical statements, like:

	`SELECT F_NAME, L_NAME from EMPLOYEES
		WHERE (SALARY BETWEEN 60000 AND 70000) AND (DEP_ID = 5);`


## COUNT, DISTINCT, LIMIT Statements
## INSERT Statements
## UPDATE and DELETE Statements
## Summary

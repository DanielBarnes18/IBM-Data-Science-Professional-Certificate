# Chicago Census, Crime, and School Data Analysis using SQL


## Context

Using a a real world dataset provided by the Chicago Data Portal, assume the role of a data analyst hired by a non-profit organization that strives to improve educational outcomes for children and youth in the City of Chicago. 
The job is to analyze the census, crime, and school data for a given neighborhood or district, identifying causes that impact the enrollment, safety, health, and environment ratings of schools.

Using SQL queries, anwer a number of questions about the dataset.


In this assignment:
- Download the datasets provided
- Load them into a database
- Write and execute SQL queries to answer the problems provided
- Upload screenshots showing the correct SQL queries and results for peer review. 

## Datasets

This assignment involves 3 datasets for the city of Chicago obtained from the Chicago Data Portal:

1. [Chicago Socioeconomic Indicators](https://github.com/DanielBarnes18/IBM-Data-Science-Professional-Certificate/blob/main/06.%20Databases%20and%20SQL%20for%20Data%20Science%20with%20Python/05.%20Course%20Assignment/ChicagoCensusData.csv)
    - This dataset contains a selection of six socioeconomic indicators of public health significance and a hardship index, by Chicago community area, for the years 2008 – 2012.

2. [Chicago Public Schools](https://github.com/DanielBarnes18/IBM-Data-Science-Professional-Certificate/blob/main/06.%20Databases%20and%20SQL%20for%20Data%20Science%20with%20Python/05.%20Course%20Assignment/ChicagoPublicSchools.csv)
    - This dataset shows all school level performance data used to create CPS School Report Cards for the 2011-2012 school year.

3. [Chicago Crime Data](https://github.com/DanielBarnes18/IBM-Data-Science-Professional-Certificate/blob/main/06.%20Databases%20and%20SQL%20for%20Data%20Science%20with%20Python/05.%20Course%20Assignment/ChicagoCrimeData.csv)
    - This dataset reflects reported incidents of crime (with the exception of murders where data exists for each victim) that occurred in the City of Chicago from 2001 to present, minus the most recent seven days.


## Problems

The full notebook can be found [here]. It follows the assignment instructions outlined above, and answers the following problems. Screenshots to the problems are also shown below. 

**Problem 1**: Find the total number of crimes recorded in the CRIME table.

<p align="center">
  <img src="Images/Problem1.jpg" width="600">
</p>

**Problem 2**: List community areas with per capita income less than 11000.

<p align="center">
  <img src="Images/Problem2.jpg" width="600">
</p>

**Problem 3**: List all case numbers for crimes involving minors?

<p align="center">
  <img src="Images/Problem3.jpg" width="600">
</p>

**Problem 4**: List all kidnapping crimes involving a child?(children are not considered minors for the purposes of crime analysis)

<p align="center">
  <img src="Images/Problem4.jpg" width="600">
</p>

**Problem 5**: What kind of crimes were recorded at schools?

<p align="center">
  <img src="Images/Problem5.jpg" width="600">
</p>

**Problem 6**: List the average safety score for all types of schools.

<p align="center">
  <img src="Images/Problem6.jpg" width="600">
</p>

**Problem 7**: List 5 community areas with highest % of households below poverty line.

<p align="center">
  <img src="Images/Problem7.jpg" width="600">
</p>

**Problem 8**: Which community area(number) is most crime prone?

<p align="center">
  <img src="Images/Problem8.jpg" width="600">
</p>

**Problem 9**: Use a sub-query to find the name of the community area with highest hardship index.

<p align="center">
  <img src="Images/Problem9.jpg" width="600">
</p>

**Problem 10**: Use a sub-query to determine the Community Area Name with most number of crimes.

<p align="center">
  <img src="Images/Problem10.jpg" width="600">
</p>




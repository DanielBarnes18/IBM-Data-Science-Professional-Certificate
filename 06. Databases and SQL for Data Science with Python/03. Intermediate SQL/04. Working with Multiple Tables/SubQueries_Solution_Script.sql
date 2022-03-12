
--- Query 1 ---
select * 
from employees 
where salary < AVG(salary)
;
--- Query 2---	
select EMP_ID, F_NAME, L_NAME, SALARY 
from employees 
where SALARY < 
	(select AVG(SALARY) 
	from employees)
;
--- Query 3 ---
select EMP_ID, SALARY, MAX(SALARY) AS MAX_SALARY 
from employees
;	
--- Query 4 ---
select EMP_ID, SALARY, ( select MAX(SALARY) from employees ) AS MAX_SALARY 
from employees
;
--- Query 5 ---
select * 
from ( select EMP_ID, F_NAME, L_NAME, DEP_ID from employees) AS EMP4ALL 
;
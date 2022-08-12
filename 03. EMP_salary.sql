
--Our challenge--
-- 1 ) FINDING current employees whose salary over than average salary
Select 
  E.firstname ,
  E.lastname ,
  E.salary
FROM employees E
where E.salary >(
	SELECT AVG(salary) from employees E
    where E.status <> 'Resigned'    
) 
and E.status <> 'Resigned' ;
    
-- 2 ) finding max , min , average  of salary which over avg salary 
-- and count of employee which have above median salary---

Select 
   max(E.salary) max_salary_above_avg,
   min(E.salary) min_salary_above_avg, 
   AVG(E.salary) Avg_salary_above_total_avg,
   count(DISTINCT E.firstname)    people_High_salary
   
FROM employees E
where E.salary >(
	SELECT AVG(salary) from employees E
    where E.status <> 'Resigned' 
    )

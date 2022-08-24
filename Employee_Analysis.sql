--Remark
-- Tis case we use SQL analysis via Microsoft SQL server 2014
-- Our Analysis use company_DB as shown in Data-Science-Project-2022 Folder
-- but in program , we cannot rename it to descriptive name so we use the name 'GIS_PJ1'


-- IN-Class Exercise

-- to solve the problem defined

--start with calling to the database (CompanyDB)
use GIS_PJ1

-- 1. Retrieve the names of all employees in 'department 5' who work more than 10 hours per week
-- on  the 'ProductX' Project

select essn , hours , Pname ,Dnum
from EMPLOYEE , WORKS_ON , PROJECT 
where Essn = Ssn and Pno = Pnumber
                 and dnum = 5
                 and Pname = 'ProductX'
				         and Hours > 10 ;
                
-- 2. List top 2 employee (ssn) who work the most hours across the projects

select top 2 Ssn ,
             Fname, 
			       Lname , 
			       Hours
from EMPLOYEE, WORKS_ON
order by Hours desc ;

--3. Find the name of Employees who are directly supervised by "Franklin Wong"

select Fname ,Lname , Ssn 
from EMPLOYEE
where Super_ssn = ( 
                     select Ssn 
                     from EMPLOYEE
                     where Fname = 'Franklin'  and Lname = 'Wong'   ) ;
		    
-- 4.  Who is the manager of Research Department ?

select distinct(Fname) , 
       Lname,
       ssn
from DEPARTMENT , EMPLOYEE
where ssn = ( 
                select Mgr_ssn
                from DEPARTMENT
                where Dname = 'Research' ) ;
		
-- 5. List the names of All Employees who have salary more than theire supervisor

      

                 
       
                 
          
         






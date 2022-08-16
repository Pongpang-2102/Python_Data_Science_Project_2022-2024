-- Case employee---

-- 1 ) find the current employee to update email to firstname.first 2 charactor as upper case(lastname)@th.tastemcu.com and name that column that"New Email_2022"
       -- column needed : full name , current email ,  New_email_2022---
select
   E.firstname || ' ' || E.lastname  Full_name ,
   E.email Current_email ,
   E.firstname || '.' || UPPER(SUBSTR(lastname,1,2)) || '@th.tastemcu.com'  New_email_2022
   
from employees E
where E.status <> 'Resigned'
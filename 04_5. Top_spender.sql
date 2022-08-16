-- challenge-- 
-- 1 ) to find  the top3 most spender over the average spending amout to send a giftcard & promotion 
   -- detail required : customer ID , Customer firstname / lastname , Total amout spended (THB) 


select  
  C.CustomerID                       Cus_ID ,
  C.firstname || ' ' ||C.lastname    Cus_Full_Name,
  sum(I.total_cost )                      Total_amount_THB

from invoices I
join customers C on C.customerid = I.CustomerID 
join invoice_items IVT on IVT.invoiceid = I.invoiceid
group by 1,2 
having  Total_amount_THB > (
  	 select AVG(total_cost) FROM   invoices
) 

order by 3 DESC
limit 3;
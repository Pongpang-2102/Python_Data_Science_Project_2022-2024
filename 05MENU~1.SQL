--challenge--- 

-- 1 ) to find TOP3 least KCAL food from our restaurant--customers--for Health lover
select 
   menu_name ,
   setkcal 
from menus
where setkcal is not NULL
order by 2
limit 3 ;

-- 2 ) finding the top 3 most menus be spended with total amout of spending money + total dishes

select 
   M.menu_name ,
   sum(I.total_cost)  total_amount_THB ,
   sum(IVT.unit_dish) N_dish_ordered
   
   
from menus M 
join invoice_items IVT on IVT.menuid = M.menuid
join invoices      I   on I.InvoiceID = IVT.InvoiceID 
group by 1
ORDER by   total_amount_THB  
limit 5;






-- 3 ) finding the 3 least spended menu for increase sales promotions : total amount only

select 
   M.menu_name ,
   sum(I.total_cost)  total_amount_THB 
   
   
from menus M 
join invoice_items IVT on IVT.menuid = M.menuid
join invoices      I   on I.InvoiceID = IVT.InvoiceID 
group by 1
ORDER by   total_amount_THB   desc
limit 5;


-- 4 ) finding the most popular menu (most dishes)

select 
   M.menu_name ,
   sum(I.total_cost)  total_amount_THB ,
   sum(IVT.unit_dish) N_dish_ordered
   
from menus M 
join invoice_items IVT on IVT.menuid = M.menuid
join invoices      I   on I.InvoiceID = IVT.InvoiceID 
group by 1
ORDER by   total_amount_THB   desc
limit 1
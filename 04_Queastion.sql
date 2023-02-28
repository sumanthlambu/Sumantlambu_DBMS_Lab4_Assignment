#que4
#Display all the orders along with product name ordered by a customer having Customer_Id=2
use ecommerce;
select P.pro_name,O.*,C.cus_name 
from `order` O
join supplier_pricing SP on (O.PRICING_ID=SP.PRICING_ID)
join Product P on (SP.pro_id=p.pro_id) 
join customer C on (O.CUS_ID=c.CUS_ID)
where c.CUS_ID=2 ;

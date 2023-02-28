#que6
#Find the least expensive product from each category and print the table with category id, name, product name and price of the product
Select
  C.cat_id as category_id
 ,C.CAT_NAME as Name
 ,P.PRO_NAME as Product_name
 ,min(SP.SUPP_PRICE) as MinProductPrice
from category C
Join product P ON (C.CAT_ID=P.CAT_ID)
join supplier_pricing SP ON (P.PRO_ID=SP.PRO_ID)
group by C.cat_id 
order by C.cat_id;
#que5
#Display the Supplier details who can supply more than one product.
use ecommerce;
select S.SUPP_ID,S.SUPP_NAME,S.SUPP_CITY,S.SUPP_PHONE 
from Supplier S
join supplier_pricing SP on (S.SUPP_ID=SP.SUPP_ID)
group by SP.SUPP_ID
having count(SP.SUPP_ID)>1 ;
#que3
#Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
use ecommerce;
with Customer_Details as(
	select C.cus_gender,C.CUS_NAME TotalNoofCustomer 
	from customer C
	join `order` O on (c.CUS_ID=O.CUS_ID)
	where O.ord_amount>='3000'
	group by C.CUS_ID
)
select cus_gender,count(cus_Gender) as NoOfCustomers from Customer_Details group by cus_GENDER;
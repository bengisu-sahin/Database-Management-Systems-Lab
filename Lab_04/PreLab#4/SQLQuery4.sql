--------SELECT-------
--SELECT * FROM sales.customers
--SELECT * FROM sales.stores
--SELECT * FROM production.brands
--SELECT * FROM production.categories
--SELECT O.order_status, O.order_id, C.customer_id FROM sales.orders O,sales.customers C WHERE O.customer_id=C.customer_id
--SELECT S.first_name,S.last_name ,SS.store_name FROM sales.staffs S, sales.stores SS WHERE S.store_id=SS.store_id
--SELECT O.list_price,P.product_name,C.category_name 
--   FROM sales.order_items O,production.products P,production.categories C 
--   WHERE O.product_id=P.product_id AND P.category_id=C.category_id

--------SELECT DISTINCT-------
	--*The SELECT DISTINCT statement is used 
	--*to return only distinct (different) values.
--Burada 2 fields tek bir alanmýþ gibi davranýr.
--SELECT DISTINCT P.product_name , C.category_name FROM production.products P,production.categories C 
--SELECT DISTINCT B.brand_name   FROM production.brands B

--------WHERE---------
--SELECT P.category_id,P.brand_id,P.product_name,P.model_year,C.category_name 
--FROM production.products P , production.categories C 
--WHERE C.category_name='Road Bikes' and C.category_id=P.category_id

--SELECT S.first_name,S.last_name FROM sales.staffs S WHERE S.manager_id=2 

--------AND/OR/NOT---------
--SELECT C.first_name,C.last_name,C.email FROM sales.customers C WHERE C.city='New York' AND C.state='NY'
--SELECT S.staff_id,S.first_name,S.store_id,SS.store_name,SS.store_id FROM sales.staffs S,sales.stores SS WHERE S.store_id=SS.store_id AND SS.state='TX' 
--SELECT S.first_name,S.manager_id,S.phone,SS.state FROM sales.staffs S,sales.stores SS WHERE S.manager_id='2' OR SS.state='TX';
--SELECT P.brand_name,C.category_name  FROM production.brands P,production.categories C WHERE P.brand_name='Haro' OR C.category_name='Road Bikes';
--SELECT * FROM production.brands B WHERE NOT B.brand_name='Electra';
--SELECT  O.discount,P.product_name,C.category_name FROM sales.order_items O,production.products P,production.categories C WHERE NOT C.category_name='Cyclocross Bicycles' OR O.discount>0.1 ;


--------ORDER BY ---------
--SELECT O.order_id,O.discount FROM sales.order_items O ORDER BY O.discount DESC --düþen yani azalan
--SELECT P.product_name,P.model_year FROM production.products P ORDER BY P.model_year --ASC yani artan
--SELECT * FROM production.stocks ORDER BY quantity ASC

-------- NULL VALUES ---------
--SELECT S.staff_id ,S.phone,S.manager_id FROM sales.staffs S WHERE S.manager_id IS NULL;
--SELECT P.product_name, P.list_price ,O.quantity FROM production.products P ,sales.order_items O WHERE O.product_id=P.product_id and P.list_price IS NOT NULL;

-------- UPDATE ---------
--UPDATE sales.staffs  SET phone='5307475112'  WHERE first_name='Fabiola';
--SELECT *FROM sales.staffs S WHERE S.first_name='Fabiola';

-------- DELETE ---------
--DELETE FROM sales.customers WHERE customer_id=7; --!!! bunu sorrr !!!!
--DELETE CASCADE from sales.staffs WHERE manager_id =2
--SELECT * FROM sales.customers WHERE customer_id=7;
--SELECT * FROM sales.orders WHERE customer_id=7;
--DELETE FROM production.brands WHERE brand_name='Electra';
--SELECT * FROM production.brands;

-------- SELECT TOP ---------
--SELECT TOP 5 * FROM sales.customers; --ilk 5 record
--SELECT TOP 5 PERCENT * FROM sales.customers; --yüzde 5i geldi
--SELECT TOP 10 * FROM sales.customers WHERE phone IS NOT NULL;

--------  MIN, MAX ---------
--SELECT MIN(list_price) FROM production.products;
--SELECT MAX(list_price) FROM production.products WHERE brand_id='4';

-------- COUNT, AVG, SUM  ---------
--SELECT COUNT(product_id) FROM production.products 
--SELECT AVG(list_price) FROM production.products 
--SELECT SUM(list_price) FROM production.products

-------- LIKE  ---------
--SELECT * FROM sales.customers WHERE first_name LIKE 'a%';
--SELECT * FROM sales.customers WHERE last_name LIKE '%a';
--SELECT * FROM sales.stores WHERE store_name LIKE '%or'
--SELECT * FROM sales.customers WHERE first_name NOT LIKE 'a%'

-------- IN  ---------
--SELECT * FROM production.products WHERE model_year IN (2016)
--SELECT * FROM production.products WHERE model_year NOT IN (2016);
--SELECT * FROM sales.customers WHERE state IN (SELECT state='TX' FROM sales.customers )

-------- BETWEEN  ---------
--SELECT * FROM sales.order_items WHERE discount BETWEEN 0.07 AND 0.2;
--SELECT * FROM sales.order_items WHERE discount NOT BETWEEN 0.07 AND 0.2;

select * from sales.staffs as s1, sales.staffs as s2 where s2.staff_id = s1.manager_id
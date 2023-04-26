USE PIZZA_STORE;


-- Create a view for chicken products with names
CREATE VIEW chicken_product AS
SELECT all_chicken.product_id, chicken.chicken_name, chicken_wing_hot_level.level_type, concat(chicken.chicken_name," ",chicken_wing_hot_level.level_type) AS combine_name 
FROM all_chicken
JOIN chicken, chicken_wing_hot_level
WHERE all_chicken.chicken_id = chicken.chicken_id
AND all_chicken.level_id = chicken_wing_hot_level.level_id
ORDER BY chicken.chicken_name;



-- Create a view for pasta products with names
CREATE VIEW pasta_product AS
SELECT all_pasta.product_id, pasta.pasta_name, pasta_extra.extra_item, concat(pasta.pasta_name," ",pasta_extra.extra_item) AS combine_name FROM all_pasta
JOIN pasta, pasta_extra
WHERE all_pasta.pasta_id = pasta.pasta_id
AND all_pasta.pasextra_id = pasta_extra.pasextra_id
ORDER BY pasta.pasta_name; 



-- Create a view for pizza products with names
CREATE VIEW pizza_product AS
SELECT all_pizza.product_id, pizza.pizza_name, pizza_size.size, concat(pizza.pizza_name," ",pizza_size.size) AS combine_name FROM all_pizza
JOIN pizza, pizza_size
WHERE all_pizza.pizza_id = pizza.pizza_id
AND all_pizza.psize_id = pizza_size.psize_id
ORDER BY pizza.pizza_name;



-- Create a view for salad products with names
CREATE VIEW salad_product AS
SELECT all_salad.product_id, salad.salad_name, other_size.size, salad_extra.extra_item FROM all_salad
JOIN salad, other_size, salad_extra
WHERE all_salad.salad_id = salad.salad_id
AND all_salad.osize_id = other_size.osize_id
AND all_salad.saladextra_id = salad_extra.saladextra_id
ORDER BY salad.salad_name;



-- Create a view for sandwiches products with names
CREATE VIEW sandwiches_product AS
SELECT all_sandwiches.product_id, sandwiches.sandwiches_name, sandwiches_cheese.sw_cheese_type, concat(sandwiches.sandwiches_name," ",sandwiches_cheese.sw_cheese_type) AS combine_name 
FROM all_sandwiches
JOIN sandwiches, sandwiches_cheese
WHERE all_sandwiches.sandwiches_id = sandwiches.sandwiches_id
AND all_sandwiches.sw_cheese_id = sandwiches_cheese.sw_cheese_id
ORDER BY sandwiches.sandwiches_name;



-- Create a view for side orders products with names
CREATE VIEW side_orders_product AS
SELECT all_side_orders.product_id, side_orders.side_orders_name, other_size.size, concat(side_orders.side_orders_name," ",other_size.size) AS combine_name FROM all_side_orders
JOIN side_orders, other_size
WHERE all_side_orders.side_orders_id = side_orders.side_orders_id
AND all_side_orders.osize_id = other_size.osize_id
ORDER BY side_orders.side_orders_name;



-- Create a view for subs products with names
CREATE VIEW subs_product AS
SELECT all_subs.product_id, subs.subs_name, subs_size.size, concat(subs.subs_name," ",subs_size.size) AS combine_name FROM all_subs
JOIN subs, subs_size
WHERE all_subs.subs_id = subs.subs_id
AND all_subs.subsize_id = subs_size.subsize_id
ORDER BY subs.subs_name;


CREATE VIEW product_desc AS
SELECT chicken_product.product_id, chicken_product.chicken_name AS product_desc, chicken_product.level_type AS product_attrib1, 
chicken_product.combine_name AS product_attrib2 FROM chicken_product
UNION 
SELECT * FROM pasta_product
UNION
SELECT * FROM pizza_product
UNION
SELECT * FROM salad_product
UNION 
SELECT * FROM sandwiches_product
UNION
SELECT * FROM side_orders_product
UNION
SELECT * FROM subs_product
ORDER BY product_id;



-- Create a view to have a product category list
CREATE VIEW product_desc_with_cat AS
SELECT product_desc.product_id, product_desc.product_desc, food_category.category FROM product_desc
LEFT JOIN food_category
ON food_category.food_id = LEFT(product_desc.product_id,1);



-- Create a sales record view
CREATE VIEW sales_record AS
SELECT order_record.order_id, order_record.order_date, year(order_record.order_date) AS order_year, monthname(order_record.order_date) AS order_month, 
month(order_record.order_date) AS order_monthnum, week(order_record.order_date) AS order_week, day(order_record.order_date) AS order_day, order_record.product_id, product_desc_with_cat.product_desc, 
product_desc_with_cat.category, order_record.qty, product.price, (order_record.qty * product.price) AS pretax_total, order_record.tax_rate, 
round((order_record.qty * product.price * (1 + order_record.tax_rate)),2) AS after_tax_total, delivery_type.dtype, payment_method.method 
FROM ORDER_RECORD
JOIN PRODUCT, DELIVERY_TYPE, PAYMENT_METHOD, PRODUCT_DESC_WITH_CAT
WHERE order_record.product_id = product.product_id
AND order_record.dtype_id = delivery_type.dtype_id
AND order_record.paymethod_id = payment_method.paymethod_id
AND order_record.product_id = product_desc_with_cat.product_id
ORDER BY order_record.order_id;



-- Create a view for sales record by distinct order id 
CREATE VIEW sales_record_by_order AS
SELECT order_id, order_date, order_year, order_month, order_week, order_day, sum(pretax_total) AS order_pretax_total, tax_rate, 
sum(after_tax_total) AS order_after_tax_total, dtype, method
FROM SALES_RECORD
GROUP BY order_id
ORDER BY order_id;



-- Create a purchase record view
CREATE VIEW purchase_record AS
SELECT purchase.purchase_id, purchase.material_id, purchase.product_id, product_desc.product_desc, purchase.qty, purchase.unit_cost, (purchase.qty * purchase.unit_cost) AS total_cost,
year(purchase.purchase_date) AS purchase_year, month(purchase.purchase_date) AS purchase_month, day(purchase.purchase_date) AS purchase_day  
FROM purchase
LEFT JOIN product_desc
ON purchase.product_id = product_desc.product_id
ORDER BY purchase.purchase_id;




-- Create view for average sales by month by product desciption
CREATE VIEW avg_mth_pretax_sales AS
SELECT sales_record.order_year, sales_record.order_month, sales_record.order_monthnum, sales_record.product_desc, 
ROUND(SUM(sales_record.pretax_total) / SUM(qty),2) AS avg_pretax_sales, SUM(sales_record.pretax_total) AS mth_pretax_sales,
CONCAT(sales_record.order_year, sales_record.order_monthnum, sales_record.product_desc) AS id
FROM sales_record
GROUP BY sales_record.order_year, sales_record.order_month, sales_record.order_monthnum, sales_record.product_desc;



-- Create view for average cost by month by product desciption
CREATE VIEW avg_mth_cost AS
SELECT purchase_record.purchase_year, purchase_record.purchase_month, purchase_record.product_desc,
ROUND((SUM(purchase_record.total_cost) / SUM(purchase_record.qty)),2) AS avg_cost, SUM(purchase_record.total_cost) AS mth_cost,
CONCAT(purchase_record.purchase_year, purchase_record.purchase_month, purchase_record.product_desc) AS id
FROM purchase_record
GROUP BY purchase_record.purchase_year, purchase_record.purchase_month, purchase_record.product_desc;




-- Create a view for Gross Profit calculations
CREATE VIEW gross_profit AS
SELECT avg_mth_pretax_sales.*, avg_mth_cost.avg_cost, avg_mth_cost.mth_cost,
(avg_mth_pretax_sales.avg_pretax_sales - avg_mth_cost.avg_cost) AS avg_gp,
(avg_mth_pretax_sales.mth_pretax_sales - avg_mth_cost.mth_cost) AS mth_gp
FROM avg_mth_pretax_sales
JOIN avg_mth_cost
ON avg_mth_pretax_sales.id = avg_mth_cost.id;






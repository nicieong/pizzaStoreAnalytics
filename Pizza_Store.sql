-- Create Schema
DROP database IF EXISTS Pizza_Store;
CREATE database IF NOT EXISTS Pizza_Store;

-- Use Pizza_Store Schema
USE Pizza_Store;

-- Create Tables
-- Create Reference Table
CREATE TABLE FOOD_CATEGORY (
    food_id VARCHAR(1) NOT NULL,
    category VARCHAR(50) NOT NULL,
    CONSTRAINT food_category_pk PRIMARY KEY (food_id)
);

-- Create Table Pizza
CREATE TABLE PIZZA (
pizza_id	int				NOT NULL,
pizza_name	VARCHAR(50)		NOT NULL,
CONSTRAINT  pizza_pk		PRIMARY KEY(pizza_id)
);

-- Create Table Pasta
CREATE TABLE PASTA (
pasta_id	int				NOT NULL,
pasta_name	VARCHAR(50)		NOT NULL,
CONSTRAINT	pasta_pk		PRIMARY KEY(pasta_id)
);

-- Create Table Chicken
CREATE TABLE CHICKEN (
chicken_id		int				NOT NULL,
chicken_name	VARCHAR(50)		NOT NULL,
CONSTRAINT		chicken_pk		PRIMARY KEY(chicken_id)
);

-- Create Table Sandwiches
CREATE TABLE SANDWICHES (
sandwiches_id	int			NOT NULL,
sandwiches_name	VARCHAR(50)	NOT NULL,
CONSTRAINT		sandwiches_pk		PRIMARY KEY(sandwiches_id)
);

-- Create Table Subs
CREATE TABLE SUBS (
subs_id		int				NOT NULL,
subs_name	VARCHAR(50)		NOT NULL,
CONSTRAINT	subs_pk			PRIMARY KEY(subs_id)
);

-- Create Table Side_Orders
CREATE TABLE SIDE_ORDERS (
side_orders_id		int			NOT NULL,
side_orders_name	VARCHAR(50)	NOT NULL,
CONSTRAINT		side_orders_pk		PRIMARY KEY(side_orders_id)
);

-- Create Table Salad
CREATE TABLE SALAD (
 salad_id		int			NOT NULL,
 salad_name		VARCHAR(50)	NOT NULL,
CONSTRAINT		salad_pk	PRIMARY KEY(salad_id)
);

-- Create Table Tax Rate
CREATE TABLE TAX_RATE (
tax_rate		DECIMAL(15,2)		NOT NULL,
CONSTRAINT		tax_rate_pk	PRIMARY KEY(tax_rate)
);

-- Create Table Delivery Type
CREATE TABLE DELIVERY_TYPE (
dtype_id	int			NOT NULL,
dtype		VARCHAR(50)	NOT NULL,
CONSTRAINT		delivery_type_pk	PRIMARY KEY(dtype_id)
);

-- Create Table Customer
CREATE TABLE CUSTOMER (
customer_id		int				NOT NULL AUTO_INCREMENT,
lastname		VARCHAR(50)		NOT NULL,
firstname		VARCHAR(50)		NOT NULL,
phonenum		VARCHAR(20)		NOT NULL,
address			VARCHAR(150)	NOT NULL,
postalcode		VARCHAR(6)		NOT NULL,
email			VARCHAR(50)		NOT NULL,
CONSTRAINT		customer_pk		PRIMARY KEY(customer_id)
);



-- Create Table Payment Method
CREATE TABLE PAYMENT_METHOD (
paymethod_id	int			NOT NULL,
method			VARCHAR(20)	NOT NULL,
CONSTRAINT		payment_method_pk		PRIMARY KEY(paymethod_id)
);

-- Create Table for Pizza size
CREATE TABLE PIZZA_SIZE (
psize_id	int			NOT NULL,
size		VARCHAR(10) NOT NULL,
CONSTRAINT	pizza_size_pk	PRIMARY KEY(psize_id)
);

-- Create Table for Pasta extra ingredients
CREATE Table PASTA_EXTRA (
pasextra_id		int			NOT NULL,
extra_item		VARCHAR(20)	NOT NULL,
CONSTRAINT 		pasta_extra_pk		PRIMARY KEY(pasextra_id)
);

-- Create Table Chicken Wing Hot Level
CREATE TABLE CHICKEN_WING_HOT_LEVEL (
level_id		int			NOT NULL,
level_type		VARCHAR(20)	NOT NULL,
CONSTRAINT		chicken_wing_hot_level_pk		PRIMARY KEY(level_id)
);

-- Create Table for Sandwiches cheese top up
CREATE TABLE SANDWICHES_CHEESE (
sw_cheese_id		int			NOT NULL,
sw_cheese_type		VARCHAR(20) NOT NULL,
CONSTRAINT			sandwiches_cheese_pk		PRIMARY KEY(sw_cheese_id)
);

-- Create Table for Subs size
CREATE TABLE SUBS_SIZE (
subsize_id		int			NOT NULL,
size			VARCHAR(20)	NOT NULL,
CONSTRAINT		subs_size_pk		PRIMARY KEY(subsize_id)
);

-- Create Table for Other sizes
CREATE TABLE OTHER_SIZE (
osize_id		int			NOT NULL,
size			VARCHAR(20)	NOT NULL,
CONSTRAINT		other_size_pk	PRIMARY KEY(osize_id)
);

-- Create Table for Salad extra toppings
CREATE TABLE SALAD_EXTRA (
saladextra_id		int			NOT NULL,
extra_item			VARCHAR(20)	NOT NULL,
CONSTRAINT			salad_extra_pk		PRIMARY KEY(saladextra_id)
);

-- CREATE Table as Product master
CREATE TABLE PRODUCT(
product_id		VARCHAR(10)		NOT NULL,
price			DECIMAL(15,2),
CONSTRAINT		product_pk		PRIMARY KEY(product_id)
);

-- Create Table for all Pizza
CREATE TABLE ALL_PIZZA (
pizza_id	int			NOT NULL,
psize_id	int			NOT NULL,
product_id	VARCHAR(10)	NOT NULL UNIQUE,
CONSTRAINT  all_pizza_pk	PRIMARY KEY(pizza_id, psize_id),
CONSTRAINT	all_pizza_fk1	FOREIGN KEY(pizza_id)
					REFERENCES PIZZA(pizza_id)
                    ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT	all_pizza_fk2	FOREIGN KEY(psize_id)
					REFERENCES PIZZA_SIZE(psize_id)
                    ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT  all_pizza_fk3	FOREIGN KEY(product_id)
					REFERENCES PRODUCT(product_id)
                    ON UPDATE NO ACTION
                    ON DELETE NO ACTION
);

-- Create Table for all Pasta
CREATE TABLE ALL_PASTA(
pasta_id		int			NOT NULL,
pasextra_id		int			NOT NULL,
product_id		VARCHAR(10) NOT NULL UNIQUE,
CONSTRAINT		all_pasta_pk	PRIMARY KEY(pasta_id, pasextra_id),
CONSTRAINT		all_pasta_fk1	FOREIGN KEY(pasta_id)
					REFERENCES PASTA(pasta_id)
                    ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT		all_pasta_fk2	FOREIGN KEY(pasextra_id)
					REFERENCES PASTA_EXTRA(pasextra_id)
                    ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT  	all_pasta_fk3	FOREIGN KEY(product_id)
					REFERENCES PRODUCT(product_id)
                    ON UPDATE NO ACTION
                    ON DELETE NO ACTION
);

-- Create Table for all Chicken
CREATE TABLE ALL_CHICKEN (
chicken_id		int			NOT NULL,
level_id		int			NOT NULL,
product_id		VARCHAR(10)	NOT NULL UNIQUE,
CONSTRAINT		all_chicken_pk	PRIMARY KEY(chicken_id, level_id),
CONSTRAINT		all_chicken_fk1	FOREIGN KEY(chicken_id)
					REFERENCES CHICKEN(chicken_id)
                    ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT		all_chicken_fk2	FOREIGN KEY(level_id)
					REFERENCES CHICKEN_WING_HOT_LEVEL(level_id)
                    ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT  	all_chicken_fk3	FOREIGN KEY(product_id)
					REFERENCES PRODUCT(product_id)
                    ON UPDATE NO ACTION
                    ON DELETE NO ACTION
);

-- Create Table for all Sandwiches
CREATE TABLE ALL_SANDWICHES(
sandwiches_id		int			NOT NULL,
sw_cheese_id		int			NOT NULL,
product_id			VARCHAR(10) NOT NULL UNIQUE,
CONSTRAINT			all_sandwiches_pk		PRIMARY KEY(sandwiches_id, sw_cheese_id),
CONSTRAINT			all_sandwiches_fk1	FOREIGN KEY(sandwiches_id)
						REFERENCES SANDWICHES(sandwiches_id)
                        ON UPDATE CASCADE
                        ON DELETE CASCADE,
CONSTRAINT			all_sandwiches_fk2	FOREIGN KEY(sw_cheese_id)
						REFERENCES SANDWICHES_CHEESE(sw_cheese_id)
                        ON UPDATE CASCADE
                        ON DELETE CASCADE,
CONSTRAINT  		all_sandwiches_fk3	FOREIGN KEY(product_id)
						REFERENCES PRODUCT(product_id)
						ON UPDATE NO ACTION
						ON DELETE NO ACTION
);

-- Create Table for all Subs
CREATE TABLE ALL_SUBS(
subs_id			int			NOT NULL,
subsize_id		int			NOT NULL,
product_id		VARCHAR(10)	NOT NULL UNIQUE,
CONSTRAINT		all_subs_pk	PRIMARY KEY(subs_id, subsize_id),
CONSTRAINT		all_subs_fk1	FOREIGN KEY(subs_id)
					REFERENCES SUBS(subs_id)
                    ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT		all_subs_fk2	FOREIGN KEY(subsize_id)
					REFERENCES SUBS_SIZE(subsize_id)
                    ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT  	all_subs_fk3	FOREIGN KEY(product_id)
					REFERENCES PRODUCT(product_id)
					ON UPDATE NO ACTION
					ON DELETE NO ACTION
);

-- Create Table for all Side Orders
CREATE TABLE ALL_SIDE_ORDERS(
side_orders_id		int			NOT NULL,
osize_id			int			NOT NULL,
product_id			VARCHAR(10)	NOT NULL UNIQUE,
CONSTRAINT			all_side_orders_pk	PRIMARY KEY(side_orders_id, osize_id),
CONSTRAINT			all_side_orders_fk1	FOREIGN KEY(side_orders_id)
						REFERENCES SIDE_ORDERS(side_orders_id)
						ON UPDATE CASCADE
                        ON DELETE CASCADE,
CONSTRAINT			all_side_orders_fk2	FOREIGN KEY(osize_id)
						REFERENCES OTHER_SIZE(osize_id)
						ON UPDATE CASCADE
                        ON DELETE CASCADE,
CONSTRAINT  		all_side_orders_fk3	FOREIGN KEY(product_id)
						REFERENCES PRODUCT(product_id)
						ON UPDATE NO ACTION
						ON DELETE NO ACTION
);

-- Create Table for all Salad
CREATE TABLE ALL_SALAD(
salad_id		int			NOT NULL,
osize_id		int			NOT NULL,
saladextra_id	int			NOT NULL,
product_id		VARCHAR(10)	NOT NULL UNIQUE,
CONSTRAINT		all_salad_pk		PRIMARY KEY(salad_id, osize_id, saladextra_id),
CONSTRAINT		all_salad_fk1		FOREIGN KEY(salad_id)
					REFERENCES SALAD(salad_id)
                    ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT		all_salad_fk2		FOREIGN KEY(osize_id)
					REFERENCES OTHER_SIZE(osize_id)
                    ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT		all_salad_fk3		FOREIGN KEY(saladextra_id)
					REFERENCES SALAD_EXTRA(saladextra_id)
					ON UPDATE CASCADE
                    ON DELETE CASCADE,
CONSTRAINT  	all_salad_fk4	FOREIGN KEY(product_id)
					REFERENCES PRODUCT(product_id)
					ON UPDATE NO ACTION
					ON DELETE NO ACTION
);

-- Create Table for Supplier types
CREATE TABLE SUPPLIER_TYPE(
suptype_id		int				NOT NULL,
suptype			VARCHAR(50)		NOT NULL,
CONSTRAINT 		supplie_type_pk	PRIMARY KEY(suptype_id)
);

-- Create Table for Suppliers information
CREATE TABLE SUPPLIER(
supplier_id		int				NOT NULL,
supplier_name	VARCHAR(100)	NOT NULL,
suptype_id		int				NOT NULL,
phonenum		VARCHAR(20)		NOT NULL,
contact_person	VARCHAR(50),
address			VARCHAR(150),
postal_code		VARCHAR(6),
email			VARCHAR(50)		NOT NULL,
CONSTRAINT		supplier_pk		PRIMARY KEY(supplier_id),
CONSTRAINT		supplier_fk		FOREIGN KEY(suptype_id)
					REFERENCES SUPPLIER_TYPE(suptype_id)
                    ON UPDATE NO ACTION
                    ON DELETE NO ACTION
);

-- CREATE Table for Materials information
CREATE TABLE MATERIAL(
material_id		VARCHAR(10)		NOT NULL,
material_name	VARCHAR(50)		NOT NULL,
CONSTRAINT		material_pk		PRIMARY KEY(material_id)
);


-- Create Table for Order records
CREATE TABLE ORDER_RECORD (
row_id			int					NOT NULL AUTO_INCREMENT,
order_id		VARCHAR(10)			NOT NULL,
product_id		VARCHAR(10)			NOT NULL,
qty				int					NOT NULL,
order_date		DATETIME			NOT NULL,
dtype_id		int					NOT NULL,
tax_rate		DECIMAL(15,2)		NOT NULL,
paymethod_id	int					NOT	NULL,
CONSTRAINT		order_record_pk		PRIMARY KEY(row_id),
CONSTRAINT		order_record_fk1	FOREIGN KEY(tax_rate)
					REFERENCES TAX_RATE(tax_rate)
                    ON UPDATE NO ACTION
                    ON DELETE NO ACTION,
CONSTRAINT		order_record_fk2	FOREIGN KEY(paymethod_id)
					REFERENCES PAYMENT_METHOD(paymethod_id)
                    ON UPDATE NO ACTION
                    ON DELETE NO ACTION,
CONSTRAINT 		order_record_fk3 FOREIGN KEY(dtype_id)
					REFERENCES DELIVERY_TYPE(dtype_id)
					ON UPDATE NO ACTION
					ON DELETE NO ACTION
);

-- Create Table for Delivery records
CREATE TABLE DELIVERY_NOTE(
delivery_id		int					NOT NULL,
delivery_date	DATE				NOT NULL,
delivery_time	TIME				NOT NULL,
order_id		VARCHAR(10)			NOT NULL,
customer_id		int					NOT NULL,
CONSTRAINT		delivery_note_pk	PRIMARY KEY(delivery_id)
);

-- Create Table for Purchase records
CREATE TABLE PURCHASE (
row_id			int			NOT NULL,
purchase_id		VARCHAR(10)	NOT NULL,
material_id		VARCHAR(10),
product_id		VARCHAR(10),
qty				int			NOT NULL,
unit_cost		DECIMAL(15,2)	NOT NULL,
purchase_date	DATETIME	NOT NULL,
supplier_id		int			NOT NULL,
supplier_ref	VARCHAR(50)	NOT NULL,
paymethod_id	int			NOT NULL,
CONSTRAINT		purchase_pk	PRIMARY KEY(row_id),
CONSTRAINT		purchase_fk1	FOREIGN KEY(supplier_id)
					REFERENCES SUPPLIER(supplier_id)
						ON UPDATE NO ACTION
                        ON DELETE NO ACTION,
CONSTRAINT		purchase_fk2	FOREIGN KEY(paymethod_id)
					REFERENCES PAYMENT_METHOD(paymethod_id)
						ON UPDATE NO ACTION
                        ON DELETE NO ACTION
);






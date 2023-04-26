USE Pizza_Store;


INSERT INTO PRODUCT (product_id, price) VALUES
("A1",	10.55),
("A2",	13.75),
("A3",	14.75),
("A4",	13.25),
("A5",	13.75),
("A6",	14.75),
("A7",	15.45),
("A8",	15.45),
("A9",	15.45),
("A10",	15.45),
("A11",	13.75),
("A12",	15.45),
("A13",	14.75),
("A14",	15.85),
("A15",	19.95),
("A16",	20.95),
("A17",	19.25),
("A18",	19.25),
("A19",	20.95),
("A20",	23.5),
("A21",	23.5),
("A22",	23.5),
("A23",	23.5),
("A24",	19.95),
("A25",	23.5),
("A26",	20.95),
("A27",	19.25),
("A28",	23.95),
("A29",	24.95),
("A30",	22.25),
("A31",	23.95),
("A32",	24.95),
("A33",	26.95),
("A34",	26.95),
("A35",	26.95),
("A36",	26.95),
("A37",	23.95),
("A38",	26.95),
("A39",	24.95),
("A40",	26.95),
("A41",	29.95),
("A42",	31.95),
("A43",	29.5),
("A44",	29.95),
("A45",	31.95),
("A46",	32.75),
("A47",	32.75),
("A48",	32.75),
("A49",	32.75),
("A50",	29.95),
("A51",	32.75),
("A52",	31.95),
("B1",	9.95),
("B2",	12.5),
("B3",	12.95),
("B4",	13.2),
("B5",	13.2),
("B6",	11.9),
("B7",	11.9),
("B8",	11.9),
("C1",	12.5),
("C2",	12.5),
("C3",	12.5),
("C4",	16.95),
("C5",	12.5),
("C6",	12.5),
("C7",	12.5),
("C8",	12.5),
("D1",	6.75),
("D2",	10.95),
("D3",	13.95),
("D4",	13.95),
("D5",	10.95),
("D6",	11.25),
("D7",	13.25),
("D8",	7.25),
("D9",	7.25),
("D10",	7.25),
("D11",	12.95),
("D12",	7.25),
("D13",	11.45),
("E1",	7.25),
("E2",	7.25),
("E3",	7.25),
("E4",	7.25),
("E5",	10.95),
("E6",	10.95),
("E7",	10.95),
("E8",	10.95),
("F1",	null),
("F2",	null),
("F3",	null),
("F4",	4.25),
("F5",	7.25),
("F6",	11.95),
("F7",	null),
("F8",	13.5),
("F9",	null),
("F10",	null),
("F11",	6.25),
("F12",	3.95),
("F13",	1.75),
("F14",	null),
("F15",	null),
("F16",	null),
("F17",	7.5),
("F18",	null),
("F19",	3.95),
("F20",	2.1),
("F21",	8.95),
("F22",	6.25),
("F23",	2.75),
("F24",	null),
("F25",	null),
("F26",	null),
("F27",	10.75),
("F28",	null),
("F29",	6.25),
("F30",	3.25),
("G1",	13.5),
("G2",	null),
("G3",	null),
("G4",	null),
("G5",	null),
("G6",	6.95),
("G7",	8.25),
("G8",	8.95),
("G9",	null),
("G10",	11.95),
("G11",	13.5),
("G12",	13.5),
("G13",	16.45),
("G14",	null),
("G15",	null),
("G16",	null),
("G17",	null),
("G18",	9.9),
("G19",	11.2),
("G20",	11.9),
("G21",	null),
("G22",	14.9),
("G23",	16.45),
("G24",	16.45),
("G25",	16.45),
("G26",	null),
("G27",	null),
("G28",	null),
("G29",	null),
("G30",	9.9),
("G31",	11.2),
("G32",	11.9),
("G33",	null),
("G34",	14.9),
("G35",	16.45),
("G36",	16.45);
SELECT * FROM PRODUCT;



INSERT INTO food_category (food_id, category) VALUES 
("A", "Pizza"),
("B", "Pasta"),
("C", "Chicken"),
("D", "Sandwiches"),
("E", "Subs"),
("F", "Side Orders"),
("G", "Salads");
SELECT * FROM food_category;



INSERT INTO pizza (pizza_id, pizza_name) VALUES
(1, "Plain"),
(2, "Combination"),
(3, "Combination With Olives"),
(4, "Hawaiian"),
(5, "Pizza Burger"),
(6, "Vegetarian"),
(7, "Beneci Special"),
(8, "Chef'S Special"),
(9, "Meat Lover"),
(10, "Greek"),
(11, "Canadian"),
(12, "The Da Vinci Piza"),
(13, "Patsy Special Pizza");
SELECT * FROM PIZZA;



INSERT INTO pizza_size (psize_id, size) VALUES 
(1, "Small"),
(2, "Medium"),
(3, "Large"),
(4, "X-Large");
SELECT * FROM PIZZA_SIZE;



INSERT INTO pasta (pasta_id, pasta_name) VALUES
(1, "Spaghetti"),
(2, "Baked Lasagna"),
(3, "Cannelloni");
SELECT * FROM PASTA;


INSERT INTO pasta_extra (pasextra_id, extra_item) VALUES
(1, "Regular"),
(2, "Meatballs"),
(3, "Italian Sausage"),
(4, "Pepperoni"),
(5, "Mushrooms"),
(6, "Green Peppers");
SELECT * FROM PASTA_EXTRA;



INSERT INTO CHICKEN (chicken_id, chicken_name) VALUES
(1,	"Chicken Nuggets"),
(2,	"Chicken Fingers"),
(3,	"Chicken Wings 1Lb"),
(4,	"Chicken Parmigiana");
SELECT * FROM CHICKEN;



INSERT INTO CHICKEN_WING_HOT_LEVEL (level_id, level_type) VALUES
(1,	"Regular"),
(2,	"Hot Garlic"),
(3,	"Medium Garlic"),
(4,	"Mild Garlic"),
(5,	"Honey Garlic");
SELECT * FROM CHICKEN_WING_HOT_LEVEL;



INSERT INTO SANDWICHES (sandwiches_id, sandwiches_name) VALUES
(1,	"Hamburger"),
(2,	"Hamburger Platter"),
(3,	"Hambueger Steak Platter"),
(4,	"Club Sandwich Platter"),
(5,	"Hot Chicken Sandwich Platter"),
(6,	"Hot Hamburger Platter"),
(7,	"Fish & Chips Platter"),
(8,	"Donair Sandwich"),
(9,	"Beef Sandwich"),
(10, "Chicken Sandwich"),
(11, "Spicy Chicken Wrap Platter");
SELECT * FROM SANDWICHES;



INSERT INTO SANDWICHES_CHEESE (sw_cheese_id, sw_cheese_type) VALUES
(1,	"Regular"),
(2,	"With Cheese");
SELECT * FROM SANDWICHES_CHEESE;



INSERT INTO SUBS (subs_id, subs_name) VALUES
(1,	"The Cheesy Sub"),
(2,	"Turkey Sub"),
(3,	"Bonanza Sub"),
(4,	"The Meatball Sub");
SELECT * FROM SUBS;



INSERT INTO SUBS_SIZE (subsize_id, size) VALUES
(1,	"Regular"),
(2,	"Half"),
(3,	"Full");
SELECT * FROM SUBS_SIZE;



INSERT INTO SIDE_ORDERS (side_orders_id, side_orders_name) VALUES
(1,	"Onion Rings"),
(2,	"French Fries"),
(3,	"Gravy"),
(4,	"Garlic Bread"),
(5,	"Garlic Bread With Cheese"),
(6,	"Zucchini"),
(7,	"Poutine"),
(8,	"Super Snack"),
(9,	"Garlic Potato"),
(10, "Garlic Dip Sauce");
SELECT * FROM SIDE_ORDERS;



INSERT INTO OTHER_SIZE (osize_id, size) VALUES
(1,	"Regular"),
(2,	"Small"),
(3,	"Large");
SELECT * FROM OTHER_SIZE;



INSERT INTO SALAD (salad_id, salad_name) VALUES
(1,	"Super Salad"),
(2,	"Chef'S Salad"),
(3,	"Caesar Salad"),
(4,	"Greek Salad");
SELECT * FROM SALAD;



INSERT INTO SALAD_EXTRA (saladextra_id, extra_item) VALUES
(1,	"Regular"),
(2,	"Meat"),
(3,	"Cheese");
SELECT * FROM SALAD_EXTRA;



INSERT INTO ALL_PIZZA (pizza_id, psize_id, product_id) VALUES
(1,	1,	"A1"),
(2,	1,	"A2"),
(3,	1,	"A3"),
(4,	1,	"A4"),
(5,	1,	"A5"),
(6,	1,	"A6"),
(7,	1,	"A7"),
(8,	1,	"A8"),
(9,	1,	"A9"),
(10,	1,	"A10"),
(11,	1,	"A11"),
(12,	1,	"A12"),
(13,	1,	"A13"),
(1,	2,	"A14"),
(2,	2,	"A15"),
(3,	2,	"A16"),
(4,	2,	"A17"),
(5,	2,	"A18"),
(6,	2,	"A19"),
(7, 2,	"A20"),
(8,	2,	"A21"),
(9,	2,	"A22"),
(10,	2,	"A23"),
(11,	2,	"A24"),
(12,	2,	"A25"),
(13,	2,	"A26"),
(1,	3,	"A27"),
(2,	3,	"A28"),
(3,	3,	"A29"),
(4,	3,	"A30"),
(5,	3,	"A31"),
(6,	3,	"A32"),
(7,	3,	"A33"),
(8,	3,	"A34"),
(9,	3,	"A35"),
(10,	3,	"A36"),
(11,	3,	"A37"),
(12,	3,	"A38"),
(13,	3,	"A39"),
(1,	4,	"A40"),
(2,	4,	"A41"),
(3,	4,	"A42"),
(4,	4,	"A43"),
(5,	4,	"A44"),
(6,	4,	"A45"),
(7,	4,	"A46"),
(8,	4,	"A47"),
(9,	4,	"A48"),
(10,	4,	"A49"),
(11,	4,	"A50"),
(12,	4,	"A51"),
(13,	4,	"A52");
SELECT * FROM ALL_PIZZA;



INSERT INTO ALL_PASTA (pasta_id, pasextra_id, product_id) VALUES
(1,	1,	"B1"),
(2,	1,	"B2"),
(3,	1,	"B3"),
(1,	2,	"B4"),
(1,	3,	"B5"),
(1,	4,	"B6"),
(1,	5,	"B7"),
(1,	6,	"B8");
SELECT * FROM ALL_PASTA;



INSERT INTO ALL_CHICKEN (chicken_id, level_id, product_id) VALUES
(1,	1,	"C1"),
(2,	1,	"C2"),
(3,	1,	"C3"),
(4,	1,	"C4"),
(3,	2,	"C5"),
(3,	3,	"C6"),
(3,	4,	"C7"),
(3,	5,	"C8");
SELECT * FROM ALL_CHICKEN;



INSERT INTO ALL_SANDWICHES (sandwiches_id, sw_cheese_id, product_id) VALUES
(1,	1,	"D1"),
(2,	1,	"D2"),
(3,	1,	"D3"),
(4,	1,	"D4"),
(5,	1,	"D5"),
(6,	1,	"D6"),
(7,	1,	"D7"),
(8,	1,	"D8"),
(9,	1,	"D9"),
(10,	1,	"D10"),
(11,	1,	"D11"),
(1,	2,	"D12"),
(2,	2,	"D13");
SELECT * FROM ALL_SANDWICHES;



INSERT INTO ALL_SUBS (subs_id, subsize_id, product_id) VALUES
(1,	2,	"E1"),
(2,	2,	"E2"),
(3,	2,	"E3"),
(4,	2,	"E4"),
(1,	3,	"E5"),
(2,	3,	"E6"),
(3,	3,	"E7"),
(4,	3,	"E8");
SELECT * FROM ALL_SUBS;



INSERT INTO ALL_SIDE_ORDERS (side_orders_id, osize_id, product_id) VALUES
(1,	1,	"F1"),
(2,	1,	"F2"),
(3,	1,	"F3"),
(4,	1,	"F4"),
(5,	1,	"F5"),
(6,	1,	"F6"),
(7,	1,	"F7"),
(8,	1,	"F8"),
(9,	1,	"F9"),
(10,	1,	"F10"),
(1,	2,	"F11"),
(2,	2,	"F12"),
(3,	2,	"F13"),
(4,	2,	"F14"),
(5,	2,	"F15"),
(6,	2,	"F16"),
(7,	2,	"F17"),
(8,	2,	"F18"),
(9,	2,	"F19"),
(10,	2,	"F20"),
(1,	3,	"F21"),
(2,	3,	"F22"),
(3,	3,	"F23"),
(4,	3,	"F24"),
(5,	3,	"F25"),
(6,	3,	"F26"),
(7,	3,	"F27"),
(8,	3,	"F28"),
(9,	3,	"F29"),
(10,	3,	"F30");
SELECT * FROM ALL_SIDE_ORDERS;



INSERT INTO ALL_SALAD (salad_id, osize_id, saladextra_id, product_id) VALUES
(1,	1,	1,	"G1"),
(2,	1,	1,	"G2"),
(3,	1,	1,	"G3"),
(4,	1,	1,	"G4"),
(1,	2,	1,	"G5"),
(2,	2,	1,	"G6"),
(3,	2,	1,	"G7"),
(4,	2,	1,	"G8"),
(1,	3,	1,	"G9"),
(2,	3,	1,	"G10"),
(3,	3,	1,	"G11"),
(4,	3,	1,	"G12"),
(1,	1,	2,	"G13"),
(2,	1,	2, "G14"),
(3,	1,	2,	"G15"),
(4,	1,	2,	"G16"),
(1,	2,	2,	"G17"),
(2,	2,	2,	"G18"),
(3,	2,	2,	"G19"),
(4,	2,	2,	"G20"),
(1,	3,	2,	"G21"),
(2,	3,	2,	"G22"),
(3,	3,	2,	"G23"),
(4,	3,	2,	"G24"),
(1,	1,	3,	"G25"),
(2,	1,	3,	"G26"),
(3,	1,	3,	"G27"),
(4,	1,	3,	"G28"),
(1,	2,	3,	"G29"),
(2,	2,	3,	"G30"),
(3,	2,	3,	"G31"),
(4,	2,	3,	"G32"),
(1,	3,	3,	"G33"),
(2,	3,	3,	"G34"),
(3,	3,	3,	"G35"),
(4,	3,	3,	"G36");
SELECT * FROM ALL_SALAD;





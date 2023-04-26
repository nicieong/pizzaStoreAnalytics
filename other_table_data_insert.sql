USE Pizza_Store;


INSERT INTO TAX_RATE (tax_rate) VALUES (0.13);
SELECT * FROM TAX_RATE;


INSERT INTO DELIVERY_TYPE (dtype_id, dtype) VALUES
(1,	"Dine In"),
(2,	"Take Away"),
(3,	"Delivery");
SELECT * FROM DELIVERY_TYPE;


INSERT INTO PAYMENT_METHOD (paymethod_id, method) VALUES
(1,	"Cash"),
(2,	"Visa/Master"),
(3,	"ApplePay"),
(4,	"Google Pay"),
(5,	"Cheque"),
(6,	"Bank Transfer"),
(7,	"Credit"),
(8, "Others");
SELECT * FROM PAYMENT_METHOD;


INSERT INTO MATERIAL (material_id, material_name) VALUES
(1,	"Pizza Box L"),
(2,	"Pizza Box S"),
(3,	"Paper Box L"),
(4,	"Paper Box S"),
(5,	"Subs Wrap Paper Half"),
(6,	"Subs Wrap Paper Full"),
(7,	"Sauce Portion Cup");
SELECT * FROM MATERIAL;

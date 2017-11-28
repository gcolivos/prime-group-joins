1) SELECT * FROM "addresses"
JOIN "customers" ON "addresses"."customer_id"= "customers"."id";

2)Get all orders and their line items.

SELECT * FROM "orders"
JOIN "line_items" ON "orders"."id"= "line_items"."id";

3) Which warehouses have cheetos?
SELECT "warehouse" FROM "warehouse_product"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
JOIN "warehouse" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
WHERE "products"."id" = 5

Delta

4) Which warehouses have diet pepsi?

SELECT "warehouse" FROM "warehouse_product"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
JOIN "warehouse" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
WHERE "products"."id" = 6

Alpha, Delta, and Gamma

5) Number of orders for each customer?

SELECT * FROM "addresses"
JOIN "customers" ON "addresses"."customer_id"= "customers"."id"
JOIN "orders" ON "addresses"."id" = "orders"."address_id";

3 for Lisa, 1 for Charles, 1 for Lucy;

6) How many customers do we have?

SELECT COUNT("id") FROM "customers";


7) How many products do we carry?
SELECT COUNT(id) from "products"

8) 

SELECT SUM(on_hand) from "warehouse-product"
WHERE "product_id" = 6;

92
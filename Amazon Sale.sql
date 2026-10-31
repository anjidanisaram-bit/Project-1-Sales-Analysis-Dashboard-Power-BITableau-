

What is the total sales amount, average sales amount, and total quantity sold?
SELECT
    ROUND(SUM("Amount")::numeric, 2) AS total_sales,
    ROUND(AVG("Amount")::numeric, 2) AS average_sales,
    SUM("Qty") AS total_quantity_sold
FROM sale
WHERE "Amount" IS NOT NULL;
2. Which product categories generate the highest sales?
SELECT
    "Category",
    ROUND(SUM("Amount")::numeric, 2) AS total_sales
FROM sale
WHERE "Amount" IS NOT NULL
GROUP BY "Category"
ORDER BY total_sales DESC;
3. Which 10 states have the highest sales?
SELECT
    "ship-state",
    ROUND(SUM("Amount")::numeric, 2) AS total_sales
FROM sale
WHERE "Amount" IS NOT NULL
  AND "ship-state" IS NOT NULL
GROUP BY "ship-state"
ORDER BY total_sales DESC
LIMIT 10;
4. How do sales change month by month?
SELECT
    DATE_TRUNC('month', "Date") AS month,
    ROUND(SUM("Amount")::numeric, 2) AS total_sales
FROM sale
WHERE "Amount" IS NOT NULL
  AND "Date" IS NOT NULL
GROUP BY DATE_TRUNC('month', "Date")
ORDER BY month;
5. Which products (SKU) generate the highest sales?
SELECT
    "SKU",
    ROUND(SUM("Amount")::numeric, 2) AS total_sales
FROM sale
WHERE "Amount" IS NOT NULL
  AND "SKU" IS NOT NULL
GROUP BY "SKU"
ORDER BY total_sales DESC
LIMIT 10;
6. Which products have the highest quantities sold?
SELECT
    "SKU",
    SUM("Qty") AS total_quantity_sold
FROM sale
WHERE "SKU" IS NOT NULL
  AND "Qty" IS NOT NULL
GROUP BY "SKU"
ORDER BY total_quantity_sold DESC
LIMIT 10;
7. How many orders are there for each order status?
SELECT
    "Status",
    COUNT(DISTINCT "Order ID") AS total_orders
FROM sale
WHERE "Status" IS NOT NULL
GROUP BY "Status"
ORDER BY total_orders DESC;
8. What percentage of orders are cancelled?
SELECT
    ROUND(
        COUNT(DISTINCT CASE
            WHEN "Status" ILIKE '%cancel%' THEN "Order ID"
        END) * 100.0
        / NULLIF(COUNT(DISTINCT "Order ID"), 0),
        2
    ) AS cancelled_order_percentage
FROM sale;
9. Which states have an average sales amount greater than ₹1,000?
SELECT
    "ship-state",
    ROUND(AVG("Amount")::numeric, 2) AS average_sales
FROM sale
WHERE "Amount" IS NOT NULL
  AND "ship-state" IS NOT NULL
GROUP BY "ship-state"
HAVING AVG("Amount") > 1000
ORDER BY average_sales DESC;
10. Which sales channels contribute the most to total sales?

SELECT
    "Fulfilment",
    ROUND(SUM("Amount")::numeric, 2) AS total_sales
FROM sale
WHERE "Amount" IS NOT NULL
  AND "Fulfilment" IS NOT NULL
GROUP BY "Fulfilment"
ORDER BY total_sales DESC;
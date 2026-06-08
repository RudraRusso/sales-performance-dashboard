-- Sales Performance Dashboard Queries

-- Monthly revenue trend
SELECT
    month,
    ROUND(SUM(revenue), 2) AS monthly_revenue,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(revenue), 2) AS avg_order_value
FROM sales_performance
GROUP BY month
ORDER BY month;

-- Revenue by product category
SELECT
    product_category,
    ROUND(SUM(revenue), 2) AS total_revenue,
    SUM(units_sold) AS total_units
FROM sales_performance
GROUP BY product_category
ORDER BY total_revenue DESC;

-- Lead source performance
SELECT
    lead_source,
    COUNT(order_id) AS orders,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(AVG(revenue), 2) AS avg_deal_size
FROM sales_performance
GROUP BY lead_source
ORDER BY revenue DESC;
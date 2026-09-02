/*
Project: Eventify Sales Performance Analysis
Purpose: Analyze ticket sales, revenue and transaction performance
Tools: PostgreSQL, Looker Studio
*/

-- 1. DATA OVERVIEW

SELECT *
FROM ticket_sales
ORDER BY ticket_id;


-- 2. DATA QUALITY CHECKS

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT ticket_id) AS unique_ticket_ids,
    MIN(purchase_date) AS first_purchase_date,
    MAX(purchase_date) AS last_purchase_date
FROM ticket_sales;


-- 3. GENERAL PERFORMANCE KPIs

SELECT
    COUNT(*) FILTER (
        WHERE status = 'Completed'
    ) AS completed_transactions,
    SUM(quantity) FILTER (
        WHERE status = 'Completed'
    ) AS completed_tickets,
    ROUND(
        SUM(
            quantity * unit_price * (1 - discount_percent / 100.0)
        ) FILTER (
            WHERE status = 'Completed'
        ),
        2
    ) AS net_revenue
FROM ticket_sales;


-- 4. STATUS DISTRIBUTION

SELECT
    status,
    COUNT(*) AS transaction_count
FROM ticket_sales
GROUP BY status
ORDER BY transaction_count DESC;


-- 5. REVENUE BY CITY

SELECT
    city,
    ROUND(
        SUM(quantity * unit_price * (1 - discount_percent / 100.0)),
        2
    ) AS net_revenue
FROM ticket_sales
WHERE status = 'Completed'
GROUP BY city
ORDER BY net_revenue DESC;


-- 6. TICKETS BY CATEGORY

SELECT
    category,
    SUM(quantity) AS completed_tickets
FROM ticket_sales
WHERE status = 'Completed'
GROUP BY category
ORDER BY completed_tickets DESC;


-- 7. COMPLETED TRANSACTIONS BY CHANNEL

SELECT
    channel,
    COUNT(*) AS completed_transactions
FROM ticket_sales
WHERE status = 'Completed'
GROUP BY channel
ORDER BY completed_transactions DESC;


-- 8. MONTHLY NET REVENUE

SELECT
    DATE_TRUNC('month', purchase_date) AS sales_month,
    ROUND(
        SUM(quantity * unit_price * (1 - discount_percent / 100.0)),
        2
    ) AS net_revenue
FROM ticket_sales
WHERE status = 'Completed'
GROUP BY DATE_TRUNC('month', purchase_date)
ORDER BY sales_month;

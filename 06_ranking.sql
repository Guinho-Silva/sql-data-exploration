-- PARTE 6 - RANKING

-- Quais são os 5 produtos que geram mais receita?
SELECT
    p.product_name,
    SUM(f.sales_amount) AS receita_total
FROM gold_fact_sales f
LEFT JOIN gold_dim_products p
    ON p.product_key = f.product_key
GROUP BY p.product_name
ORDER BY receita_total DESC
LIMIT 5;


-- Quais são os 5 piores produtos em termos de vendas?
SELECT
    p.product_name,
    SUM(f.sales_amount) AS receita_total
FROM gold_fact_sales f
LEFT JOIN gold_dim_products p
    ON p.product_key = f.product_key
GROUP BY p.product_name
ORDER BY receita_total
LIMIT 5;


-- WINDOW FUNCTIONS

-- Quais são os 5 produtos que geram mais receita
-- utilizando Window Function?
SELECT *
FROM (
    SELECT
        p.product_name,
        SUM(f.sales_amount) AS receita_total,
        ROW_NUMBER() OVER (
            ORDER BY SUM(f.sales_amount) DESC
        ) AS rank_produtos
    FROM gold_fact_sales f
    LEFT JOIN gold_dim_products p
        ON p.product_key = f.product_key
    GROUP BY p.product_name
) AS t
WHERE rank_produtos <= 5;


-- Quais são os 5 piores produtos em termos de vendas
-- utilizando Window Function?
SELECT *
FROM (
    SELECT
        p.product_name,
        SUM(f.sales_amount) AS receita_total,
        ROW_NUMBER() OVER (
            ORDER BY SUM(f.sales_amount)
        ) AS rank_produtos
    FROM gold_fact_sales f
    LEFT JOIN gold_dim_products p
        ON p.product_key = f.product_key
    GROUP BY p.product_name
) AS t
WHERE rank_produtos <= 5;

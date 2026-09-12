-- PARTE 5 - MAGNITUDE

-- Encontrar o total de clientes por país
SELECT
    country,
    COUNT(customer_key) AS total_clientes
FROM gold_dim_customers
GROUP BY country
ORDER BY total_clientes DESC;


-- Encontrar o total de clientes por gênero
SELECT
    gender,
    COUNT(customer_key) AS total_clientes
FROM gold_dim_customers
GROUP BY gender
ORDER BY total_clientes DESC;


-- Encontrar o total de produtos por categoria
SELECT
    category,
    COUNT(product_key) AS total_produtos
FROM gold_dim_products
GROUP BY category
ORDER BY total_produtos DESC;


-- Qual é a média de custos para cada categoria?
SELECT
    category,
    AVG(cost) AS custos
FROM gold_dim_products
GROUP BY category
ORDER BY custos;


-- Qual é o total de receita gerada por cada categoria?
SELECT
    p.category,
    SUM(f.sales_amount) AS total_receita
FROM gold_fact_sales f
JOIN gold_dim_products p
    ON p.product_key = f.product_key
GROUP BY p.category
ORDER BY total_receita DESC;


-- Encontrar o total de receita gerada por cada cliente
SELECT
    c.customer_key,
    c.first_name,
    c.last_name,
    f.total_receita
FROM (
    SELECT
        customer_key,
        SUM(sales_amount) AS total_receita
    FROM gold_fact_sales
    GROUP BY customer_key
) f
LEFT JOIN gold_dim_customers c
    ON c.customer_key = f.customer_key
ORDER BY f.total_receita DESC;


-- Qual é a distribuição de itens vendidos através dos países?
SELECT
    c.country,
    SUM(f.quantity) AS total_quantidade
FROM gold_fact_sales f
LEFT JOIN gold_dim_customers c
    ON c.customer_key = f.customer_key
GROUP BY c.country
ORDER BY total_quantidade DESC;

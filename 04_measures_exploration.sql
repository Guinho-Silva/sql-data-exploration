-- PARTE 4 - MEASURES EXPLORATION

-- Encontrar o total de vendas
SELECT
    SUM(sales_amount) AS total_sales
FROM gold_fact_sales;


-- Encontrar a quantidade total de itens vendidos
SELECT
    SUM(quantity) AS total_quantidade
FROM gold_fact_sales;


-- Encontrar a média dos preços
SELECT
    AVG(price) AS avg_price
FROM gold_fact_sales;


-- Encontrar o total de pedidos
SELECT
    COUNT(DISTINCT order_number) AS total_pedidos
FROM gold_fact_sales;


-- Encontrar o total de produtos
SELECT
    COUNT(DISTINCT product_key) AS total_produtos
FROM gold_dim_products;


-- Encontrar o total de clientes
SELECT
    COUNT(DISTINCT customer_key) AS total_clientes
FROM gold_dim_customers;


-- Encontrar o total de clientes que fizeram um pedido
SELECT
    COUNT(DISTINCT customer_key) AS clientes_com_pedido
FROM gold_fact_sales;

-- RELATÓRIO COM TODAS AS MÉTRICAS DE NEGÓCIO

SELECT
    'Total Vendas' AS Metricas,
    SUM(sales_amount) AS valor
FROM gold_fact_sales

UNION ALL

SELECT
    'Total Quantidade' AS Metricas,
    SUM(quantity) AS valor
FROM gold_fact_sales

UNION ALL

SELECT
    'Media Preço' AS Metricas,
    AVG(price) AS valor
FROM gold_fact_sales

UNION ALL

SELECT
    'Total Pedidos' AS Metricas,
    COUNT(DISTINCT order_number) AS valor
FROM gold_fact_sales

UNION ALL

SELECT
    'Total Produtos' AS Metricas,
    COUNT(DISTINCT product_key) AS valor
FROM gold_dim_products

UNION ALL

SELECT
    'Total de Clientes' AS Metricas,
    COUNT(DISTINCT customer_key) AS valor
FROM gold_dim_customers

UNION ALL

SELECT
    'Clientes com Pedido' AS Metricas,
    COUNT(DISTINCT customer_key) AS valor
FROM gold_fact_sales;

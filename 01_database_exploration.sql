-- PARTE 1 - DATABASE EXPLORATION

-- Visualizando todas as tabelas do banco
SHOW TABLES;

-- Explorando a estrutura das tabelas
DESCRIBE gold_fact_sales;
DESCRIBE gold_dim_customers;
DESCRIBE gold_dim_products;

-- Quantidade de registros da tabela de vendas
SELECT COUNT(*) AS total_registros
FROM gold_fact_sales;

-- Quantidade de registros da tabela de clientes
SELECT COUNT(*) AS total_registros
FROM gold_dim_customers;

-- Quantidade de registros da tabela de produtos
SELECT COUNT(*) AS total_registros
FROM gold_dim_products;

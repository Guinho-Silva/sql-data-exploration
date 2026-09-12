-- PARTE 2 - DIMENSIONS EXPLORATION

-- Explorando todos os países e clientes
SELECT DISTINCT
    country
FROM gold_dim_customers;

-- Explorando todas as categorias "The major Divisions"
SELECT DISTINCT
    category
FROM gold_dim_products;

-- Explorando as subcategorias
SELECT DISTINCT
    category,
    subcategory
FROM gold_dim_products;

-- Explorando os nomes dos produtos
SELECT DISTINCT
    category,
    subcategory,
    product_name
FROM gold_dim_products;

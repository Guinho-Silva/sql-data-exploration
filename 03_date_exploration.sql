-- PARTE 3 - DATE EXPLORATION

-- Encontrar a data do primeiro e último pedido
SELECT
    MIN(order_date) AS data_minima,
    MAX(order_date) AS data_maxima
FROM gold_fact_sales
WHERE order_date IS NOT NULL
  AND order_date != '0000-00-00';


-- Quantos anos de diferença existem entre o primeiro
-- e o último pedido
SELECT
    MIN(order_date) AS data_inicial,
    MAX(order_date) AS data_final,
    TIMESTAMPDIFF(
        YEAR,
        MIN(order_date),
        MAX(order_date)
    ) AS diferenca_anos
FROM gold_fact_sales
WHERE order_date IS NOT NULL
  AND order_date != '0000-00-00';


-- Encontrar a data de nascimento do cliente mais velho
-- e do cliente mais novo
SELECT
    MIN(birthdate) AS idade_mais_velha,
    MAX(birthdate) AS idade_mais_nova
FROM gold_dim_customers
WHERE birthdate IS NOT NULL
  AND birthdate != '0000-00-00';


-- Encontrar a idade do cliente mais velho e mais novo
SELECT
    MIN(birthdate) AS data_nascimento_mais_antiga,
    TIMESTAMPDIFF(
        YEAR,
        MIN(birthdate),
        NOW()
    ) AS cliente_mais_velho,

    MAX(birthdate) AS data_nascimento_mais_recente,
    TIMESTAMPDIFF(
        YEAR,
        MAX(birthdate),
        NOW()
    ) AS cliente_mais_novo
FROM gold_dim_customers
WHERE birthdate IS NOT NULL
  AND birthdate != '0000-00-00';

# SQL Data Exploration

Projeto de exploração e análise de dados utilizando **MySQL**, desenvolvido com o objetivo de praticar consultas SQL e aplicar conceitos fundamentais de **Análise de Dados**.

O projeto percorre diferentes etapas de exploração de uma base de dados de vendas, desde o entendimento da estrutura do banco até análises de magnitude e ranking de produtos.

---

## Objetivo

O objetivo deste projeto é explorar os dados utilizando SQL para responder perguntas relacionadas a:

* Estrutura e composição do banco de dados;
* Dimensões disponíveis;
* Período dos dados;
* Métricas de negócio;
* Distribuição dos dados;
* Produtos com maior e menor receita;
* Ranking utilizando Window Functions.

---

## Tecnologias

* **MySQL**
* **SQL**
* **Window Functions**

---

##  Etapas da análise

### 1. Database Exploration

Exploração da estrutura do banco de dados.

Foram analisados:

* Tabelas disponíveis;
* Estrutura das tabelas;
* Colunas e seus respectivos tipos;
* Quantidade de registros.

---

### 2. Dimensions Exploration

Exploração das principais dimensões presentes na base.

Foram analisados:

* Países;
* Categorias;
* Subcategorias;
* Produtos.

Também foi explorada a relação:

**Categoria → Subcategoria → Produto**

---

### 3. Date Exploration

Análise das informações relacionadas a datas.

Foram analisadas:

* Primeiro pedido registrado;
* Último pedido registrado;
* Período total dos dados;
* Diferença em anos entre o primeiro e o último pedido;
* Data de nascimento dos clientes;
* Cliente mais velho;
* Cliente mais novo.

---

### 4. Measures Exploration

Exploração das principais métricas de negócio.

Foram calculados:

* Receita total;
* Quantidade total de itens vendidos;
* Preço médio;
* Total de pedidos;
* Total de produtos;
* Total de clientes;
* Quantidade de clientes que realizaram pedidos.

Também foi criado um relatório consolidando as principais métricas utilizando `UNION ALL`.

---

### 5. Magnitude

Análise da distribuição dos dados através de diferentes dimensões.

Foram analisados:

* Quantidade de clientes por país;
* Quantidade de clientes por gênero;
* Quantidade de produtos por categoria;
* Custo médio por categoria;
* Receita por categoria;
* Receita gerada por cliente;
* Quantidade de itens vendidos por país.

---

### 6. Ranking

Análise dos produtos com maior e menor receita.

Foram utilizadas duas abordagens para encontrar os produtos com maior receita:

* `ORDER BY` + `LIMIT`;
* `ROW_NUMBER()` utilizando Window Function.

Também foi realizada a análise dos cinco produtos com menor receita.

---

## Conceitos SQL praticados

Durante o projeto foram utilizados diversos recursos do SQL:

```text
SELECT
FROM
WHERE
DISTINCT
JOIN
GROUP BY
ORDER BY
COUNT
SUM
AVG
UNION ALL
LIMIT
MIN
MAX
TIMESTAMPDIFF
ROW_NUMBER()
```

Além disso, foram praticados conceitos como:

* Agregação de dados;
* Agrupamento;
* Ordenação;
* Subqueries;
* Joins;
* Window Functions;
* Exploração de dimensões;
* Análise de métricas;
* Ranking de dados.

---

##  Estrutura do projeto

```text
sql-data-exploration/
│
├── 01_database_exploration.sql
├── 02_dimensions_exploration.sql
├── 03_date_exploration.sql
├── 04_measures_exploration.sql
├── 05_magnitude.sql
├── 06_ranking.sql
└── README.md
```

/* CREATE VIEW faturamento_atual AS 
SELECT
CAST(MIN(P.valor_plano) AS decimal(10,2)) AS 'faturamento_minimo',
MAX(P.valor_plano) AS 'faturamento_maximo',
CAST(ROUND(SUM(P.valor_plano)) / 4 AS decimal(10,2)) AS 'faturamento_medio',
ROUND(SUM(P.valor_plano),2) AS 'faturamento_total'
FROM planos P; */

CREATE VIEW faturamento_atual AS
SELECT
CAST(MIN(valor_plano) AS decimal(10, 2)) faturamento_minimo,
CAST(MAX(valor_plano) AS decimal(10, 2)) faturamento_maximo,
CAST(ROUND(SUM(valor_plano))/4 AS decimal(10, 2)) faturamento_medio,
CAST(SUM(valor_plano)  AS decimal(10, 2)) faturamento_total
FROM planos;
CREATE VIEW faturamento_atual AS 
SELECT
CAST(MIN(P.valor_plano) AS decimal(10,2)) AS 'faturamento_minimo',
MAX(P.valor_plano) AS 'faturamento_maximo',
CAST(ROUND(SUM(P.valor_plano)) / 4 AS decimal(10,2)) AS 'faturamento_medio',
ROUND(SUM(P.valor_plano),2) AS 'faturamento_maximo'
FROM planos P;
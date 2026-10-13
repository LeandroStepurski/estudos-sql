# Erros clássicos em SQL

## Ordem de execução

FROM/JOIN → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT

## Erros comuns

1. Coluna no `SELECT` que não está no `GROUP BY` nem dentro de uma agregação
2. `WHERE` com `COUNT` ou `SUM` (o certo é `HAVING`)
3. `JOIN` sem `ON`, que multiplica as linhas
4. `= NULL` em vez de `IS NULL`
5. `INNER JOIN` quando queria `LEFT JOIN`
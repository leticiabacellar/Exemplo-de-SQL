-- Consulta de Dados (SELECT):
-- A cláusula SELECT é usada para recuperar dados de uma ou mais tabelas.

SELECT nome, idade FROM clientes WHERE cidade = 'São Paulo';

-- Filtragem de Dados (WHERE):
-- A cláusula WHERE é usada para filtrar os resultados da consulta com base em condições específicas.

SELECT * FROM pedidos WHERE valor_total > 1000;

-- Ordenação de Resultados (ORDER BY):
-- A cláusula ORDER BY é usada para classificar os resultados da consulta.

SELECT nome, idade FROM clientes ORDER BY idade DESC;

-- Agregação de Dados (GROUP BY, HAVING):
-- As cláusulas GROUP BY e HAVING são usadas para agrupar e filtrar resultados agregados.

SELECT cidade, COUNT(*) as total_clientes FROM clientes GROUP BY cidade HAVING total_clientes > 10;

-- Junção de Tabelas (JOIN):
-- A cláusula JOIN é usada para combinar registros de duas ou mais tabelas com base em colunas relacionadas.

SELECT clientes.nome, pedidos.numero_pedido FROM clientes INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;

-- Inserção de Dados (INSERT):
-- A cláusula INSERT é usada para adicionar novos registros a uma tabela.

INSERT INTO clientes (nome, idade, cidade) VALUES ('João', 30, 'Rio de Janeiro');

-- Atualização de Dados (UPDATE):
-- A cláusula UPDATE é usada para modificar registros existentes em uma tabela.

UPDATE clientes SET idade = 31 WHERE nome = 'João';

-- Exclusão de Dados (DELETE):
-- A cláusula DELETE é usada para remover registros de uma tabela.

DELETE FROM clientes WHERE nome = 'João';

-- Criação e Modificação de Tabelas (CREATE, ALTER):
-- As cláusulas CREATE TABLE e ALTER TABLE são usadas para criar e modificar a estrutura das tabelas, respectivamente.

CREATE TABLE produtos (id INT PRIMARY KEY, nome VARCHAR(255), preço DECIMAL(10,2));

-- Uso de Funções Agregadas:

- Funções como `COUNT`, `SUM`, `AVG`, `MIN` e `MAX` são usadas para realizar operações em colunas numéricas.
- Exemplo:

```sql
SELECT COUNT(*) as total_pedidos FROM pedidos;
```

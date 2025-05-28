-- A):
-- (obs: usei AS -alias- para ficar mais fácil de legibilidade, e inner join para juntar as tabelas pelas chaves estrangeiras)
SELECT
  o.orderId AS OrderID,
  o.OrderDate AS OrderDate,
  c.Name AS CusName,
  SUM(od.UnitPrice * od.Quantity) AS Total
FROM
  Orders AS o
  INNER JOIN Customers AS c ON o.CustomerID = c.CustomerID
  INNER JOIN OrderDetails AS od ON o.OrderId = od.OrderID
WHERE
  YEAR (o.OrderDate) = 2012
GROUP BY
  o.OrderId,
  o.OrderDate,
  c.NAME
ORDER BY
  o.OrderDate ASC;

-- B):
-- (obs: 0 para não, pois o campo Discontinued é BIT -booleano-)
INSERT INTO
  Products (Name, UnitPrice, Discontinued)
VALUES
  ('Smart TV', 1950.90, 0);

-- C):
UPDATE Products
SET
  Name = 'Notebook'
WHERE
  ProductId = 10;
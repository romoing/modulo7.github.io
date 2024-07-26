SELECT ID_Cliente, Nombre
FROM Cliente
WHERE ID_Cliente NOT IN (
    SELECT DISTINCT ID_Cliente
    FROM Venta
);

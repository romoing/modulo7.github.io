SELECT DISTINCT p.ID_Producto
FROM Producto p
WHERE p.ID_Producto NOT IN (
    SELECT dv.ID_Producto
    FROM DetalleVenta dv
    JOIN Venta v ON dv.ID_Venta = v.ID_Venta
    JOIN Cliente c ON v.ID_Cliente = c.ID_Cliente
    WHERE c.Barrio = 'Guadalajara'
);

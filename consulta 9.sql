SELECT c.Barrio AS Ciudad
FROM Cliente c
JOIN Venta v ON c.ID_Cliente = v.ID_Cliente
JOIN DetalleVenta dv ON v.ID_Venta = dv.ID_Venta
JOIN Producto p ON dv.ID_Producto = p.ID_Producto
GROUP BY c.Barrio
HAVING COUNT(DISTINCT p.ID_Producto) = (SELECT COUNT(*) FROM Producto);

SELECT DISTINCT p.ID_Producto
FROM Producto p
JOIN DetalleVenta dv ON p.ID_Producto = dv.ID_Producto
JOIN Venta v ON dv.ID_Venta = v.ID_Venta
JOIN Cliente c ON v.ID_Cliente = c.ID_Cliente
WHERE c.Barrio IN ('Monterrey', 'Cancún')
GROUP BY p.ID_Producto
HAVING COUNT(DISTINCT c.Barrio) = 2;

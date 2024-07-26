SELECT
    c.ID_Cliente,
    c.Nombre,
    SUM(dv.Cantidad) AS CantidadVendida,
    p.Descripcion
FROM
    Venta v
JOIN
    Cliente c ON v.ID_Cliente = c.ID_Cliente
JOIN
    DetalleVenta dv ON v.ID_Venta = dv.ID_Venta
JOIN
    Producto p ON dv.ID_Producto = p.ID_Producto
GROUP BY
    c.ID_Cliente, c.Nombre, p.Descripcion
HAVING
    SUM(dv.Cantidad) > 10;

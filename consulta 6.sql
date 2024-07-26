SELECT
    c.ID_Cliente,
    c.Nombre,
    SUM(dv.Cantidad) AS TotalCantidadComprada
FROM
    Cliente c
JOIN
    Venta v ON c.ID_Cliente = v.ID_Cliente
JOIN
    DetalleVenta dv ON v.ID_Venta = dv.ID_Venta
GROUP BY
    c.ID_Cliente, c.Nombre;

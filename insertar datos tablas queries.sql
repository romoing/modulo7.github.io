-- Insertar productos
INSERT INTO Producto (Nombre, Descripcion, Precio, SKU) VALUES
('Arroz', 'Arroz de grano largo', 15.50, 'AR123'),
('Azúcar', 'Azúcar blanca', 20.00, 'AZ456'),
('Aceite', 'Aceite de maíz', 30.00, 'AC789');

-- Insertar clientes
INSERT INTO Cliente (Nombre, Apellidos, Email, Telefono, Calle, Codigo_Postal, Barrio) VALUES
('Juan', 'Pérez', 'juan.perez@email.com', '555-1234', 'Calle Falsa 123', '12345', 'Centro'),
('Ana', 'Gómez', 'ana.gomez@email.com', '555-5678', 'Avenida Siempre Viva 742', '54321', 'Norte');

-- Insertar ventas
INSERT INTO Venta (Fecha, ID_Cliente) VALUES
('2024-07-25 14:30:00', 1),
('2024-07-26 09:15:00', 2);

-- Insertar detalles de venta
INSERT INTO DetalleVenta (ID_Venta, ID_Producto, Cantidad) VALUES
(1, 1, 2),  -- Juan compra 2 unidades de Arroz
(1, 2, 1),  -- Juan compra 1 unidad de Azúcar
(2, 3, 3);  -- Ana compra 3 unidades de Aceites

CREATE TABLE Producto (
    ID_Producto SERIAL PRIMARY KEY,
    Nombre VARCHAR(100)  ,
    Descripcion TEXT,
    Precio DECIMAL(10, 2) ,
    SKU VARCHAR(50) 
);

CREATE TABLE Cliente (
    ID_Cliente SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) ,
    Apellidos VARCHAR(100) ,
    Email VARCHAR(150) UNIQUE ,
    Telefono VARCHAR(15),
    Calle VARCHAR(150),
    Codigo_Postal VARCHAR(10),
    Barrio VARCHAR(100)
);

CREATE TABLE Venta (
    ID_Venta SERIAL PRIMARY KEY,
    Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ID_Cliente INT REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE DetalleVenta (
    ID_DetalleVenta SERIAL PRIMARY KEY,
    ID_Venta INT REFERENCES Venta(ID_Venta),
    ID_Producto INT REFERENCES Producto(ID_Producto),
    Cantidad INT 
);
-- Tabla ORDENES
CREATE TABLE ORDENES (
    IdOrden INTEGER PRIMARY KEY,
    Fecha DATE,
    IdCliente INTEGER,
    FOREIGN KEY (IdCliente) REFERENCES CLIENTES(IdCliente)
);

-- Tabla CLIENTES
CREATE TABLE CLIENTES (
    IdCliente INTEGER PRIMARY KEY,
    Cliente TEXT,
    Ciudad TEXT
);

-- Tabla DETALLE_ORDEN
CREATE TABLE DETALLE_ORDEN (
    IdOrden INTEGER,
    Codigo INTEGER,
    Articulo TEXT,
    Cantidad INTEGER,
    Precio DECIMAL(10, 2),
    PRIMARY KEY (IdOrden, Codigo),
    FOREIGN KEY (IdOrden) REFERENCES ORDENES(IdOrden)
);

-- Insertar datos en la tabla CLIENTES
INSERT INTO CLIENTES (IdCliente, Cliente, Ciudad)
VALUES 
(101, 'Martin', 'Santiago'),
(107, 'Herman', 'Valparaíso'),
(110, 'Pedro', 'Concepción');

-- Insertar datos en la tabla ORDENES
INSERT INTO ORDENES (IdOrden, Fecha, IdCliente)
VALUES 
(2301, '2020-02-23', 101),
(2302, '2020-02-25', 107),
(2303, '2020-02-27', 110);

-- Insertar datos en la tabla DETALLE_ORDEN
INSERT INTO DETALLE_ORDEN (IdOrden, Codigo, Articulo, Cantidad, Precio)
VALUES 
(2301, 3786, 'Red', 3, 35.00),
(2301, 4011, 'Raqueta', 6, 65.00),
(2301, 9132, 'Paq-3', 8, 4.75),
(2302, 5794, 'Paq-6', 4, 5.00),
(2303, 4011, 'Raqueta', 2, 65.00),
(2303, 3141, 'Funda', 2, 10.00);

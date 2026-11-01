-- ══════════════════════════════════════════
-- BodegaTech — Script de Inventario
-- Autor: [PAMELA GUZMAN]
-- Fecha: [31/10/2026]
-- ══════════════════════════════════════════
-- SECCION DDL-------
--DROP TABLE Inventario

DROP TABLE IF EXISTS inventario;

---CREATE TABLE INVENTARIO con clave primary key y agregue comentarios 

CREATE TABLE Inventario (
IdProducto int NOT NULL identity (1,1) PRIMARY KEY, --INT almacena numeros enteros de 1 en 1
Nombre_Producto varchar(100) NOT NULL, -- Varchar(100) almacena hasta 100 caracteres
Categoria varchar(50) NOT NULL,
Precio_unitario DECIMAL (10,2) NOT NULL, -- Decimal permite almacenar numeros de 10 digitos en total incluyendo 2 deci
Stock_actual int NOT NULL,
Stock_minimo int NOT NULL,
Fecha_ingreso DATE NOT NULL,
Activo TINYINT NOT NULL  -- TINYINT para 1 = Disponible, 0 = Descontinuado
);

-- SECCION DML-----
--- INSERT INTO Insertar lo productos

INSERT INTO Inventario
(Nombre_Producto, Categoria, Precio_Unitario, Stock_actual, Stock_minimo, Fecha_ingreso, Activo)
VALUES
('Laptop Pro 15', 'Computación', 1200.00, 15, 3, '20240110', 1),
('Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '20240110', 1),
('Monitor 4K 27"', 'Computación', 450.00, 12, 2, '20240115', 1),
('Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '20240115', 1),
('Laptop Basic 14', 'Computación', 650.00, 20, 3, '20240201', 1),
('Auriculares BT Pro', 'Audio', 120.00, 35, 5, '20240201', 1),
('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '20240210', 1),
('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '20240210', 1),
('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '20240301', 1),
('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '20240301', 1);

-- UPDATE con WHERE 

UPDATE Inventario
SET Stock_actual = Stock_actual - 3
WHERE IdProducto = 1;

UPDATE Inventario
SET Stock_actual = Stock_actual - 12
WHERE IdProducto = 2;

UPDATE Inventario
SET Stock_actual = Stock_actual - 5
WHERE IdProducto = 6;

-- UPDATE adicional  inactivar idproducto 8

UPDATE Inventario
SET Activo = 0
WHERE IdProducto = 8;

--SELECT de validación

SELECT * FROM inventario;




CREATE TABLE productos (
    id_producto INT IDENTITY PRIMARY KEY,
    nombre_producto VARCHAR(100),
    categoria VARCHAR(50),
    precio_unitario DECIMAL(10,2),
    stock_actual INT,
    stock_minimo INT,
    fecha_ingreso DATE,
    activo TINYINT
);
--activo--> 1 = Si | 2 = No

--Elegí DECIMAL para la columna precio_unitario dado que los precios pueden llegar a incluir valores con coma. Por otro lado, y por el contrario, stock_actual y stock_minimo, solo admiten valores enteros dado que es imposible tener, por ejemplo, medio producto. Por otro lado, la columna activo cuenta con el tipo de valor TYNYNT (valor aún no visto en la cursada) ya que en un principio había puesto VARCHAR con límite a dos letras (para responder si o no), pero luego la IA me corrigió. 

INSERT INTO productos 
(nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES
('Laptop Pro 15', 'Computación', 1200.00, 15, 3, '2024-01-10', 1),
('Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1),
('Monitor 4K 27"', 'Computación', 450.00, 12, 2, '2024-01-15', 1),
('Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1),
('Laptop Basic 14', 'Computación', 650.00, 20, 3, '2024-02-01', 1),
('Auriculares BT Pro', 'Audio', 120.00, 35, 5, '2024-02-01', 1),
('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1),
('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1),
('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);

SELECT * FROM productos

UPDATE productos SET stock_actual=12 WHERE id_producto=1;

UPDATE productos SET stock_actual=68 WHERE id_producto=2;

UPDATE productos SET stock_actual=30 WHERE id_producto=6;

UPDATE productos SET activo=0 WHERE id_producto=8;


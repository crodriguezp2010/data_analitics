USE ventas_Tech_DB;
GO
-- =====================================================================
-- 3. INSERCIÓN DE DATOS
-- VENTAS DE TECNOLOGÍA
-- =====================================================================

-- =====================================================================
-- 3.1 CATEGORÍAS
-- =====================================================================

INSERT INTO [dbo].[categorias]
    ([id_categoria], [nombre_categoria], [descripcion])
VALUES
    (1, 'Computadoras', 'Computadoras portátiles, de escritorio y equipos para trabajo o estudio'),
    (2, 'Periféricos', 'Accesorios y dispositivos periféricos para computadoras'),
    (3, 'Dispositivos Móviles', 'Smartphones, tablets y accesorios para dispositivos móviles');


-- =====================================================================
-- 3.2 PRODUCTOS
-- 5 PRODUCTOS DISTRIBUIDOS EN LAS 3 CATEGORÍAS
-- =====================================================================

INSERT INTO [dbo].[productos]
    ([id_producto], [nombre_producto], [id_categoria], [precio], [stock], [activo])
VALUES
    -- Categoría 1: Computadoras (2 productos)
    (101, 'Laptop Lenovo IdeaPad 3', 1, 2499.90, 15, 1),
    (102, 'Laptop HP Pavilion 15',   1, 3299.90, 10, 1),

    -- Categoría 2: Periféricos (2 productos)
    (201, 'Mouse Logitech M185',     2,   59.90, 40, 1),
    (202, 'Teclado Logitech K380',   2,  149.90, 25, 1),

    -- Categoría 3: Dispositivos Móviles (1 producto)
    (301, 'Samsung Galaxy A55',      3, 1599.90, 12, 1);


-- =====================================================================
-- 3.3 CLIENTES
-- 3 CLIENTES
-- =====================================================================

INSERT INTO [dbo].[clientes]
    ([id_cliente], [nombre], [email], [ciudad], [fecha_registro])
VALUES
    (1, 'Carlos Mendoza', 'carlos.mendoza@gmail.com', 'Lima',     '2026-01-15'),
    (2, 'Ana Torres',     'ana.torres@gmail.com',     'Arequipa', '2026-02-10'),
    (3, 'Luis Ramirez',   'luis.ramirez@gmail.com',   'Trujillo', '2026-02-18');


-- =====================================================================
-- 3.4 VENTAS
-- 10 TRANSACCIONES DE VENTA
-- =====================================================================

INSERT INTO [dbo].[ventas]
    ([id_ventas], [id_cliente], [id_producto], [cantidad], [precio_unitario], [fecha_venta])
VALUES

    -- Cliente 1: Carlos Mendoza
    (1001, 1, 101, 1, 2499.90, '2026-03-05 10:15:00'),
    (1002, 1, 201, 2,   59.90, '2026-03-05 10:20:00'),
    (1003, 1, 202, 1,  149.90, '2026-03-20 15:30:00'),
    (1004, 1, 301, 1, 1599.90, '2026-04-10 11:45:00'),

    -- Cliente 2: Ana Torres
    (1005, 2, 102, 1, 3299.90, '2026-03-15 09:30:00'),
    (1006, 2, 201, 1,   59.90, '2026-03-15 09:35:00'),
    (1007, 2, 301, 1, 1599.90, '2026-04-22 16:10:00'),

    -- Cliente 3: Luis Ramirez
    (1008, 3, 101, 1, 2499.90, '2026-03-25 14:20:00'),
    (1009, 3, 202, 2,  149.90, '2026-04-05 10:50:00'),
    (1010, 3, 201, 3,   59.90, '2026-05-12 17:30:00');


-- =====================================================================
-- FIN DE INSERCIÓN
-- =====================================================================
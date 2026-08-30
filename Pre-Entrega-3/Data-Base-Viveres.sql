USE [Ventas_Tech_DB]
GO

-- 1. Insertar 10 categorías de primera necesidad
INSERT INTO [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES
(1, 'Abarrotes', 'Productos secos y alimentos básicos de despensa'),
(2, 'Lácteos y Huevos', 'Leche, quesos, yogures y huevos frescos'),
(3, 'Cuidado Personal', 'Artículos de higiene y aseo diario'),
(4, 'Limpieza del Hogar', 'Detergentes, desinfectantes y útiles de aseo'),
(5, 'Carnes y Pescados', 'Pollo, res, cerdo y pescados frescos o congelados'),
(6, 'Frutas y Verduras', 'Productos frescos del campo'),
(7, 'Panadería y Pastelería', 'Pan de molde, panes artesanales y harinas'),
(8, 'Bebidas e Hidratación', 'Agua mineral, jugos naturales y aguas tratadas'),
(9, 'Embutidos', 'Jamón, salchichas y quesos laminados'),
(10, 'Aceites y Condimentos', 'Aceite vegetal, de oliva, sal y especias básicas');
GO

-- 2. Insertar 10 productos distribuidos en las categorías
INSERT INTO [dbo].[producto] ([id_producto], [nombre], [precio], [id_categoria]) VALUES
(101, 'Arroz Integral 1kg', 3.50, 1),
(102, 'Aceite Vegetal 1L', 8.20, 10),
(103, 'Leche Entera UHT 1L', 4.80, 2),
(104, 'Filete de Pollo 1kg', 14.50, 5),
(105, 'Detergente en Polvo 1kg', 9.90, 4),
(106, 'Jabón de Tocador Pack x3', 6.50, 3),
(107, 'Pan de Molde Familiar', 5.20, 7),
(108, 'Agua Mineral Sin Gas 2.5L', 3.00, 8),
(109, 'Huevo Rosado Paquete x12', 7.80, 2),
(110, 'Fideos Espagueti 400g', 2.30, 1);
GO

-- 3. Insertar 10 clientes
INSERT INTO [dbo].[cliente] ([id_cliente], [nombre_cliente], [email], [ciudad]) VALUES
(1, 'Carlos Mendoza', 'carlos.mendoza@email.com', 'Lima'),
(2, 'Ana Rodríguez', 'ana.rodriguez@email.com', 'Bogotá'),
(3, 'Sofía Martínez', 'sofia.martinez@email.com', 'Santiago'),
(4, 'Juan Pérez', 'juan.perez@email.com', 'Lima'),
(5, 'María Gómez', 'maria.gomez@email.com', 'Arequipa'),
(6, 'Luis Castro', 'luis.castro@email.com', 'Medellín'),
(7, 'Elena Silva', 'elena.silva@email.com', 'Santiago'),
(8, 'Jorge Torres', 'jorge.torres@email.com', 'Cali'),
(9, 'Lucía Fernández', 'lucia.fernandez@email.com', 'Lima'),
(10, 'Andrés Morales', 'andres.morales@email.com', 'Valparaíso');
GO

-- 4. Registrar 10 transacciones de venta con estos nuevos productos
INSERT INTO [dbo].[venta] ([id_venta], [fecha], [id_cliente], [id_producto], [cantidad], [precio_unitario]) VALUES
(1, '2026-08-28 08:30:00', 1, 101, 3, 3.50),   -- Carlos compra 3 de Arroz
(2, '2026-08-28 09:15:00', 4, 103, 2, 4.80),   -- Juan compra 2 de Leche
(3, '2026-08-28 10:00:00', 2, 102, 1, 8.20),   -- Ana compra 1 de Aceite
(4, '2026-08-28 11:45:00', 5, 104, 2, 14.50),  -- María compra 2kg de Pollo
(5, '2026-08-28 14:20:00', 3, 107, 1, 5.20),   -- Sofía compra 1 Pan de molde
(6, '2026-08-29 08:05:00', 6, 109, 1, 7.80),   -- Luis compra 1 paquete de Huevos
(7, '2026-08-29 09:30:00', 7, 105, 1, 9.90),   -- Elena compra 1 Detergente
(8, '2026-08-29 11:10:00', 9, 108, 4, 3.00),   -- Lucía compra 4 Aguas minerales
(9, '2026-08-29 15:40:00', 8, 106, 2, 6.50),   -- Jorge compra 2 packs de Jabón
(10, '2026-08-29 17:25:00', 10, 110, 5, 2.30); -- Andrés compra 5 Fideos
GO

USE [Ventas_Tech_DB]
GO

-- Insertar 20 transacciones de venta adicionales (IDs del 11 al 30)
INSERT INTO [dbo].[venta] ([id_venta], [fecha], [id_cliente], [id_producto], [cantidad], [precio_unitario]) VALUES
(11, '2026-08-29 18:00:00', 1, 103, 3, 4.80),   -- Carlos compra 3 Leches
(12, '2026-08-29 18:45:00', 3, 101, 4, 3.50),   -- Sofía compra 4 Arroz
(13, '2026-08-29 19:15:00', 5, 102, 2, 8.20),   -- María compra 2 Aceites
(14, '2026-08-29 19:40:00', 2, 109, 1, 7.80),   -- Ana compra 1 paquete de Huevos
(15, '2026-08-30 08:00:00', 7, 107, 2, 5.20),   -- Elena compra 2 Panes de molde
(16, '2026-08-30 09:10:00', 4, 110, 6, 2.30),   -- Juan compra 6 Fideos
(17, '2026-08-30 10:15:00', 6, 104, 1, 14.50),  -- Luis compra 1kg de Pollo
(18, '2026-08-30 11:30:00', 9, 106, 1, 6.50),   -- Lucía compra 1 pack de Jabón
(19, '2026-08-30 12:20:00', 8, 105, 2, 9.90),   -- Jorge compra 2 Detergentes
(20, '2026-08-30 14:05:00', 10, 108, 3, 3.00),  -- Andrés compra 3 Aguas minerales
(21, '2026-08-30 15:50:00', 1, 104, 2, 14.50),  -- Carlos compra 2kg de Pollo
(22, '2026-08-30 16:30:00', 4, 102, 1, 8.20),   -- Juan compra 1 Aceite
(23, '2026-08-30 17:15:00', 2, 101, 5, 3.50),   -- Ana compra 5 Arroz
(24, '2026-08-31 08:30:00', 5, 108, 6, 3.00),   -- María compra 6 Aguas minerales
(25, '2026-08-31 09:45:00', 3, 103, 4, 4.80),   -- Sofía compra 4 Leches
(26, '2026-08-31 11:00:00', 6, 107, 1, 5.20),   -- Luis compra 1 Pan de molde
(27, '2026-08-31 13:15:00', 8, 110, 3, 2.30),   -- Jorge compra 3 Fideos
(28, '2026-08-31 15:00:00', 10, 109, 2, 7.80),  -- Andrés compra 2 paquetes de Huevos
(29, '2026-08-31 16:40:00', 7, 106, 3, 6.50),   -- Elena compra 3 packs de Jabón
(30, '2026-08-31 18:10:00', 9, 105, 1, 9.90);   -- Lucía compra 1 Detergente
GO

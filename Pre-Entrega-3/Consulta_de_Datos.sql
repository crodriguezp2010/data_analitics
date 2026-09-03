
-- =====================================================================
-- 3.1 CATEGORÍAS
-- =====================================================================
SELECT [id_categoria]
      ,[nombre_categoria]
      ,[descripcion]
  FROM [Ventas_Tech_DB].[dbo].[categorias];
  
  
  -- =====================================================================
-- 3.2 PRODUCTOS
-- 5 PRODUCTOS DISTRIBUIDOS EN LAS 3 CATEGORÍAS
-- =====================================================================

SELECT [id_producto]
      ,[nombre_producto]
      ,[id_categoria]
      ,[precio]
      ,[stock]
      ,[activo]
  FROM [Ventas_Tech_DB].[dbo].[productos];
  
  -- =====================================================================
-- 3.3 CLIENTES
-- 3 CLIENTES
-- =====================================================================

SELECT [id_cliente]
      ,[nombre]
      ,[email]
      ,[ciudad]
      ,[fecha_registro]
  FROM [Ventas_Tech_DB].[dbo].[clientes];


-- =====================================================================
-- 3.4 VENTAS
-- 10 TRANSACCIONES DE VENTA
-- =====================================================================

SELECT  [id_ventas]
      ,[id_cliente]
      ,[id_producto]
      ,[cantidad]
      ,[precio_unitario]
      ,[fecha_venta]
  FROM [Ventas_Tech_DB].[dbo].[ventas];

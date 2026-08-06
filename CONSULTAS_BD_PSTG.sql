--VALOR TOTAL DE VENTAS POR CLIENTE

SELECT 
  cliente.N_IDENTIFICACION,
  cliente.nombre,
  cliente.valor_pdt_vendidos
FROM cliente cliente;

--VALOR TOTAL DE VENTAS POR CIUDAD:

SELECT 
  cliente.ciudad,
  venta.valor_total
FROM venta venta
JOIN cliente cliente ON venta.N_IDENTIFICACION = cliente.N_IDENTIFICACION;

--CONDUCTORES ASIGNADOS A RUTAS

SELECT 
 IDENTIFICACION,
 nombre,
 apellidos,
 fecha_asignacion,
 ruta.NOMBRE AS ruta
FROM conductor
JOIN ruta ON fecha_asignacion = ruta.fecha_apertura;

-- CLIENTES CUBIERTOS POR CADA RUTA

SELECT 
  ruta.NOMBRE,
  cliente.nombre,
  cliente.ciudad
FROM ruta ruta
JOIN cliente ON ruta.ciudad_destino = cliente.ciudad;

--PRODUCTOS VENDIDOS POR CLIENTE

SELECT 
  cliente.nombre,
  producto.nombre,
  incluye.cantidad,
  incluye.precio_unitario,
  (incluye.cantidad * incluye.precio_unitario) total
FROM venta venta
JOIN incluye incluye ON venta.ID_VENTA = incluye.ID_VENTA
JOIN producto producto ON incluye.ID_PRODUCTO = producto.ID_PRODUCTO
JOIN cliente ON venta.N_IDENTIFICACION = cliente.N_IDENTIFICACION;

-- RESUMEN DE VENTAS

SELECT 
  venta.fecha_compra,
  venta.valor_total
FROM venta venta;

--PROVEEDORES QUE SUMINISTRAN CADA PRODUCTO

SELECT 
  proveedor.nombre,
  producto.nombre
FROM suministra suministra
JOIN proveedor proveedor ON suministra.N_IDENTIFICACION = proveedor.N_IDENTIFICACION
JOIN producto producto ON suministra.ID_PRODUCTO = producto.ID_PRODUCTO;

--HISTORIAL DE CAMBIOS DE COSTO POR RUTA

SELECT 
 ruta.NOMBRE ruta,
 cambio_costo.F_CAMBIO_COSTO,
 cambio_costo.nuevo_costo
FROM ruta
JOIN cambio_costo ON ruta.NOMBRE = cambio_costo.NOMBRE;
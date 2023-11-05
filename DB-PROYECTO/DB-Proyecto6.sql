-- Calcular el precio promedio de los productos en cada categoría
SELECT c.nombre AS categoria_producto, AVG(p.precio_unitario) AS precio_promedio
FROM Producto p, Categoria c
WHERE p.categoria_id = c.id
GROUP BY categoria_producto;

-- Obtener la cantidad total de productos en stock por categoría
SELECT c.nombre AS categoria_producto, SUM(s.cantidad) AS cantidad_total_productos
FROM Stock s, Categoria c, Producto p
WHERE s.producto_ID = p.id AND p.categoria_id = c.id
GROUP BY categoria_producto;

-- Calcular el total de ventas por sucursal
SELECT s.nombre AS sucursal, SUM(i.monto_venta) AS total_ventas_sucursal
FROM Item i, Sucursal s, Orden o
WHERE s.id = o.sucursal_id AND i.orden_id = o.id
GROUP BY sucursal;

-- Obtener el cliente que ha realizado el mayor monto de compras
SELECT c.nombre AS cliente, SUM(o.total) AS mayor_monto_compras
FROM Cliente c
JOIN Orden o ON c.id = o.cliente_id
GROUP BY cliente
ORDER BY mayor_monto_compras DESC
LIMIT 1;
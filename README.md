# PROYECTO INTEGRADOR: BASE_DE_DATOS

REALIZADO POR: Angelica Geraldine Fajardo.

Parte 1: Diseñando la DB
Para este proyecto crearemos la base de datos de una cadena de tiendas

Las tablas son las siguientes:

Categoria
* id
* nombre

Producto
* id
* nombre
* marca
* categoria_id
* precio_unitario

Sucursal
* id
* nombre
* direccion

Stock
* id
* sucursal_id
* producto_id
* cantidad
(unique together (sucursal_id, producto_id))

Cliente
* id
* nombre
* telefono

Orden
* id
* cliente_id
* sucursal_id
* fecha
* total

Item
* id
* orden_id
* producto_id
* cantidad
* monto_venta

Tu tarea consiste en diseñar un diagrama ER con las relaciones entre tablas.

## EL PROYECTO ESTA EN DESARROLLO.

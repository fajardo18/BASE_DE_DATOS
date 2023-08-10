# PROYECTO INTEGRADOR: BASE_DE_DATOS

REALIZADO POR: Angelica Geraldine Fajardo.

Para este proyecto crearemos la base de datos de una cadena de tiendas.

#Parte 1: Diseñando la DB

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


#Parte 2:  Creando las tablas en SQLite.

Dada la base de datos que diseñamos en la anterior etapa, escribe las consultas para crear cada una de las tablas en 
SQLite.

La tabla stock debe tener una restricción de unicidad unique (sucursal_id, producto_id).


#Parte 3: Creando las tablas en PostgreSQL

Consiste en crear las tablas ya creadas en sqlite, pero esta vez en PostgreSQL.

## EL PROYECTO ESTA EN DESARROLLO.

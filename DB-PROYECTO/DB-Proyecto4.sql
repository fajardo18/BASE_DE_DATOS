insert into categoria(id, nombre)
values
	(1,	'Electrónicos'),
	(2,	'Ropa'),
	(3,	'Hogar'),
	(4,	'Deportes'),
	(5,	'Juguetes');

insert into producto(id, nombre, marca, categoria_id, precio_unitario)
values
	(1,	'Televisor', 'Sony', 1,	1000),
	(2,	'Laptop', 'HP',	1, 800),
	(3,	'Camisa', 'Zara', 2, 50),
	(4,	'Pantalón',	'LeviS', 2, 70),
	(5,	'Sartén', 'T-fal', 3, 30),
	(6,	'Toalla', 'Cannon',	3, 20),
	(7, 'Pelota', 'Nike', 4, 15),
	(8,	'Raqueta', 'Wilson', 4,	50),
	(9,	'Muñeca', 'Barbie',	5, 25),
	(10, 'Carro', 'Hot Wheels',	5, 10);

insert into sucursal(id, nombre, direccion)
values
	(3,	'Sucursal C', 'Calle 3'),
	(3,	'Sucursal C', 'Calle 3'),
	(3,	'Sucursal C', 'Calle 3');

drop table sucursal;
CREATE TABLE Sucursal (
    ID INTEGER,
    Nombre VARCHAR(50),
    Direccion VARCHAR(255)
);

insert into cliente (id, nombre, telefono)
values
	(1,	'Juan', 1234567890),
	(2,	'María', 0987654321),
	(3,	'Pedro', 5555555555);

drop table cliente;
CREATE TABLE Cliente(
	ID SERIAL PRIMARY KEY,
	Nombre VARCHAR(50),
	Telefono BIGINT
);

== Para almacenar valores ENTEROS, por ejemplo, en campos que hacen referencia a cantidades, usamos:
== 1) int (integer o int4): su rango es de -2000000000 a 2000000000 aprox.
== 2) smallint (int2): Puede contener hasta 5 digitos. Su rango va desde –32000 hasta 32000 aprox.
== 3) bigint (int8): De –9000000000000000000 hasta 9000000000000000000 aprox.

insert into orden(id, cliente_id, sucursal_id, fecha, total)
values
	(1,	1,	3,	'2023-06-12', 600),
	(2,	2,	1,	'2023-06-12', 705),
	(3,	3,	3,	'2023-06-12', 7000),
	(4,	2,	3,	'2023-06-12', 12200),
	(5,	3,	3,	'2023-06-12', 115),
	(6,	1,	1,	'2023-06-12', 690),
	(7,	1,	1,	'2023-06-12', 950),
	(8,	3,	3,	'2023-06-12', 8050),
	(9,	3,	2,	'2023-06-12', 485),
	(10, 2,	1,	'2023-06-12', 8725),
	(11, 2,	3,	'2023-06-12', 315),
	(12, 3,	1,	'2023-06-12', 16110),
	(13, 3,	3,	'2023-06-12', 975),
	(14, 3,	3,	'2023-06-12', 1490),
	(15, 1,	1,	'2023-06-12', 365);

insert into stock (id, sucursal_id, producto_id, cantidad)
values
	(1,	1,	1, 65),
	(2,	1,	2, 71),
	(3,	1,	3, 8),
	(4,	1,	4, 42),
	(5,	1,	5, 61),
	(6,	1,	6, 14),
	(7,	1,	7, 70),
	(8,	1,	8, 66),
	(9,	1,	9, 13),
	(10, 1,	10, 68),
	(11, 2,	1, 14),
	(12, 2,	2, 67),
	(13, 2,	3, 74),
	(14, 2,	4, 32),
	(15, 2,	5, 75),
	(16, 2,	6, 37),
	(17, 2,	7, 14),
	(18, 2,	8, 42),
	(19, 2,	9, 51),
	(20, 2,	10, 41),
	(21, 3,	1, 59),
	(22, 3,	2, 98),
	(23, 3,	3, 52),
	(24, 3,	4, 85),
	(25, 3,	5, 31),
	(26, 3,	6, 17),
	(27, 3,	7, 13),
	(28, 3,	8, 18),
	(29, 3,	9, 76),
	(30, 3,	10, 1);

insert into item (id, orden_id, producto_id, cantidad, monto_venta)
values
	(1,	1,	9,	7,	100),
	(2,	1,	8,	8,	500),
	(6,	2,	9,	3,	225),
	(7,	2,	5,	9,	240),
	(8,	2,	5,	10,	180),
	(9,	2,	6,	3,	60),
	(11, 3,	1,	9,	7000),
	(16, 4,	1,	4,	5000),
	(17, 4,	2,	8,	7200),
	(21, 5,	6,	2,	100),
	(22, 5,	7,	3,	15),
	(26, 6,	4,	9,	140),
	(27, 6,	9,	4,	250),
	(28, 6,	3,	2,	300),
	(31, 7,	5,	8,	300),
	(32, 7,	9,	6,	250),
	(33, 7,	8,	2,	400),
	(36, 8,	1,	6,	2000),
	(37, 8,	1,	10,	6000),
	(38, 8,	3,	2,	50),
	(41, 9,	8,	9,	200),
	(42, 9,	3,	3,	150),
	(43, 9,	7,	2,	105),
	(44, 9,	10,	5,	30),
	(46, 10, 9,	9,	225),
	(47, 10, 1,	7,	8000),
	(48, 10, 3,	6,	500),
	(51, 11, 7,	5,	90),
	(52, 11, 9,	8,	125),
	(53, 11, 3,	9,	100),
	(56, 12, 2,	7,	7200),
	(57, 12, 1,	5,	8000),
	(58, 12, 6,	9,	160),
	(59, 12, 8,	9,	350),
	(60, 12, 8,	4,	400),
	(61, 13, 9,	4,	175),
	(62, 13, 2,	6,	800),
	(66, 14, 1,	5,	1000),
	(67, 14, 4,	7,	490),
	(71, 15, 9,	6,	125),
	(72, 15, 5,	9,	240);

==Obtener el precio mínimo, precio máximo y precio promedio de todos los productos.

select
	MIN(precio_unitario) AS precio_minimo,
	MAX(precio_unitario) AS precio_maximo,
	AVG(precio_unitario) AS precio_promedio
from producto;

== Calcular la cantidad total de productos en stock por sucursal.

select sucursal_id, sum(producto_id) as total_productos
from stock
group by sucursal_id;

== Obtener el total de ventas por cliente.

select cliente_id, sum(total) as total_ventas
from orden
group by cliente_id;

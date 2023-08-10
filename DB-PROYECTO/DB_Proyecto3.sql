CREATE TABLE Categoria (
	ID SERIAL PRIMARY KEY,
	NOMBRE VARCHAR(50)
);

CREATE TABLE Producto (
 	ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(50),
    Marca VARCHAR(50),
    Categoria_id INTEGER,
    Precio_unitario numeric(10, 2)
);

CREATE TABLE Sucursal (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(50),
    Direccion VARCHAR(255)
);

CREATE TABLE Stock (
    ID SERIAL PRIMARY KEY,
    Sucursal_id INTEGER NOT NULL,
    Producto_id INTEGER NOT NULL,
    Cantidad INTEGER,
    UNIQUE (sucursal_id, producto_id)
);

CREATE TABLE Cliente (
	ID SERIAL PRIMARY KEY,
	Nombre VARCHAR(50),
	Telefono INTEGER
);

CREATE TABLE Orden (
    ID SERIAL PRIMARY KEY,
    Cliente_id INTEGER,
    Sucursal_id INTEGER,
    Fecha DATE,
    Total numeric(10, 2)
);

CREATE TABLE Item (
    ID SERIAL PRIMARY KEY,
    Orden_id INTEGER,
    Producto_id INTEGER,
    Cantidad INTEGER,
    Monto_venta numeric(10, 2)
);
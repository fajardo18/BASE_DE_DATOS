CREATE TABLE Categoria(
	ID INTERGER PRIMARY KEY NOT NULL,
	NOMBRE TEXT
);

CREATE TABLE Producto (
 	ID INT PRIMARY KEY NOT NULL,
    Nombre TEXT,
    Marca TEXT,
    Categoria_id INT,
    Precio_unitario NUMERIC
   );

CREATE TABLE Sucursal (
    ID INT PRIMARY KEY NOT NULL,
    Nombre TEXT,
    Direccion TEXT
);

CREATE TABLE Stock (
    ID Serial PRIMARY KEY,
    Sucursal_id INT NOT NULL,
    Producto_id INT NOT NULL,
    Cantidad INT,
    UNIQUE (sucursal_id, producto_id)
    );

CREATE TABLE Cliente(
	ID INT PRIMARY KEY NOT NULL,
	Nombre TEXT,
	Telefono INT
);

CREATE TABLE Orden (
    ID INT PRIMARY KEY NOT NULL,
    Cliente_id INT,
    Sucursal_id INT,
    Fecha DATE,
    Total NUMERIC
    );

CREATE TABLE Item (
    ID INT PRIMARY KEY NOT NULL,
    Orden_id INT,
    Producto_id INT,
    Cantidad INT,
    Monto_venta NUMERIC
    );

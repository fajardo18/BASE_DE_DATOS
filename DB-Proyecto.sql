CREATE TABLE Categoria(
	ID INT PRIMARY KEY NOT NULL,
	Nombre TEXT
);

CREATE TABLE Producto (
 	ID INT PRIMARY KEY NOT NULL,
    Nombre TEXT,
    Marca TEXT,
    Categoria_id INT,
    Precio_unitario DECIMAL,
    FOREIGN KEY (Categoria_id) REFERENCES Categoria(ID)
);

CREATE TABLE Sucursal (
    ID INT PRIMARY KEY NOT NULL,
    Nombre TEXT,
    Direccion TEXT
);

CREATE TABLE Stock (
    ID serial PRIMARY KEY,
    Sucursal_id INT NOT NULL,
    Producto_id INT NOT NULL,
    Cantidad INT,
    UNIQUE (sucursal_id, producto_id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
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
    Total DECIMAL,
    FOREIGN KEY (Cliente_id) REFERENCES Cliente(ID),
    FOREIGN KEY (Sucursal_id) REFERENCES Sucursal(ID)
);

CREATE TABLE Item (
    ID INT PRIMARY KEY NOT NULL,
    Orden_id INT,
    Producto_id INT,
    Cantidad INT,
    Monto_venta DECIMAL,
    FOREIGN KEY (Orden_id) REFERENCES Orden(ID),
    FOREIGN KEY (Producto_id) REFERENCES Producto(ID)
);

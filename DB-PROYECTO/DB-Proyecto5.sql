--Producto -> Categoria
ALTER TABLE Producto
ADD FOREIGN KEY (categoria_id) REFERENCES Categoria(id);

--Stock -> Sucursal & Producto
ALTER TABLE Stock
ADD FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id);
ALTER TABLE Stock
ADD FOREIGN KEY (producto_id) REFERENCES Producto(id);

--Orden -> Cliente & Sucursal
ALTER TABLE Orden
ADD FOREIGN KEY (cliente_id) REFERENCES Cliente(id);
ALTER TABLE Orden
ADD FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id);

--Item -> Orden & Producto
ALTER TABLE Item
ADD FOREIGN KEY (orden_id) REFERENCES Orden(id);
ALTER TABLE Item
ADD FOREIGN KEY (producto_id) REFERENCES Producto(id);
CREATE TABLE proveedor_producto (
    id_producto INT NOT NULL,
    id_proveedor INT NOT NULL,
    PRIMARY KEY (id_producto, id_proveedor),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor)
);
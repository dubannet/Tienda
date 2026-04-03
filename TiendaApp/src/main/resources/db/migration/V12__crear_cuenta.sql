CREATE TABLE cuenta (
    id_cuenta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_venta INT NOT NULL,
    saldo_pendiente DECIMAL(10,2) NOT NULL,
    estado VARCHAR(50),
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    creado_por INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_venta) REFERENCES venta(id_venta),
    FOREIGN KEY (creado_por) REFERENCES usuario(id_usuario)
);
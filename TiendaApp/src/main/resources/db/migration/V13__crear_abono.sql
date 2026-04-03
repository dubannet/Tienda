CREATE TABLE abono (
    id_abono INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    creado_por INT,
    FOREIGN KEY (creado_por) REFERENCES usuario(id_usuario)
);
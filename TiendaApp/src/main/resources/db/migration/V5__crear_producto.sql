CREATE TABLE producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    es_paquete BOOLEAN NOT NULL,
    unidades_por_paquete INT,
    unidad_medida VARCHAR(50),
    precio_compra DECIMAL(10,2) NOT NULL,
    precio_venta DECIMAL(10,2) NOT NULL,
    nombre_producto VARCHAR(100) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    creado_por INT,
    FOREIGN KEY (creado_por) REFERENCES usuario(id_usuario)
);
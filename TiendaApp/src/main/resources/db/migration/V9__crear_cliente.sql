CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_1 VARCHAR(50),
    nombre_2 VARCHAR(50),
    apellido_1 VARCHAR(50),
    apellido_2 VARCHAR(50),
    cedula VARCHAR(20),
    correo VARCHAR(100),
    telefono VARCHAR(20),
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    creado_por INT,
    FOREIGN KEY (creado_por) REFERENCES usuario(id_usuario)
);
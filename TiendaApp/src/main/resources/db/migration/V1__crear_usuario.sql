CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_1 VARCHAR(50) NOT NULL,
    nombre_2 VARCHAR(50),
    apellido_1 VARCHAR(50) NOT NULL,
    apellido_2 VARCHAR(50),
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    clave VARCHAR(255) NOT NULL,
    token_recuperacion VARCHAR(255),
    token_expiracion DATETIME,
    correo VARCHAR(100),
    telefono VARCHAR(20),
    cedula VARCHAR(20),
    estado VARCHAR(20),
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    creado_por INT NULL,
    FOREIGN KEY (creado_por) REFERENCES usuario(id_usuario)
);
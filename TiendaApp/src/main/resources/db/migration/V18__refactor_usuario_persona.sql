ALTER TABLE usuario
ADD COLUMN id_persona INT NULL;
INSERT INTO persona (
    nombre_1,
    nombre_2,
    apellido_1,
    apellido_2,
    cedula,
    correo,
    telefono,
    fecha_creacion,
    creado_por
)
SELECT
    nombre_1,
    nombre_2,
    apellido_1,
    apellido_2,
    cedula,
    correo,
    telefono,
    fecha_creacion,
    creado_por
FROM usuario;
UPDATE usuario u
JOIN persona p ON u.cedula = p.cedula
SET u.id_persona = p.id_persona;
ALTER TABLE usuario
ADD CONSTRAINT fk_usuario_persona
FOREIGN KEY (id_persona) REFERENCES persona(id_persona);
ALTER TABLE usuario
DROP COLUMN nombre_1,
DROP COLUMN nombre_2,
DROP COLUMN apellido_1,
DROP COLUMN apellido_2,
DROP COLUMN correo,
DROP COLUMN telefono,
DROP COLUMN cedula;
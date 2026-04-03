ALTER TABLE cliente
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
    c.nombre_1,
    c.nombre_2,
    c.apellido_1,
    c.apellido_2,
    c.cedula,
    c.correo,
    c.telefono,
    c.fecha_creacion,
    c.creado_por
FROM cliente c
LEFT JOIN persona p ON c.cedula = p.cedula
WHERE p.id_persona IS NULL;
UPDATE cliente c
JOIN persona p ON c.cedula = p.cedula
SET c.id_persona = p.id_persona;
ALTER TABLE cliente
ADD CONSTRAINT fk_cliente_persona
FOREIGN KEY (id_persona) REFERENCES persona(id_persona);
ALTER TABLE cliente
DROP COLUMN nombre_1,
DROP COLUMN nombre_2,
DROP COLUMN apellido_1,
DROP COLUMN apellido_2,
DROP COLUMN cedula,
DROP COLUMN correo,
DROP COLUMN telefono;
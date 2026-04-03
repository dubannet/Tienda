CREATE TABLE abono_cuenta (
    id_abono INT NOT NULL,
    id_cuenta INT NOT NULL,
    PRIMARY KEY (id_abono, id_cuenta),
    FOREIGN KEY (id_abono) REFERENCES abono(id_abono),
    FOREIGN KEY (id_cuenta) REFERENCES cuenta(id_cuenta)
);
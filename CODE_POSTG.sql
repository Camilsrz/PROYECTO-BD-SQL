CREATE SCHEMA IF NOT EXISTS db_alimentamos;

CREATE TABLE proveedor (
  n_identificacion INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  persona_contacto VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  PRIMARY KEY (n_identificacion)
);

CREATE TABLE conductor (
  identificacion INT NOT NULL,
  apellidos VARCHAR(45) NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  fecha_ingreso DATE NOT NULL,
  fecha_asignacion DATE,
  direccion VARCHAR(45) NOT NULL,
  PRIMARY KEY (identificacion)
);

CREATE TABLE cliente (
  n_identificacion INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  valor_pdt_vendidos DOUBLE PRECISION,
  direccion VARCHAR(45) NOT NULL,
  ciudad INT NOT NULL,
  PRIMARY KEY (n_identificacion)
);

CREATE TABLE producto (
  id_producto INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  precio DOUBLE PRECISION NOT NULL,
  PRIMARY KEY (id_producto)
);

CREATE TABLE ruta (
  nombre VARCHAR(20) NOT NULL,
  fecha_apertura DATE NOT NULL,
  costo_ruta DOUBLE PRECISION,
  ciudad_destino VARCHAR(30) NOT NULL,
  ciudad_origen VARCHAR(30) NOT NULL,
  PRIMARY KEY (nombre)
);

CREATE TABLE venta (
  id_venta INT NOT NULL,
  n_identificacion INT NOT NULL,
  fecha_compra DATE NOT NULL,
  fecha_entrega DATE,
  valor_total DOUBLE PRECISION NOT NULL,
  PRIMARY KEY (id_venta),
  FOREIGN KEY (n_identificacion) REFERENCES cliente(n_identificacion)
);

CREATE TABLE ciudad (
  id INT NOT NULL,
  nombre_ciudad VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE telefonos_proveedor (
  n_identificacion INT NOT NULL,
  telefonos VARCHAR(40) NOT NULL,
  PRIMARY KEY (n_identificacion, telefonos),
  FOREIGN KEY (n_identificacion) REFERENCES proveedor(n_identificacion)
);

CREATE TABLE telefonos_conductor (
  identificacion INT NOT NULL,
  telefonos VARCHAR(40) NOT NULL,
  PRIMARY KEY (identificacion, telefonos),
  FOREIGN KEY (identificacion) REFERENCES conductor(identificacion)
);

CREATE TABLE telefonos_cliente (
  n_identificacion INT NOT NULL,
  telefonos VARCHAR(40) NOT NULL,
  PRIMARY KEY (n_identificacion, telefonos),
  FOREIGN KEY (n_identificacion) REFERENCES cliente(n_identificacion)
);

CREATE TABLE suministra (
  id_producto INT NOT NULL,
  n_identificacion INT NOT NULL,
  PRIMARY KEY (id_producto, n_identificacion),
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
  FOREIGN KEY (n_identificacion) REFERENCES proveedor(n_identificacion)
);

CREATE TABLE incluye (
  id_producto INT NOT NULL,
  id_venta INT NOT NULL,
  cantidad INT NOT NULL,
  precio_unitario DOUBLE PRECISION NOT NULL,
  PRIMARY KEY (id_producto, id_venta),
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
  FOREIGN KEY (id_venta) REFERENCES venta(id_venta)
);


CREATE TABLE cambio_costo (
  f_cambio_costo DATE NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  nuevo_costo DOUBLE PRECISION NOT NULL,
  PRIMARY KEY (f_cambio_costo, nombre),
  FOREIGN KEY (nombre) REFERENCES ruta(nombre)
);
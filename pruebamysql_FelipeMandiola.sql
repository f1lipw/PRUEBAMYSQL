CREATE SCHEMA prueba_mysql;

USE prueba_mysql;

CREATE TABLE tb_categoria (
	codigo_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(45)
);

CREATE TABLE tb_productos (
	codigo_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(45),
    categoria_producto VARCHAR(45)
);

CREATE TABLE tb_proveedores (
	codigo_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_proveedor VARCHAR(45),
    categoria_proveedor INT
);

CREATE TABLE tb_compra_producto (
	codigo_compra INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precio_compra INT,
    cantidad_compra INT,
    producto_compra INT
);

CREATE TABLE tb_venta_producto (
	codigo_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precio_venta INT,
    cantidad_venta INT,
    producto_venta INT
);

ALTER TABLE tb_productos ADD CONSTRAINT fk_categoria_productos FOREIGN KEY (codigo_categoria) REFERENCES categoria_producto(codigo_categoria);
ALTER TABLE tb_proveedores ADD CONSTRAINT fk_categoria_proveedores FOREIGN KEY (codigo_categoria) REFERENCES categoria_proveedor(codigo_categoria);
ALTER TABLE tb_compra_producto ADD CONSTRAINT fk_producto_compra FOREIGN KEY (codigo_producto) REFERENCES producto_compra(codigo_producto);
ALTER TABLE tb_venta_producto ADD CONSTRAINT fk_producto_venta FOREIGN KEY (codigo_producto) REFERENCES producto_venta(codigo_producto);

CREATE TABLE tb_utilidad (
	valor_venta INT,
    valor_compra INT
);

ALTER TABLE tb_utilidad ADD CONSTRAINT fk_valor_compra FOREIGN KEY (codigo_compra) REFERENCES valor_compra(codigo_compra);
ALTER TABLE tb_utilidad ADD CONSTRAINT fk_valor_venta FOREIGN KEY (codigo_venta) REFERENCES valor_venta(codigo_venta);

INSERT INTO tb_categoria (nombre_categoria) VALUES ('Enlatados');
INSERT INTO tb_categoria (nombre_categoria) VALUES ('Harinas y pan');
INSERT INTO tb_categoria (nombre_categoria) VALUES ('Bebidas');
INSERT INTO tb_categoria (nombre_categoria) VALUES ('Higiene');

INSERT INTO tb_productos (nombre_producto, categoria_producto) VALUES ('Atún Merlo', 1);
INSERT INTO tb_productos (nombre_producto, categoria_producto) VALUES ('Harina ekisde', 2);
INSERT INTO tb_productos (nombre_producto, categoria_producto) VALUES ('Harina gf', 2);
INSERT INTO tb_productos (nombre_producto, categoria_producto) VALUES ('Sprite', 3);
INSERT INTO tb_productos (nombre_producto, categoria_producto) VALUES ('Coca cola', 3);
INSERT INTO tb_productos (nombre_producto, categoria_producto) VALUES ('Clorox', 4);

INSERT INTO tb_proveedores (nombre_proveedor, categoria_proveedor) VALUES ('Marcelo', 2);
INSERT INTO tb_proveedores (nombre_proveedor, categoria_proveedor) VALUES ('Ignacia', 1);
INSERT INTO tb_proveedores (nombre_proveedor, categoria_proveedor) VALUES ('Juan', 3);
INSERT INTO tb_proveedores (nombre_proveedor, categoria_proveedor) VALUES ('Héctor', 4);

INSERT INTO tb_compra_producto (precio_compra, cantidad_compra, producto_compra) VALUES (12000, 3, 2);
INSERT INTO tb_compra_producto (precio_compra, cantidad_compra, producto_compra) VALUES (18000, 2, 1);
INSERT INTO tb_compra_producto (precio_compra, cantidad_compra, producto_compra) VALUES (6000, 1, 3);

INSERT INTO tb_venta_producto (precio_venta, cantidad_venta, producto_venta) VALUES (50000, 2, 1);
INSERT INTO tb_venta_producto (precio_venta, cantidad_venta, producto_venta) VALUES (30000, 1, 3);
INSERT INTO tb_venta_producto (precio_venta, cantidad_venta, producto_venta) VALUES (40000, 1, 1);





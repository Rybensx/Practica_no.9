create table productos(
    producto_id serial not null,
    producto_nombre varchar(50) not null,
    producto_precio decimal(10,2) not null,
    producto_situacion smallint not null default 1,
    primary key (producto_id)
)



CREATE TABLE clientes (
    cliente_id serial PRIMARY KEY NOT NULL,
    cliente_nombre varchar(100) NOT NULL,
    cliente_nit varchar(10) NOT NULL,
    cliente_situacion smallint NOT NULL DEFAULT 1
)



CREATE TABLE ventas (
    venta_id serial PRIMARY KEY NOT NULL,
    venta_producto integer NOT NULL REFERENCES productos(producto_id),
    venta_cliente integer NOT NULL REFERENCES clientes(cliente_id),
    venta_fecha datetime year to minute NOT NULL,
    cantidad integer NOT NULL,
    total decimal(10,2) NOT NULL
)


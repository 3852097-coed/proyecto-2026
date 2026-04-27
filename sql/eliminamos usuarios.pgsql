--mostramos todos los poductos
--SELECT * FROM productos;

--Actualizamos el primer id.
--UPDATE productos SET nombre_prod = 'piston' WHERE id_producto = 1;

--modificamos el precio de un producto. 
--UPDATE productos SET precio = 60 WHERE id_producto = 1;

--mostramos el producto que tiene un id_producto igual a 1.
--SELECT * FROM productos WHERE id_producto = 2;

--modificamos todos los precios de la tbla por la causa de la inflación
--UPDATE productos SET precio = precio*1.10;

--Actualizamos el precio y tock del producto 2.
--UPDATE productos   stock = 4 WHERE id_producto = 2;

--UPDATE productos SET stock = 0 WHERE id_producto = 1;

--DELETE FROM productos WHERE stock = 0;

--DELETE FROM categorias WHERE id_categoria = 1;

--SELECT * FROM usuarios;
--DELETE FROM usuarios WHERE id_usuario = 3;

--UPDATE productos SET stock = 4 WHERE id_producto = 2;
SELECT nombre_prod AS Producto, stock AS Existencia FROM productos WHERE stock < 5;
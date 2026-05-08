--aqui eliminamsos todos los productos, categorias, usuarios.
--SELECT * FROM usuarios;
--DELETE FROM usuarios;
--SELECT 
--SELECT * FROM productos;
SELECT * FROM productos INNER JOIN categorias ON productos.id_categoria=categorias.id_categoria;
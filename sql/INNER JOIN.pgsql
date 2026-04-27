--SELECT nombre_cat AS "categoria", nombre_prod AS   "Producto",
 --precio AS "precio unitario" FROM productos INNER JOIN categorias
 --ON productos.id_categoria = categorias.id_categoria;

--unimos las tablas producto y categoria ordenadas por el nombre del producto
 --SELECT nombre_cat AS "categoria", nombre_prod AS   "Producto",
 --precio AS "precio unitario", stock AS "Existencia" 
 --FROM productos p INNER JOIN categorias c
 --ON p.id_categoria = c.id_categoria ORDER BY p.nombre_prod;

--mostramos los productos que valgan menos de $50.00
SELECT nombre_cat AS "categoria", nombre_prod AS   "Producto",
precio AS "precio unitario", stock AS "Existencia" 
FROM productos p INNER JOIN categorias c
ON p.id_categoria = c.id_categoria WHERE p.precio<50 ORDER BY p.nombre_prod;
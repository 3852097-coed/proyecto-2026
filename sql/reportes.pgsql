SELECT  c.nombre_cat AS "Categoría", p.nombre_prod AS "Nombre del Producto",
p.precio AS "Precio Unitario", p.stock AS "Existencia", p.fecha_ingreso AS "Fecha de Ingreso"
FROM productos p INNER JOIN categorias c ON p.id_categoria = c.id_categoria;

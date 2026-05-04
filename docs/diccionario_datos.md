# Diccionario de datos.

### Productos

--------------------------------------------------------------------------------------------------------------------------------------------
| Campo        | Tipo         |  Relación      | Restricciones      | Descripción                                                | Llave   |
--------------------------------------------------------------------------------------------------------------------------------------------
|id_producto   |SERIAL        |Usuario         |NOT NULL            |Código del producto.                                        |PK       |
--------------------------------------------------------------------------------------------------------------------------------------------
| nombre_prod  |VARCHAR(60)   |                |NOT NULL            |Cantidad disponible del producto en inventario.             |         |
--------------------------------------------------------------------------------------------------------------------------------------------
|precio        |NUMERIC(5,2)  |                |NOT NULL            |Valor monetario del producto.                               |         |
--------------------------------------------------------------------------------------------------------------------------------------------
|stock         |INTEGER       |                | NOT NULL           |Cantidad disponible del producto en inventario.             |         |
--------------------------------------------------------------------------------------------------------------------------------------------
| fecha_ingreso|DATE          |                | NOT NULL           |Fecha en que el producto fue agregado al sistema.           |         |
--------------------------------------------------------------------------------------------------------------------------------------------
| id_categoria |INTEGER       |                | NOT NULL           | Relación técnica que vincula el producto.                  |FK       |  
--------------------------------------------------------------------------------------------------------------------------------------------

### Categorias

-------------------------------------------------------------------------------------------------------------------------------------
| Campo         | Tipo         | Relación  | Restricciones | Descripción                                                    | Llave |
-------------------------------------------------------------------------------------------------------------------------------------
| id_categoria  | SERIAL       | productos | NOT NULL      | Identificador único autoincremental para clasificar productos. | PK    |
-------------------------------------------------------------------------------------------------------------------------------------
| nombre_cat    | VARCHAR(60)  |           | NOT NULL      | Nombre de la categoría del producto.                           |       |
-------------------------------------------------------------------------------------------------------------------------------------
| descripcion   | TEXT         |           | NOT NULL      | Descripción de la categoría del producto.                      |       |
-------------------------------------------------------------------------------------------------------------------------------------

### Usuarios

-----------------------------------------------------------------------------------------------------------------------------------------------
| Campo          | Tipo         | Relación  | Restricciones | Descripción                                                             | Llave |
-----------------------------------------------------------------------------------------------------------------------------------------------
| id_usuario     | SERIAL       |           | NOT NULL      | Identificador único de cada usuario.                                    | PK    |
-----------------------------------------------------------------------------------------------------------------------------------------------
| nombre_usuario | VARCHAR(60)  |           | NOT NULL      | Nombre del usuario.                                                     |       |
-----------------------------------------------------------------------------------------------------------------------------------------------
| pass           | VARCHAR(10)  |           | NOT NULL      | Contraseña del usuario.                                                 |       |
-----------------------------------------------------------------------------------------------------------------------------------------------
| email          | VARCHAR(100) |           | NOT NULL      | Correo electrónico del usuario.                                         |       |
-----------------------------------------------------------------------------------------------------------------------------------------------
| id_producto    | INTEGER      | productos | NOT NULL      | Relación que vincula el usuario con los productos que ha comprado.      | FK    |
-----------------------------------------------------------------------------------------------------------------------------------------------
| id_rol         | INTEGER      | roles     | NOT NULL      | Relación que vincula el usuario con su rol asignado.                    | FK    |
-----------------------------------------------------------------------------------------------------------------------------------------------


### Pasos para crear Backup en Postgres.

- *Abre pgAdmin.*

- *Conéctate a tu servidor.*

- *Busca tu base de datos.*

- *Clic derecho sobre la base de datos.*

- *Selecciona Backup.*

- *En la opción Format damos clic en Plain.*

- *En general, en filename seleccionamos la carpeta donde lo queremos guardar.*

- *Le colocamos un nombre a nuestro archivo.*

- *En format seleccionamos Plain.*

- *En Data Options, en sections seleccionamos Pre-data, Data y Post-data.*

- *En Query Options seleccionamos Use INSERT Commands, Include DROP DATABASE statement, Include CREATE DATABASE statement y Include IF EXISTS clause.*

- *Y por último le damos al botón Backup.*

# Tipos de usuario.

- *Administrador*

- *Vendedor*

- *Invitado*

# Entorno de desarrollo.

- *Windows 11*
- *Visual studio code 1.11.7.0

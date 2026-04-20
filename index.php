<!--Encabezado dinámico-->
<?php include 'includes/header.php'; ?>
    <main>
        <section>
            <h2>panel de control</h2>
            <p>Buenos dias en que puedo servirle</p>
        </section>
    </main>
    <!--Formulario de regristro de productos-->
    <form id="miformulario" action="registro.php"  method="post">
            <label for="txtNombre">nombre:</label>
            <input type="text" id="txtNombre" name="nombre_prod" required><br><br>
            <label for="numStock">cantidad:</label>
            <input type="number" id="numStock" name="stock_prod" min="1"requiered><br><br>
            <label for="selCat">categoria: </label>
            <select name="categoria_prod" id="selCat">
                <option value="1">alimentos</option>
                <option value="2">limpieza</option>
            </select><br><br>
            <label for="fecha">fecha de ingreso</label><br><br>
            <input type="date" name="fecha" id="fecha"requiered><br><br>
            <label for="precio">precio unitario</label><br><br>
            <input type="number" id="precio" name="precio_prod" min="0" step="0.01"requiered>
            <button class="guardar-inventario" type="submit">Guardar en inventario</button><br><br>
            <button class="limpiar" type="reset">limpiar</button>
    </form>
    <!--Tabla de productos en stock-->
    <div class="tabla-responsiva">
    <table id="mitabla" border="1">
         <thead>
             <th class="columna-eliminada">Número</th>
            <th>Producto</th>
            <th>Categoria</th>
            <th>cantidad</th>
            <th></th>
            <th></th>
            <th>Imagen</th>
        </thead>   
        <tbody id="tablainventario">
            <tr>
                <td class="columna-eliminada">1</td>
                <td>jabón liquido</td>
                <td>Limpieza</td>
                <td>50</td>
                <td><button>Editar</button></td>
                <td><button>Eliminar</button></td>
                <td> <img src="assets/img/jabon liquido.jpg" alt="Imagen del Producto" width="100" height="100">
            </tr>
            
        </tbody>
    </table>
    </div>
    <div class="contenedor-resumen">
        <p>Resumen de productos</p>
        <div class="tarjeta">
            <p>productos</p>
        </div>
        <div class="tarjeta">
            <p>ventas</p>
        </div>
        <div class="tarjeta">
            <p>usuarios</p>
        </div>
    </div>    
<!--Pie de pagina dinámico-->
<?php include 'includes/footer.php'; ?>
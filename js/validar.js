const formulario = document.getElementById('agregar_producto');
console.log("sistema de validación activo");
formulario.addEventListener('submit', function(e){
    e.preventDefault();
    const inputNombre = document.getElementById('txtNombre');
    const inputStock = document.getElementById('numStock');
    const inputcategoria = document.getElementById('selcat');
    const inputfecha = document.getElementById('fecha');
    const inputprecio = document.getElementById('precio');
});

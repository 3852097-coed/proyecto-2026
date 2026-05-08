//Expreciones regulares.
const patronTexto = /^[A-Za-z\s]+$/;

const formulario = document.getElementById('agregar_producto');
console.log("sistema de validación activo");
function validarformulario(){
    //let valorNombre = document.getElementById('txtNombre').value;
if(!patronTexto.test(valorNombre)){
    alert("Error: El nombre debe contener letras y espacios");
    errores++;
    inputNombre.style.border = "2px solid red";
}else{
    inputNombre.style.border = "2px solid green";
}

if(valorNombre.length< 3){
        alert("El nombre es muy corto");
        errores++; //Esto es igual a escribir: errores = errores + 1;

    }else if(valorNombre.length > 50){
        alert("El nombre es muy largo");
        errores++;

    };

    if(parseInt(valorStock) <=0){ 
        alert("La existencia debe ser mayor que cero");
        errores++;
    }else if(valorStock === ""){
        alert("Escriba la existencia");
        errores++;

    };
    if(valorfecha === ""){
        alert("Escriba  una fecha");
        errores++;
    };

    if(isNaN(valorPrecio)){
        alert("El precio debe ser un número");
        errores++;
    }else if(parseFloat(valorPrecio) > 1000){
        alert("Precio fuera de rango");
        errores++;
    }else if(parseFloat(valorPrecio) <= 0){
        alert("El precio debe ser mayor a cero");
        errores++;
    }else if(valorPrecio === ""){
        alert("Escriba un nombre");
        errores++;
    }
    if(errores === 0){
        formulario.submit();
    }
}
function limpiarerrores(){
    console.clear();
}
formulario.addEventListener('submit', function(e){
    if(!validarformulario()){
        e.preventDefault();
    }
    limpiarerrores();
    const inputNombre = document.getElementById('txtNombre');
    const inputStock = document.getElementById('numStock');
    const inputCategoria = document.getElementById('selcat');
    const inputfecha = document.getElementById('fecha');
    const inputprecio = document.getElementById('precio');
    let valorNombre = inputNombre.value;
    let valorStock = inputStock.value;
    let valorPrecio = inputprecio.value;
   // let valorCategoria = inputCategoria.value;
    let valorfecha = inputfecha.value;
     //console.log("Nombre capturado: " + valorNombre);
     //console.log("Stock capturado: " + valorStock);
     //console.log("Precio capturado: " + valorPrecio);
    let errores = 0;
    


});

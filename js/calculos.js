'use strict';
let opcion = document.getElementById("operacion");


let btn = document.getElementById("btnCalcular");
let btnP = document.getElementById("btnPotencia");
let btnL=document.getElementById("logaritmo");
let btnRaiz=document.getElementById("raizCuadrada");

btnL.addEventListener("click", calcularLogaritmo);
btn.addEventListener("click", operaciones);
btnRaiz.addEventListener("click",calcularRaiz);
btnP.addEventListener("click", function (e) {
let mostrar = document.getElementById("resultado");
let a = parseInt(document.getElementById("operador1").value);
let b = parseInt(document.getElementById("operador2").value);
console.log(a);
let resultado = 1;
if ((isNaN(a) || isNaN(b)) || (isNaN(a) && isNaN(b))) {
    alert("hay uno o mas campos vacios");
    mostrar.innerHTML = "";
}
else if(b>0){
    resultado=Math.pow(a,b);
}

mostrar.innerHTML = resultado;
});

function operaciones() {
    let a = parseInt(document.getElementById("operador1").value);
    let b = parseInt(document.getElementById("operador2").value);
    let opcionSelect = opcion.options[opcion.selectedIndex].value;
    let mostrar = document.getElementById("resultado");
    let resultado = 0;

    if ((isNaN(a) || isNaN(b)) || (isNaN(a) && isNaN(b))) {
        alert("hay uno o mas campos vacios");
        mostrar.innerHTML = "";
    }
    else {
        if (opcionSelect == "sumar") {
            resultado = a + b;
        }
        else if (opcionSelect == "restar") {
            resultado = a - b;
        }
        else if (opcionSelect == "multiplicar") {
            resultado = a * b;
        }
        else if (opcionSelect == "dividir" && b != 0) {
            resultado = (a / b);
        }
        else {
            alert("no se puede realizar la operacion ya que el divisor es nulo");
            mostrar.innerHTML = "";
        }
        mostrar.innerHTML = resultado;
    }
}

function calcularLogaritmo(){
    let a = parseInt(document.getElementById("operador1").value);
    let b = parseInt(document.getElementById("operador2").value);
    let mostrar = document.getElementById("resultado");
    let resultado=0;
     if(b>0){
        resultado=(Math.log10(b)/Math.log10(a));
         mostrar.innerHTML = resultado;
    }
}
function calcularRaiz(){
    let a = parseInt(document.getElementById("operador1").value);
    let b = parseInt(document.getElementById("operador2").value);
    let mostrar = document.getElementById("resultado");
    let resultado=0;
    if (a%2 == 0 && a>0){
        if(b>=0){
            resultado= Math.pow(b,1/a); 
            alert(resultado); 
        }
        else{
            alert("Error");
        }     
    }
    else if(!a %2==0 && a>0 && b>=0) {
        resultado=Math.pow(b,1/a);
    }
    else if(!a %2==0 && a>0 && b<0){
        resultado=-Math.pow(-b,1/a);
    }
    mostrar.innerHTML=resultado;
}
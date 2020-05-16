'use strict';
let opcion= document.getElementById("operacion");
let btn=document.getElementById("btnCalcular");
btn.addEventListener("click", calcular);

function calcular(){
    let a=parseInt(document.getElementById("operador1").value);
    let b=parseInt(document.getElementById("operador2").value);
    let opcionSelect=opcion.options[opcion.selectedIndex].value;
    let mostrar= document.getElementById("resultado");
    let resultado=0; 

    if((isNaN(a) || isNaN(b)) || (isNaN(a) && isNaN(b))){
        alert("hay uno o mas campos vacios");
        mostrar.innerHTML="";
    }
    else{
        if(opcionSelect=="sumar"){
            resultado=a+b;
        }
        else if(opcionSelect=="restar"){
            resultado=a-b;
        }
        else if(opcionSelect=="multiplicar"){
            resultado=a*b;
        }
        else if(opcionSelect=="dividir" && b!=0){
            resultado=(a/b);
        }
        else{
            alert("no se puede realizar la operacion ya que el divisor es nulo");
            mostrar.innerHTML="";
        }
        mostrar.innerHTML=resultado;
    }  
}
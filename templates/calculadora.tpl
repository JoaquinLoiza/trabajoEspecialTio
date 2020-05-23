{include 'header.tpl'}
<div class="cont_calculadora">
    <div class="cont">
        <label>N1 / x</label>
        <input type="number" id="operador1">
    </div>
    <div class="cont">
        <label>N2 / y</label>
        <input type="number" id="operador2">
    </div>
    <div class="cont">
        <label>OP</label>
        <select name="operacion" id="operacion">
            <option hidden selected>Seleccione una operación</option>
            <option value="sumar">Sumar</option> 
            <option value="restar">Restar</option>
            <option value="multiplicar">Multiplicar</option>
            <option value="dividir">Dividir</option>
        </select>
    </div>
    <div class="cont">
        <button id="btnCalcular">Calcular</button>
        <button id="btnPotencia">x<sup>y</sup></button>
        <button id="logaritmo">log<sub>X </sub>y</button>
    </div>
    <div class="cont_resultado cont">
        <span class="total">Total: </span>
        <span class="total" id="resultado"></span>
    </div>
</div>
{include 'footer.tpl'}



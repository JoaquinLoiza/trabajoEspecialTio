{include 'header.tpl'}
<div class="cont_calculadora">
    <div>
        <label>N1</label>
        <input type="number" id="operador1">
    </div>
    <div>
        <label>N2</label>
        <input type="number" id="operador2">
    </div>
    <div>
        <label>OP</label>
        <select name="operacion" id="operacion">
            <option hidden selected>Seleccione una operación</option>
            <option value="sumar">Sumar</option> 
            <option value="restar">Restar</option>
            <option value="multiplicar">Multiplicar</option>
            <option value="dividir">Dividir</option>
        </select>
    </div>
    <div>
        <button id="btnCalcular">Calcular</button>
        <button id="btnPotencia">x^y</button>
        <button id="logaritmo">log base</button>
    </div>
    <div class="cont_resultado">
        <span class="total">Total: </span>
        <span class="total" id="resultado"></span>
    </div>
</div>
{include 'footer.tpl'}



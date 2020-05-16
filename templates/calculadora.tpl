{include 'header.tpl'}
<form>
    <div>
        <label>N1</label>
        <input type="number" id="operador1">
    </div>
    <div>
        <label>N2</label>
        <input type="number" id="operador2">
    </div>
    <div>
        <select name="operacion" id="operacion">
            <option value="sumar">Sumar</option> 
            <option value="restar">Restar</option>
            <option value="multiplicar">Multiplicar</option>
            <option value="dividir">Dividir</option>
        </select>
    </div>
    <div>
        <button id="btnCalcular">Calcular</button>
    </div>
</form> 
{include 'footer.tpl'}



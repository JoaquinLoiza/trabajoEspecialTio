{include 'header.tpl'}
<div class="cont_creadores container">
    <h1>Creadores</h1>
    <table>
        <thead>
            <tr>
                <th class="border">Creadores</th>
                <th class="border">Ocupación</th>
            </tr>
        </thead>
    <tbody>
    {foreach from=$creadores item=creador}
        <tr>
            <td class="border">{$creador->creador}</td>
            <td class="border">{$creador->ocupacion}</td>
        </tr>   
    {/foreach}
    </tbody>
    </table>
</div>
{include 'footer.tpl'}
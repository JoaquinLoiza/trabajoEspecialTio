{include 'header.tpl'}
<h1>Creadores</h1>
<table>
    <thead>
        <tr>
            <th>Creadores</th>
            <th>Email</th>
        </tr>
    </thead>
<tbody>
{foreach from=$creadores item=creador}
    <tr>
        <td>{$creador->creador}</td>
        <td>{$creador->email}</td>
    </tr>   
{/foreach}
</tbody>
</table>
{include 'footer.tpl'}
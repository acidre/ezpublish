<label>{$attribute.content.name|wash(xhtml)}</label><div class="labelbreak"></div>

<select name="eZOption[{$attribute.id}]">
{section name=Option loop=$attribute.content.option_list sequence=array(bglight,bgdark)}
    {section show=ne($Option:item.additional_price,'')}
        <option value="{$Option:item.id}">{$Option:item.value} - {$Option:item.additional_price|l10n(currency)}</option>
    {section-else}
        <option value="{$Option:item.id}">{$Option:item.value}</option>
    {/section}
{/section}
</select>
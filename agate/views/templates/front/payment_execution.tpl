{capture name=path}{l s='Bictoin payment.' mod='agate'}{/capture}

{include file="$tpl_dir./breadcrumb.tpl"}

<h2>{l s='Order summary' mod='agate'}</h2>

{assign var='current_step' value='payment'}

{include file="$tpl_dir./order-steps.tpl"}

{if $nbProducts <= 0}
	<p class="warning">{l s='Your shopping cart is empty.' mod='agate'}</p>
{else}

<h3>{l s='Agate payment.' mod='agate'}</h3>

<form action="{$link->getModuleLink('agate', 'validation', [], true)|escape:'html'}" method="post">
<p>
	<img src="{$this_path}icon.png" alt="{l s='Pay with Agate' mod='agate'}" style="float:left; margin: 0px 10px 5px 0px;" />
	{l s='You have chosen to pay by Agate.' mod='agate'}
	<br/><br />
	{l s='Here is a short summary of your order:' mod='agate'}
</p>
<p style="margin-top:20px;">
	- {l s='The total amount of your order is' mod='agate'}
	<span id="amount" class="price">{displayPrice price=$total}</span>
	{if $use_taxes == 1}
    	{l s='(tax incl.)' mod='agate'}
    {/if}
</p>
<p>
	{l s='Your Agate invoice will be displayed on the next page.' mod='agate'}
	<br /><br />
	<b>{l s='Please confirm your order by clicking "I confirm my order."' mod='agate'}.</b>
</p>
<p class="cart_navigation" id="cart_navigation">
	<input type="submit" value="{l s='I confirm my order' mod='agate'}" class="exclusive_large" />
	<a href="{$link->getPageLink('order', true, NULL, "step=3")|escape:'html'}" class="button_large">{l s='Agate Payments' mod='agate'}</a>
</p>
</form>
{/if}

{if $state == '2'}
        <p>{l s='Your order on %s is complete.' sprintf=$shop_name mod='agate'}
                <br /><br /> <strong>{l s='Your order will be sent as soon as your payment is confirmed.' mod='agate'}</strong>
                <br /><br />{l s='If you have questions, comments or concerns, please contact our' mod='agate'} <a href="{$link->getPageLink('contact', true)|escape:'html'}">{l s='expert customer support team. ' mod='agate'}</a>
        </p>
{else}
      	<p class="warning">
                {l s="We noticed a problem with your order. If you think this is an error, feel free to contact our" mod='agate'}
                <a href="{$link->getPageLink('contact', true)|escape:'html'}">{l s='expert customer support team. ' mod='agate'}</a>.
        </p>
{/if}

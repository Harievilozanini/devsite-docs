

# Web Tokenize Checkout - Recoveries

In the event that a payment is rejected you can offer the buyer the option to retry it and recover the sale.

At that moment you will receive the response status *rejected* (`rejected`) and it is advisable to inform the user of said status.

Along with the communication you can also offer the possibility of re-entering the card data, **using the _Web Tokenize Checkout_ again**. You also have the opportunity to [change the button text](https://www.mercadopago.com.ar/developers/en/guides/payments/web-tokenize-checkout/personalization) using the `data-button-label` attribute to complement the communication.

For example:

```html
<h1>Something went wrong!</h1>
<p>An error occurred with the payment. Please try again:</p>

<form action="/procesar-pago" method="POST">
  <script
    src="https://www.mercadopago.com.ar/integrations/v1/web-tokenize-checkout.js"
    data-public-key="ENV_PUBLIC_KEY"
    data-transaction-amount="100.00"
    data-button-label="Retry"> <!-- Button text -->
  </script>
</form>
```

![Recovery](/images/cow-recovery-page.png)

## Checkout open by default

Another possibility, in case a payment is rejected, is to invoke the *Web Tokenize Checkout* with the form already opened in the context where the user originally loaded the data.

The option to open the checkout by default is controlled from the `data-open` attribute and it is only a matter of setting the attribute to` true`.

For example:

```html
<form action="/procesar-pago" method="POST">
  <script
    src="https://www.mercadopago.com.ar/integrations/v1/web-tokenize-checkout.js"
    data-public-key="ENV_PUBLIC_KEY"
    data-transaction-amount="100.00"
    data-open="true"> <!-- open by default -->
  </script>
</form>
```

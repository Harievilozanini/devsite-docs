## Inicio rápido de pagos de Marketplace con split

> WARNING
>
> Pre-requisitos
>
> Contactate con tu ejecutivo de cuenta para configurar correctamente tu Marketplace.
> Esta guía asume que ya has creado y configurado correctamente tu [Marketplace](https://www.mercadopago.com.ar/developers/es/guides/marketplace/api/introduction/) y sabes como [generar un token de tarjeta](https://www.mercadopago.com.ar/developers/en/guides/payments/api/receiving-payment-by-card).
> 
> Tus vendedores deben contar con una cuenta de MP y deben [darte permisos para cobrar pagos en su nombre](/guides/advanced-payments/sellers-permissions.es.md).

El modelo de negocio carrito de compras consta de un pago por el monto total de la operación, efectuado por el Comprador, el cuál se divide en los correspondientes pagos a cada Vendedor por la venta de su producto. A su vez, por cada pago realizado a los Vendedores, el Marketplace puede retener una parte del monto de la venta en concepto de comisión.

A continuación vemos como crear un Advanced Payment donde el comprador paga con tarjeta de crédito y se realiza el split para dos vendedores:

###### Request
```curl
curl -X POST \
    -H 'Accept":"application/json' \
    -H 'Content-Type: application/json' \
    'https://api.mercadopago.com/v1/advanced_payments?access_token=MKT_ACCESS_TOKEN' \
    -d '{...}'
```

> NOTE
> 
> El parámetro MKT_ACCESS_TOKEN es el access_token de tu aplicación.

Dentro del `body` se definen los siguientes campos:
* `payer`: Información del Comprador.
* `payments`: Pago del Comprador por el total de la transacción.
* `disbursements`: Básicamente se definen las reglas de división de pagos para los Vendedores.
    * `collector_id`: ID de la cuenta de Mercado Pago del Vendedor.
    * `application_fee`: Comisión que retiene el Marketplace.
    * `money_release_days`: Cantidad de días en que se liberará el dinero del Vendedor a partir de la aprobación del pago.
* `external_reference`: Identificador que define el Marketplace para este advanced payment en particular.

```json
{
  "payer": {
    "email": "test@user.com"
  },  
  "payments": [
    {
      "payment_method_id": "visa",
      "payment_type_id": "credit_card",
      "token": "jhuyt786r5yhfcgjvhkuoy7t86r75erdfhcgv",
      "transaction_amount": 1000,
      "installments": 1,
      "processing_mode": "aggregator"
    }
  ],
  "disbursements": [
    {
      "amount": 200,
      "external_reference": "ref-collector-1",
      "collector_id": 44444444,
      "application_fee": 20,
      "money_release_days": 30
    },
    {
      "amount": 800,
      "external_reference": "ref-collector-2",
      "collector_id": 55555555,
      "application_fee": 80,
      "money_release_days": 30
    }
  ],
  "external_reference": "ref-transaction"
}
```

La respuesta exitosa será un `HTTP Status 201 Created` y devolverá el advanced payment completo. De lo contrario devolverá el `HTTP Status` correspondiente al error y un mensaje aclaratorio.

```json
{
  "id": 64576879,
  "status": "approved",
  "payments": [
    {
      "id": 967654546,
      ...
    }
  ],
  "disbursements": [
    {
      "id": 987654,
      ...
    },
    {
      "id": 456678,
      ...
    }
  ],
  ...
}
```

En tu cuenta de Mercado Pago verás acreditado el monto de tus comisiones y cada Vendedor verá en su cuenta el saldo actualizado con el monto correspondiente.
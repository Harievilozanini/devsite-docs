---
  indexable: false
---

## Idempotencia

En ocasiones se pueden presentar problemas de conexión, caídas de servicios, etc. que podrían interrumpir la comunicación al enviar o recibir los datos para crear un Advanced Payment.

Para asegurar la creación del mismo, se puede reintentar el envío de los mismos datos, pero es posible que el Advanced Payment ya se haya creado y debido a la interrupción no se recibió la respuesta correcta, ocasionando que, al realizar el reintento, se genere un nuevo Advanced Payment.

Para evitar el duplicado, se puede enviar de una clave única en el header `X-Idempotency-Key` que identifique la creación de un único Advanced Payment no importa cuantas veces se envíen los mismos datos.

De esta manera, cuando se haga el reintento, se puede enviar la misma clave para indicar que es el mismo proceso. Si el Advanced Payment ya fué creado, se devuelve la información del mismo sin crear uno nuevo.

```curl
curl -X POST \
     -H 'X-Idempotency-Key: faDF8323asd298' \
     -H 'accept: application/json' \
     -H 'content-type: application/json' \
     'https://api.mercadopago.com/v1/advanced_payments?access_token=MKT_ACCESS_TOKEN' \
     -d '{...}'
```
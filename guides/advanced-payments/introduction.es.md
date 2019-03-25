---
  indexable: false
---

# Advanced Payments

## Introducción

Advanced Payments es una API que permite procesar pagos con funcionalidades adicionales a la [API de Payments](https://www.mercadopago.com.ar/developers/es/guides/payments/api/introduction/) regular. Actualmente permite realizar pagos de Marketplace con split.

#### Pagos de Marketplace con split

La funcionalidad de Split de Pagos brinda una solución para los pagos de Marketplace donde el modelo de negocio requiere dividir el dinero entre múltiples Vendedores.

> NOTE
>
> Para más información dirigirse a la documentación de [Marketplaces](https://www.mercadopago.com.ar/developers/es/guides/marketplace/api/introduction/).

##### División de pagos

* Un pago efectuado por un Comprador que corresponde a un Marketplace, se divide entre múltiples Vendedores.
* La división se realiza al momento de la aprobación del pago.
* No hay un límite de Vendedores para dividir el dinero y el Marketplace obtiene una comisión por cada venta efectuada.
* Se puede configurar quién paga la comisión de Mercado Pago.

##### Flexibilidad para aplicar comisión

* El Marketplace retiene una parte del monto de la venta en concepto de comisión.
* La comisión que cobra el Marketplace se aplica pago a pago.
* Esto permite tener distintas comisiones para distintos Vendedores y a su vez distintas comisiones según el tipo o categoría del producto que ofrezca un Vendedor.

##### Liberación flexible de dinero de Vendedores

* Al momento de la integración se configura un rango de días en el cual se podrá liberar el dinero de los Vendedores.
* La liberación se setea en cada pago y puede modificarse posteriormente.


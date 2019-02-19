{
  "paging": {
    "total": 1,
    "limit": 10,
    "offset": 0
  },
  "results": [
    {
      "id": 111111111,
      "status": "approved",
      "payments": [
        {
          "id": 222222222,
          "payment_type_id": "credit_card",
          "payment_method_id": "visa",
          "token": "98f6a9s7dfyihfasfdhasdjfhñasdfh",
          "transaction_amount": 100,
          "installments": 1,
          "processing_mode": "aggregator",
          "description": "Payment description",
          "capture": true,
          "external_reference": "ext_ref_payment",
          "statement_descriptor": "MKT-STATEMENT-DESCRIPTION"
        }
      ],
      "disbursements": [
        {
          "id": 33333333,
          "amount": 40,
          "external_reference": "ext_ref_disb_1",
          "collector_id": 31313,
          "application_fee": 5,
          "money_release_days": 10,
          "additional_info": {
            "items": [
              {
                "id": "item-ID-1234",
                "title": "Title of what you are paying for",
                "picture_url": "https://www.mercadopago.com/logomp3.gif",
                "description": "Item description",
                "category_id": "art",
                "quantity": 1,
                "unit_price": 100
              }
            ],
            "shipments": {
              "receiver_address": {
                "zip_code": "5700",
                "street_name": "Street",
                "street_number": 123,
                "floor": 4,
                "apartment": "C"
              }
            }
          }
        },
        {
          "id": 44444444,
          "amount": 60,
          "external_reference": "ext_ref_disb_2",
          "collector_id": 41414,
          "application_fee": 10,
          "money_release_days": 30,
          "additional_info": {
            "items": [
              {
                "id": "item-ID-4512",
                "title": "Title of what you are paying for",
                "picture_url": "https://www.mercadopago.com/logomp3.gif",
                "description": "Item description",
                "category_id": "art",
                "quantity": 1,
                "unit_price": 100
              }
            ],
            "shipments": {
              "receiver_address": {
                "zip_code": "5700",
                "street_name": "Street",
                "street_number": 123,
                "floor": 4,
                "apartment": "C"
              }
            }
          }
        }
      ],
      "payer": {
        "email": "test@user.com",
        "first_name": "Test",
        "last_name": "Test",
        "address": {
          "zip_code": "1111",
          "street_name": "Calle",
          "street_numer": "120"
        },
        "identification": {
          "type": "DNI",
          "number": "88999000"
        }
      },
      "external_reference": "ext_ref_adv_paym",
      "description": "Advanced payment description",
      "binary_mode": false,
      "date_created": "2018-06-27T09:34:20.518-04:00",
      "date_last_updated": "2018-06-27T09:34:20.518-04:00",
      "metadata": {

      },
      "additional_info": {
        "items": [
          {
            "id": "item-ID-7356",
            "title": "Title of what you are paying for",
            "picture_url": "https://www.mercadopago.com/logomp3.gif",
            "description": "Item description",
            "category_id": "art",
            "quantity": 1,
            "unit_price": 100
          }
        ],
        "shipments": {
          "receiver_address": {
            "zip_code": "5700",
            "street_name": "Street",
            "street_number": 123,
            "floor": 4,
            "apartment": "C"
          }
        }
      }
    }
  ]
}
# vanmoof-api

## API Endpoints

- ```https://my.vanmoof.com/api/v8/``` Old API Endpoint
- ```https://api.vanmoof-api.com/```
- ```https://tenjin.vanmoof.com/api/v1/```
- ```https://notification.production.vanmoof.cloud/``` Below all used for SA5 and later
- ```https://vehicleregistry.production.vanmoof.cloud/```
- ```https://bikeapi.production.vanmoof.cloud/```
- ```https://fima.production.vanmoof.cloud/v1/```
- ```https://firmwaremanagement.production.vanmoof.cloud/v3/```
- ```https://subscription.production.vanmoof.cloud```
- ```https://biketracking.production.vanmoof.cloud/```
- ```https://biketracking.production.vanmoof.cloud/v2/```

## Staging API
```
curl --location --request POST 'https://api-staging.vanmoof-api.com/v8/createCustomer' \
--header 'Api-Key: fcb38d47-f14b-30cf-843b-26283f6a5819' \
--data ''
```

```
{
    "error": "Your Api-Key is invalid for this operation. Please contact VanMoof.",
    "message": "API key expired"
}
```

### IP Addresses  
```
89.41.170.17
77.72.144.185
```
```
curl --location --request POST 'https://89.41.170.17/v8/createCustomer' \
--header 'Api-Key: fcb38d47-f14b-30cf-843b-26283f6a5819' \
--data ''
{"error":"ValidationException","message":"Validation failed","violations":{"name":["The name field is required."],"email":["The email field is required."],"country":["The country field is required."],"password":["The password field is required."],"confirmationUrl":["The confirmationUrl field is required."]}}
```


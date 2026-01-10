# Authentication

To authenticate with the API, you must provide your VanMoof credentials to obtain an access token.

## Headers

All API requests require the following headers:

- `Api-Key`: `fcb38d47-f14b-30cf-843b-26283f6a5819`
- `User-Agent`: `VanMoof/20 CFNetwork/1404.0.5 Darwin/22.3.0`

## 1. Obtain Initial Token

First, retrieve an initial authentication token using your email and password.

<badge type="info">POST</badge> `https://api.vanmoof-api.com/v8/authenticate`

**Headers**

- `Authorization`: `Basic base64(email:password)`

**Response**

The response will include a `token` field.

## 2. Obtain Application Token (JWT)

Exchange the initial token for an Application Token (JWT), which is required for most other endpoints.

<badge type="info">GET</badge> `https://api.vanmoof-api.com/v8/getApplicationToken`

**Headers**

- `Authorization`: `Bearer <initial_token>`

**Response**

The response will include a `token` field (the JWT).

## 3. Authenticating Requests

For all subsequent requests (e.g., getting customer data), include the Application Token in the `Authorization` header:

`Authorization: Bearer <application_token>`

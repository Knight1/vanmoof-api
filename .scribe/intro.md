# Introduction

Welcome to the API documentation.

## Authentication

To authenticate with the API, you must provide your VanMoof credentials to obtain an access token. All Bearer Tokens use JWT (JSON Web Token)

### Headers

Most API requests require the following header:

- `Api-Key`: `fcb38d47-f14b-30cf-843b-26283f6a5819`

This is ```"api_key": 3```

Only the new *.vanmoof.cloud Endpoints do not require it.

### 1. Obtain Initial Token

First, retrieve an initial authentication token using your email and password.

**Response**

The response will include a `token` and a `refresh_token`.

### 2. Obtain Application Token (JWT)

Exchange the initial token for an Application Token (JWT), which is required for most other endpoints.

**Response**

The response will include a `token`.

### 3. Authenticating Requests

For all subsequent requests (e.g., getting bike data), include the Application Token in the `Authorization` header:

```text
Authorization: Bearer <application_token>
```

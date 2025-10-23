# Ruby API Requests Lectures
- [HTTP Recap](#http-recap)
- [HTTP Request \& Response Anatomy](#http-request--response-anatomy)
  - [HTTP Request](#http-request)
- [Getting into APIs](#getting-into-apis)
  - [Types of APIs](#types-of-apis)
    - [REST](#rest)
      - [REST Examples](#rest-examples)
    - [SOAP](#soap)
      - [SOAP Examples](#soap-examples)
    - [GraphQL](#graphql)
      - [GraphQL Examples](#graphql-examples)
    - [RPC](#rpc)
      - [RPC Examples](#rpc-examples)
    - [Websockets](#websockets)
      - [WebSockets Example](#websockets-example)
    - [Webhooks](#webhooks)
      - [Webhooks Examples](#webhooks-examples)
- [Begin Working with an API](#begin-working-with-an-api)
- [Repository Demo Notes](#repository-demo-notes)
## HTTP Recap

- What is HTTP?
- Name some response codes (number and what they do)
- Work with an example of HTTP request

## HTTP Request & Response Anatomy

### HTTP Request
```
GET /users/1 HTTP/1.1
Host: example.com
Content-Type: application/json
Authorization: Bearer token123
```
**Parts:**
- Method (GET, POST, PUT, PATCH, DELETE)
- Path (/users/1)
- Headers (metadata: auth, content-type, etc.)
- Body (for POST/PUT/PATCH)

## Getting into APIs
APIs (Application Programming Interfaces) are mechanisms that enable two software components to communicate with each other using a set of definitions and protocols.

### Types of APIs

#### REST
(Representational State Transfer): The most common type of web API, RESTful APIs use standard HTTP methods (GET, POST, PUT, DELETE) and are designed to be stateless, scalable, and easy to use.

##### REST Examples
- Paypal
- Google 
- LinkedIn

Sample request
```json
[
  {"userId" => 1, "id" => 1, "title" => "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", "body" => "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"},
  {"userId" => 1, "id" => 2, "title" => "qui est esse", "body" => "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"},
  {"userId" => 1, "id" => 3, "title" => "ea molestias quasi exercitationem repellat qui ipsa sit aut", "body" => "et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut"}
]
```
#### SOAP
(Simple Object Access Protocol): A protocol-based API that uses XML to format messages. SOAP APIs offer robust security features and are often used in enterprise-level applications requiring strict data integrity.

##### SOAP Examples
- RBC (Royal Bank of Canada)
- Salesforce
- Cognizant
- Early eBay

Sample request 
```xml
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/">
   <soapenv:Header/>
   <soapenv:Body>
      <tem:FahrenheitToCelsius>
         <tem:Fahrenheit>87</tem:Fahrenheit>
      </tem:FahrenheitToCelsius>
   </soapenv:Body>
</soapenv:Envelope>
```
#### GraphQL
A query language for APIs that allows clients to request exactly the data they need, avoiding over-fetching or under-fetching of data.
##### GraphQL Examples
- Shopify
- Github
- Twitter
- Facebook

Sample request 
```geojson
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "id": 1,
      "properties": {
        "ID": 0
      },
      "geometry": {
        "type": "Polygon",
        "coordinates": [
          [
              [-90,35],
              [-90,30],
              [-85,30],
              [-85,35],
              [-90,35]
          ]
        ]
      }
    }
  ]
}
```

#### RPC
(Remote Procedure Call): This architecture allows a program to execute a procedure or function in a different address space (usually on a remote server) as if it were a local procedure.
##### RPC Examples
- Uber
- Cisco
- Dropbox
- IBM

[Sample Request (Server)](/rpc-example/server.rb)
[Sample Request (Client)](/rpc-example/client.rb)

#### Websockets 
Provide persistent, full-duplex communication channels over a single TCP connection
##### WebSockets Example
- Stock Markets
- Sport and Event feeds
- IoT (Internet of Things)
- Multiplayer games

#### Webhooks
User-defined HTTP callbacks triggered by specific events in a source system, allowing for real-time notifications and integrations.
##### Webhooks Examples
- Email verification on a new user
- Updates to a shipping order
- Onedrive

## Begin Working with an API

Here is a list of free APIs that people can work with

[Public APIs](https://github.com/public-apis/public-apis)

## Repository Demo Notes

Use this repository as a workspace to experiment in `irb` terminals, write Ruby code in the editor, and save your notes to GitHub by committing and pushing.

- Lecture was using Ruby version: `3.4.1`

# README


[github repository](https://github.com/ikerismak/rails-pet-api)
## Rails REST API API-PETS

## Versions

- Ruby: 3.1.4
- Rails: 7.0.4
- Gems
## Below is a description of each mentioned gem:

1. pg 1.1: Database adapter gem for PostgreSQL. Provides support for connecting to a PostgreSQL database in Rails.
2. faker: Gem used for generating random test data. Useful for populating the database with dummy data during development or testing.
3. minitest: Built-in unit testing framework in Rails. Provides tools and structures for writing and executing tests in the project.
4. rubycritic: Gem that performs static code analysis of Ruby source code and provides code quality reports. Helps identify problematic areas and improve code readability and      maintainability.
5. rubocop: Gem that acts as a linter and static code analyzer for Ruby. Helps maintain consistent code style and detects potential code quality issues.
6.Database: The project will use PostgreSQL as the database.

## Commands to install dependencies:

- Run the following command in the terminal to install the required gems:

```shell

bundle install

```

## Commands to initialize the database:

- Run the following commands in the terminal to create, migrate, and seed the database:


```shell
rails db:create
```
```shell
rails db:migrate
```
```shell
rails db:seed
```

## Testing:
### Commands to run tests:
- Run the following command in the terminal to execute the project's tests:

```shell
rails test
```

## Command to run Rubycritic
Run the following command in the terminal to execute Rubycritic and generate code quality reports:

```shell
rubycritic
```

- This will generate a report that helps identify problematic areas in your code and improve its quality.

**NOTE:** Remember to execute the commands in the root of your Rails project!

## Starting the Rails server

- To start the Rails server, use the following command:

```shell

rails server

```


- Execute this command in the terminal while being in the root directory of your Rails project. The server will start, and you can access your application at **http://localhost:3000**.

**Make sure to have all the dependencies installed and the database properly configured before starting the server.**
All endpoints were developed  according to the specifications **OpenAPI-Specification**
you can find the documentation here:
[OpenAPI-Specification](https://github.com/OAI/OpenAPI-Specification/blob/main/examples/v3.0/petstore.yaml)
## Endpoint to retrieve all pets:

```shell

  http://[::1]:3000/pets

```

- Method: GET
- Description: Retrieves a paginated list of all pets.
- Example response:

```json

{
  "description": "A paged array of pets",
  "content": [
    {
      "id": 1,
      "name": "eel",
      "created_at": "2023-05-15T23:19:39.146Z",
      "updated_at": "2023-05-15T23:19:39.146Z"
    },
    {
      "id": 2,
      "name": "coyote",
      "created_at": "2023-05-15T23:19:39.150Z",
      "updated_at": "2023-05-15T23:19:39.150Z"
    },
    {
      "id": 3,
      "name": "guinea pig",
      "created_at": "2023-05-15T23:19:39.152Z",
      "updated_at": "2023-05-15T23:19:39.152Z"
    },
    {
      "id": 4,
      "name": "mosquito",
      "created_at": "2023-05-15T23:19:39.154Z",
      "updated_at": "2023-05-15T23:19:39.154Z"
    },
    ...
  ]
}
```
![image](https://github.com/ikerismak/rails-pet-api/assets/70924158/346fee4f-12d2-4f3b-8e76-4dcdfcf63e7e)

## Endpoint to retrieve a limited number of pets:

```shell

  http://[::1]:3000/pets/?limit=2

 ```
- Method: GET
- Query Parameters: limit (optional, specifies the maximum number of pets to return)
- Description: Retrieves a paginated list of a limited number of pets.
- Example response:

```json
{
  "description": "A paged array of pets",
  "content": [
    {
      "id": 1,
      "name": "eel",
      "created_at": "2023-05-15T23:19:39.146Z",
      "updated_at": "2023-05-15T23:19:39.146Z"
    },
    {
      "id": 2,
      "name": "coyote",
      "created_at": "2023-05-15T23:19:39.150Z",
      "updated_at": "2023-05-15T23:19:39.150Z"
    }
  ]
}
```
## Endpoint with null response:

 ```shell
 http://[::1]:3000/pets/
 ```
- Method: GET
- Description: Returns a 201 "created" status but a null data, according to the specifications in the API CONVENTION YAML file.
- Example response:

```json
null
```

## Postman:

**¿Qué es Postman?**

- Postman es una aplicación que te permite enviar y recibir solicitudes HTTP y trabajar con APIs. Puedes realizar solicitudes GET, POST, PUT, DELETE y otras, así como probar y depurar tus API.

## Postman Instructions

### Introduction:
Postman is a collaboration and API development tool that allows you to make HTTP requests to servers and test the responses. It provides a user-friendly interface to send requests, configure parameters, and view the server's response. In this guide, you will find instructions on installing Postman, opening the application, and performing API testing. Additionally, screenshots of the results obtained from Postman tests are provided for each endpoint.

### What is Postman?
Postman is a collaboration and API development tool that allows you to make HTTP requests to servers and test the responses. You can send GET, POST, PUT, DELETE, and other types of requests, as well as test and debug your APIs.

### Installation of Postman:
To install Postman, follow these steps:
- Visit the official Postman website: [https://www.postman.com/](https://www.postman.com/)
- Download the version for your operating system (Windows, macOS, Linux).
- Run the downloaded file and install Postman following the on-screen instructions.

### Opening Postman:
After installation, you can open Postman by following these steps:
- Look for the Postman icon on your desktop or in the list of applications in your operating system.
- Double-click the icon to open the application.

### Postman Interface:
Once Postman is open, you will see the main interface of the application.
- At the top, you will find the navigation bar with options like "Collections", "Runner", "Workspaces", etc.
- In the center of the screen, you will see the main area where you can enter the API URL and configure the requests.
- On the right, you will find additional panels to configure parameters, headers, body, etc.

### Making a Request in Postman:
To make a request in Postman, follow these steps:
- Enter the API URL in the field on the navigation bar or select a saved request from your collections.
- Configure parameters, headers, and the request body as needed.
- Click the "Send" button to send the request to the server.
- You will see the server's response at the bottom of the screen, including the status code, headers, and response body.

### Opening Files in Postman:
Postman allows you to import and export files such as collections, requests, environments, etc.
To open a file in Postman, follow these steps:
- Click the "Import" button in the top left corner of the interface.
- Select the type of file you want to import, such as a collection, request, environment, etc.
- Choose the file from your file system and click "Open".
- The file will be imported and available for use in Postman.

### Results and Screenshots:
In the following sections, you will find detailed instructions and screenshots of the results obtained from Postman tests for each endpoint. These screenshots will provide visual representations of the responses received from the server, allowing you to analyze and validate the API's functionality.

With these instructions, you should be able to install Postman, open the application, and start making HTTP requests to your APIs to test and debug them. The included screenshots will assist you in understanding the expected results and comparing them with the actual responses. Let's get started with API testing using Postman!

## Endpoint to retrieve all pets:

```shell

  http://[::1]:3000/pets

```

- Method: GET
- Description: Retrieves a paginated list of all pets.
- Example response:

## Screenshot

```shell
http://[::1]:3000/pets/?limit=2

```
- Method: GET
- Query Parameters: limit (optional, specifies the maximum number of pets to return)
- Description: Retrieves a paginated list of a limited number of pets.
- Example response:

## Screenshot

## Endpoint with null response:

 ```shell
 http://[::1]:3000/pets/
 ```
- Method: GET
- Description: Returns a 201 "created" status but a null data, according to the specifications in the API CONVENTION YAML file.
- Example response:

```json
null
```
## Screen shot
## BONUS Endpoint create a new pet with a body request:

# this bonus are included in the postman file y this case you only have tu run de last post request on the button **send**

 ```shell
 http://[::1]:3000/pets/?name=dido
 ```
- Method: GET
- Description: Returns a 201 "created" status but a null data, according to the specifications in the API CONVENTION YAML file.
- Example response:

## Screen shot

```json
{
    "message": "Pet created successfully",
    "pet": {
        "id": 105,
        "name": "dido",
        "created_at": "2023-05-16T06:39:55.368Z",
        "updated_at": "2023-05-16T06:39:55.368Z"
    }
}

```
## Screenshot

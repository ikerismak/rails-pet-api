# README

## GitHub
[github repository](https://github.com/ikerismak/rails-pet-api)
## Rails REST API API-PETS

## Ejercicio Práctico - Pet Store API
- Desarrolle un API REST conforme a la siguiente definición OpenAPI: [EndPoints according with OpenAPI](#ENDPPOINTS)

- El desarrollo se puede hacer en cualquier lenguaje de programación o framework. (Express, Ruby on Rails, .NET, Laravel, PHP, etc): [ruby and ruby on rails](#Versions)

- Siga el patrón de desarrollo MVC (Modelo, Vista, Controlador) y utilice un ORM (Object Relational Mapping) que asegure que su solución pueda utilizar cualquier motor de bases de    datos (MySQL, PostgreSQL, Microsoft SQL Server, etc). [Postgresql with ActiveRecord](#gems)

- La solución debe contar con la documentación adecuada para una instalación desde cero, instrucciones para correr el proyecto y poder correr las pruebas sin asistencia. Utilice un README en formato markdown. [Documentation](#GitHub)


## Puntos Extras
- Generar pruebas unitarias/integrales utilizando un framework de pruebas. [Minitest](#minitest)

- Utilizar un linter de acuerdo al lenguaje de programación seleccionado. [rubocop](#gems)

- Integrar al proceso de pruebas una herramienta para medir la cobertura de las pruebas. Ej: https://istanbul.js.org/ opcion elejida: [Rubycritic](#Rubycritic)

- Generar un ejemplo para cada servicio en alguna herramienta como Postman. https://www.getpostman.com/[Postman](#Postman:)

- Documentar los endpoints con alguna herramienta que genere páginas estáticas de documentación. Ej. http://apidocjs.com/

## Versions

- Ruby: 3.1.4
- Rails: 7.0.4
- Gems

## Start

1. install ruby on your own PC and operative system and check de version


```shell
ruby --version
```

2. Install rails on your own PC and operative system

```shell
rails --version
```

## Open the project file on you favorite text editor

<img width="1440" alt="Captura de pantalla 2023-05-16 a la(s) 10 08 19" src="https://github.com/ikerismak/rails-pet-api/assets/70924158/4f5d9751-2f84-4fb7-9261-d2c366ef11eb">



3. Install gem bundler and run this command on your own terminal, check the files path


```shell
gem install bundler
```



## gems:

1. **pg 1.1** : Database adapter gem for PostgreSQL. Provides support for connecting to a PostgreSQL database in Rails.
2. **faker** : Gem used for generating random test data. Useful for populating the database with dummy data during development or testing.
3. **minitest** : Built-in unit testing framework in Rails. Provides tools and structures for writing and executing tests in the project.
4. **rubycritic**: Gem that performs static code analysis of Ruby source code and provides code quality reports. Helps identify problematic areas and improve code readability and      maintainability.
5. **rubocop** : Gem that acts as a linter and static code analyzer for Ruby. Helps maintain consistent code style and detects potential code quality issues.
6.**Database** : The project will use PostgreSQL as the database.
7.ActiveRecord
8.**rswag** Swagger is an open-source set of tools that allows for designing, building, documenting, and consuming APIs in an easy and efficient way. It provides a standardized approach to describe and document APIs, making it easier for development teams to collaborate and enabling API consumers to understand and use them quickly and accurately.

## Commands to install dependencies:

- Run the following command in the terminal to install the required gems:

```shell

bundle install

```
## Set the database files

1. Find the configuration file, you can find it in the root:

<img width="396" alt="Captura de pantalla 2023-05-16 a la(s) 10 01 12" src="https://github.com/ikerismak/rails-pet-api/assets/70924158/f5b8d3ba-4751-40b5-8105-e79e24eb7455">


2. Find the dtabase.example.yml file, delete the ".example" on the name part and open it

![Captura de pantalla 2023-05-16 a la(s) 16 15 50](https://github.com/ikerismak/rails-pet-api/assets/70924158/94d062bb-1a87-4123-a6c6-d4c251566e12)

3. fill the field as required, check the example image below

<img width="885" alt="Captura de pantalla 2023-05-16 a la(s) 10 06 02" src="https://github.com/ikerismak/rails-pet-api/assets/70924158/6d1cfeef-881a-4092-bbd5-a3cddf0a65be">

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
### minitest

- Minitest is a testing framework that comes bundled with Ruby and is commonly used for writing tests in Rails applications. It provides a simple and intuitive syntax for defining and running tests, making it easy to ensure the correctness of your code.

Minitest follows the xUnit style of testing, where tests are organized into test classes and individual test methods. Each test method typically focuses on testing a specific behavior or functionality of your code. Minitest provides a set of assertions that you can use to make assertions about the expected behavior of your code.
### Commands to run tests:
- Run the following command in the terminal to execute the project's tests:

```shell
rails test
```
### Rubycritic

RubyCritic is a code quality analysis tool for Ruby projects. It helps you identify areas of improvement in your codebase by providing insightful metrics, visualizations, and suggestions for refactoring.
## Command to run Rubycritic
Run the following command in the terminal to execute Rubycritic and generate code quality reports:

```shell
rubycritic
```

##Screenshot

<img width="717" alt="Captura de pantalla 2023-05-16 a la(s) 0 43 35" src="https://github.com/ikerismak/rails-pet-api/assets/70924158/98ee65a5-e419-4f4e-a308-8b91d1893e24">

- This will generate a report that helps identify problematic areas in your code and improve its quality.

**NOTE:** Remember to execute the commands in the root of your Rails project!

## Starting the Rails server

- To start the Rails server, use the following command:

```shell

rails server

```


- Execute this command in the terminal while being in the root directory of your Rails project. The server will start, and you can access your application at **http://localhost:3000**.

## ENDPPOINTS

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

## Swagger

### Documentation API tool

- The core tool of Swagger is the **OpenAPI Specification** (formerly known as Swagger Specification), which is a machine-readable API description format in JSON or YAML. This specification outlines the endpoints, parameters, responses, data schemas, and other relevant information about the API.

### try yourself following the next instructions below:

1. Run the rails server

```shell

rails server

```

2. go to the next URL


http://localhost:3000/api-docs/index.html

3. test the endpoint as follows

## HOME VIEW

![Captura de pantalla 2023-05-16 a la(s) 16 12 20 (2)](https://github.com/ikerismak/rails-pet-api/assets/70924158/aa69a8df-c6ad-46da-94c6-56eb4017231a)

## GET all pets

![Captura de pantalla 2023-05-16 a la(s) 16 12 56 (2)](https://github.com/ikerismak/rails-pet-api/assets/70924158/971e169b-0596-4c1c-9110-b5dec690441e)

## GET all 100 Pets

![Captura de pantalla 2023-05-16 a la(s) 16 12 39 (2)](https://github.com/ikerismak/rails-pet-api/assets/70924158/424a6957-773e-4083-a867-229adcbc348c)

## GET 10 pets

![Captura de pantalla 2023-05-16 a la(s) 16 13 00 (2)](https://github.com/ikerismak/rails-pet-api/assets/70924158/509dd79e-c7ac-451c-ad15-61f8e605164c)

## POST

![Captura de pantalla 2023-05-16 a la(s) 16 13 21 (2)](https://github.com/ikerismak/rails-pet-api/assets/70924158/90522c64-956d-4177-992f-52b07986705a)

## POST Response: 

![Captura de pantalla 2023-05-16 a la(s) 16 13 19 (2)](https://github.com/ikerismak/rails-pet-api/assets/70924158/58222042-c0a6-4cb0-b546-ec0c3a21af5d)

## GET Pet by ID

## Postman:![Captura de pantalla 2023-05-16 a la(s) 16 13 45 (2)](https://github.com/ikerismak/rails-pet-api/assets/70924158/ba77ba2f-51e5-40f5-bf1e-beb39b191c81)

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

<img width="721" alt="Captura de pantalla 2023-05-16 a la(s) 0 44 24" src="https://github.com/ikerismak/rails-pet-api/assets/70924158/64c67ac4-8527-4025-b35a-99451cc11f3a">

```shell
http://[::1]:3000/pets/?limit=2

```
- Method: GET
- Query Parameters: limit (optional, specifies the maximum number of pets to return)
- Description: Retrieves a paginated list of a limited number of pets.
- Example response:

## Screenshot

<img width="1436" alt="Captura de pantalla 2023-05-16 a la(s) 0 44 44" src="https://github.com/ikerismak/rails-pet-api/assets/70924158/7f4601e0-e4db-4e82-b41a-ab74b426045b">

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

<img width="1440" alt="Captura de pantalla 2023-05-16 a la(s) 0 44 52" src="https://github.com/ikerismak/rails-pet-api/assets/70924158/ae5506c0-8a36-46af-b2bd-62472dd58e3e">

## BONUS Endpoint create a new pet with a body request:

**this bonus are included in the postman file y this case you only have tu run de last post request on the button** send

 ```shell
 http://[::1]:3000/pets/?name=dido
 ```
- Method: GET
- Description: Returns a 201 "created" status but a null data, according to the specifications in the API CONVENTION YAML file.
- Example response:


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

<img width="1440" alt="Captura de pantalla 2023-05-16 a la(s) 0 45 16" src="https://github.com/ikerismak/rails-pet-api/assets/70924158/83f5ec7e-1e4a-40e4-8d81-35460d84a0bf">



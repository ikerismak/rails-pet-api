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


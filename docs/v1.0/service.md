# User API
CRUD RESTFUL API using Node JS, Express JS, and Redis.


## API Features
```
1. Create User
2. Get all Users
3. Get Each User by ID
4. Delete User
5. Update User
```

## Getting Started

Ensure you have docker and docker-compose installed in your machine

  1. You can fork this repo or you can just download the zip from main and create a repo in your account
  2. `cd atlantico-qa-test`
  3. `docker-compose up`
  4. `curl http://localhost:3000/users`


The above will get you a copy of the project up and running on your local machine for development and testing purposes.

## Dependencies
```
  1. REDIS
  2. NodeJS
  3. ExpressJS
```

## API Endpoints

All API endpoints return a status code of 200 for successful calls and 400 including an error object for unsuccessful calls.

```
| EndPoint                                |   Functionality                      |
| --------------------------------------- | ------------------------------------:|
| POST /user/new                          | Create User                          |
| GET /user/:userId                       | Get User                             |
| GET /users/                             | Get all Users                        |
| PUT /user/:userId                       | Update User                          |
| DELETE /user/:userId                    | Delete User                          |
```

## Create user Example

To Create a user, Provide the Email, name and age of the user:

```bash

curl --location --request POST 'http://localhost:3000/user/new' \
--header 'Content-Type: application/json' \
--data-raw '{ "email": "sample@gmail.com", "name": "John Doe", "age": 26 }'

```

## Create User Example Response
```
{
    "status": "OK",
    "message": "User Created",
    "newUser": {
        "email": "sample@gmail.com",
        "name": "John Doe",
        "age": 26,
        "id": "acb479080840025a9c03f8453f5c853c"
    }
}
```


The API responds with JSON data by default.



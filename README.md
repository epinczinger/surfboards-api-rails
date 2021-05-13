# SurfShop API - Rails . 

A RESTFUL API built with Ruby on Rails. It uses [Api Guard](https://github.com/Gokul595/api_guard) to implement Authentication & Authorization.
In this project, I've built a fullstack application where users can acces to surfboards and accesorries to purchase. They can also add them into favourites.

The repo for the client app can be accessed [here](https://github.com/epinczinger/surfboards-client-react)

## Live Link

[ Client App](https://surfshop-rails-react.netlify.app/)

## Video Explanation

[I explain you the code here](https://youtu.be/WlV-_4Wjuc0)

## Built With

- Ruby v2.7.2
- Ruby on Rails v6.0.3.2

## Current API Endpoints

The API will expose the following RESTful endpoints.

### BaseUrl: {Host-URL}

| Endpoint                | Functionality                |
|-------------------------|------------------------------|
| POST /users/sign_up     | Sign up                      |
| POST /users/sign_in     | Sign in                      |
| DELETE /users/sign_out  | Sign out                     |
| DELETE /user/:id        | Delete a user                |
| POST /user/:id          | Create a user                |
| GET /products           | List all products            |
| POST /products          | Add a new product            |
| DELETE /products/:id    | Delete a product             |
| POST /favourites        | Add favourite product        |
| DELETE /favourites      | Delete favourite product     |
| GET /favourites         | Get user favourite product   |


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 3.0.0
Rails: 6.0.3.6
Postgres: >=9.5

### Setup

~~~bash
$ git clone https://github.com/epinczinger/surfboards-api-rails.git
$ cd surfboards-api-rails
~~~

Install gems with:

```
bundle install
```

Setup database with:

> make sure you have postgress sql installed and running on your system

```
   rails db:create
   rails db:migrate
   rails db:seed
```

### Usage

Start server with:

```
    rails server -p 3001
```

Open `http://localhost:3001/` in your browser.

### Deploy to a live server

Deploying to a live server like Heroku is easy, make sure you have the necessary credentials setup on your local machine

```bash
heroku create
heroku rename app-new-name
git push heroku $BRANCH_NAME:master 
```
if you are already in master branch no need to add $BRANCH_NAME, just use `git push heroku master`

```bash
heroku run rails db:migrate
heroku run rails db:seed
heroku open
```

Enjoy your newly deployed rails API


## Author

👤 **Esteban Pinczinger**

- Github: [epinczinger](https://github.com/epinczinger)
- LinkedIn: [Esteban Pinczinger](https://www.linkedin.com/in/esteban-pinczinger)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/epinczinger/surfboards-api-rails/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.




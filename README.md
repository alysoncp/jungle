# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe


## Main Page

Main page displays all products available

!["Home page pic"](https://github.com/alysoncp/jungle/blob/master/docs/Screenshot%20from%202021-01-12%2015-54-34.png?raw=true)

## Product Details

Click on any individual product to see more details for the item.

!["Product Details"](https://github.com/alysoncp/jungle/blob/master/docs/Screenshot%20from%202021-01-12%2015-54-55.png?raw=true)

## Signup & Login

Users can signup for an account and log in to view their orders

![Signup and login](https://github.com/alysoncp/jungle/blob/master/docs/Screenshot%20from%202021-01-12%2015-55-36.png?raw=true)

## Admin Features

Users with admin password can view how many products (in how many categories) are available ont he site. Admins can also add or remove new products and add categories.

![Admin](https://github.com/alysoncp/jungle/blob/master/docs/Screenshot%20from%202021-01-12%2015-56-11.png?raw=true)

## Cart

Users can view their cart, update quantities and see total bill. Click 'Pay with Card' to pay via the stripe API

![Cart](https://github.com/alysoncp/jungle/blob/master/docs/Screenshot%20from%202021-01-12%2015-56-53.png?raw=true)


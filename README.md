# README

Check Social Networks is a little challenge. It consists in create an application
that checks for users activities in social networks.

The used social networks endpoints are ficticios, just in the aim of this exercise.

This application uses:

* Ruby version 3.1.x

* Rails version 7.0.3

* Redis (you need a running instance of Redis listening on localhost:6379)

Running the application:

* Clone this repository

* Open a terminal, go to the root directory and download dependencies: `bundle install`

* Run migrations: `bin/rails db:migrate`

* Run tests suite: `bundle exec rspec`

* Open a different terminal, go to the root directory and start sidekiq: `bundle exec sidekiq`

* Run the application: `bin/rails s`

Now the application is listening at localhost:3000

You can make requests to the application. Open a different terminal and using CURL:

* `curl -X PUT http://localhost:3000` This will run background jobs for getting information from the different social networks twitter, facebook and instagram. Responses from social networks endpoint are stored locally.

* `curl http://localhost:3000` This will respond with the social networks stored data.

* You can check the api contract in **doc/openapi.yml**

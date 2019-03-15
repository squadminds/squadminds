Guidelines: https://github.com/HealthTree/guidelines

## Production environment

[![Codeship Status for bnbitservices/bnbitservices](https://app.codeship.com/projects/e0ea9670-2897-0137-7f59-562ae01a5018/status?branch=master)](https://app.codeship.com/projects/330818)

This project is hosted at [Heroku](http://heroku.com)

The URL for this project is: http://www.bnbitservices.com (https://bnbitservices-production.herokuapp.com)

## Staging environment

[![Codeship Status for bnbitservices/bnbitservices](https://app.codeship.com/projects/e0ea9670-2897-0137-7f59-562ae01a5018/status?branch=develop)](https://app.codeship.com/projects/330818)

https://bnbitservices-staging.herokuapp.com

## Project main dependencies

* [Ruby](https://www.ruby-lang.org/) 2.6.1
* [Bundler](https://bundler.io/)
* [Rails](https://guides.rubyonrails.org/getting_started.html) ~> 5.2.2
* [PostgreSQL](https://www.postgresql.org/) 10
* [Docker](https://www.docker.com/)(OPTIONAL: just when using docker for orchestration)

## Setup Development Environment

1. Clone the repository

2. Install ruby gems

        $ bundle install

3. Bootstrap database structure

        $ rake db:setup

4. Copy dotenv sample & modify as needed

        $ cp .env.sample .env

5. Run the app in development mode

        $ bin/rails server

## Setup Development Environment with Docker and docker-compose

Dependencies:
* [Docker](https://www.docker.com/)(OPTIONAL: just when using docker for orchestration)

1. Create DB volume
        $ docker volume create --name=BNB_DB

2. Build the project:
        $ docker-compose build

3. Set up database:
        $ docker-compose run bnbitservices bundle exec rails db:setup

4. Run the project:
        $ docker-compose up


## Tests suite

Run RSpec tests:

```
$ bin/rspec --format doc
```

## API documentation

Update & view latest API docs:

```
$ rake docs:generate
$ open doc/api/index.html
```

## Entity-relationship Diagram

Generate ERD using `rails-erd` gem:

```
$ rake erd
```

https://voormedia.github.io/rails-erd/

## 3rd party services

* Services (job queues, cache servers, search engines, etc.)
  * [Sentry](http://getsentry.com)

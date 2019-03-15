# Just ~~a Pokemon~~ an API

This project was created with the only purpose of learn and  play around with some specific RoR features that I didn't knew, such as:

- Ruby 2.5
- API development using Rails 5
- API testing using Ruby
- Learn about strong params
- Serialization using Rails

## Setup

* Ruby version:

        2.5.1

* System dependencies:
        
        rvm use 2.1.1
        rvm gemset create just-an-api
        rvm gemset use just-an-api
        gem install bundler
        bundle install

* Database creation

        rake db:create
        rake db:migrate

* Database initialization

        rake db:seed

* How to run the test suite

        bundle exec rspec

* Run the API

        rails s
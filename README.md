# Rock/Paper/Scissors API
A simple API that plays rock/paper/scissors.

## Requirements
- Ruby 2.7.3
- Bundler 2.2.18

## Setup:
1. Clone this repo.
2. `bundle install` to install gem dependencies

## Run unit tests:
`bundle exec rake` will run all unit tests.

## Run the app:
`bundle exec ruby lib/server.rb` to run

## Hit the API:
- GET '/' returns a "Hello" message
- GET '/info' returns game instructions
- POST '/play' sent with a 'move' param string will return a game outcome

## Discussion
I tried to balance using good practices with not going overboard spending too much time on this. Sinatra makes creating this type of API really easy.

Things I might do if I spent more time on the app:
- Create more definitive game outcome data that included both moves and a :win or :lose result symbol.
- Record game play data in a simple sqlite database, or maybe just a CSV tossed into an S3 bucket

## References
Followed instructions from:
- [Ridecharge Rock-Paper-Scissors](https://github.com/ridecharge/rps)

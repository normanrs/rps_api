require 'sinatra'
require_relative 'game.rb'

get '/' do
  'Hello Rock/Paper/Scissors player!'
end

get '/info' do
  "Welcome to the Rock/Paper/Scissors game! \n
   Send a game move to the '/play' endpoint as a POST \n
   Eligible moves are: 'r' for rock, 'p' for paper, 's' for scissors
   "
end

post '/play' do
  game = Game.new(params['move'].downcase)
  game.result.to_json
end

private

def params
  JSON.parse(request.body.read)
end

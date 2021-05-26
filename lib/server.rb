require 'sinatra'
require_relative 'game.rb'

get '/' do
  'Hello Rock/Paper/Scissors player!'
end

get '/info' do
  "Welcome to the Rock/Paper/Scissors game! \n
   Instructions to play HERE"
end

post '/play' do
  game = Game.new('r')
  game.result.to_json
end

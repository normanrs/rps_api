require 'sinatra'

get '/' do
  'Hello Rock/Paper/Scissors player!'
end

get '/info' do
  "Welcome to the Rock/Paper/Scissors game! \n
   Instructions to play HERE"
end

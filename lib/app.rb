require 'sinatra'

get '/' do
  "Hello World"
end

get '/andy' do
  "Hello Andy"
end

get '/yoda' do
  "Hello Yoda"
end

get '/cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

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

get '/random-cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @random_name = params[:name]
  @random_food = params[:food]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

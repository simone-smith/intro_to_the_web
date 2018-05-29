require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  'I will not tell you my secrets'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @lastname = params[:lastname]
  erb(:index)
end

get '/cat-name-form' do
  erb(:form)
end

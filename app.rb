require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  'I will not tell you my secrets'
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

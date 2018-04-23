require 'rubygems'
require 'sinatra'

get'/' do
  erb  "Zdarova"
end

get '/foto' do
 erb :foto
end
get '/contacts' do
	erb :contacts
end


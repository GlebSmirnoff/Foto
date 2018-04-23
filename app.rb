require 'rubygems'
require 'sinatra'

get'/' do
  erb  "Z"
end

get '/foto' do
 erb :foto
end
get '/contacts' do
	erb :contacts
end
post '/visit' do
	@username = params[:]
     erb "Ok"
end

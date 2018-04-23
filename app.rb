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
post '/foto' do
	@username = params[:username]
	@datetime = params[:datetime]
	@photgrafer = params[:photografer]
     erb "Ok Die, #{username}, we wait you at #{datetime}, your photografer is #{photografer}" 
end

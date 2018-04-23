require 'rubygems'
require 'sinatra'

get'/' do
  erb  "Zaaaaaaaaaaza!!!!!!!!!!!!!!"
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
	@photograf = params[:photograf]
	@color = params[:color]
hh = {:username=> 'Enter name', :datetime => 'Enter date',}
@error = hh.select {|key,_| params[key] == ""}.values.join(",")
if @error!= ''
return erb :foto
end	


     erb "Ok Die, #{@username}, we wait you at #{@datetime}, your photografer is #{@photograf}, #{@color}" 
end

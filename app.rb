require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

configure do
	@db = SQLite3::Database.new 'photo.db'
	@db.execute 'CREATE TABLE IF NOT EXISTS "Users"("id" INTEGER PRIMARY KEY AUTOINCREMENT, "username"TEXT, "datestamp" TEXT, "fotograf" TEXT, "color" TEXT)' 	
end

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

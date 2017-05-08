require'rubygems'
require'sinatra'
require'sinatra/reloader'
require'sqlite3'
require'sinatra/activerecord'

set :database, "sqlite3:leprosorium.db"

class Post < ActiveRecord::Base
end

class Comment < ActiveRecord::Base 
end


	
get'/' do
erb"HELLO"
end

 get'/new' do
 	erb :new
 end
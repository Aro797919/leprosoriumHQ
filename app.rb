require'rubygems'
require'sinatra'
require'sinatra/reloader'
require'sqlite3'
require'sinatra/activerecord'

set :database, "sqlite3:leprosorium.db"

before do 
	@posts = Post.all 
end

class Post < ActiveRecord::Base
	
end

class Comment < ActiveRecord::Base
 
end


	
get'/' do
@posts = Post.all
  erb :posts
end

 get'/new' do
 	@c = Post.new
 	erb :new
 end

 post'/new' do 
 	@c = Post.new params[:main]
 	if @c.save
 	erb"Спасибо"
 	else
 	@error = @c.errors.full_messages.first
 	erb :new
 end

 end


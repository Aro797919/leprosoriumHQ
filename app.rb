require'rubygems'
require'sinatra'
require'sinatra/reloader'
require'sqlite3'

get'/' do
erb"HELLO"
end

 get'/new' do
 	erb :new
 end
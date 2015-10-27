require 'sinatra' 
require 'sinatra/activerecord'

set :database, "sqlite3:presidents.sqlite3"
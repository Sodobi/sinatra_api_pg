require 'sequel'
require 'sequel/extensions/seed'
require 'pg'
require 'json'
require 'multi_json'
require 'sinatra'

%w{ controllers models routes }.each do | dir |
  $LOAD_PATH << File.expand_path('.', File.join(File.dirname(__FILE__), dir))
  #require File.join(dir, 'init.rb')
end


get '/' do
	# system 'rake --tasks'
	"Hi! I am api_sinatra_postgres!\n\n"
	# haml :index, :layout => :my_layout
end

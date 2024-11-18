require 'sinatra'
require './lib/task/db'

namespace :db do
  task :environment do
    require 'sequel'
    ENV['DATABASE_URL']  ||=
      'postgres://sodobi:210402@localhost/db_sinatra'
    ENV['RACK_ENV'] ||= 'development'
    ENV['DATABASE'] = 'db_sinatra' if ENV['RACK_ENV'] == 'development'
    ENV['DATABASE'] = 'db_sinatra' if ENV['RACK_ENV'] == 'test'
    ENV['DATABASE'] = 'db_sinatra' if ENV['RACK_ENV'] == 'production'
  end
end
require "tilt/erubis"
require 'sinatra'
require 'sinatra/reloader' # causes app to reload its files every time a page is loaded.

get '/' do
  @file_names = Dir.children("public").sort
  @sort = { :path => '/descending', :order => 'Z-A' }

  erb :home
end

get '/descending' do
  @file_names = Dir.children("public").sort.reverse
  @sort = { :path => '/', :order => 'A-Z' }

  erb :home
end
require "tilt/erubis"
require 'sinatra'
require 'sinatra/reloader' # causes app to reload its files every time a page is loaded.

get '/' do
  @file_names = Dir.children("public")

  erb :home
end
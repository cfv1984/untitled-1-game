require 'sinatra'
require './config'

get '/' do
    erb :home
end
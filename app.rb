require 'sinatra'
require './config'


get '/' do
    session[:word] = 'duck'
    erb :home
end

get '/image' do
    image = session[:word]
    redirect "/#{image}.jpg"
end

post '/word' do 
    session[:word] == params[:word]? "OK" : "WTF MAN"
end
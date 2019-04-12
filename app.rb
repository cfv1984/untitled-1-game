require 'sinatra'
require './config'


get '/' do
    if params[:force]
      session[:word] = params[:force]
    else 
      session[:word] = ['duck','dog', 'cat'].sample
    end

    if not session[:score]
      session[:score] = 0
    end

    @score = session[:score]
    @word = session[:word]
    erb :home
end

get '/image' do
    image = session[:word]
    redirect "/#{image}.jpg"
end

post '/' do 
    if params[:word] == session[:word]
	session[:score] += 1
    else 
	session[:score] -=1
    end

    redirect "/"
end

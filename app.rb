require 'sinatra'
require './config'


get '/' do
    if not session[:score]
      session[:score] = 0
    end

    session[:word] = ['duck','dog', 'cat'].sample
    @score = session[:score]
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

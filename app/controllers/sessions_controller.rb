class SessionsController < ApplicationController

  get '/signup' do
    erb :'/sessions/signup'
  end

  get '/login' do
    erb :'/sessions/login'
  end

  post '/login' do
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect :'users/index'
    else
      flash[:warning] = "Something went wrong. Check credentials and try again."
      redirect '/login'
    end
  end
end

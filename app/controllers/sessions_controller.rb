class SessionsController < ApplicationController

  get '/signup' do
    redirect_home_if_logged_in
    erb :'/sessions/signup'
  end

  post '/signup' do
    # Checks if email has alredy been taken
    if User.find_by(email: params[:user][:email])
      flash[:warning] = "That email has already been taken"
      redirect '/signup'

    # Checks that all attributes have been filled, create user account and log user in
    elsif params[:user][:username] != "" && params[:user][:email] != "" && params[:user][:password] != ""
      user = User.create(params[:user])

      # Log user in
      session[:user_id] = user.id
      flash[:notice] = "Welcome to Budget Tracker!"
      redirect "/users/#{user.slug}"
    end
  end

  get '/login' do
    redirect_home_if_logged_in
    erb :'/sessions/login'
  end

  post '/login' do
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/users/#{user.slug}"
    else
      flash[:warning] = "Something went wrong. Check credentials and try again."
      redirect '/login'
    end
  end

  get '/logout' do
    session.clear
    redirect '/'
  end
end

class ApplicationController < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "string to be hexed"
    set :views, "app/views"
    set :public_folder, "public"
    register Sinatra::Flash
  end

  get '/' do
    erb :index
  end

  helpers do
    def current_user
      User.find(session[:user_id])
    end

    def logged_in?
      !!current_user
    end

    def redirect_if_not_logged_in
      if !logged_in?
        flash[:warning] = "You must be logged in!"
      end 
    end
  end
end

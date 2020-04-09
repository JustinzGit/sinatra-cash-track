class ApplicationController < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "string to be hexed"
    set :views, "app/views"
    set :public_folder, "public"
    register Sinatra::Flash
  end

  get '/' do
    redirect_home_if_logged_in
    erb :'/sessions/login'
  end

  helpers do
    def current_user
      User.find_by(id: session[:user_id])
    end

    def logged_in?
      !!current_user
    end

    def redirect_login_if_not_logged_in
      if !logged_in?
        flash[:warning] = "You must be logged in!"
        redirect '/login'
      end
    end

    def redirect_home_if_logged_in
      if logged_in?
        redirect "/users/#{current_user.slug}"
      end
    end

    def redirect_if_not_authorized(collection, instance)
      if !logged_in || !current_user.collection.include?(instance)
        flash[:warning] = "You dont have access to this page"
        redirect "/users/#{current_user.slug}"
      end 
    end
  end
end

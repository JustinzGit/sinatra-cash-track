require_relative "concerns/helpers.rb"
class ApplicationController < Sinatra::Base

  include Helpers

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
end

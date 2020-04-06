class ApplicationController < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "string to be hexed"
    set :views, "app/views"
    set :public_folder, "public"
    register Sinatra::Flash
  end
end

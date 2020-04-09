class UsersController < ApplicationController
  get '/users/:slug' do
    redirect_login_if_not_logged_in
    @user = User.find_user_by_slug(params[:slug])
    erb :'/users/show'
  end
end

class BanksController < ApplicationController
  get '/banks' do
    redirect_login_if_not_logged_in
    erb :'/banks/show'
  end

  get '/banks/new' do
    redirect_login_if_not_logged_in
    erb :'/banks/new'
  end

  post '/banks' do
    current_user.banks << Bank.create(params[:bank])
    flash[:notice] = "You've successfully added a new bank!"
    redirect '/banks'
  end

  get '/banks/:id/edit' do
    @bank = Bank.find(params[:id])
    redirect_if_not_authorized(current_user.banks, @bank)
    erb :'/banks/edit'
  end

  patch '/banks/:id' do
    bank = Bank.find(params[:id])
    redirect_if_not_authorized(current_user.banks, bank)
    bank.update(params[:bank])
    flash[:notice] = "#{bank.name} was successfully updated!"
    redirect '/banks'
  end

  delete '/banks/:id' do
    bank = Bank.find(params[:id])
    redirect_if_not_authorized(current_user.banks, bank)
    bank.destroy
    flash[:notice] = "#{bank.name} was successfully deleted!"
    redirect '/banks'
  end
end

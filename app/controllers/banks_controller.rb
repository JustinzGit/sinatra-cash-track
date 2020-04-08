class BanksController < ApplicationController
  get '/banks' do
    erb :'/banks/show'
  end

  get '/banks/new' do
    @banks = Bank.all
    erb :'/banks/new'
  end

  post '/banks' do
    current_user.banks << Bank.create(params[:bank])
    redirect '/banks'
  end

  get '/banks/:id/edit' do
    @bank = Bank.find(params[:id])
    erb :'/banks/edit'
  end

  patch '/banks/:id' do
    bank = Bank.find(params[:id])
    bank.update(params[:bank])
    redirect '/banks'
  end

  delete '/banks/:id' do
    bank = Bank.find(params[:id])
    bank.destroy
    redirect '/banks'
  end
end

class CreditcardsController < ApplicationController
  get '/creditcards' do
    redirect_login_if_not_logged_in
    erb :'/creditcards/show'
  end

  get '/creditcards/new' do
    redirect_login_if_not_logged_in
    erb :'/creditcards/new'
  end

  post '/creditcards' do
    current_user.creditcards << Creditcard.create(params[:creditcard])
    redirect '/creditcards'
  end

  get '/creditcards/:id/edit' do
    @creditcard = Creditcard.find(params[:id])
    redirect_if_not_authorized(current_user.creditcards, @creditcard)
    erb :'/creditcards/edit'
  end

  patch '/creditcards/:id' do
    creditcard = Creditcard.find(params[:id])
    creditcard.update(params[:creditcard])
    redirect '/creditcards'
  end

  delete '/creditcards/:id' do
    creditcard = Creditcard.find(params[:id])
    creditcard.destroy
    redirect '/creditcards'
  end
end

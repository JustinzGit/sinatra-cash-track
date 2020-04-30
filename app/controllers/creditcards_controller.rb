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
    flash[:notice] = "You've successfully added a new card!"
    redirect '/creditcards'
  end

  get '/creditcards/:id/edit' do
    @creditcard = Creditcard.find(params[:id])
    redirect_if_not_authorized(current_user.creditcards, @creditcard)
    erb :'/creditcards/edit'
  end

  patch '/creditcards/:id' do
    creditcard = Creditcard.find(params[:id])
      redirect_if_not_authorized(current_user.creditcards, creditcard)
    creditcard.update(params[:creditcard])
    flash[:notice] = "#{creditcard.name} was successfully updated!"
    redirect '/creditcards'
  end

  delete '/creditcards/:id' do
    creditcard = Creditcard.find(params[:id])
    creditcard.destroy
    flash[:notice] = "#{creditcard.name} was successfully deleted!"
    redirect '/creditcards'
  end
end

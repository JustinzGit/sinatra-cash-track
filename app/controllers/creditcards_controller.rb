class CreditcardsController < ApplicationController
  get '/creditcards' do
    erb :'/creditcards/show'
  end

  get '/creditcards/new' do
    erb :'/creditcards/new'
  end 
end

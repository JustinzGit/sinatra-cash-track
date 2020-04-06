class BillsController < ApplicationController
  get '/bills' do
    erb :'/bills/show'
  end
end

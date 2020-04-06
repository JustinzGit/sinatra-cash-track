class BillsController < ApplicationController
  get '/bills' do
    erb :'/bills/show'
  end

  get '/bills/new' do
    erb :'/bills/new'
  end

  post '/bills' do
    current_user.bills << Bill.create(params[:bill])
    redirect '/bills'
  end

  get '/bills/:id/edit' do
    erb :'/bills/edit'
  end
end

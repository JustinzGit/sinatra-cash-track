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
    @bill = Bill.find(params[:id])
    erb :'/bills/edit'
  end

  patch '/bills/:id' do
    bill = Bill.find(params[:id])
    bill.update(params[:bill])
    redirect '/bills'
  end

  delete '/bills/:id' do
    bill = Bill.find(params[:id])
    bill.destroy
    redirect '/bills'
  end
end

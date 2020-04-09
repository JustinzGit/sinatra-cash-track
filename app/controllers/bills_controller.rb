class BillsController < ApplicationController
  get '/bills' do
    redirect_login_if_not_logged_in
    erb :'/bills/show'
  end

  get '/bills/new' do
    redirect_login_if_not_logged_in
    erb :'/bills/new'
  end

  post '/bills' do
    current_user.bills << Bill.create(params[:bill])
    redirect '/bills'
  end

  get '/bills/:id/edit' do
    @bill = Bill.find(params[:id])
    redirect_if_not_authorized(current_user.bills, @bill)
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

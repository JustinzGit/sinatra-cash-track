class BillsController < ApplicationController
  get '/bills' do
    redirect_login_if_not_logged_in
    @bills = current_user.bills
    @bills = @bills.sort{|a,b| a.duedate <=> b.duedate} if params[:sort]
    erb :'/bills/show'
  end

  get '/bills/new' do
    redirect_login_if_not_logged_in
    erb :'/bills/new'
  end

  post '/bills' do
    current_user.bills << Bill.create(params[:bill])
    flash[:notice] = "You've successfully added a new bill!"
    redirect '/bills'
  end

  get '/bills/:id/edit' do
    @bill = Bill.find(params[:id])
    redirect_if_not_authorized(current_user.bills, @bill)
    erb :'/bills/edit'
  end

  patch '/bills/:id' do
    bill = Bill.find(params[:id])
    redirect_if_not_authorized(current_user.bills, bill)
    bill.update(params[:bill])
    flash[:notice] = "#{bill.provider} was successfully updated!"
    redirect '/bills'
  end

  delete '/bills/:id' do
    bill = Bill.find(params[:id])
    redirect_if_not_authorized(current_user.bills, bill)
    bill.destroy
    flash[:notice] = "#{bill.provider} was successfully deleted!"
    redirect '/bills'
  end
end

module Helpers
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def redirect_login_if_not_logged_in
    if !logged_in?
      flash[:warning] = "You must be logged in!"
      redirect '/login'
    end
  end

  def redirect_home_if_logged_in
    if logged_in?
      redirect "/users/#{current_user.slug}"
    end
  end

  def redirect_if_not_authorized(collection, instance)
    if !logged_in? || !collection.include?(instance)
      flash[:warning] = "You dont have access to this page"
      redirect "/users/#{current_user.slug}"
    end
  end

  def days_in_current_month
    current_month = Date.today.strftime("%-m").to_i
    if [1,3,5,7,8,10,12].include?(current_month)
      return 31
    elsif [4,6,9,11].include?(current_month)
      return 30
    else
      return 28
    end
  end

  def todays_date?(day)
    if day == Date.today.strftime("%e").strip.to_i
      return true
    end
    false
  end

  def bill_day?(day, month)
    current_user.bills.each do |bill|
      if Date._parse(bill.duedate)[:mday] == day && Date._parse(bill.duedate)[:mon].to_s == month
        return bill.color
      end
    end
    false
  end

  def bill_total
    bill_total = 0
    current_user.bills.each do |bill|
      bill_total += bill.balance
    end
    bill_total
  end

  def checking_total
    checking_total = 0
    current_user.banks.each do |bank|
      checking_total += bank.checking_balance
    end
    checking_total
  end

  def credit_debt
    credit_debt = 0
    current_user.creditcards.each do |card|
      credit_debt += card.balance
    end
    credit_debt
  end
end

class Calendar
  def self.days_in_month(month)
    if [1,3,5,7,8,10,12].include?(month)
      return 31
    elsif [4,6,9,11].include?(month)
      return 30
    else
      return 28
    end
  end

  def self.todays_date?(day)
    if day == Date.today.strftime("%e").strip.to_i
      return true
    end
    false
  end

  def self.bill_day?(day)
    Bill.all.each do |bill|
      if Date._parse(bill.duedate)[:mon] == day
        return "#FF0000"
      end
    end
    false
  end
end

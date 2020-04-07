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
end

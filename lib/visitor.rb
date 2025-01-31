

class Visitor

  attr_reader :name, :height, :spending_money, :preferences, :original_spending_money

  attr_accessor :spending_money

  def initialize(name, height, money)
    @name = name
    @height = height
    @spending_money = money.delete("$").to_i
    @preferences = []
    @original_spending_money = money.delete("$").to_i
  end

  def add_preference(preference)
    @preferences << preference
  end

  def tall_enough?(given_height)
    @height >= given_height
  end


end
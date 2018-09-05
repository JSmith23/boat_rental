class Renter
  attr_reader :name,
              :credit_card_number,
              :hour_add
  attr_writer :hour_add 
  def initialize(name,credit_card_number)
    @name = name
    @credit_card_number = credit_card_number
    @hour_add = 0
  end
end

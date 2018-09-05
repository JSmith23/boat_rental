class Dock
  attr_reader :name,
              :max_rental_time,
              :revenue
  def initialize(name,max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @revenue = 0
    @returned = false
    @values = []
  end

  def rent(boat,renter)
    if renter.hour_add >= @max_rental_time
      @revenue =+ 0
    else
    @values << boat.price_per_hour
    @revenue += boat.price_per_hour
    renter.hour_add += 1
  end
end

  def return(boat)
    !@returned
  end

  def log_hour
    @revenue += @values.last
  end

end

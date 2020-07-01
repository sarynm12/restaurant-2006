class Restaurant
  attr_reader :name, :opening_time, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    closing = (@opening_time.to_i + hours)
    "#{closing}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time.to_i < 12
      true
    else
      false
    end
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(hours)
    standard1 = closing_time(hours) + "AM"
    if closing_time(hours).to_i >= 12
      standard2 = (closing_time(hours).to_i - 12).to_s + ':00PM'
      "#{name} will be closing at #{standard2}"
    elsif closing_time(hours).to_i < 12
      "#{name} will be closing at #{standard1}"
    end 
  end

end

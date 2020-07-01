require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'

class RestaurantTest < Minitest::Test
  # Iteration 1 Tests:
  def test_it_exists
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_instance_of Restaurant, restaurant
  end

  def test_it_has_opening_time
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal '10:00', restaurant.opening_time
  end

  def test_it_has_name
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal 'Fuel Cafe', restaurant.name
  end

  def test_it_has_dishes
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal [], restaurant.dishes
  end

  #Iteration 2 Tests:
  def test_it_has_closing_time
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')

    assert_equal '18:00', restaurant1.closing_time(8)
    assert_equal '23:00', restaurant2.closing_time(7)
  end

  def test_it_can_add_dishes
    restaurant = Restaurant.new('16:00', 'Il Poggio')

    restaurant.add_dish('Burrata')
    restaurant.add_dish('Pizzetta')
    restaurant.add_dish('Ravioli')

    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], restaurant.dishes
  end
end


# ## Iteration 2
#
# For iteration 2, we have created all of the tests you will need - unskip tests one by one, making each pass before moving on the the next test.  The tests will model the interaction pattern below.  The `closing_time` method should add the number of hours sent in the argument to the `opening_time` and return the time in 24 hour format.  For example, 3:00 PM (12hour / clock time) is 15:00 (24hour). A restaurant will only ever open at the top of the hour (:00).
#
# ```ruby
# pry(main)> require './lib/restaurant'
# #=> true
#
# pry(main)> restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
# #=> #<Restaurant:0x007fdddb9ba490 @dishes=[], @name="Fuel Cafe", @opening_time="10:00">
#
# pry(main)> restaurant2 = Restaurant.new('16:00', 'Il Poggio')
# #=> #<Restaurant:0x007fdddb900018 @dishes=[], @name="Il Poggio", @opening_time="16:00">
#
# pry(main)> restaurant1.closing_time(8)
# #=> "18:00"
#
# pry(main)> restaurant2.closing_time(7)
# #=> "23:00"
#
# pry(main)> restaurant2.add_dish('Burrata')
#
# pry(main)> restaurant2.add_dish('Pizzetta')
#
# pry(main)> restaurant2.add_dish('Ravioli')
#
# pry(main)> restaurant2.dishes
# #=> ["Burrata", "Pizzetta", "Ravioli"]
# ```

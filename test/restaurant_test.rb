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

  def test_it_knows_if_open_for_lunch
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')
    assert_equal true, restaurant1.open_for_lunch?
    assert_equal false, restaurant2.open_for_lunch?
  end

  def test_it_upcases_dish_names
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')
    restaurant2.add_dish('Burrata')
    restaurant2.add_dish('Pizzetta')
    restaurant2.add_dish('Ravioli')
    assert_equal ["BURRATA", "PIZZETTA", "RAVIOLI"], restaurant2.menu_dish_names
  end

end


# ## Iteration 3
#
# Now, it is time for you to write your own tests!  Follow the interaction pattern below to write one test, make that test pass, and move on to the next test.  You will have at minimum, one test per new method. A restaurant is open for lunch, if its opening time is before 12:00.  All restaurants are **VERY** excited about their dishes - The method `menu_dish_names` will return a list of dish names, **IN ALL CAPS** ('Breakfast Burrito' should become 'BREAKFAST BURRITO').

#
# restaurant2.add_dish('Burrata')
#
# restaurant2.add_dish('Pizzetta')
#
# restaurant2.add_dish('Ravioli')
#
# restaurant2.menu_dish_names
# #=> ["BURRATA", "PIZZETTA", "RAVIOLI"]
# ```
# ``

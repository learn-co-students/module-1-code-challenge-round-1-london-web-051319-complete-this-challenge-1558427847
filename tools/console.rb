require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("Proxima", "Midnight")
customer2 = Customer.new("Ebony", "Maw")
customer3 = Customer.new("Nebula", "Doe")

restaurant1 = Restaurant.new("Earth")
restaurant2 = Restaurant.new("Titan")
restaurant3 = Restaurant.new("Vormir")

review1 = Review.new(restaurant1, "Earth has puny restaurants", customer2, 2)
review2 = Review.new(restaurant2, "Titan has no restaurants", customer1, 1)
review3 = Review.new(restaurant3, "I hate this place", customer1, 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

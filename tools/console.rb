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

restaurant1 = Restaurant.new("Earth", customer1)
restaurant2 = Restaurant.new("Titan", customer3)
restaurant3 = Restaurant.new("Vormir", customer1)

review1 = Review.new(restaurant1, "Earth has puny restaurants", 2, customer2)
review2 = Review.new(restaurant2, "Titan has no restaurants", 1, customer1)
review3 = Review.new(restaurant3, "I hate this place", 2, customer1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

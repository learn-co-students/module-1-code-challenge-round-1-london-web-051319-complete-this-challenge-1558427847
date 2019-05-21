require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("First1", "Last1")
customer2 = Customer.new("First", "Last2")
customer3 = Customer.new("First", "Last3")

restaurant1 = Restaurant.new("Restaurant1")
restaurant2 = Restaurant.new("Restaurant2")

review1 = Review.new(customer1, restaurant1, "Good", 3)
review2 = Review.new(customer2, restaurant2, "Poor", 2)
review3 = Review.new(customer3, restaurant1, "Excellent", 5)
review4 = Review.new(customer1, restaurant2, "OK", 4)
review5 = Review.new(customer2, restaurant1, "Good", 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("John","Smith")
customer2 = Customer.new("Jack","Jones")
customer3 = Customer.new("Phil","Thomas")

restaurant1 = Restaurant.new("Red Panda")
restaurant2 = Restaurant.new("Chez Fred")
restaurant3 = Restaurant.new("Highcliffe")

review1 = Review.new(customer1, restaurant3, "very nice", 5)
review2 = Review.new(customer3, restaurant1, "not good", 3)
review3 = Review.new(customer2, restaurant2, "awful", 1)
review4 = Review.new(customer3, restaurant3, "excellent", 5)
review5 = Review.new(customer1, restaurant1, "OK", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

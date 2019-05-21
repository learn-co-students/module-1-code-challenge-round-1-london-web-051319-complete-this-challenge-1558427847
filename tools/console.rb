require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Amy", "Quinn")
customer2 = Customer.new("John", "Smith")

restaurant1 = Restaurant.new("Restaurant1")
restaurant2 = Restaurant.new("Restaurant2")

review1= Review.new(1, "customer1", "restaurant1")
review2= Review.new(2, "customer2", "restaurant2")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

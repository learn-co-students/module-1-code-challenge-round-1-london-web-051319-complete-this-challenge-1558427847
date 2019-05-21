require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

wahaca = Restaurant.new("Wahaca")
flatiron = Restaurant.new("Flat Iron Steakhouse")
customer1 = Customer.new("Pedro", "Loureiro")
customer2 = Customer.new("Joseph", "Maron")
customer3 = Customer.new("Marcus", "Hansen")
customer1.add_review(wahaca, "very good", 3)
customer2.add_review(flatiron, "poor", 4)
customer3.add_review(wahaca, "awesoooooooooooooooooooooome g", 4)

review1 = Review.new(wahaca,"awesome",6, customer1)
review1.customer


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
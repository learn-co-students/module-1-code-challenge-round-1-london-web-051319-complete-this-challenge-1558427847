require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new(rest_name: "Bobby's cakes")
rest2 = Restaurant.new(rest_name: "Jimmy's chips")
rest3 = Restaurant.new(rest_name: "Sarah's burgers")

cust1 = Customer.new(first_name: "Chris", last_name: "Dews")
cust2 = Customer.new(first_name: "James", last_name: "Day")


review1 = Review.new(restaurant: rest1, rating: 4, content: "i liked it", customer: cust1)
review2 = Review.new(restaurant: rest2, rating: 3, content: "ok", customer: cust1)
review3 = Review.new(restaurant: rest1, rating: 4, content: "i <3 it", customer: cust2)
review4 = Review.new(restaurant: rest3, rating: 5, content: "i liked it very much", customer: cust2)
review5 = Review.new(restaurant: rest3, rating: 4, content: "i liked it ok", customer: cust1)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
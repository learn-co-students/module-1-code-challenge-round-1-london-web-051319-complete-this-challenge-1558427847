require_relative "models/customer.rb"
require_relative "models/review.rb"
require_relative "models/restaurant.rb"
require "pry"

# EXAMPLES

cust1 = Customer.new(first_name: "Bob", last_name: "Hawkins")
cust2 = Customer.new(first_name:"Mary" , last_name: "Bart")
cust3 = Customer.new(first_name:"Luna" , last_name: "Lovegood")
cust4 = Customer.new(first_name: "Ron", last_name: "Weasley")
cust5 = Customer.new(first_name: "Ron", last_name: "Weasley")

rest1 = Restaurant.new(name: "Ritz")
rest2 = Restaurant.new(name: "Mana")
rest3 = Restaurant.new(name: "Pizza Hut")
rest4 = Restaurant.new(name: "The Emporium")

review1 = Review.new(customer: cust1,restaurant: rest2, rating: 4, content: "Very good")
review2 = Review.new(customer: cust3,restaurant: rest1, rating: 2, content: "Overpriced")
review3 = Review.new(customer: cust4,restaurant: rest3, rating: 3, content: "Cheap")
review4 = Review.new(customer: cust2,restaurant: rest4, rating: 5, content: "Excellent")
review5 = Review.new(customer: cust3,restaurant: rest2, rating: 5, content: "Heavenly")

# review6 = cust5.add_review(rest4, "A Hoot", 5)


binding.pry
puts "exit"
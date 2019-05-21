require_relative "./review.rb"
require_relative "./restaurant.rb"
require_relative "./customer.rb"
require "pry"

person1 = Customer.new("J", "Oliv")
person2 = Customer.new("M", "Lov")
person3 = Customer.new("K", "Tov")

restaurant1 = Restaurant.new("La Place")
restaurant2 = Restaurant.new("Decim")
restaurant3 = Restaurant.new("Quinn")

person1.add_review(restaurant1, "noice", 4)
person1.add_review(restaurant2, "cool place", 4)
person2.add_review(restaurant2, "noicer", 3)
person3.add_review(restaurant3, "best", 5)

person1.num_reviews
# 2
person1.restaurants
# res 1 and res 2

restaurant2.customers
# J Oliv & M Lov

restaurant2.reviews

restaurant2.average_star_rating

restaurant2.longest_review

Customer.find_by_name("J") # return full_name
Customer.find_all_by_first_name("J")
Customer.all_names

binding.pry

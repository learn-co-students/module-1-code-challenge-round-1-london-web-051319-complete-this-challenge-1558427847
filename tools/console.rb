require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Amy", "Quinn")
customer2 = Customer.new("John", "Smith")
customer3 = Customer.new("David", "James")

restaurant1 = Restaurant.new("Restaurant1")
restaurant2 = Restaurant.new("Restaurant2")
restaurant3 = Restaurant.new("Restaurant3")

review1= Review.new(restaurant1, "contentxxxxxxx1", 5,customer1)
review2= Review.new(restaurant2, "contentbb2", 3,customer2)
review3= Review.new(restaurant3, "contentcc4", 5,customer1)
eview4= Review.new(restaurant1, "content2221", 3,customer2)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
restaurant1.average_star_rating

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cat = Customer.new("Cat", "Martin")
oly = Customer.new("Oly", "Hugh")
cathy = Customer.new("Cat", "Hy")

uptown = Restaurant.new("Uptown Eats")
donnies = Restaurant.new("Donnie's Pizza")
yummo = Restaurant.new("Yummo Eatos")

review1 = Review.new(cat, uptown, "Overpriced", 3.5)
review2 = Review.new(oly, donnies, "Best pizza!", 5)
review3 = Review.new(cat, yummo, "Not yum more like!", 2)
review4 = Review.new(oly, uptown, "Best food ever", 5)
review5 = Review.new(cat, donnies, "like eating in Italy", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
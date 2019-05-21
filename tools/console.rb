require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

vlad = Customer.new("vlad", "Georgiev")
didi = Customer.new("didi", "Georgiev")
alex = Customer.new("alex", "Georgiev")
nicole = Customer.new("nicole", "Georgiev")

restaurant1 = Restaurant.new("dave")
restaurant2 = Restaurant.new("michael")
restaurant3 = Restaurant.new("clara")
restaurant4 = Restaurant.new("noemi")
restaurant5 = Restaurant.new("arthur")
restaurant6 = Restaurant.new("pepe")

content1 = Review.new(1, "content1", vlad, restaurant1)
content2 = Review.new(2, "content2", didi, restaurant4)
content3 = Review.new(3, "content3", alex, restaurant3)
content4 = Review.new(4, "content4", nicole, restaurant6)
content5 = Review.new(5, "content5", vlad, restaurant5)
content6 = Review.new(3, "content6", alex, restaurant2)
content7 = Review.new(5, "content7", didi, restaurant5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
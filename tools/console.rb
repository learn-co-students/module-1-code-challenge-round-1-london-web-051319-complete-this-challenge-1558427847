require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
CustomerOne = Customer.new("Felix", "Benetzeder")
CustomerTwo = Customer.new("Nadine", "Gisdon")
CustomerThree = Customer.new("Isabella", "Seidl")
CustomerFour = Customer.new("Andreas", "Mohr")
CustomerFive = Customer.new("Andreas", "Froh")

RestaurantOne = Restaurant.new("Burger King")
RestaurantTwo = Restaurant.new("MC")
RestaurantThree = Restaurant.new("KFC")
RestaurantFour = Restaurant.new("Hiltl")

CustomerOne.add_review(RestaurantOne,"OK",3)
CustomerTwo.add_review(RestaurantTwo, "Good", 4)
CustomerThree.add_review(RestaurantThree, "Marvellous", 5)
CustomerOne.add_review(RestaurantTwo, "Really Bad", 1)
CustomerOne.add_review(RestaurantOne,"Better",4)
CustomerFour.add_review(RestaurantFour, "Best experience ever", 5)
CustomerOne.add_review(RestaurantFour, "Will come again", 5)
# ReviewOne = Review.new(CustomerOne,RestaurantTwo,"OK")
# ReviewTwo = Review.new(CustomerTwo,RestaurantThree,"Good")
# ReviewThree = Review.new(CustomerThree,Restaurant,"Marvellous")
# ReviewFour = Review.new(CustomerOne,RestaurantOne,"Really Bad")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

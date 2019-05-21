require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customer
 sarah = Customer.new("sarah", "haras")
 joe = Customer.new("joe", "eoj")
 hoots = Customer.new("hoots", "stooh")


#restaurants
mcdonalds = Restaurant.new("mcdonalds")
burgerking = Restaurant.new("burger king")
kfc = Restaurant.new("kfc")
ritz = Restaurant.new("the ritz")


#reviews
review1 = Review.new(sarah, mcdonalds, "best food ever, and cleanliness was next to godliness", 5)
review2 = Review.new(joe, ritz, "stuffy and pretentious", 1)
review3 = Review.new(joe, kfc, "great", 4)
review4 = Review.new(hoots, burgerking, "sloppy presentation, but good taste", 3)
review5 = Review.new(hoots, ritz, "meh, not worth it", 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
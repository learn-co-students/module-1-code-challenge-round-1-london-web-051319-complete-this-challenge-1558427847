require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customer
sarah = Customer.new('sarah', 'apple')
john = Customer.new('john', 'pear')
ann = Customer.new('ann', 'plum')


#restaurant
resturant1 = Restaurant.new('resturant1')
resturant2 = Restaurant.new('resturant2')
resturant3 = Restaurant.new('resturant3')



#reviews
review1 = Review.new("very good", restauran1, sarah, 5)
review2 = Review.new('good', restaurant2, john, 3)
review3 = Review.new('bad', resturant3, ann, 1)
review4 = Review.new('good', 'resturant3, sarah, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

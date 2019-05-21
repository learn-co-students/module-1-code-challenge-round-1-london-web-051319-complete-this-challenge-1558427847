require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

awa, n = Customer.new("Awa", "N")
fata, s = Customer.new("Fata", "S")
rara, s = Customer.new("Rara" ,"S")

pizza = Restaurant.new("Pizza")
pasta = Restaurant.new("Pasta")
rice = Restaurant.new("Rice")

review1 = Review.new("Awo N", pizza)
review2 = Review.new("Fata S", pasta)
review3 = Review.new("Rara S", rice)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

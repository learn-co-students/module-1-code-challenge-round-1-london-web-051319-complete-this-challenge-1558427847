require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


bobm = Customer.new("Bob", "Marley")
kenl = Customer.new("Kendrick", "Lamar")
sushi = Restaurant.new("Sushi Place")
pizza = Restaurant.new("Pizza Cave")
kebab = Restaurant.new("Kebabish")
bobm.add_review("Sushi Place", "The Sushi was nice but not soft", 3)
kenl.add_review("Pizza Cave", "Pizza was massive and plenty of toppings", 5)
bobm.add_review("Kebabish", "Meat was stale and I found hair in my food!", 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

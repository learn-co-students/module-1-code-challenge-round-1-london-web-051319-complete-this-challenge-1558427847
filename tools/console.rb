require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


sam = Customer.new("Sam", "Tooth")
alex = Customer.new("Alex", "Spandex")
catherine = Customer.new("Catherine", "Polish")
alex2 = Customer.new("Alex", "Too")
the_pits = Restaurant.new("The Pits")
good_o = Restaurant.new("Good-o")
fancy_pants = Restaurant.new("Fancy Pants")
review1 = sam.add_review(the_pits, "WAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaah", 4)
review6 = sam.add_review(good_o, "Awful", 1)
review2 = sam.add_review(fancy_pants, "meddddium", 3)
review3 = alex.add_review(the_pits, "5 star", 2)
review4 = alex.add_review(good_o, "Still awful", 1)
review5 = catherine.add_review(the_pits,"AMAZEBAWS", 5)
review7 = sam.add_review(the_pits, "not bad", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

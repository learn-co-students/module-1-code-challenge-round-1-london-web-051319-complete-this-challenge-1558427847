require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

first_name = %w(Ewart Fabian Felix Ferdinand Florian Gideon Geoffrey Gregory Hector Horatio Hubert Hugh Hugo Humphrey Ignatius)

last_name = %w(Dexter  Draker Draper Drover Faber Falconer Farrier Faulkner Fisher Fletcher Forester Forster)

restaurants = %w(LettuceEat FilledOfDreams BiteMeSandwiches ThaiTanic JustFalafs GochewGrill ChickenItzaRestaurant)

reviews = %w(nice meh amazing awfull ok fine incredible)

Customer.new(first_name.sample, last_name.sample).add_review(Restaurant.new(restaurants.sample), reviews.sample, rand(5) + 1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

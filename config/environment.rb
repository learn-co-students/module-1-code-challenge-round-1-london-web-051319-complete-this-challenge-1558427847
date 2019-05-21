require 'bundler/setup'
Bundler.require
require "pry"
require_rel '../app'

cust1 = Customer.new("steve", "Jobs")
cust2 = Customer.new("bob", "marley")
cust3 = Customer.new("peter", "rabbit")

rest1 = Restaurant.new("mcdonalds")
rest2 = Restaurant.new("burgerking")
rest3 = Restaurant.new("kfc")

binding.pry

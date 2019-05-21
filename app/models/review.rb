#belongs to customer and restaurant

class Review

  attr_reader :customer
  attr_accessor :restaurant, :rating

@@all = []

def initialize(rating, customer, restaurant)
  @rating = rating
  @customer = customer
  @restaurant = restaurant
  @@all<< self

end


def self.all
  @@all
end

def customer
  @customer
end

def restaurant
  @restaurant
end

def rating
  @rating
end

def content

end

end

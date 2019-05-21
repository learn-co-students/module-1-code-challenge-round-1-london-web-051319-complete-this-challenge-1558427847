#belongs to customer and restaurant

class Review

  attr_reader :customer, :restaurant
  attr_accessor :rating

@@all = []

def initialize(restaurant, content, rating, customer)
  @restaurant = restaurant
  @content = content
  @rating = rating
  @customer = customer
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
  if @rating =>1 && <=5)
    return true
  else false
end

def content
@content
end

end

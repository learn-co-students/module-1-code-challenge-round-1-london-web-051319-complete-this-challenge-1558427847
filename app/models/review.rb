class Review
  attr_accessor :content, :restaurant, :rating
  attr_reader :customer
  @@all = Array.new

  def initialize(restaurant, content, rating, customer)
    @restaurant = restaurant
    @content = content
    @rating = rating
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    Customer.all.select {|customer| customer.review == self}
  end

  def restaurant
    Restaurant.all.select {|restaurant| restaurant.review == self}
  end

end

class Review
  attr_accessor :content, :rating, :customer
  attr_reader :restaurant
  @@all = Array.new

  def initialize(restaurant, content, customer, rating)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end

class Review
  @@all = []

  def initialize(content, rating, customer, restaurant)
    @content = content
    @customer = customer
    @rating = rating
    @restaurant = restaurant
    @@all << self
  end

  attr_reader :content, :rating, :customer, :restaurant

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

  def rating
    star = @rating
    if star > 5
      return 5
    elsif star < 1
      return 1
    else
      star
    end
  end

  def content
    @content
  end

  def self.all
    @@all
  end
end
# Restaurant has many reviews
# Customer hash many reviews
# A Review belongs to a customer and a Restaurant

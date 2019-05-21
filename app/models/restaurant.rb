class Restaurant
  attr_reader :name
  attr_accessor :customer, :reviews
  @@all = Array.new

  def initialize(name)
    @name = name
    #@customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def review_count
    reviews.count
  end

  def customers
    reviews.map {|review| review.customer}
  end

  def ratings
    reviews.map {|review| review.rating}
  end

  def average_rating
    ratings.reduce(:+) / ratings.size.to_f
  end
end

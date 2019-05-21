class Restaurant

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}
  end

  def ratings
    reviews.map {|reviews| reviews.rating}
  end

  def average_star_rating
    ratings.reduce(:+)/ratings.count.to_f
  end

  def longest_review
    reviews.map.max_by {|review| review.restaurant}
  end

  def self.find_by_name(restaurant_name)
    self.all.find {|restaurant| restaurant.name}
  end

end

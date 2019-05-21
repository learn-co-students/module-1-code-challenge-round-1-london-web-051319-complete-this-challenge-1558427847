class Restaurant

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
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

  def average_star_rating
    customers.length/reviews.length.to_f
  end

  def longest_review
    Review.all.select do |review| review
    end
  end

  def self.find_by_name(restaurant_name)
    self.all.find {|restaurant| restaurant.name == restaurant_name}
  end

end

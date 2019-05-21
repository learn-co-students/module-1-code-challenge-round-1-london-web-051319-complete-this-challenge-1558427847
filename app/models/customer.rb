class Customer
  attr_reader :first_name, :last_name
  attr_accessor :restaurant, :review
  @@all = Array.new

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  def num_reviews
    count = Review.all.select {|review| review.customer == self}
    count.count
  end

  def which_restaurants #restaurants that customer has been to
    Restaurant.all.select {|restaurant| restaurant.customer == self}
  end

  # def restaurants
  #   which_restaurants.map {||}
  # end
end

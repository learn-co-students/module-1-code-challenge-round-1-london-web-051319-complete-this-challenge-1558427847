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
    Review.new(restaurant, content, self, rating)
  end

  def review
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    # don't need to implement this again => reviews = Review.all.select {|review| review.customer == self}
    review.count
  end

  def restaurants
    review.map {|review| review.restaurant}
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    # full_name = "#{@first_name} #{@last_name}"
    self.all.map {|customer| customer.full_name}.uniq
  end
end

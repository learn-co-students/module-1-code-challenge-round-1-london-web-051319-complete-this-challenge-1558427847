class Customer

  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(rating, content, restaurant)
    Review.new(rating, content, self, restaurant)
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    number_reviews = Review.all.select {|review| review.customer == self}
    number_reviews.length
  end

  def self.find_by_name(given_full_name)
    self.all.find {|customer| customer.full_name == given_full_name}
  end

  def self.find_all_by_first_name(given_first_name)
    self.all.select {|customer| customer.first_name == given_first_name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

end

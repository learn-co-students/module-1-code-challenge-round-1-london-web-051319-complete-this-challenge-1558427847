class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name:, last_name:)
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
  	Review.new(restaurant: restaurant, content: content, rating: rating, customer: self)  	
  end

  def num_reviews
  	Review.all.select {|review| review.customer == self}
  end

  def restaurants
  	num_reviews.map { |review| review.restaurant }.uniq
  end

  def self.find_by_name(name)
  	self.all.select {|customer| customer.full_name  == name}
  end

  def self.find_all_by_first_name(name)
  	self.all.select {|customer| customer.first_name  == name}
  end

  def self.all_names
  	self.all.map { |customer| customer.full_name }
  end
end

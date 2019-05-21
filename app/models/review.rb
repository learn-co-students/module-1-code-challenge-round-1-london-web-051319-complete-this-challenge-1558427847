class Review
  attr_accessor :restaurant, :rating, :content, :customer 

  @@all = []

  def initialize(restaurant:, rating:, content:, customer:)
  	@restaurant = restaurant
  	@rating = rating
  	@content = content
  	@customer = customer
  	@@all << self
  end

  def self.all
  	@@all
  end

  def self.customer(review)
  	self.all.select {|a_review| a_review == review ? a_review.customer : nil}
  end

  def self.restaurant
  	self.all.select {|a_review| a_review == review ? a_review.restaurant : nil}
  end

end


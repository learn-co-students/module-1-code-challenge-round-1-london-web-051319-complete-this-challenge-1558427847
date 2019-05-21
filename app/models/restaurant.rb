class Restaurant
  attr_reader :rest_name

  @@all = []

  def initialize(rest_name:)
    @rest_name = rest_name
  end

  def self.all
  	@@all
  end

  def reviews
  	Review.all.select {|review| review.restaurant == self}

  end

  def customers
  	reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
  	count = 0
  	reviews.select {|review| count += review.rating}
  	count.to_f / reviews.count.to_f
  end

  def longest_review
  	count = 0
  	reviews.each do |review|
  		if review.content.length > count
  			count = review.content.length
  		end
  	end
  	count

  	# this does a count not returning the review!
  end

  def self.find_by_name(name)
  	self.all.select {|restaurant| restaurant.rest_name  == name}
  end
  	# doesnt work?

end

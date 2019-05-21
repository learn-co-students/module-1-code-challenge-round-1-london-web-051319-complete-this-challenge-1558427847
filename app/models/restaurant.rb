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
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    count = 0
    reviews.each do |review| count += review.rating
    end
    average = count / reviews.length
  end

  def longest_review
    longest_word = ''
    reviews.each do |review| if longest_word.length < review.content.length
      longest_word = review.content
    end
  end
    longest_word
  end

  def self.find_by_name(name)
    Restaurant.all.select {|restaurant| restaurant.name == name}
  end

end

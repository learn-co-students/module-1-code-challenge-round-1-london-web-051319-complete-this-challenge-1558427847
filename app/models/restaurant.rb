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
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    reviews.map(&:customer).uniq
  end

  def average_star_rating
    reviews.map(&:rating).sum / (self.reviews.count).to_f
  end

  def longest_review
    reviews.map(&:content).max_by { |word| word.length  }
  end

  def self.find_by_name(name)
   all.find{|restaurant| restaurant.name == name}
  end
end

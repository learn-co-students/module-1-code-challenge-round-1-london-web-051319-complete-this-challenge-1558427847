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
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    reviews.map {|rev| rev.customer}.uniq
  end

  # def average_star_rating
  #   reviews.
  # end

  def longest_review
    reviews.map(&:length).max
  end

  def self.find_by_name(name)
    @@all.find {|rest| rest.name == name}
  end

end

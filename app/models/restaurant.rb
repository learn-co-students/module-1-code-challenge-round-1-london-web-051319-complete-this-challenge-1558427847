class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all<< self
  end

  def self.all
    @@all

  end

  def customers

    reviews.map {|review|review.customer}.uniq

  end

  def reviews

    Review.all.select{|review|review.restaurant == self}



  end

  def average_star_rating

  end

  def longest_review

  end

end

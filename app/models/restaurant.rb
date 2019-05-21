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

  def star_rating

    reviews.map { |review| review.rating}

  end

  def average_star_rating

    sum = star_rating.inject(:+)

    average = sum / star_rating.length
    average

  end
  #returns the average star rating for a restaurant based on its reviews

  def longest_review

    reviews.map.max_by{|review|review.restaurant}
  end

  def self.find_by_name(name)
    self.all.find{|restaurant|restaurant == name}
end 

    #given a string of restaurant name, returns the first restaurant that matches

end

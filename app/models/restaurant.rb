class Restaurant
  attr_reader :name
  #
  #attr_accessor :review, :customer

  @@all = []

  def initialize(name)
    @name = name
    #@review = review
    #@customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.find {|restaurant| Restaurant.name == name}
    end

  def customers
    restaurant = customer.all.select {|customer| customer.restaurant == self }
  end

  def reviews
   customers.map {|customer| customer.review }
  end

  def self.ave_star_rating
    ave__star_rating = Review.all.length/(Restaurant.all.length)
  end

  def longest_review

  end

end

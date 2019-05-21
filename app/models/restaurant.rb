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

  def customer
    Review.all.select{|name| name.customer == self}
  end

  def reviews
    Review.all.select{|reviews| reviews.review == self}
  end

  def average_star_rating
    star_rating = Review.all.select{|rating| rating.review == self}.sum
    star_rating/(Review.all.select{|strating| strating.review == self}.length)

  end

end

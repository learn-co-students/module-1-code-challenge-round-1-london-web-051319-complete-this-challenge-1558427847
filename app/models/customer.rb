class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating.to_i)
  end

  def num_reviews
    Review.all.select {|numreviews| numreviews.customer}.length
  end

  def restaurant
    Review.all.select {|restname| restname.restaurant == self}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end
end

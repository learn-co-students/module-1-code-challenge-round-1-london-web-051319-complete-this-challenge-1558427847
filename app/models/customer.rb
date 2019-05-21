class Customer
  attr_reader :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    review = Review.new(restaurant, content, rating, self)
  end

  def num_reviews
    array = Review.all.select { |review| review.customer == self }
    array.length
  end

  def reviews
    Review.all.select { |review| review.customer == self }
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
    Customer.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.find {|customer| customer.first_name = name}
  end

  def self.all_names
    Customer.all.map {|customer| customer.full_name}
  end

end

class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @review_count = 0
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(content, rating, self, restaurant)
    @review_count += 1
  end

  def num_reviews
    arr = Review.all.select {|review| review.customer == self}
    arr.size
  end

  def restaurants
    arr = Review.all.select {|review| review.customer == self}.uniq
    arr.map {|review| review.restaurant}
  end

  def self.find_by_name(name)
    obj = @@all.find {|customer| customer.first_name == name}
    "#{obj.first_name} #{obj.last_name}"
  end

  def self.find_all_by_first_name(name)
    @@all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    @@all.map {|customer| "#{customer.first_name} #{customer.last_name} "}
  end

  def self.all
    @@all
  end
end

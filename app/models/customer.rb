# - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
# - `Customer.find_by_name(name)`
# - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
# - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
# - should return an **array** of all of the customer full names

class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
    Review.all << self
  end

  def reviews
    Review.all.select {|review| review.customer.first_name == self.first_name}
  end

  def num_reviews
    reviews.size
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  def self.all_names
    @@all.map{|customer| customer.full_name}
  end

  def self.find_by_name(name)
    all_names.find {|customer| customer == name}
  end

  def self.find_all_by_first_name(name)
    @@all.select {|customer| customer.first_name == name}
  end

end


#### Customer

# - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed

# #### Build the following methods on the `Customer` class
#
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names


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

  def restaurants
    Restaurant.all.select do |restaurant|
      restaurant.customer == self
    end
  end

  def add_review(review, restaurant)
    Review.new(review, restaurant, self)
  end


  def num_reviews`
    all.map do |customer|
      customer.review
    end.reduce(:+)
  end


  def num_reviews`
    review.map do |review|
      review.num_reviews
    end.reduce(:+)
  end

  def self.find_by_name(full_name)
    all.select do |customer|
      customer.full_name.downcase.include?(full_name.downcase)
    end.map do |customer|
      customer.full_name
    end
  end


end

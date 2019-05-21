#### Restaurant
#
# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant

#### Build the following methods on the `Customer` class

# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names


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

  def customers
    Customer.all.select do |customer|
      customer.restaurant == self
    end
  end

  # def reviews
  #   customers.map do |customer|
  #     customer.review
  #   end
  # end

  def longest_review
    review.length
  end


end

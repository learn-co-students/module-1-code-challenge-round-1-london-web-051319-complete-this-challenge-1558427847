#### Build out the following methods on the `Review` class
#
# - `Review#customer`
#   - returns the customer object for that given review
#   - Once a review is created, I should not be able to change the author
# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, I should not be able to change the restaurant
# - `Review#rating`
#   - returns the star rating for a restaurant. This should be an integer from 1-5
# - `Review#content`
#   - returns the review content, as a string, for a particular review

class Review

  attr_reader :review, :restaurant, :customer,
  attr_accessor :rating

  @@all = []

  def initialize(review, restaurant, customer, rating)
    @review = review
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    @@ << self
  end

  def self.all
    @@all
  end

  def rating

  end

end

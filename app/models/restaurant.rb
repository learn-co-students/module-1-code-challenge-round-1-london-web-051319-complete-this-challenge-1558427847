class Restaurant
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  attr_reader :name

  def customers
    arr = Review.all.select { |review| review.restaurant == self }
    arr.map { |review| review.customer }.uniq
  end

  def reviews
    arr = Review.all.select { |review| review.restaurant == self }
    arr.map {|review| review.content}
  end

  def average_star_rating
    review_num = self.customers.length
    star_sum = Review.all.map { |review| review.rating }
    sum = star_sum.inject { |sum,n| sum + n }

    sum.to_f / review_num
  end

  def longest_review
    reviews.max_by {|rev| rev.length}
  end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end
end

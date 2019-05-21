class Restaurant
  include Helper
  extend Finder
  def initialize(*args)
    vars = %w(name)
    super(vars, args)
  end

  def reviews
    super(&:restaurant)
  end

  def customers
    reviews.map(&:customer).uniq
  end

  def average_star_rating
    reviews.map(&:rating).sum / reviews.length
  end

  def longest_review
    reviews.map(&:content).max_by(&:length)
  end


  def self.find_by_name(name)
    finder(name, &:name)
  end

end

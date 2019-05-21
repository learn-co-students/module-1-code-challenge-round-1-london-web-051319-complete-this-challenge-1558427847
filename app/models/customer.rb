class Customer
  include Helper
  extend Finder
  def initialize(*args)
    vars = %w(first_name last_name)
    super(vars, args)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  def reviews
    super(&:customer)
  end

  def num_reviews
    reviews.length
  end

  def restaurants
    reviews.map(&:restaurant).uniq
  end

  def self.find_by_name(full_name)
    finder(full_name, &:full_name)
  end

  def self.find_all_by_first_name(first_name)
    finder(first_name, &:first_name)
  end

  def self.all_names
    all.map(&:full_name)
  end
end

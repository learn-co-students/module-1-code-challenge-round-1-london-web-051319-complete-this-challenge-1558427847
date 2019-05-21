class Customer
  attr_reader :first_name, :last_name
  attr_accessor :reviews

  @@all = []
  reviews = []


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

  def add_review(rest_name, content, rating)

  reviews << Review.new(rest_name, content, rating)

  end

  def num_reviews
    ## come back to
    Review.count
  end






end

#has many reviews

class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all<< self
  end

  def self.all

    @@all

  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(restaurant, self)

  end

  def reviews

    Review.all.select{|review|review.customer == self}

  end


  def num_reviews
    reviews.count
  end


  def restaurants

  reviews.map {|review|review.restaurant}.uniq

  end




  def full_name
    "#{first_name} #{last_name}"
  end

end

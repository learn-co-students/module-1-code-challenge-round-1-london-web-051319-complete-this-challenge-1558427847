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

  def self.find_by_name(name)
    Customer.find {|customer| Customer.name == name}
  end

def find_all_by_first_name(name)

end

def num_reviews
      total = customer.map do |customer|
        costomer.review
    end
    total.num
  end

def restaurants
  restaurants.map {|restaurant| restaurant.review }
  end

end

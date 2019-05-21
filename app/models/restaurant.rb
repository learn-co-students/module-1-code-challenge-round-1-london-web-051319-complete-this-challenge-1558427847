class Restaurant
  attr_reader :name
  attr_accessor :customer, :reviews
  @@all = Array.new

  def initialize(name, customer)
    @name = name
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

end

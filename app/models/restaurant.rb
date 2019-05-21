class Restaurant
  attr_reader :name

  @@all = []

  def initialize(rest_name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

end

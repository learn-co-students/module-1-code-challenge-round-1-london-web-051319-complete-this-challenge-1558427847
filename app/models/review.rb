class Review
  attr_accessor :rest_name, :content, :rating

  @@all = []

  def initialize(rest_name, content, rating)
    @rest_name = rest_name
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end

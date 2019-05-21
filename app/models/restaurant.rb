class Restaurant
   attr_reader :name
   # attr_accessor

   # CLASS *********************

   @@all = []

   def self.all
      @@all
   end

   def initialize(name:)
      @name = name
      @@all << self
   end

   def self.find_by_name(rest_name)
      Restaurant.all.select{|inst| inst.name == rest_name}
   end

   # INSTANCE *********************

   def reviews
      Review.all.select{|inst| inst.restaurant == self}
   end

   def customers
      reviews.map{|inst|inst.customer}
   end

   def average_star_rating
      reviews.map{|inst| inst.rating}.sum/reviews.count
   end

   # def longest_review
   #    reviews.map{|inst| inst.content}
   # end
   # not quite finished, but was gathering the strings to do a max_by method

end
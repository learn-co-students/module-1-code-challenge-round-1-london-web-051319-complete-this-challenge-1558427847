class Customer
   attr_reader :first_name, :last_name
   #   attr_accessor

   # CLASS *********************

   @@all = []

   def self.all
      @@all
   end

   def initialize(first_name:, last_name:)
      @first_name = first_name
      @last_name  = last_name
      @full_name = full_name
      @@all << self
   end

   def self.find_by_name(cust_name)
   Customer.all.find{|inst| inst.full_name == cust_name}
   end

   def self.find_all_by_first_name(christian)
   Customer.all.select{|inst| inst.first_name == christian}
   end

   def self.all_names
   Customer.all.map{|inst|inst.full_name}
   end

   # INSTANCE *********************

   def full_name
      "#{first_name} #{last_name}"
   end

   def add_review(restaurant, content, rating)
      Review.new(customer: self, restaurant: restaurant, rating: rating, content: content)
   end

   def reviews
      Review.all.select{|inst| inst.customer == self}
   end

   def num_reviews
      reviews.count
   end

   def restaurants
      reviews.map{|inst| inst.restaurant}
   end
  
end

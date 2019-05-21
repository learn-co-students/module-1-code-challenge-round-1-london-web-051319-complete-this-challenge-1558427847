class Review
    attr_accessor :restaurant, :content, :rating
    attr_reader :customer
    
    @@all = []
    def initialize(restaurant, content, rating, customer)
        @restaurant = restaurant
        @content = content
        @rating = rating
        @customer = customer
        @@all << self
    end

    def self.all
        @@all
    end

    def valid_rating?
        if @rating > 5 || @rating < 1
            puts "Invalid rating"
        else
            @rating
        end
    end

    def customer
        @customer
    end

    def restaurant
        @restaurant
    end

    def rating
        if valid_rating?
            @rating
        end
    end

    def content
        @content
    end
end


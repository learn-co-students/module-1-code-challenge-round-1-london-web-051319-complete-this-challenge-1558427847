module Helper
  
  #Creates an all array that stores all instances of a class
  def self.included(klass)
    klass.instance_variable_set(:@all, [])

    #Makes the all array readable
    klass.singleton_class.class_eval{attr_reader(:all)}
  end

  def initialize(vars, args)
    #Initializes instance variables from a predifend list
    vars.each_with_index do |var, i|
      instance_variable_set("@#{var}", args[i])

      #makes each variable readable
      singleton_class.class_eval{attr_reader(var)}
    end

    self.class.all << self
  end

  #Template for filtering reviews
  def reviews
    Review.all.select{|review| yield(review) == self}
  end
end

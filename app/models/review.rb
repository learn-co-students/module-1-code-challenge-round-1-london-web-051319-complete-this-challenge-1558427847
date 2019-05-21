class Review
  include Helper
  def initialize(*args)
    vars = %w(restaurant content rating customer)
    super(vars, args)
  end

  #This method prevents an inherited behavior from module, giving an error
  def reviews
    self.class.all
  end
end

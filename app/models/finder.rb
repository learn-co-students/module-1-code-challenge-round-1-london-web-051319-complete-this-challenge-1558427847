module Finder

  #Searches through all instances of a class to find one with a matching attribute
  def finder(attr)
    all.find{|item| yield(item) == attr}
  end
end

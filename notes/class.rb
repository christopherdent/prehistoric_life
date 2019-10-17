require 'pry'

class Song
 
 
 @@all = []
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    
    all << self  
    
  end
end


binding.pry 
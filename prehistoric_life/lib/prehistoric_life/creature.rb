  
require 'pry'


class PrehistoricLife::Creature
  attr_accessor :name, :type, :diet 
  
  @@all = [] 
  def initialize(name)
    @name = name 
     
    save 
  end 
  
  def self.all
    @@all 
  end 

  def save 
    @@all << self 
  end 
  
  def roar 
    puts "#{self.name} goes Roar!"
  end 
  
  def fun_fact 
    
  end 
  
  def diet 
    
  end 
  
end 

 
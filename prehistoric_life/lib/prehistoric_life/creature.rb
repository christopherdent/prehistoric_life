 
require 'pry'


class PrehistoricLife::Creature
  attr_reader :type, :diet 
  
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
  
  def self.roar 
    puts "Roar"
  end 
  
end 

 
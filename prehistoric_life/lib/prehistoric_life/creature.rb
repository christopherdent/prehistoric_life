class PrehistoricLife::Creature
  attr_accessor :name, :type, :diet, :fun_fact  
  
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
    puts "#{self.name} goes roarrrr!"
  end 
  
  
  def fun_fact
    PrehistoricLife::Scraper.new.fact(name)
  end 
  


end 
 
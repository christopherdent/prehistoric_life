class PrehistoricLife::Creature
  attr_accessor :name, :type, :fun_fact, :period  
  
  @@all = [] 
  def initialize(name, period)
    @name = name
    @period = period
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
 
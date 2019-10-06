class PrehistoricLife::Period
  attr_accessor :name, :years 
  
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

  def years
  
    if self.name == "Triassic"
    "10 years"
  end 
end 
    
  
end 
class PrehistoricLife::Period
  attr_accessor :name, :years, :dinosaurs  
  
  @@all = []
  
  
  
  def initialize(name)
    @name = name 
    @dinosaurs = []
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
    "250-206 million years ago"
    elsif self.name == "Jurassic"
    "206-144 million years ago"
    elsif self.name == "Cretaceous"
    "144-65 million years ago"
    
  end 
end 
    
  
end 
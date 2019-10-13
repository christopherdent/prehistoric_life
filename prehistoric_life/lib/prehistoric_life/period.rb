class PrehistoricLife::Period
  attr_accessor :name, :dinosaurs, :years   
  
  @@all = []
  
  
  
  def initialize(name, years)
    @name = name 
    @years = years
    @dinosaurs = []
    save 
  end 
  
  def self.all
    @@all 
  end 

  def save 
    @@all << self 
  end 

  
end 
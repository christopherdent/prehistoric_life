class PrehistoricLife::Period
  attr_accessor :name, :years, :dinosaurs  
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @dinosaurs = []
    @@all << self 
  end 
  

  def self.all
    @@all 
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
    
   def self.get_period
     
      @@all.each_with_index do |period, index|
        
        index += 1
        puts "#{index.to_i}. #{period.name} (#{period.years})"
      end 
    
      period = gets.strip
    
      if period.downcase == "triassic" || period == "1"
        PrehistoricLife::CLI.show_creatures("Triassic")
      elsif period.downcase == "jurassic" || period == "2"
        PrehistoricLife::CLI.show_creatures("Jurassic")
      elsif period.downcase == "cretaceous" || period == "3"
        PrehistoricLife::CLI.show_creatures("Cretaceous")
      elsif period == "Q" || period == "q"
        exit
      else 
        puts "Please try again."
        get_period
      end
  end 
  

  
end 
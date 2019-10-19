class PrehistoricLife::CLI
  attr_accessor :creature , :period 

  def initialize
    @creature = creature
    PrehistoricLife::Period.new("Triassic")
    PrehistoricLife::Period.new("Jurassic")
    PrehistoricLife::Period.new("Cretaceous")
    PrehistoricLife::Scraper.scraper("Triassic") 
    PrehistoricLife::Scraper.scraper("Jurassic")
    PrehistoricLife::Scraper.scraper("Cretaceous")
  end 

  def call
  
     puts "Welcome to Prehistoric Life - Creatues of the Mesozoic!".colorize(:blue)
     PrehistoricLife::Creature.dino_art
     puts "Select an animal by geological period and learn a fun fact about that animal.".colorize(:light_blue)
     PrehistoricLife::CLI.get_period
  
  end 

  def self.get_period 
    puts "Please choose your time period, or type Q to quit.".colorize(:light_blue)
    PrehistoricLife::Period.get_period
  end 


  def self.show_creatures(period)
    puts "These are a few of the major animals from the #{period} Period."  
    puts "Select one to learn a fun fact!"
    PrehistoricLife::Creature.list_creatures(period)   
    
    
  end 

end 

 
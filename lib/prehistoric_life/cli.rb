class PrehistoricLife::CLI
  attr_accessor :creature , :period 

  def initialize
    @creature = creature
    PrehistoricLife::Scraper.triassic_scraper 
    PrehistoricLife::Scraper.jurassic_scraper
    PrehistoricLife::Scraper.cretaceous_scraper
  end 

  def call
  
     puts "Welcome to Prehistoric Life - Creatues of the Mesozoic!".colorize(:green)
     PrehistoricLife::Creature.dino_art
     puts "You'll select an animal by geological period and learn a fun fact about that animal.".colorize(:light_blue)
     PrehistoricLife::Period.periods
     PrehistoricLife::CLI.get_period
  
  end 

  def self.get_period 
    puts "Please choose your time period, or type Q to quit."
    PrehistoricLife::Period.get_period
  end 


  def self.show_creatures(period)
    puts "These are a few of the major animals from the #{period} Period."  
    puts "Select one to learn a fun fact!"
    #PrehistoricLife::Scraper.triassic_scraper   
    PrehistoricLife::Creature.show_creatures(period)
    
  end 
=begin 
  def self.show_jurassic_creatures 
    puts "These are a few of the major animals from the Jurassic period."
    puts "Select one to learn a fun fact!"
    #PrehistoricLife::Scraper.jurassic_scraper
    PrehistoricLife::Creature.show_creatures(period)
    
  end
    
  def self.show_cretaceous_creatures
     puts "These are a few of the major animals from the Cretaceous period." 
     puts "Select one to learn a fun fact!"
     #PrehistoricLife::Scraper.cretaceous_scraper
     PrehistoricLife::Creature.show_creatures(period)
  end
  
=end 

end 

 
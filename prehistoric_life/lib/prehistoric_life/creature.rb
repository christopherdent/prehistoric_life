  
class PrehistoricLife::Creature
  attr_accessor :period, :fun_fact, :name 
  
  
  @@all = [] 
  def initialize(name, period)
    @name = name 
    @period = period 
    @@all << self
  end
  
  def self.dino_art
    puts           "                 __        "
    puts           "                / _)       "
    puts           "       _.----._/ /         "
    puts           "      /         /          "
    puts           "    _/ (  | (  |           "
    puts           "  /__.-'|_|--|_|           "
  end 
  
 
  def self.all
    @@all 
  end
  
  def save 
    @@all << self 
  end 
  

  def roar 
    puts "#{self.name} goes ROAR!!!!".colorize(:black).on_white.underline
  end 

  def fun_fact
    PrehistoricLife::Scraper.fact
  end 

  def self.show_creatures
    input = gets.strip 
    @@all.each.with_index do |creature, index|
      index +=1
      @@creature = creature.name
      if input.to_i == index 
        creature.roar 
        creature.fun_fact 
        learn_more
      end 
    end 
  end
  
  def self.learn_more 
    puts "
    Would you like to learn more?".colorize(:yellow) 
    puts "     Enter yes to learn more or no to quit."
    input = gets.strip.downcase 
    if input == "yes" || input == "y"
      @@all.clear 
      PrehistoricLife::CLI.get_period    
    elsif input == "no" || input == "n"
      exit
    else 
      self.learn_more 
    end
  end 

  def self.current_input
    @@creature
  end 
  
end 
 
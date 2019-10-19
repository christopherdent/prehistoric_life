  
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


  def self.list_creatures(period)
    
    @a = all.select {|creature| creature.period == period }  
    @a.each.with_index(1) do |creature, index|
      puts "#{index}. #{creature.name}"
    end 
    select_creatures(period) 
  end 


  def self.select_creatures(period)
     input = gets.strip 
    @a.each.with_index do |creature, index|
      index +=1
      @@creature = creature.name
      if input.to_i == index || input.downcase == creature.name.downcase
        creature.roar 
        creature.fun_fact 
        learn_more
      else 
        puts "Invalid selection.  Please select from the list below."
        list_creatures(period)
      end 
    end 
  end

  
  def self.learn_more 
    puts "
    Would you like to learn more?".colorize(:yellow) 
    puts "     Enter yes to learn more or no to quit."
    input = gets.strip.downcase 
    if input == "yes" || input == "y"
      
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
 
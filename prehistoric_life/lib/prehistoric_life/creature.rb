  
require 'pry'

class PrehistoricLife::Creature
  attr_accessor :name, :period, :fun_fact  
  
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
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/#{self.name}"))
    fact = doc.css("div.mw-content-ltr.mw-content-text p") 
    puts fact.text.chomp.colorize(:green)
  end 
   
  def self.show_creatures
    input = gets.strip 
    @@all.each.with_index do |creature, index|
      index +=1 
      if input.to_i == index 
        creature.roar 
        creature.fun_fact 
        learn_more
      end 
    end 
  end
  
  def self.learn_more #a rerun of show creatures 
    puts "
    Would you like to learn more?".colorize(:yellow) 
    puts "     Enter yes to learn more or no to quit."
    input = gets.strip.downcase 
    if input == "yes" || input == "y"  
      @@all.clear   #note that clearing the @@all array here solves problem of duplicate objects but doesn't solve problem of saving the objects.
      PrehistoricLife::CLI.get_period
    elsif input == "no" || input == "n"
      exit
    else 
      self.learn_more 
    end
  end 


   
  
end 
 
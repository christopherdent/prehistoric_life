  
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
    puts "#{self.name} goes Roar!"
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
    puts "Would you like to learn more?  Type Y for yes or Q to quit."
    input = gets.strip 
    if input == "y" || input == "Y"  
      @@all.clear   #note that clearing the @@all array here solves problem of duplicate objects but doesn't solve problem of saving the objects.
      PrehistoricLife::CLI.get_period
    elsif input == "q" || input == "Q"
      exit 
    end
  end 

=begin
      PrehistoricLife::CLI.get_period   # will show the period options and launch a scraper based on input.  
      PrehistoricLife::Period.all.each do |period|   # allows for deep extraction 
          @@all.map do |animal|
            animal.period == period.name  #asking if the @@all animals array includes animals from a certain period  
      
      #show creatures would be helpful.   
      
      #instantiate new dinos unless they are already there.  
      #instantiate new dinos and add them to @@all array UNLESS they have a period property that was already used.  So if yes, lets instantiate all other dinosaurrs.  Then let's modify the array by period.  
    
       #if they wnt to learn more, great.  the if theyre learning more from the same period, the dinos are in the array.  if not, they need to be added to the array.  I think we need to add the years attribute so it can check if dinos from that period are already in there.  If they're not then the DINO scraper must be run.  
      #if the answer is yes maybe i should populate the run the other scrapers?? 
      #if the answer is yes, i want to learn more.... they will choose another time period.  
      #if yes, get the period class to list the periods.  but NOT with period.periods - that recreates the eras!!!!
      PrehistoricLife::Period.all.each do |period|   #now can do period.name  
        @@all.each do |animal|
          PrehistoricLife::CLI.get_period unless animal.period == period.name      #instantiate new periods unless the animals already in the array have the same period as the instantiated period.  WAIT you dont wanna instantiate a new period at all!!!  
        end   
      end 
    else  
      @@all.each.with_index(1) do |animal, index|
        index +=1  
        puts "#{index}. #{animal.name}"
        if input.to_i == index 
          creature.roar 
          creature.fun_fact 
          learn_more
        end 
      end 
      
    end
=end     

   
  
      
     
    
   
  
end 
 
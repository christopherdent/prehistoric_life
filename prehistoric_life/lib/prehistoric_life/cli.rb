class PrehistoricLife::CLI
  

  def initialize
  end 

 def dino_art
    puts           "                 __        "
    puts           "                / _)       "
    puts           "       _.----._/ /         "
    puts           "      /         /          "
    puts           "    _/ (  | (  |           "
    puts           "  /__.-'|_|--|_|           "
 end 

  def call 
     puts "Welcome to Prehistoric Life - Creatues of the Mesozoic!".colorize(:yellow)
     dino_art 
     puts "You'll select an animal by geological period and learn a fun fact about that animal.".colorize(:blue)
     PrehistoricLife::Period.new("Triassic", "250-206 million years ago")
     PrehistoricLife::Period.new("Jurassic", "206-144 million years ago")
     PrehistoricLife::Period.new("Cretaceous", "144-65 million years ago")
     get_period
  end 

  def get_period 
    @periods = PrehistoricLife::Period.all 
    list_period
  end 
  
  def list_period 
    puts "Please choose your time period:"
      @periods.each_with_index do |period, index|
      index += 1
      puts "#{index.to_i}. #{period.name}: #{period.years}" 
      end 
    puts "
    Or type Q to quit."
    input = gets.strip
    if input == "1"
       period = "Triassic"
       show_creatures(period)
    elsif input == "2"
        period = "Jurassic"
        show_creatures(period)
    elsif input == "3"
        period == "Cretaceous"
        show_creatures(period)
    elsif "Q" || "q"
      close 
    else 
        puts "Please try again."
      get_period
    end
  end 

  
  def show_creatures(period)
    puts "These are a few of the major animals from the #{period} period."  
    puts "Select one to learn a fun fact!"
    if period == "Triassic" 
      PrehistoricLife::Scraper.triassic_scraper
    elsif period == "Jurassic"
      PrehistoricLife::Scraper.jurassic_scraper
    elsif period == "Cretaceous"
      PrehistoricLife::Scraper.cretaceous_scraper
    end 
    puts "
    Or type Q to quit."
    input = gets.strip 
    PrehistoricLife::Creature.all.each.with_index do |creature, index|
      if input.to_i == index 
        creature.roar 
        creature.fun_fact 
        get_period
        elsif input == "Q" or input == "q"
          close  
           
      end 
    end 
  end

=begin

  def show_triassic_creatures
    puts "These are a few of the major animals from the Triassic period."  
    puts "Select one to learn a fun fact!"
    PrehistoricLife::Scraper.triassic_scraper
    puts "
    Or type Q to quit."
    input = gets.strip 
    PrehistoricLife::Creature.all.each.with_index do |creature, index|
      index +=1 
      if input.to_i == index 
        creature.roar 
        creature.fun_fact 
        get_period
        elsif input == "Q" or input == "q"
          close  
           
      end 
    end
  end 
  
  def show_jurassic_creatures 
    puts "These are a few of the major animals from the Jurassic period."
    puts "Select one to learn a fun fact!"
    PrehistoricLife::Scraper.jurassic_scraper
    puts "
    Or type Q to quit."
    input = gets.strip 
    PrehistoricLife::Creature.all.each.with_index do |creature, index|
      index +=1 
      if input.to_i == index 
        creature.roar 
        creature.fun_fact 
         get_period
        elsif input == "Q" or input == "q"
          close  
      end
    end
  end
    
  def show_cretaceous_creatures
     puts "These are a few of the major animals from the Cretaceous period." 
     puts "Select one to learn a fun fact!"
     PrehistoricLife::Scraper.cretaceous_scraper
     puts "
      Or type Q to quit."
     input = gets.strip 
     PrehistoricLife::Creature.all.each.with_index do |creature, index|
      index +=1 
      if input.to_i == index 
        creature.roar 
        creature.fun_fact
         get_period
          elsif input == "Q" or input == "q"
          close 
      end 
    end 
  end
=end 


 def close 
   exit 
 end 
  
  
  
  
  
  
end 

 
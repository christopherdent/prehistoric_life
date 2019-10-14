class PrehistoricLife::Period
  attr_accessor :name, :dinosaurs, :years   
  
  @@all = []
  
  
  
  def initialize(name, years)
    @name = name 
    @years = years
    @@all << self 
      
  end 
  
  def self.period_selector
     PrehistoricLife::Period.new("Triassic", "250-206 million years ago")
     PrehistoricLife::Period.new("Jurassic", "206-144 million years ago")
     PrehistoricLife::Period.new("Cretaceous", "144-65 million years ago")
  end 
  
  def self.all
    @@all 
  end 

  
  
  def self.learn_more
     
    puts "Learn more! Please choose another time period:"
      @@all.each_with_index do |period, index|
      index += 1
      puts "#{index.to_i}. #{period.name}: #{period.years}" 
      end 
    puts "
    Or type Q to quit."
    input = gets.strip
    if input == "1"
       period = "Triassic"
       binding.pry 
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
      list_period
    end
  end 

  
end 
class PrehistoricLife::Scraper
  attr_accessor :creature, :name, :period 
  
  
  @@dinosaurs = []
  def initialize
    @creature = creature 
    
  end 
  
  def self.triassic_scraper
    
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Triassic"))
    doc.css("figcaption.category-page__trending-page-title").each.with_index(1) do |type, index|
    name = type.text 
    puts "#{index}. #{name}"
      dino = PrehistoricLife::Creature.new(name, period = "Triassic") #<-- this code works to create objects out of each new creature. it also assigns a variable name equal to the creatures name.  maybe so i could do creaturename.fun_fact 
        #the instance variable above allows us to use .roar (and other creature instance methods)
        #if they select 1. eoraptor they will get more info about the selecteed object / creature.  
        #end 
      @@dinosaurs << @dino 
      
   end 
  
  end
  

  def self.jurassic_scraper
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Jurassic"))
      
    doc.css("figcaption.category-page__trending-page-title").each.with_index(1) do |type, index|
      name = type.text 
      puts "#{index}. #{name}" 
       @dino = PrehistoricLife::Creature.new(name, period = "Jurassic")
       @@dinosaurs << @dino 
    end 
  end   
 
  def self.cretaceous_scraper 
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Cretaceous"))
    doc.css("figcaption.category-page__trending-page-title").each.with_index(1) do |type, index|
    name = type.text 
    puts "#{index}. #{name}"  
     
     @dino = PrehistoricLife::Creature.new(name, period = "Cretaceous")
     @@dinosaurs << @dino 
    end 
  end 
   
   
  def self.dino 
    @dino 
  end 
  
  def self.dinosaurs 
    @@dinosaurs 
  end 

 
  def fact(name)
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/#{name}"))
    fact = doc.css("div.mw-content-ltr.mw-content-text p") 
    puts fact.text.chomp.colorize(:green)
  end 
  
    
  def self.select 
    if self.name == "Triassic"
      self.triassic_scraper
    elsif self.name == "Jurassic"
      self.jurassic_scraper 
    elsif self.name == "Cretaceous"
      self.cretaceous_scraper 
  end 

end 
  
   
end 


 
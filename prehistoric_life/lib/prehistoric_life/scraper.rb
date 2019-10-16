

#period wont be scraped its just 3 things.  Animal will be scraped.  

class PrehistoricLife::Scraper
  attr_accessor :creature 
  
  def initialize
    @creature = creature 
  end 
  
  def self.triassic_scraper
    
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Triassic"))
    doc.css('li.category-page__member').each.with_index(1) do |type, index|
    name = type.text.strip 
    puts "#{index}. #{name}"
      @dino = PrehistoricLife::Creature.new(name, period = "Triassic")
   
   end 
  
  end
 
  
  def self.jurassic_scraper
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Jurassic"))
      
    doc.css('li.category-page__member').each.with_index(1) do |type, index|
    name = type.text.strip 
      puts "#{index}. #{name}" 
       @dino = PrehistoricLife::Creature.new(name, period = "Jurassic")
    end 
  end   
 
  def self.cretaceous_scraper 
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Cretaceous"))
    doc.css('li.category-page__member').each.with_index(1) do |type, index|
    name = type.text.strip 
    puts "#{index}. #{name}"  
     @dino = PrehistoricLife::Creature.new(name, period = "Cretaceous")
    end 
  end 
  
   
  def self.dino 
    @dino 
  end 
 
  #def fact(name) 
  # doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/#{PrehistoricLife::Creature.new(name)}"))
  # fact = doc.css("div.mw-content-ltr.mw-content-text p") 
  #  puts fact.text.chomp
  #end 
  
end 


 
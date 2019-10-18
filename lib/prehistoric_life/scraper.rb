
class PrehistoricLife::Scraper
  attr_accessor :creature, :fact 
  
  def initialize
    @creature = creature 
    @fact = fact 
  end 
  
  def self.triassic_scraper
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Triassic"))
    doc.css("figcaption.category-page__trending-page-title").each.with_index(1) do |type, index|
      name = type.text 
      puts "#{index}. #{name}"  #this is going to happen in get creature.  You'll also populate the period.dinosaurs array from get creature.  
      @dino = PrehistoricLife::Creature.new(name, period = "Triassic") 
      PrehistoricLife::Period.all.each do |age|
          age.dinosaurs << @dino if age.name == period 
      end 
    end 
  end 
   
 
  
  def self.jurassic_scraper
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Jurassic"))
    doc.css("figcaption.category-page__trending-page-title").each.with_index(1) do |type, index|
      name = type.text 
      puts "#{index}. #{name}" 
      @dino = PrehistoricLife::Creature.new(name, period = "Jurassic")
      PrehistoricLife::Period.all.each do |age|
          age.dinosaurs << @dino if age.name == period
      end 
    end 
  end   
 
  def self.cretaceous_scraper 
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Cretaceous"))
    doc.css("figcaption.category-page__trending-page-title").each.with_index(1) do |type, index|
    name = type.text 
      puts "#{index}. #{name}"  
      @dino = PrehistoricLife::Creature.new(name, period = "Cretaceous")
      PrehistoricLife::Period.all.each do |age|
        age.dinosaurs << @dino if age.name == period
      end 
    end 
  end 
   
  def self.dino 
    @dino 
  end 
 
  def self.fact
    input = PrehistoricLife::Creature.current_input
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/#{input}"))
    puts doc.css("div.mw-content-ltr.mw-content-text p").text.chomp.colorize(:green)
  end  
end 


 
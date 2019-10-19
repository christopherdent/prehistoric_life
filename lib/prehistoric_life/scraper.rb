
class PrehistoricLife::Scraper
  attr_accessor :creature, :fact 
  
  def initialize
    @creature = creature 
    @fact = fact 
  end 
  
  def self.scraper(period)
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:#{period}"))
    doc.css("figcaption.category-page__trending-page-title").each.with_index do |type|
      name = type.text 
      @dino = PrehistoricLife::Creature.new(name, period) 
    PrehistoricLife::Period.all.each do |age|
      if age.name == period 
        age.dinosaurs << @dino 
      end 
    end   
    end 
  end 
   
  def self.dino 
    @dino 
  end 
 
  def self.fact
    input = PrehistoricLife::Creature.current_input
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/#{input}"))
    
    string = doc.css("div.mw-content-ltr.mw-content-text p").text.chomp[0..400]
    string = string.gsub(/\.[^.]*$/, ".")
    puts string.colorize(:green)
  
  end  
end 


 
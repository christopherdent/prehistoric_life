require 'pry'
require 'open-uri'
require 'nokogiri'

#period wont be scraped its just 3 things.  Animal will be scraped.  

class PrehistoricLife::Scraper

  def self.triassic_scraper
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Triassic"))
    
    doc.css("figcaption.category-page__trending-page-title").each.with_index(1) do |type, index|
    name = type.text 
    puts "#{index}. #{name}"
    PrehistoricLife::Creature.new(name) #<-- this code works to create objects out of each new creature.  #- was thinking of having the creatures initialize as objects but not sure why... maybe so i could do creaturename.diet or creaturename.funfact 
    
    end
     #binding.pry 
  end
 
  
  def self.jurassic_scraper
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Jurassic"))
      
    doc.css("figcaption.category-page__trending-page-title").each.with_index(1) do |type, index|
    name = type.text 
    puts "#{index}. #{name}" 
    end 
  end   
    
  def self.cretaceous_scraper 
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Cretaceous"))
    doc.css("figcaption.category-page__trending-page-title").each.with_index(1) do |type, index|
    name = type.text 
    puts "#{index}. #{name}"  
    end 
  end 
  
end 


 
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
    @dino = PrehistoricLife::Creature.new(name) #<-- this code works to create objects out of each new creature. it also assigns a variable name equal to the creatures name.  maybe so i could do creaturename.fun_fact 
    #the instance variable above allows us to use .roar (and other creature instance methods)
    #if they select 1. eoraptor they will get more info about the selecteed object / creature.  
    #end 
   
   end 
  
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
  
  
  def self.dino 
    @dino 
  end 
 
    
  
end 


 
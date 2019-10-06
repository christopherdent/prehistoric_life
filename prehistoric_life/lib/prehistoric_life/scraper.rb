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
  
end 


 
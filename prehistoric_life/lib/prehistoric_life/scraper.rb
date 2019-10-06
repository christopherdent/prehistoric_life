require 'pry'
require 'open-uri'
require 'nokogiri'

#period wont be scraped its just 3 things.  Animal will be scraped.  

class PrehistoricLife::Scraper

  def self.triassic_scraper
    doc = Nokogiri::HTML(open("https://dino.wikia.org/wiki/Category:Triassic"))
    #"div.roster-cards-container"
    doc.css("figcaption.category-page__trending-page-title").each.with_index(1) do |type, index|
      name = type.text 
      p "#{index}. #{name}" 
    end 
    
    #<figcaption class="category-page__trending-page-title">Eoraptor</figcaption>
    
    
  end
  
  
  def self.jurassic_scraper(url)
  end   
    
  def self.cretaceous_scraper(url)
  end 
  
end 


 
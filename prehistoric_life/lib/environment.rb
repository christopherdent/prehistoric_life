require 'colorize' 
require 'open-uri'
require 'nokogiri'
require 'pry'



require_relative "./prehistoric_life/version"
require_relative "prehistoric_life/cli"
require_relative "prehistoric_life/period"
require_relative "prehistoric_life/scraper"
require_relative "prehistoric_life/creature"



module PrehistoricLife
  class Error < StandardError; end
  # Your code goes here...
end

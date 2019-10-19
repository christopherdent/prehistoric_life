
PrehistoricLife - Creatures of the Mesozoic 

1.  Classes 
    
      -Creature (responsibility to know about creatures, and store them)
      -Period (responsible for knowing about time periods and storing them)
      -CLI (For the user to interact with the app)
      -Scraper (To scrape animal names and facts)
      -All under a "PrehistoricLife" module.
 
1.  Flow
    -Program initializes and runs the creature scraper, saving each creature as an object and adding each creature as an attribute to the period object.    

    -Program presents you with some awesome ASCII dinosaur art and three time periods, each of which are instances of the period class.

    -Selecting a time period triggers a simple “list_creatures(period)” class method, which uses the saved array to list the creatures of that period (this replaced three methods, “list_triassic_creatures” etc.)

    -A “get_creatures(period”) class method is triggered.  Based on the input, this method makes the dinosaur object roar and triggers a fun fact scraper.  The fun fact scraper still uses interpolation in the scraper’s URL to access the correct wiki page.  

    -A “learn_more” method is then triggered, allowing the user to go back to the period selection and start fresh.  Alternatively the user can say “no” to terminate the program.  
     
      
3.  Scraping from dino.wikia.org - dinosaurs are scraped from "trending pages" section of each era's category page.  Fun fact is scraped from the animal's page, and the string edited for brevity.  

 

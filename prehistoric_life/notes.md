




1.  Flow
    -User starts app 
    -User is asked for a time period 
    -User sees a sample of life from that era and is asked to select one for a fun fact 
    -fun fact then appears 
OR  have creatures initialize as objects.  Then you can see their diet and the fun fact acting on the object not the string.  i think this is actually going to be the way to go  
    

2.  Classes 
    a.  Class Relationships


    Classes
      -Lifeform (responsibility to know about lifeforms, and store them)
      -CLI
      -Scraper 
      -Maybe period?  or maybe just do a period attriute.  
      
      
      CLI class will welcome to an app 
      
3.  using dino.wikia.org 
4.  





from CLI line 16
   #going to want a method like def get_period.
     #Then going to want to get the animals... get_animals(period)
     #Then list the animals 
     #Then ask user to choose an animal 
     
     from CLI 20
        #triassic = PrehistoricLife::Period.new("Triassic")
   #jurassic = PrehistoricLife::Period.new("Jurassic")
   #cretaceous = PrehistoricLife::Period.new("Cretaceous")
    #@periods = ["Triassic (250-206 million years ago)", "Jurassic (206-144 million years ago)", "Cretaceous (144-65 million years ago)"]
    
    
    
  learn more:  this was tricky!  #if they wnt to learn more, great.  the if theyre learning more from the same period, the dinos are in the array.  if not, they need to be added to the array.  I think we need to add the years attribute so it can check if dinos from that period are already in there.  If they're not then the scraper must be run.  
  
  maybe so i could do creaturename.fun_fact 
    #the instance variable above, @dino, allows us to use .roar (and other creature instance methods)
    #if they select 1. eoraptor they will get more info about the selecteed object / creature.  
    #end 
    
     #<-- Creature.new this code works to create objects out of each new creature. it also assigns a variable name equal to the creatures name. 
     
         #@@all.clear   #note that clearing the @@all array here solves problem of duplicate objects but doesn't solve problem of saving the objects.
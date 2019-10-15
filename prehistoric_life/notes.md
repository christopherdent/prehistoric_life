




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
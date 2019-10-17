=begin
chance_of_rain = 1.2
if chance_of_rain <= 0.25
  puts "Pack a sun shelter!"
elsif (chance_of_rain > 0.25 && chance_of_rain < 0.75)
  puts "Pack and umbrella!"
else
  puts "Stay home and read Hegel."
end


puts "You know what year it is??"
this_year = Time.now.year
puts "Hey, it's 2019" if this_year == 2019


name = "Chris Dent"

if name == "Alice"
  puts "Hello, Alice!"
elsif name == "White Rabbit"
  puts "Don't be late Rabbit"
elsif name == "The Mad Hatter"
  puts "Welcome, Hatter"
elsif name == "The Queen"
  puts "Off with her head!"
else
  puts "Whooooooooooo are youuu?"
end




name = "The queen"
case name

  when "Alice"
    puts "Hello, Alice!"
  when "White Rabbit"
    puts "Don't be late Rabbit"
  when "The Mad Hatter"
    puts "Welcome, Hatter"
  when "The queen"
    puts "Off with her head"
  else
    puts "Who are you?"
  end

greeting = "unfriendly_greeting"
case greeting
  when "unfriendly_greeting"
    puts "That was rude!"
  when "friendly_greeting"
    puts "How kind"
end

current_weather = "snowing"

case current_weather
  when "sunny"
    puts "grab sunscreen"
  when "raining"
    puts "grab your umbrella, it's wet out there!"
  when "snowing"
    puts "bundle up, it's hell has frozen over.."
end

=end










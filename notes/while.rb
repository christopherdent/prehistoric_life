=begin
count = 0
while count < 3 do 
  puts "I am the #{count}, I love the count!"
  count -= 2 
end

magic_exit_number = 7
count = 0 
while count < 10 && count !=magic_exit_number do
    puts "I am the #{count}, I love to count!"
  count = count + 1
end



n = 2 
count = 0 
while count <= n do 
  puts "I ran."
  count = count + 1 
end

3.times do 
  puts "I ran."
end
=end





count = 0 
n = 3 

loop do
  puts "I ran"
  break if count >= n 
  count += 1
end








katz_deli = []

def line(katz_deli)
  counter = 1
  list = []
  
  katz_deli.each do |name|
    list.push("#{counter}. #{name}")
    counter += 1 
  end
  list_in_string = list.join(" ")
  
  if katz_deli.length == 0 
    puts "The line is currently empty."
  else 
    puts "The line is currently: #{list_in_string}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0 
    puts "There is nobody waiting to be served!"
  else
    first = katz_deli.shift
    puts "Currently serving #{first}."
  end
end
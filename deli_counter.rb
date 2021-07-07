katz_deli = []

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    line_sentence = "The line is currently: "
    katz_deli.each_with_index do |customer, index|
      line_sentence = line_sentence + "#{index+1}. #{customer} "
    end 
    puts line_sentence.strip
  end 
end 

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end 

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{katz_deli.shift}."
  end 
end 
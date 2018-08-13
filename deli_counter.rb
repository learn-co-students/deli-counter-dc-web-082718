katz_deli = []

def line(people)
  readout = "The line is currently: "
  if people.length > 0
    people.each_with_index do |person, ind|
      readout << "#{ind+1}. #{person} "
    end
      puts readout.chop
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, new_person)
  katz_deli << new_person
  puts "Welcome, #{new_person}. You are number #{katz_deli.index(new_person)+1} in line."
end

def now_serving(katz_deli)
  if katz_deli.length > 0
    puts "Currently serving #{katz_deli.shift}."
  else
  puts "There is nobody waiting to be served!"
  end
end

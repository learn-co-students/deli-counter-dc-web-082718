# Write your code here.
katz_deli = []


def line(current_line)
  index = 0
  line_message = ""
  if current_line == []
    line_message = "The line is currently empty."
    puts line_message
    return
  end


  while index < current_line.length do
    if index == 0
      message = "The line is currently: " + (index + 1).to_s + ". " + current_line[index]
    else
      message = message + (index + 1).to_s + ". " + current_line[index]
    end

    if (index + 1) < current_line.length
      message = message + " "
    end
    index += 1

  end

  puts message
end

def take_a_number(current_line, name)
  line_number = (current_line.length + 1).to_s
  if current_line == []
    puts "Welcome, " + name + ". You are number 1 in line."
  else
    puts "Welcome, " + name + ". You are number " + line_number + " in line."
  end

  current_line.push(name)
  return current_line
end

def now_serving(current_line)
  if current_line == []
    puts "There is nobody waiting to be served!"
  else
    message = "Currently serving " + current_line[0] + "."
    puts message
    current_line.shift
  end
end

def say_hello (first_name)
  puts "hello World  #{first_name}"
end

def ask_first_name
  puts "Quel est ton prénom ?"
  print "> "
  first_name = gets.chomp
  return first_name
end

say_hello (ask_first_name)

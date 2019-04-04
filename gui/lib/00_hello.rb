
def say_hello (first_name)
  puts "Bonjour #{first_name} !"
end

def ask_first_name
  puts "Quel est ton prénom ?"
  print ">>"
  return gets.chomp
end

say_hello(ask_first_name)

def signup
  password=""
  while password==""
    puts "rentre ton mot de passe "
    print ">>>"
    password = gets.chomp.to_s
  end
return  password
end

def login (password)
  try_password=""
 while try_password != password
   puts "quel était ton mot de passe ?"
   print">>>"
   try_password=gets.chomp.to_s
 end
 welcome_screen
end

def welcome_screen
puts"  .______    __   _______ .__   __. ____    ____  _______ .__   __.  __    __   _______ "
puts"  |   _  \\  |  | |   ____||  \\ |  | \\   \\  /   / |   ____||  \\ |  | |  |  |  | |   ____|"
puts"  |  |_)  | |  | |  |__   |   \\|  |  \\   \\/   /  |  |__   |   \\|  | |  |  |  | |  |__   "
puts"  |   _  <  |  | |   __|  |  . `  |   \\      /   |   __|  |  . `  | |  |  |  | |   __|  "
puts"  |  |_)  | |  | |  |____ |  |\\   |    \\    /    |  |____ |  |\\   | |  `--'  | |  |____ "
puts"  |______/  |__| |_______||__| \\__|     \\__/     |_______||__| \\__|  \\______/  |_______|"

end

def perform
  password_user = signup
  login(password_user)
end

perform

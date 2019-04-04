def signup
  puts "Bonjour, quel est ton mot de passe ?"
  print ">>"
  return gets.chomp.to_s
end

def login(mdp)
  puts "Confirmer le mot de passe :"
  print ">>"
  while mdp != gets.chomp.to_s
    puts "MAUVAIS MOT DE PASSE !"
    puts "retente ta chance :"
    print ">>"
  end
end

def welcome_screen
  puts "Mot de passe correct,
bienvenue dans ta zone secrète
                     /\"\\
                    |\./|
                    |   |
                    |   |
                    |>~<|
                    |   |
                 /'\\|   |/'\\..
             /~\\|   |   |   | \\
            |   =[@]=   |   |  \\
            |   |   |   |   |   \\
            | ~   ~   ~   ~ |`   )
            |                   /
             \\                 /
              \\               /
               \\    _____    /
                 |--//''`\\--|
                 | (( +==)) |
                 |--\\_|_//--|
"
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform

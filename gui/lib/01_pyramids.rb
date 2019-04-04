
# une fonction bonus pour simplifier le code
def ask_floors
  floors = 0
  puts "Salut\ncombien d'étages la pyramide ?"

  until floors.between?(1,25) #voir exercice 20
    print ">>"
    floors = gets.chomp.to_i
    if floors < 1
      puts "il faut au moins un étage voyons !"
    elsif floors > 25
      puts "pas plus de 25, on est pas des esclaves !"
    else
      puts floors.to_s + " étage#{floors==1?"":"s"}, ça marche !"
    end
  end
  return floors
end

# ------------------------------------------
def half_pyramid
  puts "Bienvenue dans la DEMI PYRAMIDE"
  floors = ask_floors

  for i in 1..floors #pour chaque etage i
    puts " "*(floors-i)+"#"*i
  end
end

half_pyramid

#---------------------------------------------
def full_pyramid
  puts "----------------"
  puts "... maintenant la FULL PYRAMID"
  floors = ask_floors

  floors.times do |floor|
    puts " "*(floors-floor) + "#"*(floor*2+1)
  end
end

full_pyramid

# ------------------------------------------

def wtf_pyramid
  puts "-------------"
  puts ".. et pour finir, la PYRAMIDE WTF"

  floors = 0
  until floors.between?(1,25) && floors%2 != 0
    puts "Combien d'étages la double-pyramide ?"
    floors = gets.chomp.to_i
    case
    when floors < 1
      puts "!!! ---- moins d'un étage, on sait pas faire ça !"
    when floors > 25
      puts "!!! ---- plus de 25 étages, t'es un ouf !"
    when floors%2 == 0
      puts "!!! ---- une double pyramide c'est un multiple de TROIS!"
    end
  end

  floors.times do |floor|
    case
    when floor < floors/2 +1
      puts " "*(floors/2-floor) +
        "#"*(floor*2+1)
    when floor >= floors/2 +1
      puts " "*(floor-floors/2) +
        "#"*((floors-floor-1)*2+1)
    end
  end

  # autre methode qui marche
  # mais avec une variable en plus
  #-----------------------------------
  # brick_size = 0
  #
  # (floors/2).times do |floor|
  #   brick_size = (floor*2+1)
  #   puts " "*(floors/2-floor) +
  #     "#"*brick_size
  # end
  #
  # brick_size +=2
  # puts "#"*brick_size
  #
  # (floors/2).times do |floor|
  #   brick_size -= 2
  #   puts " "*(floor+1) +
  #     "#"*brick_size
  # end
end

wtf_pyramid

puts "-----------------------------"
puts "voilà, tape \"ENTER\" pour terminer"
gets.chomp

puts "#####   #####       ###  ###    ####     ##       ###
##  ##  ##  ##     #####  ##     ##   ###  ###     ##
#####   #####     ###  ##  ##   ##   ###    ###     #
##  ##  ## ###   #########  ## ##    ###    ###
#####   ##  ### ###     ###  ###       ######      ###"

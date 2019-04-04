array_number_of_rolled = Array.new()
number_of_step = 10
number_of_try=10

for i in (0...number_of_try)
  number_of_rolled=0
  step = 0
  # puts"appuy sur entré pour lancer le dé"
  while step <10
    rolled = rand(1..6)
    if rolled == 1
      step-=1
          puts"tu descends d'une marche tu es donc à la marche #{step}"
      if step < 0
        puts"mais tu étais déjà en bas donc tu ne bouges pas"
        step =0
      end
    elsif rolled.between?(2,4)
      puts "tu ne bouge pas"
    elsif rolled.between?(5,6)
      step +=1
      puts "tu montes d'une marche!!! tu es donc à la marche #{step}"
    end
  number_of_rolled+=1
  end

  puts"il t'a fallu #{number_of_rolled} lancés pour arriver en haut"
  array_number_of_rolled[i] = number_of_rolled
end

puts "total des lancés"
puts array_number_of_rolled.sort
puts "médiane des lancés"
puts array_number_of_rolled.sort[array_number_of_rolled.length/2]
puts "moyenne des lancés"
puts array_number_of_rolled.sum/array_number_of_rolled.length

def upstair(step,display)
  step +=1
  if display
    puts "tu montes d'une marche!!! tu es donc à la marche #{step}"
  end
  return step
end

def downstair(step,display)

  if step < 0
    if display
      puts"mais tu étais déjà en bas donc tu ne bouges pas"
    end
    step = 0
  else
    step-=1
    if display
      puts"tu descends d'une marche tu es donc à la marche #{step}"
    end
  end

  return step
end

def move(rolled, step, display)
  if rolled == 1
    step=downstair(step,display)
  elsif rolled.between?(2,4)
    if display
      puts "tu ne bouge pas"
    end
  elsif rolled.between?(5,6)
    step=upstair(step,display)
  end
  return step
end

def one_game(display=true)
  number_of_step = 10
  number_of_rolled=0
  step = 0
  while step <10
    rolled = rand(1..6)
    if display
      puts rolled
    end
    step = move(rolled, step, display)
    number_of_rolled+=1
  end
   if display
     puts"il t'a fallu #{number_of_rolled} lancés pour arriver en haut"
   end

  return number_of_rolled
end

def average_finish_time
  display=false
  array_number_of_rolled = Array.new()
  number_of_try=100
  for i in (0...number_of_try)
    array_number_of_rolled[i] = one_game(display)
  end
  puts "Sur #{number_of_try} lancés :"
  print "  - La médiane des lancés est de :"
  puts array_number_of_rolled.sort[array_number_of_rolled.length/2]
  print "  - La moyenne de lancés par partie est de :"
  puts array_number_of_rolled.sum/array_number_of_rolled.length

end

one_game()
#average_finish_time


def game (silent=false)
  position = 0

  case
  when silent == true
    def talk (text)
    end
  else
    def talk (text)
      puts text
    end
  end

  def num(position)
    return position.to_s + "#{
    position == 1 ?
      "er" :
      position == 2 ?
        "nd" :
        position == 9 ?
          "ème, presque la fin !" :
          "ème, courage !"
    }"
  end

  count=0

  while position < 10
    diceRoll = rand(6)+1 #lancer de dé
    count +=1
    case diceRoll
    when 1
      if position > 0
        position -=1
        talk "#{count}:(#{diceRoll} -) tu es descendu d'un étage,"+
        " te voila au #{num(position)} "
      else
        talk "#{count}:-0 tu es déjà au fond du gouffre mon ami..."
      end
    when 5..6
      if position < 9
        position +=1
        talk "#{count}:(#{diceRoll} +) tu es MONTE d'un étage,"+
        " te voila au #{num(position)} "
      else
        position += 1
        talk "#{count}:BBBBBBBBRAVO tu est arrivé au 10ème étage !"
      end
    else
      talk "#{count}:(#{diceRoll} +) tu es resté au même étage,"+
      " (#{num(position)})"
    end
  end
  talk "-------------- JEU TERMINE EN #{count} COUPS"
  return count
end

def average_finish_time (stat_num)
  average = []
  stat_num.times do
    average << game(silent = true)
  end
  puts "-----------------------------"
  puts "-----------------------------"
  puts "STATS TERMINEES"
  puts "sur #{stat_num} parties :"
  puts "moyenne : #{average.sum/average.length}"
  puts "min : #{average.min}"
  puts "max : #{average.max}"
end

average_finish_time(10000)

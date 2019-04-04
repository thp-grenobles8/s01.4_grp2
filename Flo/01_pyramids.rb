def half_pyramid()
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">>>"
number_of_step=gets.to_i
puts "Voici la pyramide : "
i=0
	while (i < number_of_step)
		puts " "*(number_of_step-i-1) + "#"*(i+1)
		i+=1
	end
end

def full_pyramid()
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">>>"
	number_of_step=gets.to_i
	puts "Voici la pyramide : "
	i=0
	while (i < number_of_step)
			puts" "*(number_of_step - i -1)+ "#"*(i*2+1)
			i+=1
		end
end


def wtf_pyramid
	number_of_step=0
	while number_of_step%2==0
		puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
		print ">>>"
		number_of_step=gets.to_i
		if number_of_step%2==0
			puts "##      ##   ##     ##      ###    ##       ########      ###    ###    ####     #####      #######  "
			puts "##      ##   ####   ##      ####   ##     #####  #####    ####  ####    ## ##    ##  ##     ##       "
			puts "##      ##   ## ##  ##      ## ##  ##     ##        ##    ## ###  ##    ####     #####      ####     "
			puts "##      ##   ##  ## ##      ##  ## ##     ##        ##    ##      ##    ## ###   ## ###     ####     "
			puts "####  ####   ##   ####      ##   ####     #####  #####    ##      ##    ##  ###  ##  ###    ##       "
			puts "##########   ##    ###      ##    ###       ########      ##      ##    #####    ##   ###   #######  "
			puts "                                                                                                     "
			puts "       ##########   ###    ###   #####       ##       ##########    #####         ##  ##  ##         "
			puts "           ##       ####  ####   ##  ###    ####          ##        ##  ##        ##  ##  ##         "
			puts "           ##       ## ###  ##   ## ###    ##  ##         ##        #####         ##  ##  ##         "
			puts "           ##       ##      ##   ###      ########        ##        ## ###        ##  ##  ##         "
			puts "           ##       ##      ##   ##      ##      ##       ##        ##  ###                          "
			puts "       ##########   ##      ##   ##     ##        ##  ##########    ##   ###      ##  ##  ##         "
		end
	end

	puts "Voici la pyramide : "
	pyramid = Array.new(number_of_step)
	i=0
	while (i < number_of_step/2+1)
		step=" "*(number_of_step - i -1)+ "#"*(i*2+1)
		pyramid[i]=step
		pyramid[number_of_step - i -1] = step
		i+=1
	end
	for i in 0..number_of_step
		puts pyramid[i]
	end
end

full_pyramid

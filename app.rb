require "bundler"
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Naruto")
player2 = Player.new("Sasuke")

while player1.life_points > 0 && player2.life_points >0 

    puts "Voici l'état de chaque ninjas : "
    puts player1.show_state, player2.show_state
    puts "-----------------------------------"
    puts "FIGHT!"
    puts "-----------------------------------"
    puts "passons à la phase d'attaque"
    puts player2.attacks(player1)
    puts "Voici l'état de chaque ninjas : "
    puts player1.show_state, player2.show_state

    puts player2.attacks(player1)
break if  player2.life_points =0 
    puts "Voici l'état de chaque ninjas : "
    puts player1.show_state, player2.show_state
   

end
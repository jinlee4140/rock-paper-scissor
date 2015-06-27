### Requirements

# * The user is playing against a computer opponent in Rock, Paper, Scissors.
# * A game consists of a series of rounds until either player has won.
# * The first player to win two rounds is declared the winner and the game ends.
# * The number of rounds won by the player and the computer are shown each round.
# * Output the winner of the game before exiting.
# * The computer opponent randomly chooses between rock, paper, and scissors each round.
# * The user chooses their shape by typing `"r"` (rock), `"p"` (paper), or `"s"` (scissors) each round.
# * If the player enters an invalid shape, print an error message and start the next round.
# * If both players choose the same shape, it is a tie and no one wins the round.


class RockPaperScissors
	attr_reader :user_wins, :ai_wins
	def initialize
		@winning_conditions = {
			"r" => {"r" => "tie", "p" => "lose", "s" => "win"},
			"p" => {"r" => "win", "p" => "tie", "s" => "lose"},
			"s" => {"r" => "lose", "p" => "win", "s" => "tie"}
		}
		choices = ['r', 'p', 's']
		@ai_choice = choices.sample
		@user_wins = 0
		@ai_wins = 0
	end

	def play(user_choice)
		result = @winning_conditions[user_choice][@ai_choice]
		if result == "win"
			win
		elsif result == "tie"
			tie
		else
			lose
		end
	end

	def win
		@user_wins += 1
		puts "You won! The score is now: User - #{@user_wins}, Computer - #{@ai_wins}."
	end

	def tie
		puts "You tied! The score is: User - #{@user_wins}, Computer - #{@ai_wins}."
	end

	def lose
		@ai_wins += 1
		puts "You lost! The score is now: User - #{@user_wins}, Computer - #{@ai_wins}."
	end
	

end


game = RockPaperScissors.new #Set game equal to a new instance of the class RockPaperScissors
until game.user_wins == 2 || game.ai_wins == 2 #Set loop that will stop if the user or the computer wins twice.
	puts "Choose rock (r), paper (p), or scissors(s)" 
	user_choice = gets.chomp
	game.play(user_choice) #Calling the play method on the RockPaperScissors class while passing in the user_choice variable.
end


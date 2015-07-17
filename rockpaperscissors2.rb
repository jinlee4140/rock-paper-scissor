def rock_paper_scissors
	choices = {
		"r" => "rock",
		"p" => "paper",
		"s" => "scissors"
	}

	player_score = 0
	comp_score = 0

	until player_score == 2 || comp_score ==2
		puts "Player Score: #{player_score} | Computer Score: #{comp_score}"
		puts "Choose rock(r), paper(p), or scissor(s)."

		comp_choice = choices.keys.sample
		player_choice = gets.chomp

		until choices.keys.include? player_choice
			puts "Illegal character. Try again."
			player_choice = gets.chomp
		end

		cs = choices[comp_choice]
		ps = choices[player_choice]

		puts "Player chooses #{ps}"
		puts "Computer chooses #{cs}"

		if ps == cs
			puts "Tie, choose again"
		elsif ps == "rock" && cs == "scissors"
			puts "Rock beats scissors, player wins the round."
			player_score += 1
		elsif ps == "scissor" && cs == "paper"
			puts "Scissor beats paper, player wins the round"
			player_score += 1
		elsif ps == "paper" && cs == "rock"
			puts "Paper beats rock, player wins the round"
			player_score += 1
		elsif ps == "rock" && cs == "paper"
			puts "Paper beats rock, computer wins the round"
			comp_score += 1
		elsif ps == "paper" && cs == "scissor"
			puts "Scissor beats paper, computer wins the round"
			comp_score += 1
		elsif ps == "scissor" && cs == "rock"
			puts "Rock beats scissor, computer wins the round"
			comp_score += 1
		end
	end

	if comp_score > player_score
		puts "Computer wins"
	else
		puts "Player wins"
	end
end

rock_paper_scissors


module RPS_RESULTS
  def RPS_RESULTS.result(opp, opp_name, player_choice, name)
    if opp == player_choice
      puts "It's a draw!!"
      return "draw"
    elsif opp == "Rock" && player_choice == "Scissors"
      return opp_name
    elsif opp == "Rock" && player_choice == "Paper"
      return name
    elsif opp == "Paper" && player_choice == "Scissors"
      return name
    elsif opp == "Paper" && player_choice == "Rock"
      return opp_name
    elsif opp == "Scissors" && player_choice == "Paper"
      return opp_name
    elsif opp == "Scissors" && player_choice == "Rock"
      return name
    else
      puts "Error, play again."
      return
    end
  end
end

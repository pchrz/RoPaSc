module RPS_VERIFY
  def RPS_VERIFY.verify(player_choice)
    i = 1
    while i == 1 do
    if player_choice == "Rock" || player_choice == "rock"
      i == 0
      return "Rock"
    elsif player_choice == "Paper" || player_choice == "paper"
      i == 0
      return "Paper"
    elsif player_choice == "Scissors" || player_choice == "scissors"
      i == 0
      return "Scissors"
    else
      print "#{player_choice} does not compute. "
      puts "Please enter either Rock, Paper or Scissors."
      puts "No funny stuff."
      print "#: "
      player_choice = $stdin.gets.chomp
    end
  end
end
end

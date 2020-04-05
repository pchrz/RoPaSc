=begin
Ruby Rocks Paper Scissors
:: Basic Ruby based command line game.
=end


#$LOAD_PATH << '.'
require "./RPS_ROLL.rb"
require "./RPS_RESULTS.rb"
require "./RPS_VERIFY.rb"

#Global Variables
round = 1
i = 1
opp_name = "Zammy"
p1_score = 0
opp_score = 0

#Introduction
puts "Hi, my name is Lial the referee."
sleep 1
puts "Time to play some ROCKS PAPPER SCISSORS!"
sleep 2
puts "First things first, what's your name?"
print "#: "
name = $stdin.gets.chomp
puts "Hi, #{name}"
puts "Now, enter your selection of either Rock, Paper or Scissors,"
sleep 1
puts "and I will shout it out in the next round when you face your opponant: #{opp_name}"
print "#: "
player_choice = $stdin.gets
p1_verified = RPS_VERIFY.verify(player_choice.chomp)
puts "#{p1_verified}, it is."
sleep 1
puts "Alright, lets do this thing. Queue the dramatic music & lights..\n It's fight time."
sleep 3

#Fight
while i == 1 do

puts ""
puts "                        ....... ROUND #{round} ......."
puts "Ladies and gentleman, get ready for another round of Rock, Paper and Scissors!"
sleep 3
puts "In the right corner we have everyone's most hated scoundrel..... #{opp_name}!!"
sleep 2
print "In the left corner we have our hometown favorite, "
sleep 1
print "#{name}!!! \n"
sleep 2
puts "Get ready, set ... GO!"
sleep 2
puts " "


#Fight Results
opp = RPS_ROLL.roll()
puts "#{opp_name}: #{opp}!"
sleep 1
print "#{name}: #{p1_verified}!\n"
sleep 2
result = RPS_RESULTS.result(opp, opp_name, p1_verified, name)

if result == "draw"
  puts " "
else
  puts " "
  puts "#{result} wins!"
  puts " "
end
sleep 3

#Points
if result == "#{name}"
  p1_score += 1
elsif result == "#{opp_name}"
  opp_score += 1
end
puts " "
puts "Current score is:"
sleep 2
print "#{opp_name}: #{opp_score}\n"
sleep 1
print "#{name}: #{p1_score}"
puts " "
sleep 2

#Continue Gameplay?
print "Play again? (y/n): "
again = $stdin.gets.chomp
  if again == "Y" || again == "y" || again == "Yes" || again == "yes"
  round += 1
  i = 1
  puts " "
  puts "Enter your selection of either Rock, Paper or Scissors,"
  sleep 1
  print "#: "
  player_choice = $stdin.gets
  p1_verified = RPS_VERIFY.verify(player_choice.chomp)
  puts "#{p1_verified}, it is."
else
  i = 0
  puts "Thanks for playing!"
end
end

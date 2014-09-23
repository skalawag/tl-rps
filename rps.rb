puts "Play Rock Paper Scissors!"

def get_player_move
  puts "Choose one: P/R/S"
  p = gets.chomp
  # check input
  while not ["P", "R", "S", "p", "r", "s"].include?(p)
    puts "You blew it. Choose again!"
    puts "Choose one: P/R/S"
    p = gets.chomp
  end
  p
end

bot_score = 0
player_score = 0

while true
  # get the player's move
  pc = player_choice = get_player_move.upcase

  # get the bot's move
  rng = Random.new
  bc = bot_choice = ["P", "R", "S"][rng.rand(0..2)]

  # adjudicate
  case
  when pc == bc
    puts "It's a tie! #{pc} versus #{bc}"
  when pc == "P" && bc == "R"
    puts "Paper covers Rock! You win."
    player_score += 1
  when pc == "P" && bc == "S"
    puts "Scissor cuts paper! I win."
    bot_score += 1
  when pc == "R" && bc == "S"
    puts "Rock breaks scissors! You win."
    player_score += 1
  when pc == "R" && bc == "P"
    puts "Paper covers rock! I win."
    bot_score += 1
  when pc == "S" && bc == "P"
    puts "Scissors cuts paper! You win."
    player_score += 1
  when pc == "S" && bc == "R"
    puts "Rock breaks scissors! I win."
    bot_score += 1
  end
  puts ""
  puts "Player: #{player_score}  -  Bot: #{bot_score}"
  puts ""
  puts "Play again? (y/n)"
  ans = gets.chomp
  if ans == 'y'
    next
  else
    break
  end
end

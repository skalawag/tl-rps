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
when pc == "P" && bc == "S"
  puts "Scissor cuts paper! I win."
when pc == "R" && bc == "S"
  puts "Rock breaks scissors! You win."
when pc == "R" && bc == "P"
  puts "Paper covers rock! I win."
when pc == "S" && bc == "P"
  puts "Scissors cuts paper! I win."
when pc == "S" && bc == "R"
  puts "Rock breaks scissors! I win."
end

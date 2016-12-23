# Code your solution here!
def run_guessing_game
  computer= rand(1..6)
  puts "Guess a number between 1 and 6."
  user_input=get_input
  while user_input!="exit"
    if user_input.to_i == computer
      correct_guess
    else
      incorrect_guess(computer)
    end
    user_input=get_input
  end
  exit
end

def get_input
  gets.chomp
end

def exit
  puts "Goodbye!"
end

def correct_guess
  puts"You guessed the correct number!"
end

def incorrect_guess(number)
  puts "The computer guessed #{number}."
  "exit"
end

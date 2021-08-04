VALID_CHOICES = { 'r' => 'rock',
                  'p' => 'paper',
                  'sc' => 'scissors',
                  'l' => 'lizard',
                  'sp' => 'spock' }

WINNING = {
  'r' => { wins: ['sc', 'l'] },
  'p' => { wins: ['r', 'sp'] },
  'sc' => { wins: ['p', 'l'] },
  'l' => { wins: ['p', 'sp'] },
  'sp' => { wins: ['r', 'sc'] }
}

GAME_SCORE = { player: 0, computer: 0 }

def prompt(message)
  puts("===> #{message}")
end

def new_line
  puts "\n"
end

def valid_round(num)
  num.to_i != 0 && num.to_i > 0
end

def win?(first, second)
  WINNING[first][:wins].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

choice = ''
rounds = ''
computer_choice = ''
count = 0

prompt("Welcome to the Rock, Paper, Scissors, Lizard, Spock game!")

loop do
  prompt("How many rounds to win? (Please enter an integer)")
  rounds = gets.chomp
  break if valid_round(rounds.to_i)
  prompt("That's not a valid choice, please try again")
end

loop do
  loop do
    loop do
      prompt("Choose one:")
      VALID_CHOICES.each do |key, value|
        puts "#{key} for #{value}"
      end
      choice = gets.chomp

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice")
      end
    end

    computer_choice = VALID_CHOICES.keys.sample

    prompt("\n\t You chose: #{VALID_CHOICES[choice]}
            \n\t Computer chose: #{VALID_CHOICES[computer_choice]}")
    new_line

    display_results(choice, computer_choice)

    count += 1
    break if
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")

module RockPaperScissors
  MOVES = {
    'r' => 'rock', 
    'p' => 'paper', 
    's' => 'scissors'
  }.freeze

  MATCHES = {
    ["r", "paper"] => "Computer chose paper. Paper wraps rock. Computer wins.",
    ["r", "scissors"] => "Computer chose scissors. Rock destroys scissors. You win.",
    ["p", "rock"] => "Computer chose rock. Paper wraps rock. You win.",
    ["p", "scissors"] => "Computer chose scissors. Scissors cut paper. Computer wins.",
    ["s", "rock"] => "Computer chose rock. Rock destroys scissors. Computer wins.",
    ["s", "paper"] => "Computer chose paper. Scissors cut paper. You win.",
  }.freeze

  def game(player_choice)

    if MATCHES.dig(matchup(player_choice)).nil?
      'Unrecognized move. Try again?'
    elsif MOVES.dig(choice) == computer_choice
      "Computer chose #{computer_choice} too. It's a tie. Try again?"
    else
      MATCHES.dig(matchup(player_choice))
    end

    def computer_choice
      @computer_choice ||= %w[rock paper scissors].sample
    end

    def matchup(move)
      [move, computer_choice ]
    end

  end
  
end
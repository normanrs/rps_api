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

  def play(player_choice, test = nil)

    if MOVES.dig(player_choice) == computer_choice(test)
      "Computer chose #{computer_choice} too. It's a tie. Try again?"

    elsif MATCHES.dig(matchup(player_choice, test)).nil?
      'Unrecognized move. Try again?'
    
    else
      MATCHES.dig(matchup(player_choice, test))
    end

  end

  def computer_choice(default = nil)
    if default
      @computer_choice ||= default
    else
      @computer_choice ||= %w[rock paper scissors].sample
    end
  end

  def matchup(move, test)
    [move, computer_choice(test) ]
  end

  
end
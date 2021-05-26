module RockPaperScissors
  MOVES = {
    'r' => 'rock',
    'p' => 'paper',
    's' => 'scissors'
  }.freeze

  MATCHES = {
    %w[r paper] => 'Computer chose paper. Paper wraps rock. Computer wins.',
    %w[r scissors] => 'Computer chose scissors. Rock destroys scissors. You win.',
    %w[p rock] => 'Computer chose rock. Paper wraps rock. You win.',
    %w[p scissors] => 'Computer chose scissors. Scissors cut paper. Computer wins.',
    %w[s rock] => 'Computer chose rock. Rock destroys scissors. Computer wins.',
    %w[s paper] => 'Computer chose paper. Scissors cut paper. You win.'
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
    @computer_choice ||= default || %w[rock paper scissors].sample
  end

  def matchup(move, test)
    [move, computer_choice(test)]
  end
end

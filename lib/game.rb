require_relative 'rps'

class game
  include RockPaperScissors
  attr_reader :move
              :result

  def initialize(move)
    @move   = move
    @result = play(move)
  end

end
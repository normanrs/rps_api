require_relative 'rps'

class Game
  include RockPaperScissors
  attr_reader :move, :result

  def initialize(move, test = nil)
    @move   = move
    @result = play(move, test)
  end
end

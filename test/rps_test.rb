# frozen_string_literal: true

require_relative 'test_helper.rb'
require 'minitest/autorun'
require './lib/rps.rb'

class RpsTest < Minitest::Test
  include RockPaperScissors

  def test_computer_choice
    result = computer_choice
    puts result
    assert_instance_of String, result
  end
  
  def test_rock
    skip
    result = play('r')
    assert result.include?('win'), -> {result}
  end
  
  def test_paper
  end

  def test_scissors
  end

  def test_bad_input
  end

end

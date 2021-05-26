# frozen_string_literal: true

require_relative 'test_helper.rb'
require 'minitest/autorun'
require './lib/rps.rb'

class RpsTest < Minitest::Test
  include RockPaperScissors

  def test_computer_choice
    result = computer_choice
    puts "Computer returned #{result}"
    assert_instance_of String, result
  end
  
  def test_matching_move
    move = ["r", "rock"]
    result = play(move[0], move[1])
    assert result.include?('tie')
  end

  def test_rock_paper
    move = ["r", "paper"]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_rock_scissors
    move = ["r", "scissors"]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end
  
  def test_paper_rock
    move = ["p", "rock"]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_paper_scissors
    move = ["p", "scissors"]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_scissors_rock
    move = ["s", "rock"]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_scissors_paper
    move = ["s", "paper"]
    result = play(move[0], move[1])
    assert_equal MATCHES[move], result
  end

  def test_random_computer_choice
    move = ["s"]
    result = play(move[0])
    puts "Outcome of actual game was: #{result}"
    assert result.include?('win')
  end

  def test_bad_input
    move = ["huh", "paper"]
    result = play(move[0], move[1])
    assert_equal 'Unrecognized move. Try again?', result
  end

end
